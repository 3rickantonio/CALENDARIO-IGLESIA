-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-01-2017 a las 15:14:50
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cristoes_calendario`
--
CREATE DATABASE IF NOT EXISTS `cristoes_calendario` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cristoes_calendario`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(4, 'Ministeriales'),
(5, 'Congregacionales'),
(7, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contact`
--

INSERT INTO `contact` (`id`, `name`, `lastname`, `email`, `address`, `phone`, `is_active`, `created_at`) VALUES
(4, 'Erick', 'Suarez', 'erick.suarez@outlook.com', 'CALLE 36 ENTRE CARRERAS 11 Y 12', '04264095872', 1, '2016-01-07 13:15:37'),
(5, 'Janny', 'Liscano', 'janlisc@hotmail.com', 'CALLE 43 ENTRE CARRERAS 11 Y 12 ', '04127746810', 1, '2016-01-10 17:50:41'),
(6, 'Ana', 'Cristina Duran', 'anacrisduran@hotmail.com', 'Av 13 CON CALLE  49', '04162502302', 1, '2016-01-14 08:12:55'),
(7, 'Zuley ', 'Mendoza', 'zulemend@gmail.com', 'Bella vista calle 45 con 3ra av ', '04168591707', 1, '2016-01-14 08:15:13'),
(8, 'Alfredo', 'PiÃ±a', 'maiguanipa.08@gmail.com', 'URN.Don David Sabana Grande Transv 4 casa #4', '04145529483', 1, '2016-01-14 08:17:34'),
(9, 'Gregorio Ramon', 'Cordones', 'MIRIANERA2016@HOTMAIL.COM', 'CALLE 45 Y 46 CON CARRERA 13', '04264586881', 1, '2016-01-14 08:19:30'),
(10, 'Teresa', 'montagna', 'terismon27@gmail.com', 'Av Fuerzas Armadas CALLE 52 Y 53', '04245018655', 1, '2016-01-14 08:21:21'),
(11, 'rosa maigualida ', 'guanipa de piÃ±a', 'maiguanipa.08@gmail.com', 'URN.Don David Sabana Grande Transv 4 casa #4', '02518838020', 1, '2016-01-14 08:22:46'),
(12, 'Reynaldo ', 'Puente', 'rpuentecontreraz@gmail.com', 'CALLE 57 Y 58 CON CARRERA 13B', '04145251615', 1, '2016-01-14 08:24:08'),
(13, 'Diana Carolina', 'Rodriguez', 'DIANACR@GMAIL.COM', 'Santa Isabel CON Calle 7', '04262529576', 1, '2016-01-14 08:27:56'),
(14, 'Eunice ', 'Andrade', 'andradeunic@gmail.com', 'Pueblo Nuevo Calle 9 Vereda 2', '04145108238', 1, '2016-01-30 19:40:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date_at` varchar(50) NOT NULL,
  `time_at` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `project`
--

INSERT INTO `project` (`id`, `name`) VALUES
(1, 'Cristo es Vida'),
(2, 'Mujeres'),
(3, 'Hombres'),
(4, 'Diaconos'),
(5, 'Misiones'),
(6, 'Protocolo'),
(7, 'Jovenes'),
(8, 'Matrimonios'),
(9, 'Edad dorada'),
(10, 'Intercesion'),
(11, 'Mision kids'),
(12, 'Adoracion y alabanza'),
(13, 'Medios audiovisuales'),
(15, 'Educacion cristiana'),
(16, 'GCI'),
(20, 'Secretaria'),
(21, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `lastname`, `email`, `password`, `is_active`, `is_admin`, `created_at`) VALUES
(2, 'ericksuarez', 'Erick', 'Suarez', 'erick.suarez@outlook.com', '039a71b46c3f216cbfa2eb5933ca6bacb5909651', 1, 1, '2015-09-29 23:11:06'),
(12, 'jannyliscano', 'Janny', 'Liscano', 'janlisc@hotmail.com', 'adcd7048512e64b48da55b027577886ee5a36350', 1, 1, '2015-09-30 17:07:56'),
(13, 'rafaelblanco', 'Rafael', 'Blanco', '', 'adcd7048512e64b48da55b027577886ee5a36350', 1, 1, '2016-01-10 11:01:07'),
(14, 'admin', 'ADMINISTRADOR', 'ADMINISTRADOR', 'erick.suarez@outlook.com', 'adcd7048512e64b48da55b027577886ee5a36350', 1, 1, '2016-01-12 15:52:26'),
(15, 'GREGORIO', 'GREGORIO RAMON ', 'CORDONES', 'MIRIANERA2016@HOTMAIL.COM', '1d9c0561c12122669c3010b2e8f89f780fe3ce30', 1, 1, '2016-01-12 18:45:30'),
(16, 'teris', 'teresa', 'montagna', 'terismon27@gmail.com', '0fb231da011a2e397c4cbefc9a6d22b32761788d', 1, 1, '2016-01-12 19:10:40'),
(17, 'amsg', 'rosa maigualida', 'guanipa de piÃ±a', 'maiguanipa.08@gmail.com', '1ecd54581f848f52e94ac44a8c170239c3defc72', 1, 1, '2016-01-12 19:12:19'),
(19, 'mima', 'Reynaldo ', 'Puente', 'rpuentecontreras@gmail.com', 'adcd7048512e64b48da55b027577886ee5a36350', 1, 1, '2016-01-17 16:57:47'),
(20, 'Ministerio AdoraSion', 'Eunice  ', 'Andrade', 'andradeunic@gmail.com', '3a29dfb8428ebbd3d9cc40c5b29c862b7c56fb77', 1, 1, '2016-01-30 19:42:35'),
(21, 'MiSion Juvenil', 'Daniela', 'Gallardo', 'maryalexgallardo@hotmail.com', '0e22689b74e07e2789378384f449de1c7081e1cf', 1, 1, '2016-02-02 12:55:47'),
(22, 'dorada', 'Arelis', 'Arrieche', 'farelis23@gmail.com', 'adcd7048512e64b48da55b027577886ee5a36350', 1, 1, '2016-02-10 17:52:34'),
(23, 'amor', 'Zuley', 'Mendoza', 'Zulemend@gmail.com', '61c239e5c7203949a78ff72615256c8db5dc04c4', 1, 1, '2016-02-17 18:58:40');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indices de la tabla `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `event_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `event_ibfk_3` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
