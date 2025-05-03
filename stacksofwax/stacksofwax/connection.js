let mysql = require('mysql');

let connection = mysql.createConnection ({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'stacks_of_wax',
    port: '3306',
    multipleStatements: true
    
});

connection.connect ((err) => {
    if (err) throw err;
    console.log("Connected successfully");
});

module.exports = connection;