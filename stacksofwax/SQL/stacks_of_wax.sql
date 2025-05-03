-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 12:52 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stacks_of_wax`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(255) NOT NULL,
  `album_description` text NOT NULL,
  `album_year` year(4) NOT NULL,
  `album_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_name`, `album_description`, `album_year`, `album_image`) VALUES
(1, 'High Voltage', 'High Voltage...', 1975, 'https://m.media-amazon.com/images/I/71wYDrdjiaL._AC_SL1500_.jpg'),
(2, 'Dirty Deeds Done Dirt Cheap', 'Dirty Deeds Done Dirt Cheap', 1976, 'https://m.media-amazon.com/images/I/91ECdKfCNhL._AC_SL1500_.jpg'),
(3, 'Let There Be Rock', 'Let There Be Rock...', 1977, 'https://cdn.hmv.com/r/w-640/hmv/files/3f/3f1c3d9c-aa08-45d9-9276-eb8f1a1b6e72.jpg'),
(4, 'Powerage', 'Powerage...', 1978, 'https://upload.wikimedia.org/wikipedia/en/d/de/Acdc_Powerage.JPG'),
(5, 'Highway To Hell', 'Highway To Hell...', 1979, 'https://m.media-amazon.com/images/I/91NuHgWC6cL._AC_SL1500_.jpg'),
(6, 'Coltrane', 'Coltrane...', 1957, 'https://i.discogs.com/_2hQcbekyfMLaoCwxrTJsXJr4VQc7E0a9KWpxnVPRNE/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTcyOTgy/MjgtMTQzODk1NzY3/Mi0xNTc4LmpwZWc.jpeg'),
(7, 'Soultrane', 'Soultrane...', 1958, 'https://upload.wikimedia.org/wikipedia/en/1/1d/John_Coltrane_-_Soultrane.jpg'),
(8, 'Duke Ellington and Coltrane ', 'Duke Ellington and Coltrane', 1963, 'https://soulbrother.com/wp-content/uploads/2022/02/56692.jpg'),
(9, 'The Dark Side Of The Moon', 'The Dark Side Of The Moon...', 1973, 'https://images.theconversation.com/files/512871/original/file-20230301-26-ryosag.jpg?ixlib=rb-1.1.0&rect=97%2C79%2C5799%2C5817&q=45&auto=format&w=926&fit=clip'),
(10, 'The Wall', 'The Wall...', 1979, 'https://thewallcomplete.com/wp-content/uploads/2016/07/Pink-Floyd-The-Wall-Book-2000-Front.jpg'),
(11, 'Wish You Were Here', 'Wish You Were Here...', 1975, 'https://i.discogs.com/YMUBiIscutL11EdQfQddkB8K9NhOgGYByxG9B7EFVrM/rs:fit/g:sm/q:90/h:600/w:597/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3NTc1/Ni0xMzk5NzM1MjQy/LTIxNDkuanBlZw.jpeg'),
(12, 'Rumours', 'Rumours...', 1977, 'https://i.ebayimg.com/images/g/uEoAAOSwy~Jfw~iC/s-l1600.jpg'),
(13, 'Future Games', 'Future Games...', 1971, 'https://magnetmagazine.com/wp-content/uploads/2021/09/FM-1024x1024.jpeg'),
(14, 'Penguin', 'Penguin...', 1973, 'https://rovimusic.rovicorp.com/image.jpg?c=V83of3YOnaf57qudsv_QqByhM-OFI8zG4l-qVpXXB1I=&f=4'),
(15, 'Born To Run', 'Born To Run...', 1975, 'https://cdn.shopify.com/s/files/1/0109/5807/8011/products/Borntorun.webp?v=1656148881'),
(16, 'Darkness on the Edge Of Town', 'Darkness on The Edge of Town...', 1978, 'https://i.scdn.co/image/ab67616d0000b273e2bb936c55fb54b0b9fdc666'),
(17, 'The River', 'The River...', 1980, 'https://cdn-p.smehost.net/sites/e8622626f9584d40b1a8fce8dfa6f567/wp-content/uploads/1980/10/springsteen-theriver-front.jpg'),
(18, 'Born in the U.S.A', 'Born in the U.S.A...', 1984, 'https://media.pitchfork.com/photos/610d5ec2e948362f2f4af499/1:1/w_450%2Cc_limit/100000x100000-999.jpg'),
(19, 'Eagles ', 'Eagles...', 1972, 'https://pbs.twimg.com/media/E20GSg1VEAM2ENU.jpg'),
(20, 'Desperado', 'Desperado...', 1973, 'https://www.therecordalbum.com/wp-content/uploads/2021/11/R-4324245-1559133855-6287.jpeg.jpg\r\n'),
(21, 'Hotel California', 'Hotel California...', 1976, 'https://i.etsystatic.com/17280630/r/il/9aed1a/4139656431/il_fullxfull.4139656431_bypx.jpg'),
(22, 'Led Zeppelin', 'Led Zeppelin...', 1969, 'https://www.thisdayinmusic.com/wp-content/uploads/2018/08/led-zeppelin-i.jpg'),
(23, 'Houses of the Holy', 'Houses of the Holy...', 1973, 'https://www.moma.org/media/W1siZiIsIjMwNTUzMyJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA5MCAtcmVzaXplIDIwMDB4MjAwMFx1MDAzZSJdXQ.jpg?sha=4ecf5e833e25a23a'),
(24, 'In Through the Out Door', 'In Through the Out Door...', 1979, 'https://m.media-amazon.com/images/I/81G8ylOgS8L._AC_SL1200_.jpg'),
(25, 'Aftermath', 'Aftermath...', 1966, 'https://petesmusic.co.uk/image/cache/data/R-13498292-1555337833-8166.jpeg-800x800.jpg'),
(26, 'Court and Spark', 'Court and Spark...', 1974, 'https://m.media-amazon.com/images/I/81oSoxCQKeL._AC_SL1500_.jpg'),
(27, 'Everything Must Go', 'Everything Must Go...', 2003, 'https://m.media-amazon.com/images/I/A1JOM-koWOL._AC_SL1500_.jpg'),
(28, 'In Square Circle', 'In Square Circle', 1985, 'https://raspinurecords.com/2951-large_default/in-square-circle-stevie-wonder.jpg'),
(29, 'Eat To The Beat', 'Eat To The Beat...', 1979, 'https://vinyl.bertelsmann.com/img/cover/06/L_05200-01.jpg'),
(30, 'One Hot Minute', 'One Hot Minute...', 1995, 'https://imagescdn.juno.co.uk/full/CS455670-01A-BIG.jpg'),
(31, 'Iron Flag', 'Iron Flag...', 2001, 'https://www.emp.co.uk/dw/image/v2/BBQV_PRD/on/demandware.static/-/Sites-master-emp/default/dw4544e28d/images/3/0/0/5/300575.jpg?sfrm=png'),
(32, 'The Car', 'The Car...', 2022, 'https://www.dominomusic.com/res/KQgq/1200_1200/am_thecar_lpx.jpg'),
(33, 'My World ', 'My World...', 1993, 'https://i.discogs.com/S1xH7HPT-a5kRj5lExkGeErCMw_ARlr3WRWLLoBtHN8/rs:fit/g:sm/q:90/h:592/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE2MTgw/NDYtMTU3NjUxODYx/NS00MjU4LmpwZWc.jpeg'),
(34, 'Brave New World', 'Brave New World...', 2000, 'https://lastfm.freetls.fastly.net/i/u/ar0/48701c0e5f77c85f3e754c2ecce15957.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `album_artist`
--

CREATE TABLE `album_artist` (
  `album_artist_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `album_artist`
--

INSERT INTO `album_artist` (`album_artist_id`, `album_id`, `artist_id`) VALUES
(1, 1, 17),
(2, 2, 17),
(3, 3, 17),
(4, 4, 17),
(5, 5, 17),
(6, 6, 44),
(7, 7, 44),
(8, 8, 45),
(9, 8, 44),
(10, 9, 1),
(11, 10, 1),
(12, 11, 1),
(13, 12, 2),
(14, 13, 2),
(15, 14, 2),
(16, 15, 3),
(17, 16, 3),
(18, 17, 3),
(19, 18, 3),
(20, 19, 4),
(21, 20, 4),
(22, 21, 4),
(23, 22, 5),
(24, 23, 5),
(25, 24, 5),
(26, 25, 6),
(27, 26, 7),
(28, 27, 8),
(29, 28, 9),
(30, 29, 10),
(31, 30, 11),
(32, 31, 70),
(33, 32, 54),
(34, 33, 35),
(35, 34, 18);

-- --------------------------------------------------------

--
-- Table structure for table `album_record_company`
--

CREATE TABLE `album_record_company` (
  `album_record_company_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `record_company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `album_record_company`
--

INSERT INTO `album_record_company` (`album_record_company_id`, `album_id`, `record_company_id`) VALUES
(1, 1, 14),
(2, 2, 15),
(3, 2, 14),
(4, 3, 15),
(5, 3, 14),
(6, 4, 15),
(7, 4, 14),
(8, 5, 15),
(9, 5, 14),
(10, 6, 50),
(11, 7, 50),
(12, 8, 51),
(13, 9, 2),
(14, 9, 5),
(15, 10, 2),
(16, 10, 16),
(17, 11, 2),
(18, 11, 1),
(19, 12, 52),
(20, 13, 4),
(21, 14, 4),
(22, 15, 1),
(23, 16, 1),
(24, 17, 1),
(25, 18, 1),
(26, 19, 6),
(27, 20, 6),
(28, 21, 6),
(29, 22, 14),
(30, 23, 14),
(31, 24, 53),
(32, 25, 54),
(33, 26, 6),
(34, 27, 4),
(35, 28, 56),
(36, 29, 57),
(37, 30, 52),
(38, 31, 1),
(39, 32, 58),
(40, 33, 52),
(41, 34, 16);

-- --------------------------------------------------------

--
-- Table structure for table `album_style`
--

CREATE TABLE `album_style` (
  `album_style_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `style_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `album_style`
--

INSERT INTO `album_style` (`album_style_id`, `album_id`, `style_id`) VALUES
(1, 1, 76),
(2, 1, 77),
(3, 2, 76),
(4, 2, 77),
(5, 3, 76),
(6, 3, 77),
(7, 4, 76),
(8, 4, 77),
(9, 5, 76),
(10, 5, 77),
(11, 6, 74),
(12, 7, 74),
(13, 8, 74),
(14, 9, 5),
(15, 9, 72),
(16, 10, 5),
(17, 11, 5),
(18, 11, 11),
(19, 12, 75),
(20, 13, 78),
(21, 14, 75),
(22, 15, 71),
(23, 16, 76),
(24, 17, 71),
(25, 18, 71),
(26, 19, 25),
(27, 19, 78),
(28, 20, 25),
(29, 20, 78),
(30, 21, 25),
(31, 21, 78),
(32, 22, 76),
(33, 22, 77),
(34, 23, 76),
(35, 24, 76),
(36, 25, 76),
(37, 25, 77),
(38, 26, 45),
(39, 27, 45),
(40, 28, 77),
(41, 29, 1),
(42, 30, 76),
(43, 30, 72),
(44, 31, 8),
(45, 32, 66),
(46, 33, 66),
(47, 34, 47);

-- --------------------------------------------------------

--
-- Table structure for table `album_track`
--

CREATE TABLE `album_track` (
  `album_track_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `album_track`
--

INSERT INTO `album_track` (`album_track_id`, `album_id`, `track_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 3, 19),
(20, 3, 20),
(21, 3, 21),
(22, 3, 22),
(23, 3, 23),
(24, 3, 24),
(25, 3, 25),
(26, 3, 26),
(27, 4, 27),
(28, 4, 28),
(29, 4, 29),
(30, 4, 30),
(31, 4, 31),
(32, 4, 32),
(33, 4, 33),
(34, 4, 34),
(35, 4, 35),
(36, 5, 36),
(37, 5, 37),
(38, 5, 38),
(39, 5, 39),
(40, 5, 40),
(41, 5, 41),
(42, 5, 42),
(43, 5, 43),
(44, 5, 44),
(45, 5, 45),
(46, 6, 46),
(47, 6, 47),
(48, 6, 48),
(49, 6, 49),
(50, 6, 50),
(51, 6, 51),
(52, 7, 52),
(53, 7, 53),
(54, 7, 54),
(55, 7, 55),
(56, 7, 56),
(57, 8, 57),
(58, 8, 58),
(59, 8, 59),
(60, 8, 60),
(61, 8, 61),
(62, 8, 62),
(63, 8, 63),
(64, 9, 64),
(65, 9, 65),
(66, 9, 66),
(67, 9, 67),
(68, 9, 68),
(69, 9, 69),
(70, 9, 70),
(71, 9, 71),
(72, 9, 72),
(73, 9, 73),
(74, 10, 74),
(75, 10, 75),
(76, 10, 76),
(77, 10, 77),
(78, 10, 78),
(79, 10, 79),
(80, 10, 80),
(81, 10, 81),
(82, 10, 82),
(83, 10, 83),
(84, 10, 84),
(85, 10, 85),
(86, 10, 86),
(87, 10, 87),
(88, 10, 88),
(89, 10, 89),
(90, 10, 90),
(91, 10, 91),
(92, 10, 92),
(93, 10, 93),
(94, 10, 94),
(95, 10, 95),
(96, 10, 96),
(97, 10, 97),
(98, 17, 98),
(99, 10, 99),
(100, 11, 100),
(101, 11, 101),
(102, 11, 102),
(103, 11, 103),
(104, 25, 104),
(105, 25, 105),
(106, 25, 106),
(107, 25, 107),
(108, 25, 108),
(109, 25, 109),
(110, 25, 110),
(111, 25, 111),
(112, 25, 112),
(113, 25, 113),
(114, 25, 114),
(115, 25, 115),
(116, 25, 116),
(117, 26, 117),
(118, 26, 118),
(119, 26, 119),
(120, 26, 120),
(121, 26, 121),
(122, 26, 122),
(123, 26, 123),
(124, 26, 124),
(125, 26, 125),
(126, 26, 126),
(127, 26, 127),
(128, 27, 128),
(129, 27, 129),
(130, 27, 130),
(131, 27, 131),
(132, 27, 132),
(133, 27, 133),
(134, 27, 134),
(135, 27, 135),
(136, 27, 136),
(137, 28, 137),
(138, 28, 138),
(139, 28, 139),
(140, 28, 140),
(141, 28, 141),
(142, 28, 142),
(143, 28, 143),
(144, 28, 144),
(145, 28, 145),
(146, 28, 146),
(147, 29, 147),
(148, 29, 148),
(149, 29, 149),
(150, 29, 150),
(151, 29, 151),
(152, 29, 152),
(153, 29, 153),
(154, 29, 154),
(155, 29, 155),
(156, 29, 156),
(157, 29, 157),
(158, 30, 158),
(159, 30, 159),
(160, 30, 160),
(161, 30, 161),
(162, 30, 162),
(163, 30, 163),
(164, 30, 164),
(165, 30, 165),
(166, 30, 166),
(167, 30, 167),
(168, 30, 168),
(169, 30, 169),
(170, 30, 170),
(171, 31, 171),
(172, 31, 172),
(173, 31, 173),
(174, 31, 174),
(175, 31, 175),
(176, 31, 176),
(177, 31, 177),
(178, 31, 178),
(179, 31, 179),
(180, 31, 180),
(181, 31, 181),
(182, 31, 182),
(183, 32, 183),
(184, 32, 184),
(185, 32, 185),
(186, 32, 186),
(187, 32, 187),
(188, 32, 188),
(189, 32, 189),
(190, 32, 190),
(191, 32, 191),
(192, 32, 192),
(193, 34, 203),
(194, 34, 204),
(195, 34, 205),
(196, 34, 206),
(197, 34, 207),
(198, 34, 208),
(199, 34, 209),
(200, 34, 210),
(201, 34, 211);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL,
  `artist_name` varchar(255) NOT NULL,
  `artist_description` text NOT NULL,
  `artist_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `artist_name`, `artist_description`, `artist_image`) VALUES
(1, 'Pink Floyd ', 'A rock band formed in London in 1965.', 'https://upload.wikimedia.org/wikipedia/en/thumb/d/d6/Pink_Floyd_-_all_members.jpg/250px-Pink_Floyd_-_all_members.jpg'),
(2, 'Fleetwood Mac', 'A rock band formed in London in 1967. Founded by Peter Green, Jeremy Spencer and Mick Fleetwood.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Fleetwood_Mac_Billboard_1977.jpg/640px-Fleetwood_Mac_Billboard_1977.jpg'),
(3, 'Bruce Springsteen ', 'An American singer and songwriter.', 'https://pyxis.nymag.com/v1/imgs/285/556/4cb8cb1d7be93a82be21cf454af04e5ab1-12-bruce-springsteen-2.rsquare.w700.jpg'),
(4, 'Eagles', 'A rock band formed in Los Angeles, 1971.', 'https://cdn.britannica.com/50/198850-050-46C563B5/Eagles-Bernie-Leadon-Don-Henley-Glenn-Frey.jpg'),
(5, 'Led Zeppelin', 'Led Zeppelin... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.udiscovermusic.com/wp-content/uploads/2020/11/Led-Zeppelin-GettyImages-84848509-1000x600.jpg'),
(6, 'The Rolling Stones', 'The Rolling Stones... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://cdn.britannica.com/41/197341-050-4859B808/The-Rolling-Stones-Bill-Wyman-Keith-Richards-1964.jpg'),
(7, 'Joni Mitchell', 'Joni Mitchell... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://i.guim.co.uk/img/media/fac5a42ffff614a5eaa958c02eee13d7547f656e/327_1036_5116_3068/master/5116.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=6e2ed149a786011651b49dfe131b5f2a'),
(8, 'Steely Dan', 'Steely Dan... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://media.newyorker.com/photos/6340988a55e285bc1b14ed6b/1:1/w_1999,h_2000,c_limit/Leu-Steely-Dan.jpg'),
(9, 'Stevie Wonder', 'Stevie Wonder... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://cdn.britannica.com/66/103166-050-9423AD02/Stevie-Wonder.jpg'),
(10, 'Blondie', 'Blondie... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Blondie1977.jpg/1200px-Blondie1977.jpg'),
(11, 'Red Hot Chilli Peppers ', 'Red Hot Chilli Peppers... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://i.guim.co.uk/img/media/c5ee7639198c9cdc058beed0486fff93a9654f7c/543_703_6053_3634/master/6053.jpg?width=1200&quality=85&auto=format&fit=max&s=19ec868c180dcb4faa1ec89883ba1ee8'),
(12, 'Michael Jackson', 'Michael Jackson... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://i.discogs.com/10-puAu0pWTplVoYjyZ1LfFRZKZkL3bYj3XiUt74z2s/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9BLTE1ODg1/LTE1NDY1OTA3NDYt/NDc4Ni5qcGVn.jpeg'),
(13, 'Prince and The Revolution', 'Prince and The Revolution... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://i.discogs.com/r4O9byNzUzGK5YBXZCdrMX_DgPmQ9WWqvGQgDs08t5s/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9BLTk2Nzc0/LTE2NDM5MTE5Nzct/MjkxOC5qcGVn.jpeg'),
(14, 'U2', 'U2... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.billboard.com/wp-content/uploads/2022/07/U2-2022-press-Olaf-Heine-billboard-1548.jpg?w=1024'),
(15, 'The Police', 'The Police... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://cdn.apollo.audio/one/media/6350/22ab/54e0/3605/1342/eb0c/the-police.jpg?quality=80&format=jpg&width=960&ratio=16-9'),
(16, 'Madonna', 'Madonna... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://rovimusic.rovicorp.com/image.jpg?c=-EPU9MVVjvwuv-bcUQI89lWnbEN5fCjifro6xhIBuB4=&f=4'),
(17, 'AC/DC', 'A rock band formed in Sydney in 1973 by brothers Malcolm and Angus Young.', 'https://data.mothership.tools/mothershiptools-ukprod/wp-content/uploads/2017/10/acdc-rectangle-1024x681.jpg'),
(18, 'Metallica', 'Metallica... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://m.media-amazon.com/images/M/MV5BZTNmNThlNzUtMTFkMS00ZTk3LWEyNjQtNGUyZWM1OGJhNjQzXkEyXkFqcGdeQXVyMjUyNDk2ODc@._V1_FMjpg_UX1000_.jpg'),
(19, 'Queen', 'Queen... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.udiscovermusic.com/wp-content/uploads/2020/10/Queen-GettyImages-84884224-1000x600.jpg'),
(20, 'The Doors', 'The Doors... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.billboard.com/wp-content/uploads/media/the-doors-1968-billboard-1548.jpg'),
(21, 'Aerosmith', 'A rock band formed in 1970 in Boston. The group is made up of Steven Tyler, Joe Perry, Tom Hamilton, Joey Kramer and Brad Whitford.', 'https://www.rollingstone.com/wp-content/uploads/1976/08/aerosmith-1976-cover.jpg?w=1581&h=1054&crop=1'),
(22, 'Black Sabbath', 'Black Sabbath... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://lastfm.freetls.fastly.net/i/u/ar0/69c4e3e6edc09e3c0d0b17dcb7bd96d1.jpg'),
(23, 'The Who', 'The Who... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.rollingstone.com/wp-content/uploads/2018/06/rs-230666-the-who.jpg?w=800'),
(24, 'Van Halen', 'Van Halen... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://i.scdn.co/image/ab6761610000e5ebd8475001d2700686e1008dfb'),
(25, 'Kiss', 'Kiss... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://storage.googleapis.com/afs-prod/media/2479531b627241a4a0619cc80406e4f3/3000.webp'),
(26, 'Coldplay', 'Coldplay... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://i.scdn.co/image/ab6761610000e5eb989ed05e1f0570cc4726c2d3'),
(27, 'Radiohead', 'Radiohead... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://live-production.wcms.abc-cdn.net.au/301cd00c4d1d4c5843bf28094e0c1165?impolicy=wcms_crop_resize&cropH=900&cropW=1600&xPos=0&yPos=0&width=862&height=485'),
(28, 'Lynyrd Skynyrd ', 'Lynyrd Skynyrd... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://i.discogs.com/AZiXx0SvFfVWIqG58-r3AafBXrDxBeYbaGmjcdMYMic/rs:fit/g:sm/q:90/h:585/w:510/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9BLTI2MTc2/MC0xMzUwMDI2Nzgy/LTU0ODcuanBlZw.jpeg'),
(29, 'Rush', 'Rush... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://static.onecms.io/wp-content/uploads/sites/6/2021/01/07/GettyImages-84885264.jpg'),
(30, 'Muddy Waters', 'Muddy Waters... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.udiscovermusic.com/wp-content/uploads/2020/11/Muddy-WatersGettyImages-84899400.jpg'),
(31, 'B.B. King', 'B.B. King... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://i.scdn.co/image/7e53bec2f958fa7fd1868124a0897cb0d08b60ee'),
(32, 'John Lee Hooker', 'John Lee Hooker... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://i.scdn.co/image/3b521a57a4507cbe4f981c1818af397f56614fdb'),
(33, 'Buddy Guy ', 'Buddy Guy... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://cdn.britannica.com/29/111729-050-81806291/Buddy-Guy-2000.jpg'),
(34, 'Stephen Ray Vaughan', 'Stephen Ray Vaughan... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://img.texasmonthly.com/2000/04/SRV.jpg?auto=compress&crop=faces&fit=fit&fm=jpg&h=0&ixlib=php-3.3.1&q=45&w=1250'),
(35, 'Ray Charles', 'Ray Charles... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://i.scdn.co/image/ab6761610000e5eb6fc460f10177fa38af69b8bf'),
(36, 'Jimi Hendrix', 'Jimi Hendrix... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.udiscovermusic.com/wp-content/uploads/2020/06/Jimi-Hendrix-GettyImages-85001690-1000x600.jpg'),
(37, 'Janis Joplin', 'Janis Joplin... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://i8.amplience.net/i/naras/mary_bridget_davies-163913767.jpg.jpg?w=821&sm=c'),
(38, 'Ariana Grande', 'Ariana Grande... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://media.glamourmagazine.co.uk/photos/6138914270a13dae5bdea454/1:1/w_1920,h_1920,c_limit/arianagrande_sq.jpg'),
(39, 'Taylor Swift ', 'Taylor Swift... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://media.cnn.com/api/v1/images/stellar/prod/230318120009-01-taylor-swift-eras-tour-0317.jpg?c=4x3'),
(40, 'Beyonce ', 'Beyonce... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://pyxis.nymag.com/v1/imgs/2c8/c8d/6eb151365547d1eee0bb8f5cb0f7bc332c-06-beyonce.rsquare.w700.jpg'),
(41, 'David Bowie', 'David Bowie... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://i.scdn.co/image/ab6761610000e5ebb78f77c5583ae99472dd4a49'),
(42, 'Frank Sinatra', 'Frank Sinatra... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://d3i6fh83elv35t.cloudfront.net/newshour/app/uploads/2015/12/GettyImages-85339538-1024x889.jpg'),
(43, 'Louis Armstrong', 'Louis Armstrong... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://upload.wikimedia.org/wikipedia/commons/0/0e/Louis_Armstrong_restored.jpg'),
(44, 'John Coltrane', 'John Coltrane Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://macdndev.azureedge.net/genesis-temp/5/1/b/5/e/1/51b5e12182ed431bdf8d95cb6220d794f64d9b17.jpg'),
(45, 'Duke Ellington', 'Duke Ellington... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://music.si.edu/sites/default/files/pictures/ellington_-_from_the_scurlock_photographic_collection_nmah_-_618psduke.jpg'),
(46, 'Huey Lewis & The News ', 'Huey Lewis & The News... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://m.media-amazon.com/images/M/MV5BYjVkNDM2NjktMThiZi00YjczLTgwNjEtMTI4NDM2MmEwYWI5XkEyXkFqcGdeQXVyMjUyNDk2ODc@._V1_.jpg'),
(47, 'Carrie Underwood', 'Carrie Underwood... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://iscale.iheart.com/v3/surl/aHR0cDovL2ltYWdlLmloZWFydC5jb20vaW1hZ2VzL292ZXJyaWRlLzg5NDE2X2UxYTQyY2E5LTRkODYtNDFmZi04OTlkLWE2NjE0ZTUzNzBhOS5qcGc=?sn=eGtleWJhc2UyMDIxMTExMDo17YRmRmxZv1bG1_qwwp3BqX7QZzaZd88Fd7Vl6FkLlg%3D%3D&surrogate=1cOXl179JY-syhxYSC'),
(48, 'Johnny Cash', 'Johnny Cash... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://i.discogs.com/23dt4Zj7gP92-JN-PPLadxG2XqoNTT5KmD-rHkWGJmI/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9BLTEzNTk0/Ni0xNjE0MTkzOTc2/LTE4MDMuanBlZw.jpeg'),
(49, 'Hank Williams', 'Hank Williams... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://i.guim.co.uk/img/media/6fa640b0a95e16c5216910f1e6d4b021a69de2e7/4_0_1775_1065/master/1775.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=daa30e5f3e6db839db57d6060d3a4563'),
(50, 'Dolly Parton', 'Dolly Parton... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Young-Dolly-Parton.jpg'),
(51, 'Shania Twain', 'Shania Twain... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.singers.com/people/images/ShaniaTwain.jpg'),
(52, 'Strauss', 'Strauss... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://cdn.britannica.com/16/134616-050-B1778C74/Johann-Strauss-the-Younger.jpg?w=400&h=300&c=crop'),
(53, 'Mozart', 'Mozart... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://assets.classicfm.com/2021/50/mozarts-best-works-1639486421-list-handheld-0.jpg'),
(54, 'Arctic Monkeys', 'A rock band formed in Sheffield in 2002. The group is made up of Alex Turner, Jamie Cook, Nick O\'Malley, and Matt Helders. ', 'https://i.scdn.co/image/ab6761610000e5eb7da39dea0a72f581535fb11f'),
(55, 'Blink-182', 'Blink-182... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://cdn.smehost.net/2020sonymusiccouk-ukprod/wp-content/uploads/2019/10/94a987d30cb47018095feb0256661d94.jpg'),
(56, 'Florence + the Machine', 'Florence + the Machine... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://static.ffx.io/images/$zoom_0.157%2C$multiply_0.7725%2C$ratio_1.5%2C$width_756%2C$x_0%2C$y_126/t_crop_custom/q_86%2Cf_auto/ea29c8cedd4d8362854affbdb6b024b7cdebf7eb'),
(57, 'Green Day', 'Green Day... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://cdns-images.dzcdn.net/images/artist/ea15e157c48dd7cc28f3e1fe3ac029a8/500x500.jpg'),
(58, 'The Killers', 'The Killers... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://s1.ticketm.net/dam/a/0bc/add73c43-3712-4a4e-96c2-1e7dc177d0bc_1490861_TABLET_LANDSCAPE_LARGE_16_9.jpg'),
(59, 'Calvin Harris', 'Calvin Harris... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://i2-prod.mirror.co.uk/incoming/article26082130.ece/ALTERNATES/s1200c/0_Calvin-Harris.jpg'),
(60, 'David Guetta', 'David Guetta Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://yt3.googleusercontent.com/ytc/AL5GRJU9cqqMsIBsfgueCzUvrOjf774u4cJPzQ1YVtQTCw=s900-c-k-c0x00ffffff-no-rj'),
(61, 'Tiësto', 'Tiësto... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://weraveyou.com/wp-content/uploads/2021/10/DJ-Tiesto.jpg'),
(62, 'Gorillaz ', 'Gorillaz... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://pyxis.nymag.com/v1/imgs/b65/64a/6a724eeb9afb10c46f9684b2a1849b87c2-gorillaz.rhorizontal.w700.jpg'),
(63, 'Daft Punk', 'Daft Punk... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://media.gq.com/photos/5582d72009f0bee564402435/16:9/pass/style-2013-05-daft-punk-daft-punk-630.jpg'),
(64, 'Swedish House Mafia', 'Swedish House Mafia... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.billboard.com/wp-content/uploads/media/swedish-house-mafia-press-2013-650-430.jpg?w=650'),
(65, 'Bob Dylan', 'Bob Dylan... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.rollingstone.com/wp-content/uploads/1984/06/bob-dylan-1984.jpg'),
(66, 'Iron Maiden', 'Iron Maiden... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://lastfm.freetls.fastly.net/i/u/ar0/548457179486d936657fd44c25962584.jpg'),
(67, 'The Weeknd', 'The Weeknd... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/The_Weeknd_Portrait_by_Brian_Ziff.jpg/1200px-The_Weeknd_Portrait_by_Brian_Ziff.jpg'),
(68, 'Diana Ross', 'Diana Ross... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://m.media-amazon.com/images/M/MV5BMzU4MDU1NzgwOF5BMl5BanBnXkFtZTgwMTgwMDAwMjE@._V1_.jpg'),
(69, 'Aretha Franklin', 'Aretha Franklin... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://hips.hearstapps.com/hmg-prod/images/gettyimages-74271305.jpg'),
(70, 'Wu-Tang Clan', 'Wu-Tang Clan... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.okayplayer.com/wp-content/uploads/2020/12/GettyImages-1279229280.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `collection_id` int(11) NOT NULL,
  `collection_name` varchar(255) NOT NULL,
  `collection_description` varchar(255) NOT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`collection_id`, `collection_name`, `collection_description`, `album_id`) VALUES
(4, 'Rock Music', 'My Favourite Rock Music', 5),
(5, 'Jazz ', 'My Favourite Jazz Music', 28);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(255) NOT NULL,
  `genre_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`, `genre_description`) VALUES
(1, 'Alternative', 'A category of rock music that emerged from the independent music underground of the 1970s and became widely popular in the 1990s.'),
(2, 'Blues', 'Blues Music...'),
(3, 'Classical', 'Classical Music...'),
(4, 'Country', 'Country Music...'),
(5, 'Dance', 'Dance Music...'),
(6, 'Electronic', 'Electronic Music...'),
(7, 'Folk', 'Folk Music...'),
(8, 'Jazz', 'Originated in the African-American communities of New Orleans, Louisiana, in the late 19th and early 20th centuries, with its roots in blues and ragtime.'),
(9, 'Metal', 'A genre of rock music that developed in the late 1960s and early 1970s, largely in the United Kingdom and United States.'),
(10, 'Pop', 'A genre of popular music that originated in its modern form during the mid-1950s in the United States and the United Kingdom.'),
(11, 'R&B/Soul', 'A popular music genre that originated in the African American community throughout the United States in the late 1950s and early 1960s.'),
(12, 'Rock', 'Originated as \"rock and roll\" in the late 1940s and early 1950s.'),
(13, 'World', 'World Music...'),
(14, 'Hip-Hop', 'A genre of popular music that originated in the Bronx borough of New York City in the early 1970s.');

-- --------------------------------------------------------

--
-- Table structure for table `genre_album`
--

CREATE TABLE `genre_album` (
  `genre_album_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `genre_album`
--

INSERT INTO `genre_album` (`genre_album_id`, `genre_id`, `album_id`) VALUES
(1, 12, 1),
(2, 12, 2),
(3, 12, 3),
(4, 12, 4),
(5, 12, 5),
(6, 8, 6),
(7, 8, 7),
(8, 8, 8),
(9, 12, 25),
(10, 12, 26),
(11, 8, 27),
(12, 11, 28),
(13, 2, 28),
(14, 10, 29),
(15, 12, 30),
(16, 14, 31),
(17, 1, 32),
(18, 11, 33),
(19, 9, 34);

-- --------------------------------------------------------

--
-- Table structure for table `genre_artist`
--

CREATE TABLE `genre_artist` (
  `genre_artist_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `genre_artist`
--

INSERT INTO `genre_artist` (`genre_artist_id`, `genre_id`, `artist_id`) VALUES
(1, 12, 1),
(2, 12, 2),
(3, 12, 3),
(4, 5, 3),
(5, 6, 3),
(6, 12, 4),
(7, 10, 4),
(8, 12, 5),
(9, 12, 6),
(10, 10, 6),
(11, 2, 6),
(12, 7, 7),
(13, 12, 8),
(14, 10, 8),
(15, 11, 9),
(16, 1, 9),
(17, 5, 9),
(18, 6, 9),
(19, 12, 10),
(20, 12, 11),
(21, 5, 12),
(22, 6, 12),
(23, 10, 12),
(24, 12, 13),
(25, 12, 14),
(26, 12, 15),
(27, 10, 16),
(28, 6, 16),
(29, 5, 16),
(30, 12, 17),
(31, 9, 18),
(32, 12, 18),
(33, 11, 19),
(34, 12, 19),
(35, 12, 20),
(36, 12, 21),
(37, 9, 22),
(38, 12, 23),
(39, 12, 25),
(40, 9, 25),
(41, 12, 26),
(42, 10, 26),
(43, 1, 27),
(44, 12, 28),
(45, 12, 29),
(46, 2, 30),
(47, 2, 31),
(48, 11, 31),
(49, 12, 31),
(50, 2, 32),
(51, 2, 33),
(52, 2, 34),
(53, 12, 34),
(54, 11, 35),
(55, 10, 35),
(56, 8, 35),
(57, 2, 35),
(58, 10, 36),
(59, 14, 36),
(60, 12, 36),
(61, 2, 36),
(62, 12, 37),
(63, 5, 38),
(64, 6, 38),
(65, 10, 38),
(66, 10, 39),
(67, 4, 39),
(68, 7, 39),
(69, 11, 40),
(70, 10, 40),
(71, 14, 40),
(72, 12, 41),
(73, 10, 41),
(74, 6, 41),
(75, 8, 42),
(76, 10, 42),
(77, 8, 43),
(78, 8, 44),
(79, 8, 45),
(80, 10, 45),
(81, 12, 46),
(82, 10, 46),
(83, 4, 47),
(84, 4, 48),
(85, 2, 48),
(86, 7, 48),
(87, 12, 48),
(88, 4, 49),
(89, 4, 50),
(90, 4, 51),
(91, 10, 51),
(92, 3, 52),
(93, 3, 53),
(94, 1, 54),
(95, 12, 55),
(96, 1, 56),
(97, 12, 57),
(98, 13, 58),
(99, 1, 58),
(100, 6, 59),
(101, 10, 59),
(102, 6, 60),
(103, 5, 60),
(104, 6, 61),
(105, 5, 61),
(106, 6, 62),
(107, 14, 62),
(108, 12, 62),
(109, 5, 63),
(110, 6, 63),
(111, 5, 64),
(112, 6, 64),
(113, 7, 65),
(114, 2, 65),
(115, 12, 65),
(116, 4, 65),
(117, 10, 65),
(118, 8, 65),
(119, 9, 66),
(120, 11, 67),
(121, 10, 67),
(122, 14, 67),
(123, 5, 67),
(124, 11, 68),
(125, 10, 68),
(126, 5, 68),
(127, 11, 69),
(128, 5, 69),
(129, 14, 70),
(130, 13, 50);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `member_description` text DEFAULT NULL,
  `member_email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `member_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `first_name`, `last_name`, `member_description`, `member_email`, `username`, `member_password`) VALUES
(5, 'Loretta', 'Alliot', NULL, '', 'lalliott0', '1wGDjcQpblB'),
(6, 'Jacky', 'Ware', NULL, 'jware1@mozilla.org\r\n', 'jware1\r\n', 'oRgljdkk\r\n'),
(7, 'Merrilee\r\n', 'Thring', NULL, 'mthring2@mac.com\r\n', 'mthring2\r\n', '4LqfYOeBt\r\n'),
(8, 'Frederic', 'Collins', NULL, '', 'fcollinse', '8pGumg'),
(9, 'Katha', 'Ledgeway', NULL, '', 'kledgewaym', 'yd8Wx6xH');

-- --------------------------------------------------------

--
-- Table structure for table `record_company`
--

CREATE TABLE `record_company` (
  `record_company_id` int(11) NOT NULL,
  `record_company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `record_company`
--

INSERT INTO `record_company` (`record_company_id`, `record_company_name`) VALUES
(1, 'Columbia'),
(2, 'Harvest'),
(3, 'Blue Horizon'),
(4, 'Reprise'),
(5, 'Capitol Records'),
(6, 'Asylum Records'),
(7, 'Geffen Records'),
(8, 'Universal Music Group'),
(9, 'Warner Music Group'),
(10, 'Polydor Records '),
(11, 'Warner Music Australia'),
(12, 'Universal Music Group Nashville'),
(13, 'Lost Highway Records'),
(14, 'Atlantic Records'),
(15, 'Albert Productions'),
(16, 'EMI'),
(17, 'Epic Records'),
(18, 'Sony Music Australia'),
(19, 'Atco Records'),
(20, 'East West Records'),
(21, 'RCA Records '),
(22, 'Loud Records'),
(23, 'Razor Sharp Records '),
(24, 'Republic Records '),
(25, 'Arista Records'),
(26, 'Motown'),
(27, 'Parlophone'),
(28, 'Angel Records '),
(29, 'Lu Pine Records '),
(30, 'Manhattan Records '),
(31, 'XO'),
(32, 'XO Records'),
(33, 'Bertelsmann Music Group'),
(34, 'Legacy Recordings '),
(35, 'Warner Music Sweden'),
(36, 'Sanctuary Records'),
(37, 'Island Records'),
(38, 'Ministry of Sound'),
(39, 'Virgin Records '),
(40, 'Duophonic Records'),
(41, 'Def Jam Recordings'),
(42, 'Musical Freedom Records'),
(43, 'Black Hole Recordings'),
(44, 'Ultra Recordings'),
(45, 'Revealed Recordings'),
(46, 'Kontor Records'),
(47, 'Nettwerk'),
(48, 'Nebula'),
(49, 'Weinstock'),
(50, 'Prestige'),
(51, 'Impulse!'),
(52, 'Warner Bros'),
(53, 'Swan Song'),
(54, 'Decca'),
(56, 'Tamla'),
(57, 'Chrysalis'),
(58, 'Domino');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `review_title` varchar(255) NOT NULL,
  `review_description` text NOT NULL,
  `collection` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review_title`, `review_description`, `collection`) VALUES
(4, 'Rock Music Review', 'Great collection, a lot of wonderful classics!', '4'),
(5, 'Jazz', 'Great collection, wonderful memories.', 'Jazz');

-- --------------------------------------------------------

--
-- Table structure for table `style`
--

CREATE TABLE `style` (
  `style_id` int(11) NOT NULL,
  `style_name` varchar(255) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `style`
--

INSERT INTO `style` (`style_id`, `style_name`, `genre_id`) VALUES
(1, 'New Wave', 1),
(2, 'Punk', 1),
(3, 'House', 5),
(4, 'Synthpop', 10),
(5, 'Prog Rock', 12),
(6, 'Chicago Blues ', 2),
(7, 'Indie Folk', 7),
(8, 'West Coast Hip-Hop', 14),
(9, 'Alternative R&B', 11),
(10, 'Art Punk', 1),
(11, 'Experimental Rock', 1),
(12, 'Folk Punk', 1),
(13, 'Grunge', 1),
(15, 'Acoustic Blues', 2),
(16, 'Classic Blues', 2),
(17, 'Country Blues', 2),
(18, 'Opera', 3),
(19, 'Alternative Country', 4),
(20, 'Blues Country', 4),
(21, 'Christian Country', 4),
(22, 'Classic Country', 4),
(23, 'Country Pop', 4),
(24, 'Country Rap', 4),
(25, 'Country Rock', 4),
(26, 'Country Soul', 4),
(27, 'Traditional Country', 4),
(28, 'Electro House', 5),
(29, 'Electroswing', 5),
(30, 'Dubstep', 5),
(31, 'Techno', 5),
(32, 'Ambient', 6),
(33, 'Drum & Bass', 6),
(34, 'Electronic Rock', 6),
(35, 'Dance-Punk', 6),
(36, 'Electropunk', 6),
(37, 'Industrial Folk', 7),
(38, 'Progressive Folk', 7),
(39, 'Psychedelic Folk', 7),
(40, 'American Folk Revival', 7),
(41, 'British Folk Revival', 7),
(42, 'Bebop', 8),
(43, 'Contemporary Jazz', 8),
(44, 'Jazz Blues', 8),
(45, 'Jazz Rock', 8),
(46, 'Smooth Jazz', 8),
(47, 'Heavy Metal', 9),
(48, 'Speed Metal', 9),
(49, 'Thrash Metal', 9),
(50, 'Power Metal', 9),
(51, 'Death Metal', 9),
(52, 'Progressive Metal', 9),
(53, 'Hardcore', 9),
(54, 'Metalcore', 9),
(55, 'Bubblegum Pop', 10),
(56, 'Adult Contemporary', 10),
(57, 'Christian Pop', 10),
(58, 'Europop', 10),
(59, 'Dance Pop', 10),
(60, 'Electro Pop', 10),
(61, 'Psychedelic Pop', 10),
(63, 'Contemporary R&B', 11),
(64, 'Disco', 11),
(65, 'Doo Wop', 11),
(66, 'Funk', 11),
(67, 'Motown', 11),
(68, 'Psychedelic Soul', 11),
(69, 'Alternative Rock', 12),
(71, 'Rock & Roll', 12),
(72, 'Psychedelic', 12),
(73, 'Rap', 14),
(74, 'Hard Bop', 8),
(75, 'Soft Rock', 12),
(76, 'Hard Rock', 12),
(77, 'Blues Rock', 12),
(78, 'Folk Rock', 7);

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `track_id` int(11) NOT NULL,
  `track_name` varchar(255) NOT NULL,
  `track_duration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`track_id`, `track_name`, `track_duration`) VALUES
(1, 'It\'s a Long Way to the Top (If You Wanna Rock \'n\' Roll)', '5:02'),
(2, 'Rock \'n\' Roll Singer', '5:04'),
(3, 'The Jack', '5:53'),
(4, 'Live Wire', '5:50'),
(5, 'TNT', '3:35'),
(6, 'Can I Sit next To You Girl', '4:12'),
(7, 'Little Lover ', '5:40'),
(8, 'She\'s Got Balls', '4:52'),
(9, 'High Voltage', '4:04'),
(10, 'Dirty Deeds Done Dirt Cheap', '3:51'),
(11, 'Love At First Feel', '3:08'),
(12, 'Big Balls', '2:39'),
(13, 'Rocker ', '2:49'),
(14, 'Problem Child ', '5:45'),
(15, 'There\'s Gonna Be Some Rockin\'', '3:15'),
(16, 'Ain\'t No Fun (Waiting Round To Be A Millionaire)', '6:51'),
(17, 'Ride On', '5:48'),
(18, 'Squealer', '5:12'),
(19, 'Go Down', '5:17'),
(20, 'Dog Eat Dog', '3:30'),
(21, 'Let There Be Rock', '6:02'),
(22, 'Bad Boy Boogie', '4:18'),
(23, 'Overdose ', '5:47'),
(24, 'Crabsody in Blue', '3:49'),
(25, 'Hell Ain\'t A Bad Place To Be', '4:12'),
(26, 'Whole Lotta Rosie', '5:25'),
(27, 'Rock \'N\' Roll Damnation', '3:35'),
(28, 'Down Payment Blues', '6:20'),
(29, 'Gimme A Bullet', '3:00'),
(30, 'Riff Raff', '5:14'),
(31, 'Sin City', '4:40'),
(32, 'What\'s Next To The Moon', '3:15'),
(33, 'Gone Shootin\'', '4:05'),
(34, 'Up To My Neck in You', '4:58'),
(35, 'Kicked in The Teeth', '3:45'),
(36, 'Highway To Hell', '3:26'),
(37, 'Girls Got Rhythm', '3:23'),
(38, 'Walk All Over You', '5:08'),
(39, 'Touch Too Much', '4:24'),
(40, 'Beating Around The Bush', '3:55'),
(41, 'Shot Down in Flames', '3:21'),
(42, 'Get It Hot', '2:24'),
(43, 'If You Want Blood (You\'ve Got It)', '4:32'),
(44, 'Love Hungry Man', '4:14'),
(45, 'Night Prowler', '6:13'),
(46, 'Bakai', '8:44'),
(47, 'Violet for Your Furs', '6:18'),
(48, 'Time Was', '7:31'),
(49, 'Straight Street', '6:21'),
(50, 'While My Lady Sleeps', '4:44'),
(51, 'Chronic Blues', '8:12'),
(52, 'Good Bait', '12:08'),
(53, 'I Want to Talk About You', '10:53'),
(54, 'You Say You Care', '6:16'),
(55, 'Theme For Ernie', '4:57'),
(56, 'Russian Lullaby', '5:33'),
(57, 'In a Sentimental Mood', '4:14'),
(58, 'Take the Coltrane', '4:42'),
(59, 'Big Nick', '4:30'),
(60, 'Stevie', '4:22'),
(61, 'My Little Brown Book', '5:20'),
(62, 'Angelica', '6:00'),
(63, 'The Feeling of Jazz', '5:34'),
(64, 'Speak to Me', '1:05'),
(65, 'Breathe', '2:49'),
(66, 'On the Run', '3:45'),
(67, 'Time', '6:53'),
(68, 'The Great Gig in the Sky', '4:43'),
(69, 'Money', '6:22'),
(70, 'Us and Them', '7:49'),
(71, 'Any Colour You Like', '3:26'),
(72, 'Brain Damage', '3:46'),
(73, 'Eclipse', '2:12'),
(74, 'In The Flesh?', '3:16'),
(75, 'The Thin Ice', '2:27'),
(76, 'Another Brick in the Wall, Part 1', '3:11'),
(77, 'The Happiest Days of Our Lives', '1:46'),
(78, 'Another Brick in the Wall, Part 2', '3:59'),
(79, 'Mother', '5:32'),
(80, 'Goodbye Blue Skys', '2:45'),
(81, 'Empty Spaces', '2:10'),
(82, 'Young Lust', '3:25'),
(83, 'One Of My Turns', '3:41'),
(84, 'Don\'t Leave Me Now', '4:08'),
(85, 'Another Brick in the Wall, Part 3', '1:18'),
(86, 'Goodbye Cruel World', '1:16'),
(87, 'Hey You', '4:40'),
(88, 'Is There Anybody Out There?', '2:44'),
(89, 'Nobody Home', '3:26'),
(90, 'Vera', '1:35'),
(91, 'Bring the Boys Back Home', '1:21'),
(92, 'Comfortably Numb', '6:21'),
(93, 'The Show Must Go On', '1:36'),
(94, 'In The Flesh', '4:15'),
(95, 'Run Like Hell', '4:20'),
(96, 'Waiting for the Worms', '4:04'),
(97, 'Stop', '0:30'),
(98, 'The Trial', '5:13'),
(99, 'Outside The Wall', '1:41'),
(100, 'Shine On You Crazy Diamond', '13:32'),
(101, 'Welcome to the Machine', '7:28'),
(102, 'Have a Cigar ', '5:08'),
(103, 'Wish You Were Here', '5:35'),
(104, 'Mother\'s Little Helper', '2:40'),
(105, 'Stupid Girl', '2:52'),
(106, 'Lady Jane ', '3:06'),
(107, 'Under My Thumb', '3:20'),
(108, 'Doncha Bother Me', '2:35'),
(109, 'Flight 505', '3:25'),
(110, 'High and Dry', '3:06'),
(111, 'Out of Time', '5:15'),
(112, 'It\'s Not Easy', '2:52'),
(113, 'I Am Waiting ', '3:10'),
(114, 'Take It or Leave It', '2:47'),
(115, 'Think', '3:10'),
(116, 'What to Do', '2:30'),
(117, 'Court and Spark', '2:46'),
(118, 'Help Me', '3:22'),
(119, 'Free Man in Paris', '3:02'),
(120, 'People\'s Parties', '2:15'),
(121, 'The Same Situation', '2:57'),
(122, 'Car on a Hill', '3:02'),
(123, 'Down to You', '5:38'),
(124, 'Just Like This Train', '4:24'),
(125, 'Raised on Robbery', '3:06'),
(126, 'Trouble Child', '4:00'),
(127, 'Twisted', '2:21'),
(128, 'The Last Mall', '3:36'),
(129, 'Things I Miss The Most', '3:59'),
(130, 'Blues Beach', '4:29'),
(131, 'Godwhacker', '4:57'),
(132, 'Slang of Ages', '4:15'),
(133, 'Green Book', '5:55'),
(134, 'Pixeleen', '4:01'),
(135, 'Lunch With Gina', '4:27'),
(136, 'Everything Must Go', '6:45'),
(137, 'Part-Time Lover ', '4:09'),
(138, 'I Love You Too Much', '5:30'),
(139, 'Whereabouts', '4:17'),
(140, 'Stranger on The Shore Of Love', '5:01'),
(141, 'Never in Your Sun', '4:07'),
(142, 'Spiritual Walkers ', '5:12'),
(143, 'Land of La La', '5:14'),
(144, 'Go Home', '5:18'),
(145, 'Overjoyed', '3:43'),
(146, 'It\'s Wrong (Apartheid)', '3:29'),
(147, 'Dreaming ', '3:02'),
(148, 'The Hardest Part ', '3:37'),
(149, 'Union City Blue', '3:19'),
(150, 'Shayla', '3:51'),
(151, 'Eat To The Beat', '2:35'),
(152, 'Die Young Stay Pretty', '3:37'),
(153, 'Slow Motion', '3:25'),
(154, 'Atomic', '4:35'),
(155, 'Sound-A-Sleep', '4:12'),
(156, 'Victor', '3:19'),
(157, 'Living in The Real World', '2:38'),
(158, 'Warped ', '5:04'),
(159, 'Aeroplane', '4:44'),
(160, 'Deep Kick', '6:34'),
(161, 'My Friends', '4:03'),
(162, 'Coffee Shop', '3:08'),
(163, 'Pea', '1:46'),
(164, 'One Big Mob', '6:01'),
(165, 'Walkabout', '5:07'),
(166, 'Tearjerker', '4:19'),
(167, 'One Hot Minute', '6:25'),
(168, 'Falling Into Grace', '3:47'),
(169, 'Shallow By Thy Game', '4:33'),
(170, 'Transcending ', '5:43'),
(171, 'In The Hood', '4:10'),
(172, 'Rules ', '3:53'),
(173, 'Chrome Wheels', '4:14'),
(174, 'Soul Power ', '4:52'),
(175, 'Uzi', '5:20'),
(176, 'One of These Days', '4:13'),
(177, 'Y\'all Been Warned ', '4:15'),
(178, 'Babies ', '5:08'),
(179, 'Radioactive ', '3:30'),
(180, 'Back in The Game', '4:34'),
(181, 'Iron Flag', '6:35'),
(182, 'Dashing(Reasons)', '4:44'),
(183, 'There\'d Better Be a Mirrorball', '4:25'),
(184, 'I Ain\'t Quite Where I Think I Am', '3:11'),
(185, 'Sculptures of Anything Goes ', '3:59'),
(186, 'Jet Skis On The Moat', '3:17'),
(187, 'Body Paint ', '4:50'),
(188, 'The Car', '3:18'),
(189, 'Big Ideas ', '3:57'),
(190, 'Hello You', '4:04'),
(191, 'Mr Schwartz', '3:30'),
(192, 'Perfect Sense', '2:47'),
(193, 'My World ', '4:01'),
(194, 'A Song For You', '4:12'),
(195, 'None of Us Are Free', '4:59'),
(196, 'So Help Me God ', '3:59'),
(197, 'Let Me Take Over ', '5:25'),
(198, 'One Drop of Love ', '4:22'),
(199, 'If I could ', '4:52'),
(200, 'Love Has A Mind of It\'s Own', '4:06'),
(201, 'I\'ll Be There ', '3:47'),
(202, 'Still Crazy After All These Years', '4:57'),
(203, 'The Wicker Man', '4:35'),
(204, 'Ghost of The Navigator', '6:50'),
(205, 'Brave New World ', '6:18'),
(206, 'Blood Brothers ', '7:14'),
(207, 'The Mercenary', '4:42'),
(208, 'Dream of Mirrors ', '9:21'),
(209, 'The Fallen Angel', '4:00'),
(210, 'The Nomad ', '9:06'),
(211, 'Out of the Silent Planet ', '6:25'),
(212, 'The Thin Line Between Love and Hate ', '8:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `album_artist`
--
ALTER TABLE `album_artist`
  ADD PRIMARY KEY (`album_artist_id`),
  ADD KEY `FK_album_album_id` (`album_id`),
  ADD KEY `FK_artist_id` (`artist_id`);

--
-- Indexes for table `album_record_company`
--
ALTER TABLE `album_record_company`
  ADD PRIMARY KEY (`album_record_company_id`),
  ADD KEY `FK___record_company_record_company_id` (`record_company_id`),
  ADD KEY `FK___album___album_id` (`album_id`);

--
-- Indexes for table `album_style`
--
ALTER TABLE `album_style`
  ADD PRIMARY KEY (`album_style_id`),
  ADD KEY `FK____album_album_id` (`album_id`),
  ADD KEY `FK____style_style_id` (`style_id`);

--
-- Indexes for table `album_track`
--
ALTER TABLE `album_track`
  ADD PRIMARY KEY (`album_track_id`),
  ADD KEY `FK__album____album_id` (`album_id`),
  ADD KEY `FK__track____track_id` (`track_id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`collection_id`),
  ADD KEY `FK_album_album_____-id` (`album_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `genre_album`
--
ALTER TABLE `genre_album`
  ADD PRIMARY KEY (`genre_album_id`),
  ADD KEY `FK_genre_genre_id` (`genre_id`),
  ADD KEY `FK__album__album__id` (`album_id`);

--
-- Indexes for table `genre_artist`
--
ALTER TABLE `genre_artist`
  ADD PRIMARY KEY (`genre_artist_id`),
  ADD KEY `FK__genre__genre_id` (`genre_id`),
  ADD KEY `FK_artist__artist_id` (`artist_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `record_company`
--
ALTER TABLE `record_company`
  ADD PRIMARY KEY (`record_company_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`style_id`),
  ADD KEY `FK_genre__genre_id` (`genre_id`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`track_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `album_artist`
--
ALTER TABLE `album_artist`
  MODIFY `album_artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `album_record_company`
--
ALTER TABLE `album_record_company`
  MODIFY `album_record_company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `album_style`
--
ALTER TABLE `album_style`
  MODIFY `album_style_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `album_track`
--
ALTER TABLE `album_track`
  MODIFY `album_track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `genre_album`
--
ALTER TABLE `genre_album`
  MODIFY `genre_album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `genre_artist`
--
ALTER TABLE `genre_artist`
  MODIFY `genre_artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `record_company`
--
ALTER TABLE `record_company`
  MODIFY `record_company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `style`
--
ALTER TABLE `style`
  MODIFY `style_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album_artist`
--
ALTER TABLE `album_artist`
  ADD CONSTRAINT `FK_album_album_id` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `FK_artist_id` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`);

--
-- Constraints for table `album_record_company`
--
ALTER TABLE `album_record_company`
  ADD CONSTRAINT `FK___album___album_id` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `FK___record_company_record_company_id` FOREIGN KEY (`record_company_id`) REFERENCES `record_company` (`record_company_id`);

--
-- Constraints for table `album_style`
--
ALTER TABLE `album_style`
  ADD CONSTRAINT `FK____album_album_id` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `FK____style_style_id` FOREIGN KEY (`style_id`) REFERENCES `style` (`style_id`);

--
-- Constraints for table `album_track`
--
ALTER TABLE `album_track`
  ADD CONSTRAINT `FK__album____album_id` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `FK__track____track_id` FOREIGN KEY (`track_id`) REFERENCES `track` (`track_id`);

--
-- Constraints for table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `FK_album_album_____-id` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`);

--
-- Constraints for table `genre_album`
--
ALTER TABLE `genre_album`
  ADD CONSTRAINT `FK__album__album__id` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `FK_genre_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);

--
-- Constraints for table `genre_artist`
--
ALTER TABLE `genre_artist`
  ADD CONSTRAINT `FK__genre__genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`),
  ADD CONSTRAINT `FK_artist__artist_id` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`);

--
-- Constraints for table `style`
--
ALTER TABLE `style`
  ADD CONSTRAINT `FK_genre__genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
