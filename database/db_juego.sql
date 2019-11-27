-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2019 a las 04:20:47
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_juego`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id_comentario` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `id_juego_fk` int(255) NOT NULL,
  `id_usuario` varchar(255) NOT NULL,
  `puntaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`id_comentario`, `comentario`, `id_juego_fk`, `id_usuario`, `puntaje`) VALUES
(3, 'adad', 0, '', 0),
(4, 'sefsefsefsef', 1, 'juan', 0),
(6, 'adsadaasdsd', 1, 'pepito', 0),
(7, 'adsadaasdsd', 2, 'pepito', 0),
(9, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1, 'pepe', 0),
(12, 'elcomentario', 0, 'usuario', 0),
(19, 'good', 1, 'pepe', 5),
(20, 'sdasd', 2, 'pepe', 1),
(21, 'drfgsdrg', 3, 'pepe', 1),
(22, 'asdadwa', 1, 'pepe', 1),
(23, 'aaaa', 1, 'pepe', 3),
(24, 'ssdsds', 6, 'pepe', 1),
(25, 'buen juego', 7, 'pepe', 4),
(26, 'no es la gran cosa', 7, 'benja', 2),
(27, 'pum pum', 11, 'benja', 4),
(28, 'la banda sonora es brutal', 10, 'benja', 5),
(29, 'no me aburro de este juego', 9, 'pepe', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre`) VALUES
(73, 'shooter'),
(74, 'peleas'),
(76, 'accion'),
(77, 'indie'),
(78, 'mundo abierto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE `juego` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `precio` float NOT NULL,
  `imagen` text NOT NULL,
  `trailer` varchar(500) NOT NULL,
  `id_genero_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `juego`
--

INSERT INTO `juego` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `trailer`, `id_genero_fk`) VALUES
(7, 'Grand Theft Auto V ', 'Grand Theft Auto V es un videojuego de acción-aventura de mundo abierto desarrollado por la compañía británica Rockstar North y distribuido por Rockstar Games. Fue lanzado el 17 de septiembre de 2013 para las consolas PlayStation 3 y Xbox 360', 1500, 'img/juego/5ddde4c1a1387.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/QkkoHAzjnUs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 78),
(9, 'The Elder Scrolls V: Skyrim', 'The Elder Scrolls V: Skyrim es un RPG del tipo mundo abierto desarrollado por Bethesda Game Studios y publicado por Bethesda Softworks. Skyrim es la quinta entrega de videojuegos de acción y fantasía de la serie The Elder Scrolls y es posterior a The Elder Scrolls IV: Oblivion y predecesor de The Elder Scrolls Online.', 400, 'img/juego/5ddde5fb10abd.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JSRtYpNRoN0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 78),
(10, 'The Witcher 3: Wild Hunt', 'The Witcher 3: Wild Hunt es un videojuego de rol desarrollado por CD Projekt RED. CD Projekt RED es el desarrollador mientras que la distribución corre a cargo de la Warner Bros. Interactive, en el caso de Norteamérica y Bandai Namco para Europa', 1700, 'img/juego/5ddde6558b45d.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/c0i88t0Kacs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 78),
(11, 'Far Cry 3', 'Far Cry 3 es un juego de acción y supervivencia en el trópico, creado por Ubisoft Montreal y Massive Studios que se lanzó el 29 de noviembre del 2012 para PlayStation 3, Xbox 360 y Microsoft Windows.', 300, 'img/juego/5ddde6be92995.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rpF1yZ0v8hY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 73);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `user` varchar(500) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `password` text NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `answer` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`user`, `password`, `admin`, `answer`) VALUES
('benja', '$2y$10$HW6OAWd36n7JGulpCgxDdOHVca5Mnlp39/Eyy9Xlmr3wsF8Vxc0bK', 0, 'manolo'),
('manolo', '$2y$10$Hl3xNQzUyfFxlW/htxS5qeeHRrQLD1oHEYxzaXeoPJyVEqmJi3nxK', 0, 'manolo'),
('maria', '$2y$10$T17.jO5KaERsDJw1SBcMw.qd8QiJxg.ZUfAEPTQr8e5eWXS9v0C4a', 0, ''),
('mati', '$2y$10$V1.PHBF0UVNUENfYubftVe0D9U0vui3UD/46Z1zyyE4/1WVDXlQha', 0, 'manolo'),
('pedro', '$2y$10$h2sqeV/zcKWh0.eBZvyzMeG2n6YhXW.Ntk/gc/UYr5Mk6bj2M2Yda', 1, ''),
('pepe', '$2y$10$SR.q/N/15qFClD1d0TybReID2trM/bQTSSzRL3tBescUc9ppr9Tke', 1, ''),
('pipo', '$2y$10$.4Z/WHjJ7qGP7gbUJBSMcecSvrqXXI4eBkC0vaFhSbKZNYdcAXVv.', 0, 'manolo'),
('piter', '$2y$10$sCJPDS7ErVUSSYh4jYbeCOoieV0F.3uOsMWCB2qMeoaLUiXF8Q.UC', 0, ''),
('skyrim', '$2y$10$2yRpZ1K1PX4yZK3DJ52a1OkErgZDdCWw5Gsv/4Plc6x.e36xeTyP.', 1, ''),
('tuco', '$2y$10$N/1Rxmm79kDnZqlvXz25UutIQyVnTZdho33ShSwtCjl2IB564JhKq', 0, 'sam');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id_comentario`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`) USING BTREE;

--
-- Indices de la tabla `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_genero_fk` (`id_genero_fk`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `juego`
--
ALTER TABLE `juego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `juego`
--
ALTER TABLE `juego`
  ADD CONSTRAINT `juego_ibfk_1` FOREIGN KEY (`id_genero_fk`) REFERENCES `genero` (`id_genero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
