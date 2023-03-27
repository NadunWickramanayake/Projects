-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 19, 2021 at 06:11 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Game`
--

-- --------------------------------------------------------

--
-- Table structure for table `game_history`
--

CREATE TABLE `game_history` (
  `player1_wins` varchar(25) NOT NULL,
  `player2_wins` varchar(25) NOT NULL,
  `defeated_player1` varchar(25) NOT NULL,
  `defeated_player2` varchar(25) NOT NULL,
  `tieGames` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game_history`
--

INSERT INTO `game_history` (`player1_wins`, `player2_wins`, `defeated_player1`, `defeated_player2`, `tieGames`) VALUES
('NULL', 'The winner is player2', 'The looser is player1', 'NULL', 'NULL'),
('The winner is player1', 'NULL', 'NULL', 'The looser is player2', 'NULL'),
('The winner is player1', 'NULL', 'NULL', 'The looser is player2', 'NULL'),
('NULL', 'The winner is player2', 'The looser is player1', 'NULL', 'NULL'),
('NULL', 'The winner is player2', 'The looser is player1', 'NULL', 'NULL'),
('NULL', 'The winner is player2', 'The looser is player1', 'NULL', 'NULL'),
('The winner is player1', 'NULL', 'NULL', 'The looser is player2', 'NULL'),
('The winner is player1', 'NULL', 'NULL', 'The looser is player2', 'NULL'),
('The winner is player1', 'NULL', 'NULL', 'The looser is player2', 'NULL'),
('The winner is player1', 'NULL', 'NULL', 'The looser is player2', 'NULL'),
('The winner is player1', 'NULL', 'NULL', 'The looser is player2', 'NULL'),
('NULL', 'The winner is player2', 'The looser is player1', 'NULL', 'NULL'),
('NULL', 'The winner is player2', 'The looser is player1', 'NULL', 'NULL'),
('NULL', 'NULL', 'NULL', 'NULL', 'The game is tie');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
