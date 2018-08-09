-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Lun 12 Mars 2018 à 12:57
-- Version du serveur: 5.5.57-0ubuntu0.14.04.1
-- Version de PHP: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Porte-folio`
--

-- --------------------------------------------------------

--
-- Structure de la table `Bookings`
--

CREATE TABLE IF NOT EXISTS `Bookings` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Civility` varchar(8) NOT NULL,
  `Familyname` varchar(50) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Important` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PhoneNumber` int(10) NOT NULL,
  `Booking_Date` date NOT NULL,
  `Booking_Time` varchar(20) NOT NULL,
  `Number_People` int(10) NOT NULL,
  `Created_At` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=124 ;

--
-- Contenu de la table `Bookings`
--

INSERT INTO `Bookings` (`Id`, `Civility`, `Familyname`, `Firstname`, `Important`, `Email`, `PhoneNumber`, `Booking_Date`, `Booking_Time`, `Number_People`, `Created_At`) VALUES
(85, '0', 'Alphonse', 'danletas', '', '', 0, '0000-00-00', '', 0, '0000-00-00 00:00:00'),
(86, '0', 'Alphonse', 'danletas', '', '', 0, '0000-00-00', '', 0, '0000-00-00 00:00:00'),
(87, '1', 'PORET', 'Eva', '', '', 0, '0000-00-00', '', 0, '0000-00-00 00:00:00'),
(89, '2', 'PORET', 'Eva', 'Maitresse du Maire de Trifouilly-les-oies', 'poret.eva@fai.net', 0, '0000-00-00', '', 0, '0000-00-00 00:00:00'),
(94, '0', 'auchon', 'paul', '', 'paul.auchon@fai.net', 1245789856, '2018-03-06', '13H 15Mns', 3, '2018-02-07 10:51:51'),
(95, '0', 'tille', 'yvan', 'besoin de place ...', 'yvan.tille@fai.net', 1313131313, '2018-03-09', '12H 45Mns', 4, '2018-02-07 12:51:53'),
(101, '0', 'tonne', 'Icar', '', 'icarTonne@fai.uk', 1414141414, '2017-01-01', '12H 0Mns', 10, '2018-02-07 13:09:22'),
(102, '0', 'aLIZA', 'Simone', '', 'simoneAliza@fai.net', 1212121212, '2018-03-12', '19H 30Mns', 4, '2018-02-07 14:13:52'),
(103, '0', 'aLIZA', 'Simone', '', 'simoneAliza@fai.net', 1212121212, '2018-03-12', '19H 30Mns', 4, '2018-02-07 14:16:15'),
(108, '0', 'BEDEBOIS', 'Jean', 'Handicapé', 'jean.bedebois@fai.fr', 2131213121, '2018-01-01', '12H 0Mns', 3, '2018-02-08 08:27:26'),
(109, '2', 'FAIRE', 'Lucie', '', 'lucie.faire@fai.net', 2147483647, '2017-01-01', '12H 0Mns', 2, '2018-02-08 08:44:40'),
(110, '2', 'FAIRE', 'Lucie', '', 'lucie.faire@fai.net', 2147483647, '2017-01-01', '12H 0Mns', 2, '2018-02-08 08:53:54'),
(111, '2', 'FAIRE', 'Lucie', '', 'lucie.faire@fai.net', 2147483647, '2017-01-01', '12H 0Mns', 2, '2018-02-08 14:09:19'),
(112, '0', 'GIRARD', 'Philippe', '', 'monmailperso@fai.net', 2147483647, '2018-02-14', '20H 15Mns', 2, '2018-02-13 13:14:06'),
(113, '0', 'ZETTEDANLVERT', 'Mélanie', '', 'glouglou@51.fr', 2147483647, '2018-07-14', '12H 45Mns', 5, '2018-02-13 14:44:27'),
(114, '0', 'DUPONT', 'Albert', '', 'albert.Dupont@fai.net', 101010102, '2019-01-01', '12H 15Mns', 4, '2018-02-14 09:29:12'),
(115, '0', 'DUDULE', 'Marcel', '', 'dududu@fai.net', 2147483647, '2033-01-01', '12H 30Mns', 145, '2018-02-15 10:28:55'),
(116, '0', 'DUDULE', 'Marcel', '', 'dududu@fai.net', 2147483647, '2033-01-01', '12H 30Mns', 145, '2018-02-15 10:42:32'),
(117, '0', 'PLUOUENCOR', 'Anna', '', 'pluouencorAnna@fai.net', 234, '2017-01-01', '12H 0Mns', 4, '2018-02-26 08:46:22'),
(118, '2', 'IPSUM', 'Loren', 'parle en latin', 'loren.ipsum@fai.net', 102545854, '0000-00-00', '12H 45Mns', 5, '2018-02-26 19:07:19'),
(119, '2', 'IPSUM', 'Loren', 'parle en latin', 'loren.ipsum@fai.net', 102545854, '0000-00-00', '12H 45Mns', 5, '2018-02-26 19:22:03'),
(120, '0', 'Fortin', 'Bryan', '', 'bryanice@hotmail.fr', 640627876, '2018-04-13', '13H 30Mns', 5, '2018-02-26 21:15:26'),
(121, '1', 'MELMOU', 'Kara', '', 'kara.melmou@fai.net', 258956585, '0000-00-00', '12H 0Mns', 5, '2018-02-26 21:40:52'),
(122, '0', 'ZOTTO', 'Henry', '', 'henry.zotto@fai.net', 2147483647, '0000-00-00', '12H 45Mns', 4, '2018-02-27 10:34:17'),
(123, '0', 'ALBERT', 'ALBERT', '', 'albert@gffjfj.gfhg', 202020202, '2017-01-01', '12H 0Mns', 5, '2018-03-02 15:28:09');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
