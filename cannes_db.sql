-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2024 a las 02:44:52
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
-- Estructura de tabla para la tabla `advance`
--

CREATE TABLE `advance` (
  `id` bigint(100) NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `amount` int(50) NOT NULL,
  `details` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `advance`
--

INSERT INTO `advance` (`id`, `user_id`, `amount`, `details`, `created_at`) VALUES
(7, 23, 5000, 'Para el pibardo', '2024-11-06 23:16:37'),
(8, 23, 30000, 'Nuevo Empleado', '2024-11-06 23:37:44'),
(9, 23, 4000, 'Hola Pedro', '2024-11-13 22:33:02'),
(10, 11, 5000, 'lol', '2024-11-15 00:06:47'),
(11, 10, 2222, '2', '2024-11-15 00:07:49'),
(12, 21, 111, '1', '2024-11-15 00:08:17'),
(13, 19, 111, '1', '2024-11-15 00:08:40'),
(14, 11, 11, '11', '2024-11-15 00:09:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bill`
--

CREATE TABLE `bill` (
  `id` bigint(100) NOT NULL,
  `concept` varchar(50) NOT NULL,
  `details` varchar(50) DEFAULT NULL,
  `amount` int(100) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bill`
--

INSERT INTO `bill` (`id`, `concept`, `details`, `amount`, `provider`, `created_at`) VALUES
(1, 'Electricidad', 'Pagado en noviembre', 40000, 'Edea', '2024-11-07 21:59:24'),
(2, 'Gas', 'Pago de Noviembre Gas', 50000, 'Dugas', '2024-11-07 22:23:21'),
(3, 'Luz', 'Hola', 1111, 'Fravega', '2024-11-15 00:10:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cash_movement`
--

CREATE TABLE `cash_movement` (
  `id` bigint(20) NOT NULL,
  `room_number` int(11) NOT NULL,
  `finish` time NOT NULL,
  `total_price` int(11) NOT NULL,
  `physical_cash` int(11) DEFAULT NULL,
  `transfer_cash` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cash_movement`
--

INSERT INTO `cash_movement` (`id`, `room_number`, `finish`, `total_price`, `physical_cash`, `transfer_cash`, `created_at`) VALUES
(1, 0, '00:00:00', 0, 0, 20000, '2024-11-17 23:18:59'),
(2, 16, '24:00:00', 30000, 10000, 20000, '2024-11-18 00:21:36'),
(3, 7, '23:34:49', 20000, 20000, 0, '2024-11-18 00:35:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumition`
--

CREATE TABLE `consumition` (
  `id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consumition`
--

INSERT INTO `consumition` (`id`, `shift_id`, `type`, `description`, `price`) VALUES
(47, 226, 'surcharge', 'Se añadio 60 minutos extra a esta habitacion', 6000);

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
(3, 3, 'Disponible', NULL, 0, 0),
(4, 4, 'Disponible', NULL, 0, 0),
(5, 5, 'Disponible', NULL, 0, 0),
(6, 6, 'Disponible', NULL, 0, 0),
(7, 7, 'Disponible', NULL, 0, 0),
(8, 8, 'Ocupado', 226, 0, 0),
(9, 9, 'Disponible', NULL, 0, 0),
(10, 10, 'Disponible', NULL, 0, 0),
(11, 11, 'Disponible', NULL, 0, 0),
(12, 12, 'Ocupado', 217, 0, 0),
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
  `name` varchar(100) NOT NULL,
  `article_id` bigint(100) NOT NULL,
  `deposit` int(255) NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `laundry`
--

INSERT INTO `laundry` (`id`, `name`, `article_id`, `deposit`, `amount`) VALUES
(25, 'fundas', 1, 1, 15),
(26, 'fundas', 1, 2, 25),
(27, 'fundas', 1, 3, 10),
(28, 'fundas', 1, 4, 0),
(29, 'sabanas', 2, 1, 30),
(30, 'sabanas', 2, 2, 40),
(31, 'sabanas', 2, 3, 25),
(32, 'sabanas', 2, 4, 5),
(33, 'cubrecamas', 3, 1, 5),
(34, 'cubrecamas', 3, 2, 8),
(35, 'cubrecamas', 3, 3, 6),
(36, 'cubrecamas', 3, 4, 0),
(37, 'toallas', 4, 1, 20),
(38, 'toallas', 4, 2, 30),
(39, 'toallas', 4, 3, 15),
(40, 'toallas', 4, 4, -1),
(41, 'toallones', 5, 1, 12),
(42, 'toallones', 5, 2, 18),
(43, 'toallones', 5, 3, 9),
(44, 'toallones', 5, 4, 0),
(45, 'cortinas', 6, 1, 10),
(46, 'cortinas', 6, 2, 20),
(47, 'cortinas', 6, 3, 15),
(48, 'cortinas', 6, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observation`
--

CREATE TABLE `observation` (
  `id` bigint(100) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `text` varchar(50) NOT NULL
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
(1, 'Agua Villavicencio', 5000, 1, 81);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shift`
--

CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `room_id` bigint(100) NOT NULL,
  `start` datetime NOT NULL DEFAULT current_timestamp(),
  `finish` datetime DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Normal',
  `total_price` decimal(10,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `shift`
--

INSERT INTO `shift` (`id`, `room_id`, `start`, `finish`, `type`, `total_price`) VALUES
(217, 12, '2024-11-17 19:54:23', '2024-11-17 21:54:23', 'Normal', 20000),
(226, 8, '2024-11-17 20:42:18', '2024-11-17 23:42:18', 'Normal', 20000);

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
(22, 'Facundo', 'Pancani', 'Facupanca', 'Conserje', '$2a$10$EtLHXCd6sBEpqw0Q1ifsR.rzDXHalwnFUp7tHczRsqDdHv2etvo1.', NULL),
(23, 'Pedro', 'Perez', 'pedro123', 'Conserje', '$2a$10$H6aRzBYQgMrh0AvuEeSgHOIlHFnVgYaWTIQxEmgpFmASC.hmeapkC', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `advance`
--
ALTER TABLE `advance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_foreign_key` (`user_id`);

--
-- Indices de la tabla `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cash_movement`
--
ALTER TABLE `cash_movement`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `observation`
--
ALTER TABLE `observation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shift_id_foreign_key` (`shift_id`);

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
-- AUTO_INCREMENT de la tabla `advance`
--
ALTER TABLE `advance`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `bill`
--
ALTER TABLE `bill`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cash_movement`
--
ALTER TABLE `cash_movement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `consumition`
--
ALTER TABLE `consumition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `laundry`
--
ALTER TABLE `laundry`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `observation`
--
ALTER TABLE `observation`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `advance`
--
ALTER TABLE `advance`
  ADD CONSTRAINT `user_id_foreign_key` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

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
-- Filtros para la tabla `observation`
--
ALTER TABLE `observation`
  ADD CONSTRAINT `shift_id_foreign_key` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `shift`
--
ALTER TABLE `shift`
  ADD CONSTRAINT `fk_hotel_room_id` FOREIGN KEY (`room_id`) REFERENCES `hotel_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
