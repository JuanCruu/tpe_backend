-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2019 a las 17:30:14
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
-- Base de datos: `db_games`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_genero`, `nombre`) VALUES
(1, 'shooter'),
(2, 'carrera'),
(3, 'lucha'),
(4, 'mundo abierto'),
(5, 'indie'),
(6, 'estrategia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE `juego` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `precio` float NOT NULL,
  `imagen` varchar(500) NOT NULL,
  `trailer` varchar(500) NOT NULL,
  `id_genero_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `juego`
--

INSERT INTO `juego` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `trailer`, `id_genero_fk`) VALUES
(1, 'Hollow Knight', 'una aventura épica a través de un vasto reino de insectos y héroes que se encuentra en ruinas. Explora cavernas tortuosas, combate contra criaturas corrompidas y entabla amistad con extraños insectos, todo en un estilo clásico en 2D dibujado a mano.', 179, 'https://upload.wikimedia.org/wikipedia/en/c/c0/Hollow_Knight_cover.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UAO2urG23S4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 5),
(2, 'the witcher 3', '', 479, 'https://images.gog.com/60c724a052275a049d857d53957dc38e9347742f52372bb956d992b43efa8fb5_product_card_v2_mobile_slider_639.jpg', '<iframe width=', 1),
(14, 'Forza Horizon 4 ', 'Las temporadas dinámicas lo cambian todo en el mejor festival automovilístico del mundo. Juega solo o en equipo para explorar la hermosa Gran Bretaña en un mundo abierto y compartido. Colecciona, modifica y conduce más de 450 autos. Compite, crea, explora y escoge tu propio camino para convertirte en una superestrella de Horizon.', 1759, 'https://store-images.s-microsoft.com/image/apps.20615.14094456225993959.2d017079-463a-4bd6-ac7a-2fb4f65673e9.0faeefd3-4ad9-4634-98df-75b9aeb92d48', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zJ477xAIlgU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2),
(15, 'dirt rally', 'DiRT Rally es el juego de rally más auténtico y emocionante, probado en carretera a lo largo de más de 60 millones de millas por la comunidad de DiRT. Captura la emoción de las carreras al límite mientras recorres carreteras peligrosas a velocidad vertiginosa; sabes que un choque podría dinamitar tu tiempo de etapa.\r\nCada etapa te pone a prueba de manera diferente mientras corres al límite por nie', 439, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUSEhMVFhUXGBgWGBcXFxcVFRYXFxcXGBUZGhcYHSggHR0lGxgaITEhJSkrLi4uGCAzODMtNygtLisBCgoKDg0OGxAQGy0lICUtLS0tLS8tLS0tLS0tLS0tLS0vLy8tNy8tLS0tLS0tLS0tLS0tLS0tLS8tLy0tLS0tLf/AABEIAQIAwwMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAEBQMGAAEHAgj/xABMEAACAQIEAwUEBgcGAgkFAQABAhEAAwQSITEFQVEGEyJhcTKBkaEHI0KxwfAUUmKSstHhM1Ryc4LxFbMXJDRDRFN0k8IlNWOi0hb/xAAaAQACAwEBAAAAAAAAAAAAAAACAwABBAUG/8QANBEAAgIBAwIDBQcDBQAAAAAAAAECEQMSITEEQRNRYSIycYGhBRRSkbHR4SNi8', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/E79ofEtVlBg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2),
(16, 'Rocket League', 'Juego de acción y deportes futurista, en Rocket League® los jugadores se equiparán con vehículos potenciados al máximo que pueden chocar contra pelotas para lograr increíbles goles o paradas épicas en múltiples arenas ricas en detalles. Gracias a un avanzado sistema de física que emula interacciones realistas, Rocket League® se apoya en la masa y la inercia para dar a los jugadores una sensación c', 224, 'https://static-cdn.jtvnw.net/ttv-boxart/Rocket%20League.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/NC82dWrFqCE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2),
(17, 'street fighter v', ' Experimenta la intensidad de la batalla cara a cara en Street Fighter® V.Elige entre 16 personajes icónicos, cada uno con su propia historia personal y desafíos de entrenamiento únicos, y luego lucha contra amigos en línea o sin conexión con una sólida variedad de opciones para cada partida. ', 497, 'https://i11a.3djuegos.com/juegos/11099/street_fighter_5/fotos/ficha/street_fighter_5-2672088.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2-9abLlPmp0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3),
(18, 'mortal kombat 11', 'Mortal Kombat ha regresado mejor que nunca en esta entrega de la icónica saga. ', 1200, 'https://www.cinepremiere.com.mx/wp-content/uploads/2019/04/mortalkombat11.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7zwQPJmg-Kg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1),
(22, 'tiro tiro', '', 0, '', '', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `user` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`user`, `password`) VALUES
('eljuancruu22@gmail.com', '416327321q'),
('pepe', '$2y$10$HnwGNZ2BStrDayt5q.vIhu23BU2I8xqHSLL0H1S70NlIfIXWXloyq');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD UNIQUE KEY `id_genero` (`id_genero`,`nombre`),
  ADD KEY `id_genero_2` (`id_genero`) USING BTREE;

--
-- Indices de la tabla `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_genero_fk` (`id_genero_fk`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `juego`
--
ALTER TABLE `juego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `juego`
--
ALTER TABLE `juego`
  ADD CONSTRAINT `juego_ibfk_1` FOREIGN KEY (`id_genero_fk`) REFERENCES `categoria` (`id_genero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
