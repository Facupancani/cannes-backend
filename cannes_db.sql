-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-12-2024 a las 02:49:00
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
  `details` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `advance`
--

INSERT INTO `advance` (`id`, `user_id`, `amount`, `details`, `created_at`) VALUES
(83, 10, 123, '123', '2024-12-21 00:20:28'),
(84, 10, 234523454, '123', '2024-12-21 00:20:42'),
(85, 10, 123, '123', '2024-12-21 01:40:24'),
(86, 20, 4000, 'Se transifirio un monto de $4000 al usuario Karina Barcala en habitacion 2.', '2024-12-21 01:42:22'),
(87, 11, 4000, 'Se transifirio un monto de $4000 al usuario Luciano Frias en habitacion 12.', '2024-12-21 01:46:22'),
(88, 11, 122, 'Se transifirio un monto de $122 al usuario Luciano Frias en habitacion 12.', '2024-12-21 01:46:35'),
(89, 10, 123, 'Se transifirio un monto de $123 al usuario John Doe en habitacion 12.', '2024-12-21 01:46:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bill`
--

CREATE TABLE `bill` (
  `id` bigint(100) NOT NULL,
  `concept` varchar(50) NOT NULL,
  `details` varchar(100) DEFAULT NULL,
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
(4, 'Agua', 'Hola', 4000, 'hola', '2024-11-20 19:03:31'),
(5, 'Agua', '123', 123, '123', '2024-12-20 23:31:43'),
(6, 'Agua', '123', 123, '123', '2024-12-20 23:32:03'),
(7, 'Luz', '123', 12122333, 'EDEA', '2024-12-20 23:46:09'),
(8, 'Agua', 'asdasd', 123123, 'EDEA', '2024-12-20 23:46:40'),
(9, 'Agua', 'agua de edea', 123123, 'EDEA', '2024-12-21 00:27:54'),
(10, 'Agua', '123', 123, '123', '2024-12-21 00:28:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cash_movement`
--

CREATE TABLE `cash_movement` (
  `id` bigint(20) NOT NULL,
  `room_number` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `finish` datetime NOT NULL,
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

INSERT INTO `cash_movement` (`id`, `room_number`, `start`, `finish`, `bar_price`, `shift_price`, `physical_cash`, `transfer_cash`, `commission_amount`, `created_at`) VALUES
(280, 12, '2024-12-05 23:44:46', '2024-12-06 01:44:46', 5000, 20000, 25000, 0, 0, '2024-12-05 23:44:54'),
(281, 16, '2024-12-05 23:45:26', '2024-12-06 01:45:26', 5000, 20000, 25000, 0, 0, '2024-12-05 23:45:34'),
(282, 12, '2024-12-06 00:07:28', '2024-12-06 02:07:28', 5000, 20000, 25000, 0, 0, '2024-12-06 00:07:34'),
(283, 6, '2024-12-06 00:10:37', '2024-12-06 02:10:37', 5000, 20000, 25000, 0, 0, '2024-12-06 00:10:39'),
(284, 2, '2024-12-06 00:10:54', '2024-12-06 02:10:54', 5000, 20000, 25000, 0, 0, '2024-12-06 00:10:55'),
(285, 6, '2024-12-06 00:11:19', '2024-12-06 02:11:19', 5000, 20000, 25000, 0, 0, '2024-12-06 00:11:20'),
(286, 12, '2024-12-06 00:12:46', '2024-12-06 02:12:46', 5000, 20000, 25000, 0, 0, '2024-12-06 00:12:47'),
(287, 8, '2024-12-06 22:51:23', '2024-12-07 00:51:23', 5000, 20000, 25000, 0, 0, '2024-12-06 22:55:46'),
(288, 4, '2024-12-06 22:45:32', '2024-12-07 00:45:32', 5000, 20000, 25000, 0, 0, '2024-12-07 00:30:04'),
(289, 16, '2024-12-08 19:37:42', '2024-12-08 21:37:42', 5000, 20000, 25000, 0, 0, '2024-12-08 19:37:44'),
(290, 12, '2024-12-08 19:37:41', '2024-12-08 21:37:41', 5000, 20000, 25000, 0, 0, '2024-12-08 19:37:45'),
(291, 8, '2024-12-08 19:37:39', '2024-12-08 21:37:39', 5000, 20000, 25000, 0, 0, '2024-12-08 19:37:47'),
(292, 11, '2024-12-08 19:37:42', '2024-12-08 21:37:42', 5000, 20000, 25000, 0, 0, '2024-12-08 19:37:48'),
(293, 15, '2024-12-08 19:37:43', '2024-12-08 21:37:43', 5000, 20000, 25000, 0, 0, '2024-12-08 19:37:49'),
(294, 15, '2024-12-08 19:39:14', '2024-12-08 21:39:14', 5000, 20000, 25000, 0, 0, '2024-12-08 19:39:15'),
(295, 16, '2024-12-08 19:39:14', '2024-12-08 21:39:14', 5000, 20000, 25000, 0, 0, '2024-12-08 19:39:16'),
(296, 12, '2024-12-08 19:39:13', '2024-12-08 21:39:13', 5000, 20000, 25000, 0, 0, '2024-12-08 19:39:16'),
(297, 11, '2024-12-08 19:39:12', '2024-12-08 21:39:12', 5000, 20000, 25000, 0, 0, '2024-12-08 19:39:17'),
(298, 8, '2024-12-08 19:39:13', '2024-12-08 21:39:13', 5000, 20000, 25000, 0, 0, '2024-12-08 19:39:18'),
(299, 7, '2024-12-08 19:39:12', '2024-12-08 21:39:12', 5000, 20000, 25000, 0, 0, '2024-12-08 19:39:19'),
(300, 4, '2024-12-08 19:55:54', '2024-12-08 21:55:54', 10000, 20000, 30000, 0, 0, '2024-12-08 19:56:02'),
(301, 1, '2024-12-08 20:02:41', '2024-12-08 22:02:41', 15000, 20000, 35000, 0, 0, '2024-12-08 20:03:27'),
(302, 2, '2024-12-08 20:00:42', '2024-12-08 22:00:42', 10000, 16000, 26000, 0, -4000, '2024-12-08 20:04:08'),
(303, 2, '2024-12-08 21:12:51', '2024-12-08 23:12:51', 20000, 20000, 40000, 0, 0, '2024-12-08 21:12:57'),
(304, 2, '2024-12-11 17:18:50', '2024-12-12 04:18:50', 5000, 40000, 45000, 0, 0, '2024-12-11 18:46:56'),
(305, 6, '2024-12-11 18:17:06', '2024-12-11 21:17:06', 5000, 26000, 31000, 0, 0, '2024-12-11 18:47:03'),
(306, 10, '2024-12-11 18:27:16', '2024-12-11 23:27:16', 5000, 36000, 41000, 0, 0, '2024-12-11 18:47:04'),
(307, 5, '2024-12-11 18:35:36', '2024-12-11 21:35:36', 5000, 22000, 27000, 0, 0, '2024-12-11 18:47:06'),
(308, 9, '2024-12-11 18:30:25', '2024-12-11 23:30:25', 5000, 25000, 30000, 0, 0, '2024-12-11 18:47:08'),
(309, 13, '2024-12-11 18:42:39', '2024-12-12 00:42:39', 5000, 28000, 33000, 0, 0, '2024-12-11 18:47:10'),
(310, 10, '2024-12-11 18:48:46', '2024-12-12 03:18:46', 10000, 44222, 54222, 0, 0, '2024-12-11 18:54:24'),
(311, 6, '2024-12-11 18:48:31', '2024-12-11 21:48:31', 5000, 200006000, 200011000, 0, 0, '2024-12-11 18:54:32'),
(312, 5, '2024-12-11 18:48:07', '2024-12-11 22:48:07', 5000, 200004000, 200009000, 0, 0, '2024-12-11 18:54:34'),
(313, 2, '2024-12-11 18:54:38', '2024-12-11 20:54:38', 5000, 17500, 22500, 0, -500, '2024-12-11 19:52:11'),
(314, 6, '2024-12-11 22:34:04', '2024-12-12 00:34:04', 5000, 20000, 25000, 0, 0, '2024-12-11 22:34:06'),
(315, 4, '2024-12-08 19:56:19', '2024-12-08 21:56:19', 15000, 20000, 35000, 0, 0, '2024-12-13 21:16:26'),
(316, 8, '2024-12-13 21:16:16', '2024-12-13 23:16:16', 30000, 20000, 50000, 0, 0, '2024-12-13 21:16:40'),
(317, 1, '2024-12-13 21:32:50', '2024-12-13 23:32:50', 5000, 20000, 25000, 0, 0, '2024-12-13 21:32:51'),
(318, 4, '2024-12-13 21:33:30', '2024-12-13 23:33:30', 5000, 20000, 25000, 0, 0, '2024-12-13 21:36:35'),
(319, 3, '2024-12-13 21:33:07', '2024-12-13 23:33:07', 5000, 20000, 25000, 0, 0, '2024-12-13 21:36:37'),
(320, 1, '2024-12-13 21:38:25', '2024-12-14 01:38:25', 5000, 12500, 17500, 0, -500, '2024-12-13 21:40:06'),
(321, 9, '2024-12-13 21:50:03', '2024-12-13 21:50:03', 5000, 9000, 14000, 0, 0, '2024-12-13 21:50:09'),
(322, 5, '2024-12-13 21:49:58', '2024-12-13 22:49:58', 5000, 5000, 10000, 0, 0, '2024-12-13 21:50:14'),
(323, 12, '2024-12-13 21:46:38', '2024-12-14 01:46:38', 5000, 24000, 29000, 0, 0, '2024-12-13 21:50:15'),
(324, 8, '2024-12-13 21:37:02', '2024-12-14 04:37:02', 5000, 28000, 33000, 0, 0, '2024-12-13 21:50:17'),
(325, 4, '2024-12-13 21:45:58', '2024-12-14 01:45:58', 5000, 16000, 21000, 0, 0, '2024-12-13 21:50:18'),
(326, 1, '2024-12-13 21:40:24', '2024-12-14 00:40:24', 10000, 7000, 17000, 0, 0, '2024-12-13 21:50:20'),
(327, 16, '2024-12-13 21:58:46', '2024-12-14 13:58:46', 5000, 16000, 21000, 0, 0, '2024-12-13 21:58:53'),
(328, 12, '2024-12-13 21:58:44', '2024-12-14 09:58:44', 5000, 12000, 17000, 0, 0, '2024-12-13 21:58:55'),
(329, 4, '2024-12-13 21:58:43', '2024-12-14 01:58:43', 5000, 4000, 9000, 0, 0, '2024-12-13 21:58:57'),
(330, 3, '2024-12-13 21:52:23', '2024-12-13 22:52:23', 5000, 3000, 8000, 0, 0, '2024-12-13 21:58:59'),
(331, 2, '2024-12-13 21:58:42', '2024-12-13 23:58:42', 5000, 2000, 7000, 0, 0, '2024-12-13 21:59:01'),
(332, 1, '2024-12-13 21:58:41', '2024-12-13 22:58:41', 5000, 1000, 6000, 0, 0, '2024-12-13 21:59:02'),
(333, 8, '2024-12-21 01:12:09', '2024-12-21 09:12:09', 10000, 8000, 18000, 0, 0, '2024-12-21 01:12:53'),
(334, 8, '2024-12-21 01:15:08', '2024-12-21 09:15:08', 5000, 8000, 13000, 0, 0, '2024-12-21 01:15:10'),
(335, 8, '2024-12-21 01:15:19', '2024-12-21 09:15:19', 5000, 8000, 13000, 0, 0, '2024-12-21 01:15:20'),
(336, 16, '2024-12-21 01:27:16', '2024-12-21 17:27:16', 5000, 7200, 12200, 0, -6000, '2024-12-21 01:39:51'),
(337, 12, '2024-12-21 01:39:53', '2024-12-21 13:39:53', 5000, 12000, 17000, 0, 0, '2024-12-21 01:47:08');

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
(288, 671, 'product', 'Agua Villavicencio', 5000),
(289, 671, 'product', 'Agua Villavicencio', 5000),
(290, 671, 'product', 'Agua Villavicencio', 5000),
(291, 671, 'product', 'Agua Villavicencio', 5000),
(292, 671, 'product', 'Agua Villavicencio', 5000),
(293, 671, 'product', 'Agua Villavicencio', 5000),
(294, 671, 'product', 'Agua Villavicencio', 5000),
(295, 671, 'product', 'Agua Villavicencio', 5000),
(296, 671, 'product', 'Agua Villavicencio', 5000),
(297, 672, 'product', 'Agua Villavicencio', 5000),
(298, 672, 'product', 'Agua Villavicencio', 5000),
(299, 672, 'product', 'Agua Villavicencio', 5000),
(300, 672, 'product', 'Agua Villavicencio', 5000),
(301, 672, 'product', 'Agua Villavicencio', 5000),
(302, 672, 'product', 'Agua Villavicencio', 5000),
(303, 672, 'product', 'Agua Villavicencio', 5000),
(304, 672, 'product', 'Agua Villavicencio', 5000),
(305, 672, 'product', 'Agua Villavicencio', 5000),
(306, 673, 'product', 'Agua Villavicencio', 5000),
(308, 671, 'surcharge', 'Se añadio 60 minutos extra a esta habitacion', 6000),
(309, 671, 'surcharge', '', 0),
(310, 671, 'surcharge', '', 0);

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
(1, 1, 'Disponible', NULL, 1000, 1),
(2, 2, 'Ocupado', 672, 2000, 2),
(3, 3, 'Ocupado', 673, 3000, 3),
(4, 4, 'Disponible', NULL, 4000, 4),
(5, 5, 'Ocupado', 671, 5000, 5),
(6, 6, 'Disponible', NULL, 6000, 6),
(7, 7, 'Disponible', NULL, 7000, 7),
(8, 8, 'Disponible', NULL, 8000, 8),
(9, 9, 'Disponible', NULL, 9000, 9),
(10, 10, 'Disponible', NULL, 10000, 10),
(11, 11, 'Disponible', NULL, 11000, 11),
(12, 12, 'Disponible', NULL, 12000, 12),
(13, 13, 'Disponible', NULL, 13000, 13),
(14, 14, 'Disponible', NULL, 14000, 14),
(15, 15, 'Disponible', NULL, 15000, 15),
(16, 16, 'Disponible', NULL, 16000, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laundry`
--

CREATE TABLE `laundry` (
  `id` bigint(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `deposit` varchar(100) NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `laundry`
--

INSERT INTO `laundry` (`id`, `name`, `deposit`, `amount`) VALUES
(25, 'fundas', 'in_use', 15),
(26, 'fundas', 'clean', 25),
(27, 'fundas', 'dirty', 10),
(28, 'fundas', 'in_laundry', 0),
(29, 'sabanas', 'in_use', 30),
(30, 'sabanas', 'clean', 40),
(31, 'sabanas', 'dirty', 25),
(32, 'sabanas', 'in_laundry', 5),
(33, 'cubrecamas', 'in_use', 5),
(34, 'cubrecamas', 'clean', 8),
(35, 'cubrecamas', 'dirty', 6),
(36, 'cubrecamas', 'in_laundry', 0),
(37, 'toallas', 'in_use', 20),
(38, 'toallas', 'clean', 30),
(39, 'toallas', 'dirty', 15),
(40, 'toallas', 'in_laundry', -1),
(41, 'toallones', 'in_use', 12),
(42, 'toallones', 'clean', 18),
(43, 'toallones', 'dirty', 9),
(44, 'toallones', 'in_laundry', 0),
(45, 'cortinas', 'in_use', 10),
(46, 'cortinas', 'clean', 20),
(47, 'cortinas', 'dirty', 15),
(48, 'cortinas', 'in_laundry', 0);

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
(31, 671, 'Holaaa');

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
(1, 'Agua Villavicencio', 5000, 1, 960);

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
  `shift_price` int(11) NOT NULL,
  `pending_cleaning_start` datetime NOT NULL,
  `cleaning_start` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `shift`
--

INSERT INTO `shift` (`id`, `room_id`, `start`, `finish`, `type`, `bar_price`, `shift_price`, `pending_cleaning_start`, `cleaning_start`) VALUES
(671, 5, '2024-12-20 21:41:24', '2024-12-21 02:41:24', 'Normal', 15000, 10000, '1970-01-01 00:00:00', '1970-01-01 00:00:00'),
(672, 2, '2024-12-21 00:00:45', '2024-12-21 02:00:45', 'Normal', 50000, 2000, '1970-01-01 00:00:00', '1970-01-01 00:00:00'),
(673, 3, '2024-12-21 00:28:38', '2024-12-21 03:28:38', 'Normal', 10000, 1800, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

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
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `bill`
--
ALTER TABLE `bill`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cash_movement`
--
ALTER TABLE `cash_movement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT de la tabla `consumition`
--
ALTER TABLE `consumition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT de la tabla `laundry`
--
ALTER TABLE `laundry`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `observation`
--
ALTER TABLE `observation`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=679;

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
