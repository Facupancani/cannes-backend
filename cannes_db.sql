-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-12-2024 a las 02:08:20
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
  `details` varchar(200) DEFAULT NULL,
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
(3, 'Luz', 'Hola', 1111, 'Fravega', '2024-11-15 00:10:59'),
(4, 'Agua', 'Hola', 4000, 'hola', '2024-11-20 19:03:31');

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
(333, 8, '2024-12-20 21:38:58', '2024-12-21 05:38:58', 5000, 8000, 13000, 0, 0, '2024-12-25 21:35:10'),
(334, 8, '2024-12-26 16:32:22', '2024-12-27 00:32:22', 5000, 8000, 13000, 0, 0, '2024-12-26 16:32:24'),
(335, 8, '2024-12-26 16:51:29', '2024-12-27 00:51:29', 5000, 8000, 13000, 0, 0, '2024-12-26 16:51:29'),
(336, 8, '2024-12-26 16:52:20', '2024-12-27 00:52:20', 5000, 8000, 13000, 0, 0, '2024-12-26 16:52:21'),
(337, 8, '2024-12-26 16:52:40', '2024-12-27 00:52:40', 5000, 8000, 13000, 0, 0, '2024-12-26 16:52:41'),
(338, 8, '2024-12-26 16:53:09', '2024-12-27 00:53:09', 5000, 8000, 13000, 0, 0, '2024-12-26 16:53:11'),
(339, 8, '2024-12-26 16:56:24', '2024-12-27 00:56:24', 5000, 8000, 13000, 0, 0, '2024-12-26 16:56:25'),
(340, 8, '2024-12-26 16:59:07', '2024-12-27 00:59:07', 5000, 8000, 13000, 0, 0, '2024-12-26 16:59:08'),
(341, 8, '2024-12-26 17:01:29', '2024-12-27 01:01:29', 5000, 8000, 13000, 0, 0, '2024-12-26 17:01:30'),
(342, 8, '2024-12-26 17:02:34', '2024-12-27 01:02:34', 5000, 8000, 13000, 0, 0, '2024-12-26 17:02:36'),
(343, 8, '2024-12-26 17:14:03', '2024-12-27 01:14:03', 5000, 8000, 13000, 0, 0, '2024-12-26 17:14:05'),
(344, 8, '2024-12-26 17:15:18', '2024-12-27 01:15:18', 5000, 8000, 13000, 0, 0, '2024-12-26 17:15:19'),
(345, 8, '2024-12-26 17:18:00', '2024-12-27 01:18:00', 5000, 8000, 13000, 0, 0, '2024-12-26 17:18:01'),
(346, 8, '2024-12-26 17:18:34', '2024-12-27 01:18:34', 5000, 8000, 13000, 0, 0, '2024-12-26 17:18:35'),
(347, 8, '2024-12-26 17:20:23', '2024-12-27 01:20:23', 5000, 8000, 13000, 0, 0, '2024-12-26 17:20:25'),
(348, 8, '2024-12-26 17:21:26', '2024-12-27 01:21:26', 5000, 8000, 13000, 0, 0, '2024-12-26 17:21:27'),
(349, 8, '2024-12-26 17:24:05', '2024-12-27 01:24:05', 5000, 8000, 13000, 0, 0, '2024-12-26 17:24:05'),
(350, 12, '2024-12-26 17:25:09', '2024-12-27 05:25:09', 5000, 12000, 17000, 0, 0, '2024-12-26 17:25:10'),
(351, 8, '2024-12-26 17:25:56', '2024-12-27 01:25:56', 5000, 8000, 13000, 0, 0, '2024-12-26 17:25:57'),
(352, 8, '2024-12-26 17:26:54', '2024-12-27 01:26:54', 5000, 8000, 13000, 0, 0, '2024-12-26 17:26:56'),
(353, 8, '2024-12-26 17:28:36', '2024-12-27 01:28:36', 5000, 8000, 13000, 0, 0, '2024-12-26 17:28:37'),
(354, 8, '2024-12-26 17:29:08', '2024-12-27 01:29:08', 5000, 8000, 13000, 0, 0, '2024-12-26 17:29:10'),
(355, 8, '2024-12-26 17:30:33', '2024-12-27 01:30:33', 5000, 8000, 13000, 0, 0, '2024-12-26 17:30:34'),
(356, 12, '2024-12-26 17:31:11', '2024-12-27 05:31:11', 5000, 12000, 17000, 0, 0, '2024-12-26 17:31:12'),
(357, 8, '2024-12-26 17:32:38', '2024-12-27 01:32:38', 5000, 8000, 13000, 0, 0, '2024-12-26 17:32:39'),
(358, 8, '2024-12-26 17:34:19', '2024-12-27 01:34:19', 5000, 8000, 13000, 0, 0, '2024-12-26 17:34:20'),
(359, 8, '2024-12-27 12:43:34', '2024-12-27 20:43:34', 5000, 8000, 13000, 0, 0, '2024-12-27 12:45:38'),
(360, 8, '2024-12-27 12:47:58', '2024-12-27 20:47:58', 5000, 8000, 13000, 0, 0, '2024-12-27 12:48:01'),
(361, 4, '2024-12-27 12:57:25', '2024-12-27 16:57:25', 5000, 4000, 9000, 0, 0, '2024-12-27 12:57:27'),
(362, 8, '2024-12-27 13:07:27', '2024-12-27 21:07:27', 5000, 8000, 13000, 0, 0, '2024-12-27 13:07:28'),
(363, 8, '2024-12-27 13:07:39', '2024-12-27 21:07:39', 5000, 8000, 13000, 0, 0, '2024-12-27 13:07:41'),
(364, 4, '2024-12-27 13:08:26', '2024-12-27 17:08:26', 5000, 4000, 9000, 0, 0, '2024-12-27 13:08:28'),
(365, 12, '2024-12-27 13:09:28', '2024-12-28 01:09:28', 5000, 12000, 17000, 0, 0, '2024-12-27 13:09:29'),
(366, 4, '2024-12-27 13:13:43', '2024-12-27 17:13:43', 5000, 4000, 9000, 0, 0, '2024-12-27 13:13:43'),
(367, 8, '2024-12-27 13:26:26', '2024-12-27 21:26:26', 5000, 8000, 13000, 0, 0, '2024-12-27 13:26:27'),
(368, 12, '2024-12-27 13:30:16', '2024-12-28 01:30:16', 5000, 12000, 17000, 0, 0, '2024-12-27 13:30:17'),
(369, 3, '2024-12-30 22:41:28', '2024-12-31 01:41:28', 10000, 0, 10000, 0, -1000, '2024-12-31 00:14:19');

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
(2, 2, 'Disponible', NULL, 2000, 2),
(3, 3, 'Disponible', NULL, 3000, 3),
(4, 4, 'Ocupado', 708, 4000, 4),
(5, 5, 'Disponible', NULL, 5000, 5),
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
-- Estructura de tabla para la tabla `internal_consumition`
--

CREATE TABLE `internal_consumition` (
  `id` int(11) NOT NULL,
  `user_id` bigint(11) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `internal_consumition`
--

INSERT INTO `internal_consumition` (`id`, `user_id`, `description`, `amount`, `price`, `created_at`) VALUES
(2, 11, 'Se trasfirio producto Agua Villavicencio con cantidad 3 y precio unitario de $5000 a la cuenta de Luciano Frias', 3, 5000, '2024-12-31 01:04:37'),
(3, 19, 'Se transfirio producto Agua Villavicencio con cantidad 4 y precio unitario de $5000 a la cuenta de Maximo Pancani', 4, 20000, '2024-12-31 01:05:46'),
(4, 21, 'Se transfirio producto Agua Villavicencio con cantidad 5 y precio unitario de $25000 a la cuenta de Homero Frias', 5, 25000, '2024-12-31 01:06:22');

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
(25, 'fundas', 'in_use', 0),
(26, 'fundas', 'clean', 0),
(27, 'fundas', 'dirty', 0),
(28, 'fundas', 'in_laundry', 17),
(29, 'sabanas', 'in_use', 0),
(30, 'sabanas', 'clean', 0),
(31, 'sabanas', 'dirty', 0),
(32, 'sabanas', 'in_laundry', 4),
(33, 'cubrecamas', 'in_use', 0),
(34, 'cubrecamas', 'clean', 0),
(35, 'cubrecamas', 'dirty', 0),
(36, 'cubrecamas', 'in_laundry', 26),
(37, 'toallas', 'in_use', 0),
(38, 'toallas', 'clean', 0),
(39, 'toallas', 'dirty', 0),
(40, 'toallas', 'in_laundry', 2),
(41, 'toallones', 'in_use', 0),
(42, 'toallones', 'clean', 0),
(43, 'toallones', 'dirty', 0),
(44, 'toallones', 'in_laundry', 8),
(45, 'cortinas', 'in_use', 0),
(46, 'cortinas', 'clean', 0),
(47, 'cortinas', 'dirty', 0),
(48, 'cortinas', 'in_laundry', 3);

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
(1, 'Agua Villavicencio', 5000, 1, 973);

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
(708, 4, '2024-12-30 22:41:29', '2024-12-31 02:41:29', 'Normal', 5000, 4000, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

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
(23, 'Pedro', 'Perez', 'pedro123', 'Conserje', '$2a$10$H6aRzBYQgMrh0AvuEeSgHOIlHFnVgYaWTIQxEmgpFmASC.hmeapkC', NULL),
(25, 'Facundo', 'Pancani', 'facupancani', 'Conserje', '$2a$10$tCUaAahFH1tcMEd7yvXHnexidneBxzST2KVoxNsJTyIEW.bONaXim', NULL);

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
-- Indices de la tabla `internal_consumition`
--
ALTER TABLE `internal_consumition`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `bill`
--
ALTER TABLE `bill`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cash_movement`
--
ALTER TABLE `cash_movement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- AUTO_INCREMENT de la tabla `consumition`
--
ALTER TABLE `consumition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT de la tabla `internal_consumition`
--
ALTER TABLE `internal_consumition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `laundry`
--
ALTER TABLE `laundry`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `observation`
--
ALTER TABLE `observation`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=709;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
