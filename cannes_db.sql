-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2024 a las 23:54:41
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
  `product_id` int(11) NOT NULL,
  `ammount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consumition`
--

INSERT INTO `consumition` (`id`, `shift_id`, `product_id`, `ammount`) VALUES
(1, 1, 1, 2),
(2, 1, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel_room`
--

CREATE TABLE `hotel_room` (
  `id` bigint(100) NOT NULL,
  `room_number` int(100) NOT NULL,
  `pred_price` decimal(65,0) DEFAULT NULL,
  `pred_time` time DEFAULT '00:00:00',
  `state` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Deshabilitado',
  `current_shift_id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hotel_room`
--

INSERT INTO `hotel_room` (`id`, `room_number`, `pred_price`, `pred_time`, `state`, `current_shift_id`) VALUES
(1, 1, NULL, '14:30:00', 'Ocupado', NULL),
(2, 2, NULL, NULL, 'Disponible', NULL),
(3, 3, NULL, '15:15:00', 'Ocupado', NULL),
(4, 4, NULL, NULL, 'Esperando_Limpieza', NULL),
(5, 5, NULL, NULL, 'Esperando_Limpieza', NULL),
(6, 6, NULL, NULL, 'Limpiando', NULL),
(7, 7, NULL, NULL, 'Disponible', NULL),
(8, 8, NULL, NULL, 'Limpiando', NULL),
(9, 9, NULL, NULL, 'Disponible', NULL),
(10, 10, NULL, NULL, 'Disponible', NULL),
(11, 11, NULL, NULL, 'Ocupado', NULL),
(12, 12, NULL, NULL, 'Disponible', NULL),
(13, 13, NULL, NULL, 'Disponible', NULL),
(14, 14, NULL, NULL, 'Mantenimiento', NULL),
(15, 15, NULL, NULL, 'Disponible', NULL),
(16, 16, NULL, NULL, 'Disponible', NULL);

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
-- Estructura de tabla para la tabla `shift`
--

CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `room_id` bigint(100) NOT NULL,
  `start` time(6) NOT NULL DEFAULT current_timestamp(),
  `finish` time(6) DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `shift`
--

INSERT INTO `shift` (`id`, `room_id`, `start`, `finish`, `type`) VALUES
(1, 1, '13:48:00.000000', '16:48:00.000000', 'Normal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `product_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `deposit` int(11) NOT NULL,
  `ammount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`product_id`, `name`, `price`, `deposit`, `ammount`) VALUES
(1, 'Agua Villavicencio', 5000, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` bigint(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'Invitado',
  `password` varchar(100) NOT NULL,
  `fingerprint` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `last_name`, `role`, `password`, `fingerprint`) VALUES
(4, 'John', 'Doe', 'Administrador', '$2a$10$Tquj.kBdQtzVAbY9wKWKxuc5lIUm.90ISKnPF8ZKPZODrY3zf94/m', NULL),
(6, 'Luciano', 'Frias', 'Administrador', '$2a$10$xw79Ga0JJRQwc.35tEQkw.D8UY9QB/MxvfjeVvjPTuC/YoP1dCDd.', NULL),
(7, 'Karina', 'Barcala', 'Invitado', '$2a$10$thpNvhNrKrsa9V7hzbHit.PolCuw4cAn4YHKLgDGWv.qJtHIF4q1i', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consumition`
--
ALTER TABLE `consumition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_shift_id` (`shift_id`),
  ADD KEY `fk_product_id` (`product_id`);

--
-- Indices de la tabla `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `laundry`
--
ALTER TABLE `laundry`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shift_to_room_id_foreign_key` (`room_id`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`product_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `laundry`
--
ALTER TABLE `laundry`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `consumition`
--
ALTER TABLE `consumition`
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `stock` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_shift_id` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `shift`
--
ALTER TABLE `shift`
  ADD CONSTRAINT `fk_hotel_room_id` FOREIGN KEY (`room_id`) REFERENCES `hotel_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
