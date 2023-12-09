-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 09, 2023 at 08:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_user`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `username`, `password`) VALUES
(1, 'ducs1007@gmail.com', '$2y$10$edr2m3Vso1bSzd3oLkgHc.gEgEZd3tQSgfKcvV'),
(2, 'itchygaming1@gmail.com', '$2y$10$oacizeTRB7rqib9OhNn1WO0Z6pMP0RlHBPpqJq'),
(3, 'harvey', '$2y$10$8mdGSsl.WKU3Tr0XOVd4Ruxf52N5Md1q0cTpgR'),
(4, 'harvs', '$2y$10$DESc1ZJ1f6.JpSNL7TTBp..1FDqLUFqqXR8zy7'),
(5, 'harvss', '$2y$10$lH6LXODG6GblD3jOja30/Ohz4wjpUiI0gCLMHW'),
(6, 'ducay', '$2y$10$YpWszuiAH3YyI/m2mw0LM.Jve1SDiYx..EeuXb'),
(7, 'ducs', '$2y$10$vjGrvaG3yCdC7yUf3e/PCeElTcM4ELsXoQ.znt'),
(8, 'dbms', '$2y$10$ediQusNBIqF7WwT5FCGMIeHnUI00jJitjMgZ0s'),
(9, 'ducci', '$2y$10$1YqWpXH9CCUyMNw1NCZ3q.NyLVadFfuD1/pz/D'),
(10, 'harbae', '$2y$10$TGGS5d.NEchUxusSYup/PuW0nf9fEw/Nm9GZaI'),
(11, 'eren', '$2y$10$pUXF/lGnKGiYy8C9orxJwuKz50xJaDoDjtQvs8'),
(12, 'hehehe', '$2y$10$b41gA1RiNlNIyZ6/V1NKUeuKHoYCahMo9neD5w6RPChPRQ0rWsK5u'),
(13, 'hahaha', '$2y$10$EIULUI3Q/upOMrue6chWY..zxzGfAHMBiRlnH/l6dZBaLkFXGC00K'),
(14, 'armin', '$2y$10$bXATRPlrmgPeb1P/.czMKeAzpZUNYY4B4mS94Gty/vJdfhwxG4FR.'),
(15, 'john', '$2y$10$FNg2SgE44LgNKneQWjejb.jKb9H/2mFScsa.nfzJit4N5.9Shh.AG'),
(16, 'ducsharvs', '$2y$10$fcG5Oj7dOWKPb//2LyWOHOLltKXVrHvBL2ZIJ7eSB672jop2BQp36'),
(17, 'spike', '$2y$10$cs20UbU5rCiNNtQRta36J.fSsOgt4cR.gBdGos/Kp8DTfZI0ezFui');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
