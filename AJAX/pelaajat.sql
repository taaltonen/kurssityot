-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: magnesium:3306
-- Generation Time: Nov 01, 2017 at 03:02 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db13bleena`
--

-- --------------------------------------------------------

--
-- Table structure for table `pelaajat`
--

CREATE TABLE IF NOT EXISTS `pelaajat` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `ktunnus` varchar(30) NOT NULL,
  `salasana` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `viimeksi_kirjautunut` date DEFAULT NULL,
  `online` tinyint(1) DEFAULT NULL,
  `rahaa` decimal(10,2) DEFAULT NULL,
  `nykyinen_hahmo` varchar(10) DEFAULT NULL,
  `suljettu_ulos` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `pelaajat`
--

INSERT INTO `pelaajat` (`id`, `ktunnus`, `salasana`, `email`, `viimeksi_kirjautunut`, `online`, `rahaa`, `nykyinen_hahmo`, `suljettu_ulos`) VALUES
(1, 'ramppa', 'rampis', 'ramppa@koti.net', '2014-02-04', 0, '10000.00', 'hirviö', 0),
(3, 'iinesankka', 'hei', 'iines@koti.net', '2014-02-04', 0, '20000.00', 'keiju', 0),
(4, 'olavi', 'olli', 'olli@koti.net', '2014-02-02', 1, '2050.00', 'keiju', 0),
(20, 'koe', 'koe', 'koe@koe', '2017-01-08', 0, '333.00', 'mörkö', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
