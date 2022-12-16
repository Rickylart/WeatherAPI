-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 12:55 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_weather`
--

-- --------------------------------------------------------

--
-- Table structure for table `incidents`
--

CREATE TABLE `incidents` (
  `Id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `incident_desc` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `weather_report` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incidents`
--

INSERT INTO `incidents` (`Id`, `client_id`, `incident_desc`, `city`, `country`, `date`, `weather_report`) VALUES
(1, 2294877, 'broken clouds', 'Tamale', 'GH', '0000-00-00', '{\"coord\":{\"lon\":-0.8393,\"lat\":9.4008},\"weather\":[{\"id\":803,\"main\":\"Clouds\",\"description\":\"broken clouds\",\"icon\":\"04n\"}],\"base\":\"stations\",\"main\":{\"temp\":300.47,\"feels_like\":299.31,\"temp_min\":300.47,\"temp_max\":300.47,\"pressure\":1009,\"humidity\":14,\"sea_level\":1009,\"grnd_level\":987},\"visibility\":10000,\"wind\":{\"speed\":2.63,\"deg\":349,\"gust\":2.67},\"clouds\":{\"all\":71},\"dt\":1671233186,\"sys\":{\"country\":\"GH\",\"sunrise\":1671171099,\"sunset\":1671212776},\"timezone\":0,\"id\":2294877,\"name\":\"Tamale\",\"cod\":200}'),
(2, 2294877, 'broken clouds', 'Tamale', 'GH', '2022-12-12', '{\"coord\":{\"lon\":-0.8393,\"lat\":9.4008},\"weather\":[{\"id\":803,\"main\":\"Clouds\",\"description\":\"broken clouds\",\"icon\":\"04n\"}],\"base\":\"stations\",\"main\":{\"temp\":300.47,\"feels_like\":299.31,\"temp_min\":300.47,\"temp_max\":300.47,\"pressure\":1009,\"humidity\":14,\"sea_level\":1009,\"grnd_level\":987},\"visibility\":10000,\"wind\":{\"speed\":2.63,\"deg\":349,\"gust\":2.67},\"clouds\":{\"all\":71},\"dt\":1671233186,\"sys\":{\"country\":\"GH\",\"sunrise\":1671171099,\"sunset\":1671212776},\"timezone\":0,\"id\":2294877,\"name\":\"Tamale\",\"cod\":200}'),
(3, 2306104, 'few clouds', 'Oblogo', 'GH', '2022-12-12', '{\"coord\":{\"lon\":-0.322,\"lat\":5.5674},\"weather\":[{\"id\":801,\"main\":\"Clouds\",\"description\":\"few clouds\",\"icon\":\"02n\"}],\"base\":\"stations\",\"main\":{\"temp\":301.32,\"feels_like\":306.18,\"temp_min\":301.32,\"temp_max\":301.32,\"pressure\":1010,\"humidity\":83},\"visibility\":10000,\"wind\":{\"speed\":4.12,\"deg\":220},\"clouds\":{\"all\":20},\"dt\":1671233735,\"sys\":{\"type\":1,\"id\":1126,\"country\":\"GH\",\"sunrise\":1671170573,\"sunset\":1671213054},\"timezone\":0,\"id\":2306104,\"name\":\"Oblogo\",\"cod\":200}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `incidents`
--
ALTER TABLE `incidents`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incidents`
--
ALTER TABLE `incidents`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
