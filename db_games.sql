-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2019 a las 17:03:01
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
(2, 'The Witcher 3', 'es un juego de rol de mundo abierto de nueva generación con una apasionante trama, ambientado en un espectacular universo de fantasía lleno de decisiones trascendentales y consecuencias impactantes. En The Witcher encarnas a Geralt de Rivia, un cazador de monstruos profesional que tiene que encontrar a la muchacha protagonista de una profecía en un amplio mundo abierto y rebosante de ciudades come', 479, 'https://images.gog.com/60c724a052275a049d857d53957dc38e9347742f52372bb956d992b43efa8fb5_product_card_v2_mobile_slider_639.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Sr-DKyAVU34\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 4),
(14, 'Forza Horizon 4 ', 'Las temporadas dinámicas lo cambian todo en el mejor festival automovilístico del mundo. Juega solo o en equipo para explorar la hermosa Gran Bretaña en un mundo abierto y compartido. Colecciona, modifica y conduce más de 450 autos. Compite, crea, explora y escoge tu propio camino para convertirte en una superestrella de Horizon.', 1759, 'https://store-images.s-microsoft.com/image/apps.20615.14094456225993959.2d017079-463a-4bd6-ac7a-2fb4f65673e9.0faeefd3-4ad9-4634-98df-75b9aeb92d48', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zJ477xAIlgU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2),
(15, 'dirt rally', 'DiRT Rally es el juego de rally más auténtico y emocionante, probado en carretera a lo largo de más de 60 millones de millas por la comunidad de DiRT. Captura la emoción de las carreras al límite mientras recorres carreteras peligrosas a velocidad vertiginosa; sabes que un choque podría dinamitar tu tiempo de etapa.\r\nCada etapa te pone a prueba de manera diferente mientras corres al límite por nie', 439, 'https://images.g2a.com/newlayout/323x433/1x1x0/94dd404c6a16/590e6f565bafe34d9c0dd589', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/E79ofEtVlBg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2),
(16, 'Rocket League', 'Juego de acción y deportes futurista, en Rocket League® los jugadores se equiparán con vehículos potenciados al máximo que pueden chocar contra pelotas para lograr increíbles goles o paradas épicas en múltiples arenas ricas en detalles. Gracias a un avanzado sistema de física que emula interacciones realistas, Rocket League® se apoya en la masa y la inercia para dar a los jugadores una sensación c', 224, 'https://static-cdn.jtvnw.net/ttv-boxart/Rocket%20League.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/NC82dWrFqCE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2),
(17, 'street fighter v', ' Experimenta la intensidad de la batalla cara a cara en Street Fighter® V.Elige entre 16 personajes icónicos, cada uno con su propia historia personal y desafíos de entrenamiento únicos, y luego lucha contra amigos en línea o sin conexión con una sólida variedad de opciones para cada partida. ', 497, 'https://i11a.3djuegos.com/juegos/11099/street_fighter_5/fotos/ficha/street_fighter_5-2672088.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2-9abLlPmp0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3),
(18, 'mortal kombat 11', 'Mortal Kombat ha regresado mejor que nunca en esta entrega de la icónica saga. ', 1200, 'https://www.cinepremiere.com.mx/wp-content/uploads/2019/04/mortalkombat11.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7zwQPJmg-Kg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3),
(23, 'Grand Theft Auto V', 'Cuando un joven estafador callejero, un ladrón de bancos retirado y un psicópata aterrador se ven involucrados con lo peor y más desquiciado del mundo criminal, del gobierno de los EE. UU. y de la industria del espectáculo, tendrán que llevar a cabo una serie de peligrosos golpes para sobrevivir en una ciudad implacable en la que no pueden confiar en nadie. Y mucho menos los unos en los otros.', 700, 'https://s3.gaming-cdn.com/images/products/4211/orig/grand-theft-auto-v-premium-online-edition-cover.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FoaScpGT1GU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 4),
(24, 'Call of duty', 'El juego es el sucesor espiritual del videojuego Medal of Honor: Allied Assault que fue desarrollado por 2015 Inc. (cuyos antiguos empleados crearon el estudio de Infinity Ward), este simula la infantería combinada con la armas de la Segunda Guerra Mundial.', 0, 'http://2.bp.blogspot.com/-RyxVaSryoHo/VAtEeVo5VGI/AAAAAAAAFGw/91eRo934YEY/s1600/www.descargajuegos.com.es.1.png', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YUrUDrjOFYY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1),
(25, 'RAGE 2', 'Un asteroide ha aniquilado al 80% de la humanidad, y la población cae en picado. Despiadadas bandas sedientas de sangre vagan por las carreteras, y la tiránica Autoridad ansía gobernar a los supervivientes con mano de hierro. Encarnarás a Walker, el último ranger del Yermo que amenaza el poder de la Autoridad. Después de que te arrebaten tu hogar y te den por muerto, te tocará luchar en nombre de ', 2149, 'https://images-na.ssl-images-amazon.com/images/I/915Ga3Nj1CL._SY445_.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PLQg-Vq2zQk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1),
(26, 'untitled goose game', 'Es una hermosa mañana en el pueblo y eres un ganso horrible.\r\n\r\nUntitled Goose Game es un slapstick-stealth-sandbox, donde eres un ganso suelto en una aldea desprevenida. Camina por la ciudad, desde los jardines traseros de las personas hasta las tiendas de la calle principal y el verde del pueblo, haciendo bromas, robando sombreros, tocando la bocina y, en general, arruinando el día de todos.', 1154, 'https://static-cdn.jtvnw.net/ttv-boxart/Untitled%20Goose%20Game.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_0cuko6fxxs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 5);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
