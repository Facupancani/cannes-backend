-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2024 a las 00:07:41
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cannes_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumition`
--

CREATE TABLE `consumition` (
  `id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel_room`
--

CREATE TABLE `hotel_room` (
  `id` bigint(100) NOT NULL,
  `room_number` int(100) NOT NULL,
  `state` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Deshabilitado',
  `current_shift_id` int(255) DEFAULT NULL,
  `pred_price` int(100) NOT NULL,
  `pred_time` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hotel_room`
--

INSERT INTO `hotel_room` (`id`, `room_number`, `state`, `current_shift_id`, `pred_price`, `pred_time`) VALUES
(1, 1, 'Disponible', NULL, 0, 0),
(2, 2, 'Disponible', NULL, 0, 0),
(3, 3, 'Esperando_Limpieza', NULL, 0, 0),
(4, 4, 'Esperando_Limpieza', NULL, 0, 0),
(5, 5, 'Esperando_Limpieza', NULL, 0, 0),
(6, 6, 'Limpiando', NULL, 0, 0),
(7, 7, 'Disponible', NULL, 0, 0),
(8, 8, 'Disponible', NULL, 0, 0),
(9, 9, 'Ocupado', 301, 0, 0),
(10, 10, 'Limpiando', NULL, 0, 0),
(11, 11, 'Ocupado', 308, 0, 0),
(12, 12, 'Disponible', NULL, 0, 0),
(13, 13, 'Disponible', NULL, 0, 0),
(14, 14, 'Mantenimiento', NULL, 0, 0),
(15, 15, 'Disponible', NULL, 0, 0),
(16, 16, 'Disponible', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laundry`
--

CREATE TABLE `laundry` (
  `id` bigint(100) NOT NULL,
  `article_id` bigint(100) NOT NULL,
  `deposit` int(255) NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `deposit` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `deposit`, `amount`) VALUES
(1, 'Agua Villavicencio', 5000, 1, 3),
(2, 'Cerveza Corona', 5000, 1, 3),
(3, 'Coca-Cola chica', 3000, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shift`
--

CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `room_id` bigint(100) NOT NULL,
  `start` datetime NOT NULL DEFAULT current_timestamp(),
  `finish` datetime DEFAULT NULL,
  `time_left` time NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Normal',
  `total_price` decimal(10,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `shift`
--

INSERT INTO `shift` (`id`, `room_id`, `start`, `finish`, `time_left`, `type`, `total_price`) VALUES
(301, 9, '2024-10-28 19:14:54', '2024-10-28 21:14:54', '00:00:00', 'Normal', 20000),
(308, 11, '2024-10-29 18:47:27', '2024-10-29 20:47:27', '00:00:00', 'Normal', 20000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` bigint(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'Invitado',
  `password` varchar(100) NOT NULL,
  `fingerprint` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `last_name`, `username`, `role`, `password`, `fingerprint`) VALUES
(10, 'John', 'Doe', 'johndoe123', 'Conserje', '$2a$10$IdwXT/zJsX2p/3hxXe0SYON5KBrz9nPrErxnFsaJlOWP4Cn80za0C', NULL),
(11, 'Luciano', 'Frias', 'luciano123', 'Conserje', '$2a$10$Qp45Vw.vEs4rl8tZEyeA2eLRI8Wk3kHVZawn6UUlpd2q4X3sOWH9.', NULL),
(19, 'Maximo', 'Pancani', 'maxi123', 'Administrador', '$2a$10$Y9HXway6zk/5L0YGF7bQ3uTBpE2J0Yj/TStApUZ1uHVabaCmGTznC', NULL),
(20, 'Karina', 'Barcala', 'karina123', 'Conserje', '$2a$10$Efy6z10zZNZGYW/s5CIOAuTnHlGGcpElW4ICc8PimUPXWZ.pdiegi', NULL),
(21, 'Homero', 'Frias', 'homero123', 'Conserje', '$2a$10$hGJkaULBIVW5tFHENozW1O9qNCbS5E1.TcDitssiZFz96gMLd7uSG', NULL),
(22, 'Facundo', 'Pancani', 'Facupanca', 'Conserje', '$2a$10$EtLHXCd6sBEpqw0Q1ifsR.rzDXHalwnFUp7tHczRsqDdHv2etvo1.', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consumition`
--
ALTER TABLE `consumition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_shift_id` (`shift_id`);

--
-- Indices de la tabla `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_room_to_shift_fk` (`current_shift_id`);

--
-- Indices de la tabla `laundry`
--
ALTER TABLE `laundry`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shift_to_room_id_foreign_key` (`room_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consumition`
--
ALTER TABLE `consumition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT de la tabla `laundry`
--
ALTER TABLE `laundry`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `consumition`
--
ALTER TABLE `consumition`
  ADD CONSTRAINT `fk_shift_id` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD CONSTRAINT `hotel_room_to_shift_fk` FOREIGN KEY (`current_shift_id`) REFERENCES `shift` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `shift`
--
ALTER TABLE `shift`
  ADD CONSTRAINT `fk_hotel_room_id` FOREIGN KEY (`room_id`) REFERENCES `hotel_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
