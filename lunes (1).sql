-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2023 a las 01:17:11
-- Versión del servidor: 8.0.34
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lunes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lunes`
--

CREATE TABLE `lunes` (
  `id` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `nacimiento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `lunes`
--

INSERT INTO `lunes` (`id`, `nombre`, `apellido`, `nacimiento`) VALUES
(1, 'Min Ho', 'Lee', 'Gimpo, Corea del Sur'),
(2, 'Yuta', 'Nakamoto', 'Osaka, Japon'),
(3, 'Melissa', 'Bublitz', 'Woburn, Massachusetts'),
(4, 'Devon', 'Aoki', 'Nueva York, Estados Unidos'),
(5, 'Hyunjin', 'Kim', 'Seoul, Corea del Sur'),
(6, 'Christopher', 'Bang', 'Sidney, Australia'),
(7, 'Johnny', 'Suh', 'Chicago, Estados Unidos'),
(8, 'Danielle', 'Marsh', 'Newcastle, Australia');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lunes`
--
ALTER TABLE `lunes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lunes`
--
ALTER TABLE `lunes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
