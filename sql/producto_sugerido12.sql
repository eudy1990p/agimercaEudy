-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2017 a las 09:08:25
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `agimerca_db_tmp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_sugerido`
--

CREATE TABLE IF NOT EXISTS `producto_sugerido` (
`id` int(11) NOT NULL,
  `categoria` varchar(200) DEFAULT NULL,
  `subcategoria` varchar(200) DEFAULT NULL,
  `subsubcategoria` varchar(200) DEFAULT NULL,
  `subsubsubcategoria` varchar(200) DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `user_id_creado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto_sugerido`
--
ALTER TABLE `producto_sugerido`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto_sugerido`
--
ALTER TABLE `producto_sugerido`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
