-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2016 at 11:35 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `griddbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) DEFAULT NULL,
  `Image` longblob,
  `Url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Url` (`Url`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3361 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`Id`, `Name`, `Image`, `Url`) VALUES
(1, 'Instagram', 0x6148523063484d364c793970636e4d794c6a527a63576b75626d56304c326c745a79396e5a57356c636d46734c3364705a48526f4d5441774c7a55314d6a6731583231755233686152544d335a445678636c5266545768725a48644861546c434d4445796230394861566f7a6233526864544a31656d355653305575616e426e, 'http://instagram.com'),
(172, 'Foursquare for Android', 0x6148523063484d364c793970636e4d794c6a527a63576b75626d56304c326c745a79396e5a57356c636d46734c3364705a48526f4d5441774c323979656a6c4c52335979536c6c42625846596546704465564275516d46364e307875517a566e576a52505a6c5657636b4a6153584e4e596b3075616e426e, 'https://foursquare.com/download/#/android'),
(174, 'Foursquare for iOS', 0x6148523063484d364c793970636e4d784c6a527a63576b75626d56304c326c745a79396e5a57356c636d46734c3364705a48526f4d5441774c7a51344e6a6b794d7a6c6655446c5651573948635539514c5574685433567962444e455a6b4a764e44567364533079626c525263454a575a5552364d30464c5a465a4e617935716347633d, 'https://foursquare.com/download/#/iphone'),
(191, 'Foursquare for BlackBerry 10', 0x6148523063484d364c793970636e4d7a4c6a527a63576b75626d56304c326c745a79396e5a57356c636d46734c3364705a48526f4d5441774c7a55794f4463354e546331583235664e444646516a42565555465a575564574e6e4632546e4d74544764315655786a6347394454305a4c643251324d455a5a5a6d4d3053306b75616e426e, 'https://foursquare.com/download/#/blackberry'),
(212, 'Foursquare Web', 0x6148523063484d364c793970636e4d774c6a527a63576b75626d56304c326c745a79396e5a57356c636d46734c3364705a48526f4d5441774c303158656e5a3354456844593264314d307451516b4a4559304a795344673564565a75566d387456484273525870524d58686f4f465a6d51586375616e426e, 'https://foursquare.com'),
(254, 'Swarm for iOS', 0x6148523063484d364c793970636e4d794c6a527a63576b75626d56304c326c745a79396e5a57356c636d46734c3364705a48526f4d5441774c7a557a4d7a51354e31397165554a43566a6c7656454a69524764534f46644857486732656d4a7463466b74566d523154576c554d3246554e4739715a30354a62324a724c6d70775a773d3d, 'https://www.swarmapp.com'),
(347, 'Yext Yext', 0x6148523063484d364c793970636e4d7a4c6a527a63576b75626d56304c326c745a79396e5a57356c636d46734c3364705a48526f4d5441774c7a67334d7a67344d7a5933587a563554476c706332564b5448424e566a6b32556e4531546c52356145566164544e68556c5a32567a5a73517a42795a5452555a47707251586375616e426e, 'http://yext.com'),
(503, 'Foursquare for iOS', 0x6148523063484d364c793970636e4d794c6a527a63576b75626d56304c326c745a79396e5a57356c636d46734c3364705a48526f4d5441774c7a5978583074515157706e547a4a794c555131613264744e445634525539595a4652425248424c537a4e72525668365a57747a635331424d33703056444175616e426e, 'http://developer.foursquare.com'),
(1105, 'Untappd', 0x6148523063484d364c793970636e4d774c6a527a63576b75626d56304c326c745a793931633256794c3364705a48526f4d5459774c324a735957357258324a7665533577626d633d, 'https://untappd.com'),
(1136, 'MultiSocialSuite', 0x6148523063484d364c793970636e4d784c6a527a63576b75626d56304c326c745a793931633256794c3364705a48526f4d5459774c7a564354564658516b354d5454424956444e55526c4975616e426e, 'http://www.multisocialsuite.com'),
(1185, 'Swarm for Windows Phone', 0x6148523063484d364c793970636e4d784c6a527a63576b75626d56304c326c745a793931633256794c3364705a48526f4d5459774c7a6b334f5451794e6a67784c55684355545645523063784d5546494e45564c56316375616e426e, 'https://swarmapp.com');
--
-- Database: `test`
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
