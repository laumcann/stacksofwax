// Dependencies
const express = require('express');
const path = require('path');
const bodyparser = require('body-parser');
const cookieParser = require('cookie-parser');
const sessions = require('express-session');
const con = require('./connection.js');

// Instanctiations

// Create express object
let app = express();

app.set('view engine', 'ejs');
app.use(bodyparser.urlencoded({ extended: true }));
app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, './public')));
app.use(cookieParser());

const hour = 1000 * 60 * 60 * 1;

app.use(sessions({
    secret: "thisisasecret",
    saveUninitialized: true,
    cookie: { maxAge: hour },
    resave: false
}));

// Routes

// Homepage
app.get("/", (req, res) => {
    let generatealbum = `SELECT album_name, album_image, artist.artist_name
                        FROM album
                        INNER JOIN album_artist
                        ON album_artist.album_id = album.album_id
                        INNER JOIN artist
                        ON artist.artist_id = album_artist.artist_id`;
    con.query(generatealbum, (err, albumdata) => {
        if (err) throw err;
        res.render('index', { albumdata });
    });
});

// Register
app.get("/signup", (req, res) => {
    res.render('signup');
});

app.post("/signup", (req, res) => {
    let name = req.body.first_name_field;
    let surname = req.body.last_name_field;
    let about = req.body.about_me_field;
    let username = req.body.username_field;
    let password = req.body.password_field;
    let sqlinsert = `INSERT INTO member (first_name, last_name, member_description, username, member_password) VALUES (?, ?, ?, ?, ?)`;
    con.query(sqlinsert, [name, surname, about, username, password], (err, data) => {
        if (err) throw err;
        res.redirect('/');
    });
});

// Login
app.get("/login", (req, res) => {
    let sessionObj = req.session;
    sessionObj.sess_valid = true;
    res.render('login');
});

app.post('/login', (req, res) => {
    // Capture the input fields
    let username = req.body.username_field;
    let password = req.body.password_field;
    let checkuser = `SELECT * FROM member WHERE username = ? AND member_password = ?`;
    if (username && password) {
        // Execute SQL query that'll select the account from the database based on the specified username and password
        con.query(checkuser, [username, password], (err, rows) => {
            if (err) throw err;
            // If the account exists
            let numRows = rows.length;
            if (numRows > 0) {
                res.redirect('/');
            } else {
                res.redirect('/signup');
            }
        });
    };
});

// Logout
app.get("/logout", (req, res) => {
    req.session.destroy();
    res.redirect('/');
});

// Artist 
app.get("/artist", (req, res) => {
    let readartist = `SELECT artist_name, artist_description, artist_image FROM artist ORDER BY artist_name ASC`;
    con.query(readartist, (err, artistdata) => {
        if (err) throw err;
        res.render('artist', { artistdata });
    });
});

// Individual artist
app.get("/artistinfo", (req, res) => {
    let getid = req.query.artistid;
    let getartist = `SELECT artist_name, artist_description, artist_image FROM artist 
                     WHERE artist_id = ?;
                     SELECT album.album_image, album.album_name
                     FROM album
                     INNER JOIN album_artist
                     ON album_artist.album_id = album.album_id
                     INNER JOIN artist
                     ON artist.artist_id = album_artist.artist_id
                     WHERE artist.artist_id = ?`;
    con.query(getartist, [getid, getid], (err, artistdetails) => {
        if (err) throw err;
        let artist = artistdetails[0];
        let albums = artistdetails[1];
        res.render('artistinfo', { artist, albums });
    });
});

// Album 
app.get("/album", (req, res) => {
    let getid = req.query.albumid;
    let getalbum = `SELECT genre_name
                    FROM genre
                    INNER JOIN genre_album
                    ON genre_album.genre_id = genre.genre_id
                    INNER JOIN album
                    ON album.album_id = genre_album.album_id
                    WHERE album.album_id = ?;
                    SELECT record_company_name 
                    FROM record_company
                    INNER JOIN album_record_company
                    ON album_record_company.record_company_id = record_company.record_company_id
                    INNER JOIN album
                    ON album.album_id = album_record_company.album_id
                    WhERE album.album_id = ?;
                    SELECT style.style_name, album.album_name, album.album_description, album.album_year, artist.artist_name
                    FROM style
                    INNER JOIN album_style
                    ON album_style.style_id = style.style_id
                    INNER JOIN album
                    ON album.album_id = album_style.album_id
                    INNER JOIN album_artist
                    ON album_artist.album_id = album.album_id
                    INNER JOIN artist
                    ON artist.artist_id = album_artist.artist_id
                    WHERE album.album_id = ?;
                    SELECT album.album_image, track.track_name, track.track_duration
                    FROM album
                    INNER JOIN album_track 
                    ON album_track.album_id = album.album_id
                    INNER JOIN track
                    ON track.track_id = album_track.track_id
                    WHERE album.album_id = ?`;
    con.query(getalbum, [getid, getid, getid, getid], (err, albumdetails) => {
        if (err) throw err;
        let genre = albumdetails[0];
        let label = albumdetails[1];
        let album = albumdetails[2];
        let tracklist = albumdetails[3];
        res.render('album', { genre, label, album, tracklist });
    });
});

// Collections
app.get("/collections", (req, res) => {
    let gettracklists = `SELECT * FROM collection;
                         SELECT review_title, review_description, collection FROM review`;
    con.query(gettracklists, (err, tracklistdetails) => {
        if (err) throw err;
        let tracklist = tracklistdetails[0];
        let review = tracklistdetails[1];
        res.render('collections', { review, tracklist });
    });
});

// Individual Collection
app.get("/tracklistinfo", (req, res) => {
    let getid = req.query.collectionid;
    let findtracklist = `SELECT collection.collection_name, collection.collection_description, track.track_name, track.track_duration
                         FROM collection
                         INNER JOIN album
                         ON album.album_id = collection.album_id
                         INNER JOIN album_track
                         ON album_track.album_id = album.album_id
                         INNER JOIN track
                         ON track.track_id = album_track.track_id
                         WHERE collection.collection_id = ?;
                         `;
    con.query(findtracklist, [getid], (err, tracklistinfo) => {
        if (err) throw err;
        res.render('tracklistinfo', { tracklistinfo });
    });
});

// Create Collection
app.get("/createlist", (req, res) => {
    let getalbum = `SELECT album.album_image, album.album_name, album_id
                    FROM album`;
    con.query(getalbum, (err, options) => {
        if (err) throw err;
        res.render('createlist', { options });
    });
});

app.post("/createlist", (req, res) => {
    let listname = req.body.name_field;
    let listdescription = req.body.about_field;
    let getalbumid = req.body.insert_field;
    let createcollection = `INSERT INTO collection (collection_name, collection_description, collection.album_id) VALUES (?, ?, ?)`;
    con.query(createcollection, [listname, listdescription, getalbumid], (err, data) => {
        if (err) throw err;
        res.redirect('collections');
    });
});

// Review a Collection
app.get("/reviewcollection", (req, res) => {
    let getcollection = `SELECT collection.collection_name, collection.collection_description
    FROM collection`; 
    con.query(getcollection, (err, options) => {
        if (err) throw err;
        res.render('reviewcollection', {options});
    });
});

app.post("/reviewcollection", (req, res) => {
    let reviewname = req.body.reviewtitle_field;
    let reviewtext = req.body.about_field;
    let getcollection = req.body.insert_field;
    let addreview = `INSERT INTO review (review_title, review_description, collection) VALUES (?, ?, ?)`;
    con.query(addreview, [reviewname, reviewtext, getcollection], (err, data) => {
        if (err) throw err;
        res.redirect('collections');
    });
});

// Genre 
app.get("/genre", (req, res) => {
    let readgenre = `SELECT genre_name, genre_description FROM genre`;
    con.query(readgenre, (err, genredata) => {
        if (err) throw err;
        res.render('genre', { genredata });
    });
});

// Individual genre
app.get("/genreinfo", (req, res) => {
    let getid = req.query.genreid;
    let getgenre = `SELECT genre_name, genre_description 
                    FROM genre 
                    WHERE genre_id = ?;
                    SELECT album.album_image, album.album_name, artist.artist_name
                    FROM genre 
                    INNER JOIN genre_album
                    ON genre_album.genre_id = genre.genre_id
                    INNER JOIN album
                    ON album.album_id = genre_album.album_id
                    INNER JOIN album_artist
                    ON album_artist.album_id = album.album_id
                    INNER JOIN artist
                    ON artist.artist_id = album_artist.artist_id
                    WHERE genre.genre_id = ?;
                    SELECT artist.artist_image, artist.artist_name 
                    FROM genre
                    INNER JOIN genre_artist
                    ON genre_artist.genre_id = genre.genre_id
                    INNER JOIN artist 
                    ON artist.artist_id = genre_artist.artist_id
                    WHERE genre.genre_id = ?`;
    con.query(getgenre, [getid, getid, getid], (err, genredetails) => {
        if (err) throw err;
        let genre = genredetails[0];
        let albums = genredetails[1];
        let artists = genredetails[2];
        res.render('genreinfo', { genre, albums, artists });
    });
});

// Search
app.get('/search', (req, res) => {
    con.query('SELECT artist_name FROM artist WHERE artist_name LIKE "%' + req.query.term + '%"',
        (err, rows, fields) => {
            if (err) throw err;
            var data = [];
            for (i = 0; i < rows.length; i++) {
                data.push(rows[i].artist_name);
            }
            res.end(JSON.stringify(data));
        });
});

// Create web server
app.listen(process.env.PORT || 3000, (err) => {
    if (err) throw err;
    console.log("Server started on localhost: 3000");
});