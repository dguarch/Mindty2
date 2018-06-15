-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-06-2018 a las 17:57:29
-- Versión del servidor: 5.7.11
-- Versión de PHP: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mindty`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `idc` int(11) NOT NULL,
  `NombreCurso` varchar(240) NOT NULL,
  `Formador` int(11) NOT NULL,
  `modulos` int(11) NOT NULL,
  `horasCurso` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`idc`, `NombreCurso`, `Formador`, `modulos`, `horasCurso`) VALUES
(1, 'Curso desarrollo web', 3, 2, 500),
(2, 'Curso desarrollo multiplataforma', 2, 3, 450);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idm` int(11) NOT NULL,
  `NombreModulo` varchar(240) NOT NULL,
  `Unidades` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idm`, `NombreModulo`, `Unidades`) VALUES
(1, 'Programacion entorno cliente', 3),
(2, 'Programacion entorno servidor', 3),
(3, 'Programacion entorno cliente', 3),
(4, 'Programacion entorno servidor', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `idUnit` int(11) NOT NULL,
  `NombreUnidad` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `unidad`
--

INSERT INTO `unidad` (`idUnit`, `NombreUnidad`) VALUES
(1, 'Implementacion Base de datos'),
(2, 'relaciones Hibernate');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idu` int(11) NOT NULL,
  `NombreUsuario` varchar(15) NOT NULL,
  `Nickname` varchar(15) NOT NULL,
  `email` varchar(240) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `tipo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idu`, `NombreUsuario`, `Nickname`, `email`, `telefono`, `tipo`) VALUES
(1, 'Ivan', 'Ivan1', 'ivan@gmail.com', '123456', 1),
(2, 'David', 'David1', 'David@gmail.com', '789987', 3),
(3, 'Hector', 'Hector1', 'xxx@gmail.com', '456654', 1),
(4, 'Youssef', 'Youssef1', 'youssef1@gmail.com', '123321', 2),
(5, 'Hector', 'Hector1', 'xxx@gmail.com', '456654', 3),
(6, 'Youssef', 'Youssef1', 'youssef1@gmail.com', '123321', 2),
(7, 'Raul', 'Raul1', 'raul@gmail.com', '963369', 1),
(8, 'Raul', 'Raul1', 'raul@gmail.com', '963369', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idc`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idm`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`idUnit`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `idUnit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
