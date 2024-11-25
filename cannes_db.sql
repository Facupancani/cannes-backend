-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2024 a las 23:04:56
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
(14, 11, 11, '11', '2024-11-15 00:09:50'),
(15, 11, 4000, 'asdasdasdas', '2024-11-20 19:03:48');

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
(3, 'Luz', 'Hola', 1111, 'Fravega', '2024-11-15 00:10:59'),
(4, 'Agua', 'Hola', 4000, 'hola', '2024-11-20 19:03:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cash_movement`
--

CREATE TABLE `cash_movement` (
  `id` bigint(20) NOT NULL,
  `room_number` int(11) NOT NULL,
  `finish` time NOT NULL,
  `bar_price` int(11) NOT NULL,
  `shift_price` int(11) NOT NULL,
  `physical_cash` int(11) DEFAULT NULL,
  `transfer_cash` int(11) DEFAULT NULL,
  `commission_amount` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cash_movement`
--

INSERT INTO `cash_movement` (`id`, `room_number`, `finish`, `bar_price`, `shift_price`, `physical_cash`, `transfer_cash`, `commission_amount`, `created_at`) VALUES
(47, 8, '22:50:15', 14500, 20000, 25000, 0, -500, '2024-11-20 23:50:37'),
(48, 7, '22:53:38', 20000, 20000, 40000, 0, 0, '2024-11-20 23:54:22'),
(49, 8, '22:54:36', 10000, 20000, 30000, 0, -5000, '2024-11-20 23:55:48'),
(50, 8, '22:56:00', 9700, 20000, 29700, 0, -300, '2024-11-20 23:56:23'),
(51, 4, '22:28:33', 9754, 20000, 29754, 0, -123, '2024-11-21 00:02:21'),
(52, 6, '23:05:35', 10000, 8000, 18000, 0, 0, '2024-11-21 00:07:36'),
(53, 4, '01:17:32', 15500, 20000, 35500, 0, -500, '2024-11-22 23:18:23'),
(54, 1, '23:14:15', 10000, 10000, 20000, 0, 0, '2024-11-22 23:19:13'),
(55, 3, '22:33:01', 5000, 20000, 25000, 0, 0, '2024-11-22 23:33:02'),
(56, 7, '22:59:11', 9500, 20000, 29500, 0, -500, '2024-11-23 00:02:56'),
(57, 7, '23:03:57', 5000, 20000, 25000, 0, 0, '2024-11-23 00:14:34'),
(58, 11, '23:30:35', 5000, 20000, 25000, 0, 0, '2024-11-23 00:30:36'),
(59, 7, '23:30:33', 5000, 20000, 25000, 0, 0, '2024-11-23 00:30:40'),
(60, 11, '23:30:42', 5000, 20000, 25000, 0, 0, '2024-11-23 00:30:43'),
(61, 7, '01:53:37', 5000, 20000, 25000, 0, 0, '2024-11-23 02:53:39'),
(62, 12, '02:05:25', 10000, 20000, 30000, 0, 0, '2024-11-23 03:05:31'),
(63, 7, '19:33:43', 5000, 20000, 25000, 0, 0, '2024-11-25 20:33:45'),
(64, 7, '19:33:47', 5000, 20000, 25000, 0, 0, '2024-11-25 20:33:49'),
(65, 7, '19:54:03', 5000, 20000, 25000, 0, 0, '2024-11-25 20:54:35'),
(66, 7, '19:54:39', 5000, 20000, 25000, 0, 0, '2024-11-25 20:54:40'),
(67, 11, '19:57:24', 5000, 20000, 25000, 0, 0, '2024-11-25 21:00:41'),
(68, 11, '20:00:48', 5000, 20000, 25000, 0, 0, '2024-11-25 21:00:49'),
(69, 11, '20:02:02', 5000, 20000, 25000, 0, 0, '2024-11-25 21:02:02'),
(70, 7, '19:57:21', 5000, 20000, 25000, 0, 0, '2024-11-25 21:02:10'),
(71, 6, '20:02:43', 5000, 20000, 25000, 0, 0, '2024-11-25 21:02:45'),
(72, 12, '20:04:27', 9500, 20000, 29500, 0, -500, '2024-11-25 21:04:38'),
(73, 8, '23:02:23', 9000, 19000, 28000, 0, -500, '2024-11-25 21:09:01'),
(74, 7, '20:09:06', 5000, 20000, 25000, 0, 0, '2024-11-25 21:09:08'),
(75, 12, '20:09:12', 5000, 20000, 25000, 0, 0, '2024-11-25 21:09:17'),
(76, 8, '20:09:38', 5000, 20000, 25000, 0, 0, '2024-11-25 21:09:39'),
(77, 8, '20:09:42', 5000, 20000, 25000, 0, 0, '2024-11-25 21:09:42'),
(78, 11, '20:09:45', 5000, 20000, 25000, 0, 0, '2024-11-25 21:09:46'),
(79, 12, '20:09:50', 5000, 20000, 25000, 0, 0, '2024-11-25 21:09:51'),
(80, 8, '20:11:25', 5000, 20000, 25000, 0, 0, '2024-11-25 21:11:26'),
(81, 8, '20:23:04', 10000, 7000, 17000, 0, 0, '2024-11-25 21:47:26'),
(82, 12, '20:32:13', -1000, 20000, 19000, 0, -500, '2024-11-25 21:51:50'),
(83, 11, '20:32:45', 4500, 20000, 24500, 0, -500, '2024-11-25 21:51:57'),
(84, 8, '20:56:17', 9754, 20000, 29754, 0, -123, '2024-11-25 21:58:56');

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
(115, 358, 'product', 'Agua Villavicencio', 5000),
(116, 358, 'surcharge', 'Se añadio 60 minutos extra a esta habitacion', 6000),
(125, 399, 'surcharge', 'Se añadio 60 minutos extra a esta habitacion', 6000);

--
-- Disparadores `consumition`
--
DELIMITER $$
CREATE TRIGGER `after_consumition_delete` AFTER DELETE ON `consumition` FOR EACH ROW BEGIN
  UPDATE shift
  SET bar_price = (
    SELECT COALESCE(SUM(c.price), 0)
    FROM consumition c
    WHERE c.shift_id = OLD.shift_id
  )
  WHERE id = OLD.shift_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_consumition_insert` AFTER INSERT ON `consumition` FOR EACH ROW BEGIN
  UPDATE shift
  SET bar_price = (
    SELECT COALESCE(SUM(c.price), 0)
    FROM consumition c
    WHERE c.shift_id = NEW.shift_id
  )
  WHERE id = NEW.shift_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_consumition_update` AFTER UPDATE ON `consumition` FOR EACH ROW BEGIN
  -- Recalculate bar_price for the OLD shift_id if it changes
  IF OLD.shift_id != NEW.shift_id THEN
    UPDATE shift
    SET bar_price = (
      SELECT COALESCE(SUM(c.price), 0)
      FROM consumition c
      WHERE c.shift_id = OLD.shift_id
    )
    WHERE id = OLD.shift_id;

    -- Recalculate bar_price for the NEW shift_id
    UPDATE shift
    SET bar_price = (
      SELECT COALESCE(SUM(c.price), 0)
      FROM consumition c
      WHERE c.shift_id = NEW.shift_id
    )
    WHERE id = NEW.shift_id;
  ELSE
    -- If shift_id doesn't change, update the same shift_id's bar_price
    UPDATE shift
    SET bar_price = (
      SELECT COALESCE(SUM(c.price), 0)
      FROM consumition c
      WHERE c.shift_id = NEW.shift_id
    )
    WHERE id = NEW.shift_id;
  END IF;
END
$$
DELIMITER ;

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
(3, 3, 'Ocupado', 350, 0, 0),
(4, 4, 'Ocupado', 358, 0, 0),
(5, 5, 'Disponible', NULL, 0, 0),
(6, 6, 'Disponible', NULL, 0, 0),
(7, 7, 'Ocupado', 399, 0, 0),
(8, 8, 'Disponible', NULL, 0, 0),
(9, 9, 'Disponible', NULL, 0, 0),
(10, 10, 'Disponible', NULL, 0, 0),
(11, 11, 'Disponible', NULL, 0, 0),
(12, 12, 'Disponible', NULL, 0, 0),
(13, 13, 'Disponible', NULL, 0, 0),
(14, 14, 'Disponible', NULL, 0, 0),
(15, 15, 'Ocupado', 402, 0, 0),
(16, 16, 'Ocupado', 403, 0, 0);

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

--
-- Volcado de datos para la tabla `observation`
--

INSERT INTO `observation` (`id`, `shift_id`, `text`) VALUES
(24, 358, 'kl');

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
(1, 'Agua Villavicencio', 5000, 1, 29);

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
  `bar_price` int(11) NOT NULL,
  `shift_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `shift`
--

INSERT INTO `shift` (`id`, `room_id`, `start`, `finish`, `type`, `bar_price`, `shift_price`) VALUES
(350, 3, '2024-11-22 21:06:45', '2024-11-22 23:06:45', 'Normal', 5000, 20000),
(358, 4, '2024-11-22 21:39:43', '2024-11-23 04:39:43', 'Normal', 11000, 20000),
(399, 7, '2024-11-25 18:27:28', '2024-11-25 21:27:28', 'Normal', 6000, 20000),
(402, 15, '2024-11-25 18:32:46', '2024-11-25 20:32:46', 'Normal', 5000, 20000),
(403, 16, '2024-11-25 18:32:47', '2024-11-25 20:32:47', 'Normal', 5000, 20000);

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
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `bill`
--
ALTER TABLE `bill`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cash_movement`
--
ALTER TABLE `cash_movement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `consumition`
--
ALTER TABLE `consumition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `laundry`
--
ALTER TABLE `laundry`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `observation`
--
ALTER TABLE `observation`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

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
