-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-01-2015 a las 20:02:19
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE IF NOT EXISTS `mesas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serie` varchar(10) NOT NULL,
  `puestos` varchar(20) NOT NULL,
  `posicion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `mesero_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcar la base de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`id`, `serie`, `puestos`, `posicion`, `created`, `modified`, `mesero_id`) VALUES
(2, '002', '3', 'Lado superior derecho', '2015-01-14 15:56:43', NULL, 3),
(5, '003', '6', 'Lado inferior izquierdo', '2015-01-14 15:57:57', NULL, 7),
(6, '004', '10', 'Lado inferior izquierdo', '2015-01-14 15:57:57', NULL, 7),
(8, '001', '15', 'Arriba al lado de la puerta', '2015-01-27 19:46:23', '2015-01-27 19:46:23', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meseros`
--

CREATE TABLE IF NOT EXISTS `meseros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(10) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcar la base de datos para la tabla `meseros`
--

INSERT INTO `meseros` (`id`, `dni`, `nombre`, `apellido`, `telefono`, `created`, `modified`) VALUES
(2, '65895', 'Lucia', 'Nogales', '654789632', '2015-01-12 22:54:38', NULL),
(3, '259658', 'Lucas', 'Zambrana González', '698541236', '2015-01-12 22:55:21', '2015-01-13 16:07:13'),
(4, '654785', 'Daniel', 'Morales', '698741230', '2015-01-12 22:55:21', NULL),
(7, '985624', 'Rosita', 'Sánchez', '654785210', '2015-01-12 23:50:44', '2015-01-12 23:50:44');
