-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2024 at 11:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpg`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` varchar(100) NOT NULL,
  `codigo` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apodo` varchar(50) DEFAULT NULL,
  `cedula` varchar(14) NOT NULL,
  `estado_civil` varchar(50) NOT NULL,
  `celular` varchar(50) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) NOT NULL,
  `otro` varchar(100) DEFAULT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `conyugue` varchar(50) DEFAULT NULL,
  `provincia` varchar(100) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `nombre_ref1` varchar(50) DEFAULT NULL,
  `celular_ref1` varchar(50) DEFAULT NULL,
  `nombre_ref2` varchar(50) DEFAULT NULL,
  `celular_ref2` varchar(50) DEFAULT NULL,
  `nota` varchar(250) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` date NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `updated_at` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cuotas`
--

CREATE TABLE `cuotas` (
  `id` int(11) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` date NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prestamos`
--

CREATE TABLE `prestamos` (
  `id` int(11) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` date NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recibos`
--

CREATE TABLE `recibos` (
  `id` int(11) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` date NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuotas`
--
ALTER TABLE `cuotas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recibos`
--
ALTER TABLE `recibos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cuotas`
--
ALTER TABLE `cuotas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recibos`
--
ALTER TABLE `recibos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
