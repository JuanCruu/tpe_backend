-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2019 a las 17:07:36
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
  `id_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`id_comentario`, `comentario`, `id_juego_fk`, `id_usuario`) VALUES
(4, 'sefsefsefsef', 1, 'juan'),
(6, 'adsadaasdsd', 1, 'pepito'),
(7, 'adsadaasdsd', 2, 'pepito');

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
(66, 'perro'),
(68, 'reptiles'),
(69, 'gatitos'),
(70, 'tiros'),
(71, 'pop'),
(72, 'mama');

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
(1, 'michi 1', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui', 350, 'img/juego/5dd87e8f5c43c.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hHW1oY26kxQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 66),
(2, 'sapito 4', '', 0, 'img/juego/5dd432a25a2ba.jpg', '', 68),
(3, 'esto no es un perro 2', '', 0, 'img/juego/5dd432b37b1fe.jpg', '', 66),
(4, 'nuevo juego', '', 1000, 'img/juego/5dd432c217f69.jpg', '', 66),
(5, 'elnegroRodrigez', '', 0, 'img/juego/5ddaa1f9c7c1e.jpg', '', 71),
(6, 'mama', 'es mama', 0, 'img/juego/5ddaa38ab6a6a.jpg', '', 72);

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
('Mangoya', '$2y$10$v14Js0zPTcsHhqjZU7Fi4u4rc2FThrsXgBqA1NDqZlgu7wKtRyFGy', 0, 'Manolo'),
('benja', '$2y$10$HW6OAWd36n7JGulpCgxDdOHVca5Mnlp39/Eyy9Xlmr3wsF8Vxc0bK', 0, 'manolo'),
('juancruz', '$2y$10$F/f4jsq/v/YciPV1nn5LvORKMjqKaa4ShNuMQWdIoYVLuOIbiqw8O', 1, ''),
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
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `juego`
--
ALTER TABLE `juego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
