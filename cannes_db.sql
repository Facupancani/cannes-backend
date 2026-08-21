-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-06-2025 a las 04:26:42
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
(73, 11, 1213, '12423423', '2025-02-14 23:40:23'),
(74, 11, 23524135, '23453245', '2025-02-14 23:40:25'),
(76, 25, 2500, 'Se transifirio un monto de $2500 al usuario Facundo Pancani en habitacion 4.', '2025-03-03 16:09:54'),
(77, 25, 2000, 'Se transifirio un monto de $2000 al usuario Facundo Pancani en habitacion 4.', '2025-03-05 20:17:56'),
(78, 25, 2000, 'Se transifirio un monto de $2000 al usuario Facundo Pancani en habitacion 8.', '2025-03-05 20:22:32'),
(79, 25, 1000, 'Se transifirio un monto de $1000 al usuario Facundo Pancani en habitacion 8.', '2025-03-05 22:22:02'),
(80, 25, 2000, 'Se transifirio un monto de $2000 al usuario Facundo Pancani en habitacion 4.', '2025-03-05 22:33:56'),
(81, 25, 1000, 'Se transifirio un monto de $1000 al usuario Facundo Pancani en habitacion 4.', '2025-03-05 22:34:18'),
(82, 25, 1000, 'Se transifirio un monto de $1000 al usuario Facundo Pancani en habitacion 4.', '2025-03-05 22:34:51'),
(83, 25, 1900, 'Se transifirio un monto de $1900 al usuario Facundo Pancani en habitacion 4.', '2025-03-05 22:35:40'),
(84, 25, 1000, 'Se transifirio un monto de $1000 al usuario Facundo Pancani en habitacion 4.', '2025-03-05 22:36:04'),
(85, 25, 1000, 'Se transifirio un monto de $1000 al usuario Facundo Pancani en habitacion 4.', '2025-03-05 22:36:21'),
(86, 25, 5000, 'Se transifirio un monto de $5000 al usuario Facundo Pancani en habitacion 7.', '2025-04-29 20:31:29'),
(87, 25, 10000, 'Consumición interna de Facundo Pancani - 1 Coca Cola XL 2L - $ 10.000,00', '2025-04-29 20:36:15'),
(88, 25, 5000, 'Se transifirio un monto de $5000 al usuario Facundo Pancani en habitacion 4.', '2025-06-08 20:03:48'),
(89, 25, 10000, 'Se transifirio un monto de $10000 al usuario Facundo Pancani en habitacion 6.', '2025-06-08 20:04:09'),
(90, 11, 1000, 'Se transifirio un monto de $1000 al usuario Lucas Medina en habitacion 10.', '2025-06-08 22:19:55'),
(91, 11, 1000, 'Se transifirio un monto de $1000 al usuario Lucas Medina en habitacion 10.', '2025-06-08 22:20:04'),
(92, 11, 1, 'Se transifirio un monto de $1 al usuario Lucas Medina en habitacion 7.', '2025-06-08 23:36:52'),
(93, 11, 2000, 'Se transifirio un monto de $2000 al usuario Lucas Medina en habitacion 7.', '2025-06-08 23:37:02'),
(94, 19, 2000, 'Se transifirio un monto de $2000 al usuario Nicolas Suarez en habitacion 12.', '2025-06-08 23:37:29'),
(95, 11, 2000, 'Se transifirio un monto de $2000 al usuario Lucas Medina en habitacion 12.', '2025-06-08 23:38:23'),
(96, 11, 3000, 'Se transifirio un monto de $3000 al usuario Lucas Medina en habitacion 8.', '2025-06-08 23:44:32'),
(97, 11, 5000, 'Consumición interna de Lucas Medina - 1 Agua Villavicencio - $ 5.000,00', '2025-06-08 23:48:47'),
(98, 11, 5000, 'Consumición interna de Lucas Medina - 1 Agua Villavicencio - $ 5.000,00', '2025-06-08 23:49:18'),
(99, 11, 2000, 'Se transifirio un monto de $2000 al usuario Lucas Medina en habitacion 16.', '2025-06-09 00:57:56');

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
(10, 'Electricidad', 'Electricidad pagada el 5/2/2025', 50000, 'EDEAasdas123123', '2025-02-06 01:19:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cash_movement`
--

CREATE TABLE `cash_movement` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` varchar(50) NOT NULL,
  `details` text DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL,
  `consumptions` text DEFAULT NULL,
  `commission` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `cash_amount` decimal(10,2) DEFAULT NULL,
  `transfer_amount` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `conserje` varchar(100) DEFAULT NULL,
  `room_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cash_movement`
--

INSERT INTO `cash_movement` (`id`, `date`, `type`, `details`, `room`, `consumptions`, `commission`, `discount`, `cash_amount`, `transfer_amount`, `total`, `conserje`, `room_price`) VALUES
(1, '2025-06-14 21:26:24', 'alojamiento', 'Turno tarde', '110', '[]', 0.00, 0.00, 10500.00, 0.00, 10500.00, 'Carlos', 10500.00),
(2, '2025-06-14 21:26:27', 'alojamiento', 'Turno tarde', '102', '[{\"name\":\"Agua\",\"price\":800,\"quantity\":3}]', 0.00, 0.00, 14000.00, 0.00, 14400.00, 'Juani', 12000.00),
(3, '2025-06-14 21:26:30', 'alojamiento', 'Turno tarde', '103', '[]', 0.00, 2000.00, 9000.00, 0.00, 9000.00, 'Juani', 11000.00),
(4, '2025-06-14 21:26:20', 'alojamiento', 'Turno mañana', '101', '[{\"name\":\"Coca-Cola\",\"price\":1600,\"quantity\":2},{\"name\":\"Pizza\",\"price\":6000,\"quantity\":1}]', 1000.00, 0.00, 12000.00, 0.00, 18000.00, 'Juani', 10000.00),
(5, '2025-06-14 21:26:33', 'alojamiento', 'Turno mañana', '105', '[{\"name\":\"Papas\",\"price\":2500,\"quantity\":1},{\"name\":\"Coca-Cola\",\"price\":1600,\"quantity\":2}]', 0.00, 1000.00, 11500.00, 0.00, 14100.00, 'Lucía', 10000.00),
(6, '2025-06-14 21:26:36', 'alojamiento', 'Turno tarde', '106', '[{\"name\":\"Helado\",\"price\":2000,\"quantity\":1}]', 0.00, 0.00, 11000.00, 0.00, 11000.00, 'Lucía', 9000.00),
(7, '2025-06-14 21:26:39', 'alojamiento', 'Turno tarde', '107', '[]', 0.00, 0.00, 11000.00, 0.00, 11000.00, 'Lucía', 11000.00),
(8, '2025-06-14 21:26:43', 'alojamiento', 'Turno noche', '108', '[{\"name\":\"Whisky\",\"price\":4000,\"quantity\":1}]', 500.00, 0.00, 10000.00, 3000.00, 17000.00, 'Lucía', 12500.00),
(9, '2025-06-14 21:26:51', 'alojamiento', 'Turno mañana', '109', '[{\"name\":\"Gaseosa\",\"price\":1200,\"quantity\":2}]', 0.00, 0.00, 10000.00, 0.00, 11900.00, 'Carlos', 9500.00),
(10, '2025-06-14 21:26:54', 'alojamiento', 'Turno noche', '104', '[{\"name\":\"Cervezas\",\"price\":2000,\"quantity\":2}]', 1000.00, 0.00, 15000.00, 1000.00, 17000.00, 'Juani', 13000.00),
(11, '2025-06-10 12:30:00', 'alojamiento', 'Turno mañana', '101', '[]', 0.00, 0.00, 10000.00, 0.00, 10000.00, 'Carlos', 10000.00),
(12, '2025-06-10 13:45:00', 'gasto', 'Compra productos limpieza', NULL, '[]', 0.00, 0.00, 2500.00, 0.00, 2500.00, 'Carlos', 0.00),
(13, '2025-06-10 14:10:00', 'adelanto', 'Adelanto cliente hab 104', '104', '[]', 0.00, 0.00, 3000.00, 0.00, 3000.00, 'Carlos', 0.00),
(14, '2025-06-11 20:00:00', 'alojamiento', 'Turno tarde', '102', '[{\"name\":\"Agua\",\"price\":500,\"quantity\":2}]', 0.00, 1000.00, 6000.00, 5000.00, 11000.00, 'Juani', 12000.00),
(15, '2025-06-11 21:30:00', 'consumo', 'Venta de snacks', NULL, '[{\"name\":\"Papas\",\"price\":800,\"quantity\":1}]', 0.00, 0.00, 1500.00, 0.00, 1500.00, 'Juani', 0.00),
(16, '2025-06-11 23:15:00', 'gasto', 'Reemplazo de lámpara', NULL, '[]', 0.00, 0.00, 800.00, 0.00, 800.00, 'Juani', 0.00),
(17, '2025-06-12 04:20:00', 'alojamiento', 'Turno noche', '103', '[{\"name\":\"Gaseosa\",\"price\":1000,\"quantity\":2}]', 1000.00, 0.00, 4000.00, 4000.00, 8000.00, 'Lucía', 9000.00),
(18, '2025-06-12 05:50:00', 'gasto', 'Taxi urgencia cliente', NULL, '[]', 0.00, 0.00, 2000.00, 0.00, 2000.00, 'Lucía', 0.00),
(19, '2025-06-12 07:05:00', 'consumo', 'Venta de vino', NULL, '[{\"name\":\"Vino\",\"price\":2200,\"quantity\":1}]', 0.00, 0.00, 2200.00, 0.00, 2200.00, 'Lucía', 0.00),
(20, '2025-06-13 12:00:00', 'alojamiento', 'Turno mañana', '104', '[]', 0.00, 500.00, 10000.00, 0.00, 10000.00, 'Carlos', 10500.00),
(21, '2025-06-13 14:30:00', 'gasto', 'Papelería recepción', NULL, '[]', 0.00, 0.00, 600.00, 0.00, 600.00, 'Carlos', 0.00),
(22, '2025-06-13 15:45:00', 'adelanto', 'Adelanto habitación 110', '110', '[]', 0.00, 0.00, 4000.00, 0.00, 4000.00, 'Carlos', 0.00),
(23, '2025-06-14 20:10:00', 'alojamiento', 'Turno tarde', '105', '[{\"name\":\"Cerveza\",\"price\":900,\"quantity\":2}]', 0.00, 0.00, 7000.00, 6000.00, 13000.00, 'Juani', 13000.00),
(24, '2025-06-14 22:50:00', 'gasto', 'Carga de agua bidones', NULL, '[]', 0.00, 0.00, 1200.00, 0.00, 1200.00, 'Juani', 0.00),
(25, '2025-06-21 11:00:00', 'alojamiento', 'Turno mañana', '201', '[]', 0.00, 0.00, 9000.00, 0.00, 9000.00, 'Carlos', 9000.00),
(26, '2025-06-21 17:00:00', 'alojamiento', 'Turno tarde', '202', '[]', 0.00, 0.00, 10500.00, 0.00, 10500.00, 'Ana', 10500.00),
(27, '2025-06-21 23:00:00', 'alojamiento', 'Turno noche', '203', '[]', 0.00, 0.00, 11000.00, 0.00, 11000.00, 'Carlos', 11000.00),
(28, '2025-06-22 11:00:00', 'alojamiento', 'Turno mañana', '204', '[]', 0.00, 0.00, 9200.00, 0.00, 9200.00, 'Ana', 9200.00),
(29, '2025-06-22 17:00:00', 'alojamiento', 'Turno tarde', '205', '[]', 0.00, 0.00, 10700.00, 0.00, 10700.00, 'Carlos', 10700.00),
(30, '2025-06-22 23:00:00', 'alojamiento', 'Turno noche', '206', '[]', 0.00, 0.00, 11500.00, 0.00, 11500.00, 'Ana', 11500.00),
(31, '2025-06-23 11:00:00', 'alojamiento', 'Turno mañana', '207', '[]', 0.00, 0.00, 9300.00, 0.00, 9300.00, 'Carlos', 9300.00),
(32, '2025-06-23 17:00:00', 'alojamiento', 'Turno tarde', '208', '[]', 0.00, 0.00, 10800.00, 0.00, 10800.00, 'Ana', 10800.00),
(33, '2025-06-23 23:00:00', 'alojamiento', 'Turno noche', '209', '[]', 0.00, 0.00, 11600.00, 0.00, 11600.00, 'Carlos', 11600.00),
(34, '2025-06-24 11:00:00', 'alojamiento', 'Turno mañana', '210', '[]', 0.00, 0.00, 9400.00, 0.00, 9400.00, 'Ana', 9400.00),
(35, '2025-06-24 17:00:00', 'alojamiento', 'Turno tarde', '211', '[]', 0.00, 0.00, 10900.00, 0.00, 10900.00, 'Carlos', 10900.00),
(36, '2025-06-24 23:00:00', 'alojamiento', 'Turno noche', '212', '[]', 0.00, 0.00, 11700.00, 0.00, 11700.00, 'Ana', 11700.00),
(37, '2025-06-25 11:00:00', 'alojamiento', 'Turno mañana', '213', '[]', 0.00, 0.00, 9500.00, 0.00, 9500.00, 'Carlos', 9500.00),
(38, '2025-06-25 17:00:00', 'alojamiento', 'Turno tarde', '214', '[]', 0.00, 0.00, 11000.00, 0.00, 11000.00, 'Ana', 11000.00),
(39, '2025-06-25 23:00:00', 'alojamiento', 'Turno noche', '215', '[]', 0.00, 0.00, 11800.00, 0.00, 11800.00, 'Carlos', 11800.00),
(40, '2025-06-26 11:00:00', 'alojamiento', 'Turno mañana', '216', '[]', 0.00, 0.00, 9600.00, 0.00, 9600.00, 'Ana', 9600.00),
(41, '2025-06-26 17:00:00', 'alojamiento', 'Turno tarde', '217', '[]', 0.00, 0.00, 11100.00, 0.00, 11100.00, 'Carlos', 11100.00),
(42, '2025-06-26 23:00:00', 'alojamiento', 'Turno noche', '218', '[]', 0.00, 0.00, 11900.00, 0.00, 11900.00, 'Ana', 11900.00),
(43, '2025-06-27 11:00:00', 'alojamiento', 'Turno mañana', '219', '[]', 0.00, 0.00, 9700.00, 0.00, 9700.00, 'Carlos', 9700.00),
(44, '2025-06-27 17:00:00', 'alojamiento', 'Turno tarde', '220', '[]', 0.00, 0.00, 11200.00, 0.00, 11200.00, 'Ana', 11200.00),
(45, '2025-06-27 23:00:00', 'alojamiento', 'Turno noche', '221', '[]', 0.00, 0.00, 12000.00, 0.00, 12000.00, 'Carlos', 12000.00),
(46, '2025-06-28 11:00:00', 'alojamiento', 'Turno mañana', '222', '[]', 0.00, 0.00, 9800.00, 0.00, 9800.00, 'Ana', 9800.00),
(47, '2025-06-28 17:00:00', 'alojamiento', 'Turno tarde', '223', '[]', 0.00, 0.00, 11300.00, 0.00, 11300.00, 'Carlos', 11300.00),
(48, '2025-06-28 23:00:00', 'alojamiento', 'Turno noche', '224', '[]', 0.00, 0.00, 12100.00, 0.00, 12100.00, 'Ana', 12100.00),
(49, '2025-06-29 11:00:00', 'alojamiento', 'Turno mañana', '225', '[]', 0.00, 0.00, 9900.00, 0.00, 9900.00, 'Carlos', 9900.00),
(50, '2025-06-29 17:00:00', 'alojamiento', 'Turno tarde', '226', '[]', 0.00, 0.00, 11400.00, 0.00, 11400.00, 'Ana', 11400.00),
(51, '2025-06-29 23:00:00', 'alojamiento', 'Turno noche', '227', '[]', 0.00, 0.00, 12200.00, 0.00, 12200.00, 'Carlos', 12200.00),
(52, '2025-06-30 11:00:00', 'alojamiento', 'Turno mañana', '228', '[]', 0.00, 0.00, 10000.00, 0.00, 10000.00, 'Ana', 10000.00),
(53, '2025-06-30 17:00:00', 'alojamiento', 'Turno tarde', '229', '[]', 0.00, 0.00, 11500.00, 0.00, 11500.00, 'Carlos', 11500.00),
(54, '2025-06-30 23:00:00', 'alojamiento', 'Turno noche', '230', '[]', 0.00, 0.00, 12300.00, 0.00, 12300.00, 'Ana', 12300.00);

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
(384, 938, 'product', 'Alfajor Jorgito', 10000),
(385, 963, 'surcharge', 'Se añadio recargo por 3 personas a esta habitacion. (PRESET)', 8000),
(386, 963, 'surcharge', '2 minutitos (PERSONALIZADO)', 1000),
(387, 965, 'product', 'Alfajor Jorgito', 10000),
(388, 965, 'product', 'Alfajor Jorgito', 10000),
(389, 965, 'product', 'Alfajor Jorgito', 10000),
(390, 966, 'product', 'Alfajor Jorgito', 10000),
(391, 967, 'surcharge', 'Se añadio 1 hora extra a esta habitacion. (PRESET)', 8000),
(392, 967, 'product', 'Agua Villavicencio', 5000),
(393, 968, 'surcharge', 'Se añaden 3 horas a esta habitacion. (PRESET)', 16000),
(394, 968, 'surcharge', 'Se añaden 3 horas a esta habitacion. (PRESET)', 18000),
(395, 969, 'surcharge', 'Se añaden 3 horas a esta habitacioasd p´fkopasdkfopasdkfopasdfn. (PRESET)', 18000),
(396, 969, 'surcharge', 'Se añaden 3 horas a esta habitacioasd p´fkopasdkfopasdkfopasdfn. (PRESET)', 18000),
(397, 969, 'surcharge', 'Se añaden 3 horas a esto (PERSONALIZADO)', 6000),
(398, 970, 'surcharge', 'Se añadio 1 hora extra a esta habitacion. (PRESET)', 8000),
(399, 971, 'product', 'Coca Cola XL 2L', 10000),
(400, 969, 'product', 'Alfajor Jorgito', 10000),
(401, 968, 'product', 'Alfajor Jorgito', 10000),
(402, 974, 'product', 'Alfajor Jorgito', 10000),
(403, 976, 'product', 'Alfajor Jorgito', 10000),
(404, 976, 'product', 'Alfajor Jorgito', 10000),
(405, 1001, 'surcharge', 'Se añadio 1 hora extra a esta habitacion. (PRESET)', 8000),
(406, 1001, 'product', 'Alfajor Jorgito', 10000),
(407, 1001, 'commission', 'Lucas', -500),
(408, 1002, 'commission', 'Lucas', -500),
(409, 1002, 'product', 'Agua Villavicencio', 5000),
(410, 1003, 'product', 'Citrus Pomelo', 5000),
(411, 1003, 'product', 'Citrus Pomelo', 5000),
(412, 1003, 'commission', 'Maria', -1500);

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
  `pred_time` int(100) NOT NULL,
  `estadia_duration` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hotel_room`
--

INSERT INTO `hotel_room` (`id`, `room_number`, `state`, `current_shift_id`, `pred_price`, `pred_time`, `estadia_duration`) VALUES
(1, 1, 'Ocupado', 1013, 1000, 1, 12),
(2, 2, 'Ocupado', 1024, 2000, 2, 12),
(3, 3, 'Ocupado', 1005, 3000, 6, 12),
(4, 4, 'Ocupado', 1007, 4000, 4, 12),
(5, 5, 'Disponible', NULL, 5000, 5, 12),
(6, 6, 'Disponible', NULL, 6000, 6, 12),
(7, 7, 'Ocupado', 1004, 7000, 7, 12),
(8, 8, 'Ocupado', 1006, 8000, 8, 12),
(9, 9, 'Disponible', NULL, 9000, 9, 12),
(10, 10, 'Ocupado', 1008, 10000, 10, 12),
(11, 11, 'Disponible', NULL, 11000, 11, 12),
(12, 12, 'Disponible', NULL, 12000, 12, 12),
(13, 13, 'Disponible', NULL, 13000, 13, 12),
(14, 14, 'Disponible', NULL, 14000, 14, 12),
(15, 15, 'Disponible', NULL, 15000, 15, 12),
(16, 16, 'Disponible', NULL, 16000, 16, 12);

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
(26, 'fundas', 'clean', -2),
(27, 'fundas', 'dirty', 2),
(28, 'fundas', 'in_laundry', 12),
(29, 'sabanas', 'in_use', 5),
(30, 'sabanas', 'clean', -2),
(31, 'sabanas', 'dirty', 2),
(32, 'sabanas', 'in_laundry', 19),
(33, 'cubrecamas', 'in_use', 0),
(34, 'cubrecamas', 'clean', 20),
(35, 'cubrecamas', 'dirty', 2),
(36, 'cubrecamas', 'in_laundry', 21),
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
(48, 'cortinas', 'in_laundry', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `content` varchar(100) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(39, 951, 'Hola');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `overtime_preset`
--

CREATE TABLE `overtime_preset` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `recharge` int(11) NOT NULL,
  `details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `overtime_preset`
--

INSERT INTO `overtime_preset` (`id`, `title`, `time`, `type`, `recharge`, `details`) VALUES
(1, '1 hora', 1, 'horas', 8000, 'Se añadio 1 hora extra a esta habitacion.'),
(2, '2 horas', 2, 'horas', 12000, 'Se añadio 2 horas extra a esta habitacion.'),
(3, '3 personas', 0, 'personas', 1000, 'Se añadio recargo por 3 personas a esta habitacion.'),
(4, '4 personas', 0, 'personas', 10000, 'Se añadio recargo por 4 personas a esta habitacion.');

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
(1, 'Agua Villavicencio', 5000, 1, 905),
(2, 'Alfajor Jorgito', 10000, 1, 808),
(3, 'Preservativo Prime XL', 10000, 1, 50),
(6, 'Agua Mineral', 1000, 1, 200),
(7, 'Coca Cola XL 2L', 10000, 1, 79998),
(10, 'Citrus Pomelo', 5000, 1, 19998);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `room_history`
--

CREATE TABLE `room_history` (
  `id` int(11) NOT NULL,
  `room_number` int(11) NOT NULL,
  `shift_start` datetime NOT NULL,
  `shift_finish` datetime DEFAULT NULL,
  `bar_price` int(11) NOT NULL DEFAULT 0,
  `shift_price` int(11) NOT NULL,
  `waiting_cleaning_time` datetime NOT NULL,
  `cleaning_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `discount_price` int(11) DEFAULT NULL,
  `pending_cleaning_start` datetime NOT NULL,
  `cleaning_start` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `shift`
--

INSERT INTO `shift` (`id`, `room_id`, `start`, `finish`, `type`, `bar_price`, `shift_price`, `discount_price`, `pending_cleaning_start`, `cleaning_start`) VALUES
(932, 2, '2025-05-22 15:22:41', '2025-05-22 17:22:41', 'Cleaning', 5000, 2000, 0, '1970-01-01 00:00:00', '2025-05-22 16:41:59'),
(933, 7, '2025-05-22 15:22:44', '2025-05-22 22:22:44', 'Cleaning', 5000, 7000, 0, '1970-01-01 00:00:00', '2025-05-22 15:22:47'),
(934, 6, '2025-05-22 15:22:49', '2025-05-22 21:22:49', 'Cleaning', 5000, 6000, 0, '1970-01-01 00:00:00', '2025-05-22 15:22:50'),
(935, 7, '2025-05-22 15:22:52', '2025-05-22 22:22:52', 'Cleaning', 5000, 7000, 0, '1970-01-01 00:00:00', '2025-05-22 15:23:02'),
(936, 7, '2025-05-22 15:23:04', '2025-05-22 22:23:04', 'Cleaning', 5000, 7000, 0, '1970-01-01 00:00:00', '2025-05-22 15:23:13'),
(937, 2, '2025-05-22 16:42:02', '2025-05-22 18:42:02', 'Cleaning', 5000, 2000, 0, '1970-01-01 00:00:00', '2025-05-22 16:42:03'),
(938, 2, '2025-05-22 16:42:18', '2025-05-22 18:42:18', 'Cleaning', 15000, 2000, 0, '1970-01-01 00:00:00', '2025-05-22 16:42:23'),
(939, 2, '2025-05-22 16:44:59', '2025-05-22 18:44:59', 'Cleaning', 5000, 2000, 0, '1970-01-01 00:00:00', '2025-05-22 16:45:00'),
(940, 8, '2025-05-22 16:47:36', '2025-05-23 00:47:36', 'Cleaning', 5000, 8000, 0, '1970-01-01 00:00:00', '2025-05-22 16:47:36'),
(941, 4, '2025-05-22 16:48:24', '2025-05-22 16:55:13', 'Cleaning', 5000, 4000, 0, '1970-01-01 00:00:00', '2025-05-22 16:55:12'),
(942, 2, '2025-05-22 16:52:26', '2025-05-22 16:53:17', 'Cleaning', 5000, 2000, 0, '1970-01-01 00:00:00', '2025-05-22 16:52:28'),
(943, 3, '2025-05-22 16:52:37', '2025-05-22 16:53:11', 'Cleaning', 5000, 3000, 0, '1970-01-01 00:00:00', '2025-05-22 16:52:39'),
(944, 2, '2025-05-22 16:53:21', '2025-05-22 16:55:20', 'Cleaning', 5000, 2000, 0, '1970-01-01 00:00:00', '2025-05-22 16:55:20'),
(945, 8, '2025-05-22 17:09:52', '2025-05-24 12:57:05', 'Cleaning', 5000, 8000, 0, '1970-01-01 00:00:00', '2025-05-24 12:57:04'),
(946, 7, '2025-05-23 14:40:32', '2025-05-24 12:57:09', 'Cleaning', 5000, 7000, 0, '1970-01-01 00:00:00', '2025-05-24 12:57:09'),
(947, 6, '2025-05-23 14:44:18', '2025-05-24 12:57:11', 'Cleaning', 5000, 6000, 0, '1970-01-01 00:00:00', '2025-05-24 12:57:11'),
(948, 5, '2025-05-23 14:48:01', '2025-05-24 12:57:12', 'Cleaning', 5000, 5000, 0, '1970-01-01 00:00:00', '2025-05-24 12:57:12'),
(949, 11, '2025-05-23 14:51:44', '2025-05-24 12:57:15', 'Cleaning', 5000, 11000, 0, '1970-01-01 00:00:00', '2025-05-24 12:57:14'),
(950, 8, '2025-05-28 13:31:22', '2025-06-08 19:57:42', 'Cleaning', 5000, 8000, 0, '1970-01-01 00:00:00', '2025-06-08 19:57:41'),
(951, 4, '2025-06-08 19:55:15', '2025-06-09 00:49:28', 'Cleaning', 5000, 4000, 0, '1970-01-01 00:00:00', '2025-06-09 00:49:28'),
(952, 1, '2025-06-08 19:56:07', '2025-06-09 00:56:22', 'Cleaning', 5000, 1000, 0, '1970-01-01 00:00:00', '2025-06-09 00:56:22'),
(953, 2, '2025-06-08 19:56:08', '2025-06-09 00:56:20', 'Cleaning', 5000, 2000, 0, '1970-01-01 00:00:00', '2025-06-09 00:56:20'),
(954, 6, '2025-06-08 19:56:12', '2025-06-08 22:20:46', 'Cleaning', 5000, 6000, 0, '1970-01-01 00:00:00', '2025-06-08 22:20:46'),
(955, 7, '2025-06-08 19:56:28', '2025-06-08 22:20:43', 'Cleaning', 5000, 7000, 0, '1970-01-01 00:00:00', '2025-06-08 22:20:43'),
(956, 8, '2025-06-08 20:31:23', '2025-06-08 20:31:24', 'Cleaning', 5000, 8000, 0, '1970-01-01 00:00:00', '2025-06-08 20:31:24'),
(957, 8, '2025-06-08 20:31:26', '2025-06-08 20:31:27', 'Cleaning', 5000, 8000, 0, '1970-01-01 00:00:00', '2025-06-08 20:31:27'),
(958, 12, '2025-06-08 21:19:02', '2025-06-08 21:19:04', 'Cleaning', 5000, 12000, 0, '1970-01-01 00:00:00', '2025-06-08 21:19:04'),
(959, 12, '2025-06-08 21:19:05', '2025-06-08 21:19:07', 'Cleaning', 5000, 12000, 0, '1970-01-01 00:00:00', '2025-06-08 21:19:06'),
(960, 8, '2025-06-08 21:21:00', '2025-06-08 21:21:02', 'Cleaning', 5000, 8000, 0, '1970-01-01 00:00:00', '2025-06-08 21:21:02'),
(961, 8, '2025-06-08 21:21:03', '2025-06-08 21:21:04', 'Cleaning', 5000, 8000, 0, '1970-01-01 00:00:00', '2025-06-08 21:21:04'),
(962, 8, '2025-06-08 21:21:07', '2025-06-08 21:21:08', 'Cleaning', 5000, 8000, 0, '1970-01-01 00:00:00', '2025-06-08 21:21:08'),
(963, 8, '2025-06-08 21:25:34', '2025-06-08 22:20:42', 'Cleaning', 5000, 17000, 0, '1970-01-01 00:00:00', '2025-06-08 22:20:41'),
(964, 3, '2025-06-08 21:30:34', '2025-06-08 21:30:36', 'Cleaning', 5000, 3000, 0, '1970-01-01 00:00:00', '2025-06-08 21:30:36'),
(965, 12, '2025-06-08 21:37:23', '2025-06-08 22:20:37', 'Cleaning', 30000, 9600, 0, '1970-01-01 00:00:00', '2025-06-08 22:20:37'),
(966, 11, '2025-06-08 21:37:50', '2025-06-08 22:20:35', 'Cleaning', 10000, 11000, 0, '1970-01-01 00:00:00', '2025-06-08 22:20:35'),
(967, 10, '2025-06-08 22:19:18', '2025-06-08 22:20:31', 'Cleaning', 5000, 18000, 0, '1970-01-01 00:00:00', '2025-06-08 22:20:31'),
(968, 3, '2025-06-08 23:14:47', '2025-06-08 23:49:34', 'Cleaning', 10000, 37000, 0, '1970-01-01 00:00:00', '2025-06-08 23:49:33'),
(969, 8, '2025-06-08 23:16:38', '2025-06-09 00:49:25', 'Cleaning', 10000, 48000, 0, '1970-01-01 00:00:00', '2025-06-09 00:49:25'),
(970, 7, '2025-06-08 23:36:48', '2025-06-08 23:37:15', 'Cleaning', 0, 12999, 0, '1970-01-01 00:00:00', '2025-06-08 23:37:14'),
(971, 12, '2025-06-08 23:37:12', '2025-06-09 00:49:20', 'Cleaning', 10000, 10000, 0, '1970-01-01 00:00:00', '2025-06-09 00:49:19'),
(972, 3, '2025-06-08 23:49:37', '2025-06-09 00:49:31', 'Cleaning', 0, 3000, 0, '1970-01-01 00:00:00', '2025-06-09 00:49:30'),
(973, 7, '2025-06-09 00:01:36', '2025-06-09 00:49:27', 'Cleaning', 0, 7000, 0, '1970-01-01 00:00:00', '2025-06-09 00:49:27'),
(974, 16, '2025-06-09 00:08:26', '2025-06-09 00:49:18', 'Cleaning', 10000, 16000, 0, '1970-01-01 00:00:00', '2025-06-09 00:49:18'),
(975, 11, '2025-06-09 00:09:51', '2025-06-09 00:49:21', 'Cleaning', 0, 11000, 0, '1970-01-01 00:00:00', '2025-06-09 00:49:21'),
(976, 10, '2025-06-09 00:10:04', '2025-06-09 00:49:24', 'Cleaning', 20000, 10000, 5000, '1970-01-01 00:00:00', '2025-06-09 00:49:23'),
(977, 15, '2025-06-09 00:16:23', '2025-06-09 00:49:16', 'Cleaning', 0, 15000, 0, '1970-01-01 00:00:00', '2025-06-09 00:49:16'),
(978, 6, '2025-06-09 00:47:57', '2025-06-09 00:49:33', 'Cleaning', 0, 6000, 0, '1970-01-01 00:00:00', '2025-06-09 00:49:33'),
(979, 7, '2025-06-09 00:49:34', '2025-06-09 00:49:48', 'Cleaning', 0, 7000, 0, '1970-01-01 00:00:00', '2025-06-09 00:49:47'),
(980, 6, '2025-06-09 00:49:38', '2025-06-09 00:49:43', 'Cleaning', 0, 6000, 0, '1970-01-01 00:00:00', '2025-06-09 00:49:42'),
(981, 6, '2025-06-09 00:49:44', '2025-06-09 00:49:46', 'Cleaning', 0, 6000, 0, '1970-01-01 00:00:00', '2025-06-09 00:49:45'),
(982, 7, '2025-06-09 00:49:48', '2025-06-09 00:50:05', 'Cleaning', 0, 7000, 0, '1970-01-01 00:00:00', '2025-06-09 00:50:05'),
(983, 4, '2025-06-09 00:49:51', '2025-06-09 00:50:10', 'Cleaning', 0, 4000, 0, '1970-01-01 00:00:00', '2025-06-09 00:50:10'),
(984, 3, '2025-06-09 00:49:52', '2025-06-09 00:50:12', 'Cleaning', 0, 3000, 0, '1970-01-01 00:00:00', '2025-06-09 00:50:12'),
(985, 6, '2025-06-09 00:49:53', '2025-06-09 00:50:07', 'Cleaning', 0, 6000, 0, '1970-01-01 00:00:00', '2025-06-09 00:50:07'),
(986, 10, '2025-06-09 00:49:54', '2025-06-09 00:49:57', 'Cleaning', 0, 10000, 0, '1970-01-01 00:00:00', '2025-06-09 00:49:57'),
(987, 9, '2025-06-09 00:49:55', '2025-06-09 00:50:03', 'Cleaning', 0, 9000, 0, '1970-01-01 00:00:00', '2025-06-09 00:50:03'),
(988, 10, '2025-06-09 00:49:59', '2025-06-09 00:50:01', 'Cleaning', 0, 10000, 0, '1970-01-01 00:00:00', '2025-06-09 00:50:00'),
(989, 3, '2025-06-09 00:50:29', '2025-06-09 00:56:18', 'Cleaning', 0, 3000, 0, '1970-01-01 00:00:00', '2025-06-09 00:56:18'),
(990, 4, '2025-06-09 00:50:32', '2025-06-09 00:56:16', 'Cleaning', 0, 4000, 0, '1970-01-01 00:00:00', '2025-06-09 00:56:15'),
(991, 5, '2025-06-09 00:50:35', '2025-06-09 00:56:14', 'Cleaning', 0, 5000, 0, '1970-01-01 00:00:00', '2025-06-09 00:56:14'),
(992, 7, '2025-06-09 00:52:48', '2025-06-09 00:56:11', 'Cleaning', 0, 7000, 0, '1970-01-01 00:00:00', '2025-06-09 00:56:11'),
(993, 8, '2025-06-09 00:54:31', '2025-06-09 00:56:08', 'Cleaning', 0, 8000, 0, '1970-01-01 00:00:00', '2025-06-09 00:56:08'),
(994, 16, '2025-06-09 00:56:23', '2025-06-09 01:00:00', 'Cleaning', 0, 16000, 8000, '1970-01-01 00:00:00', '2025-06-09 00:59:57'),
(995, 16, '2025-06-09 01:00:14', '2025-06-09 01:00:16', 'Cleaning', 0, 16000, 0, '1970-01-01 00:00:00', '2025-06-09 01:00:15'),
(996, 11, '2025-06-09 01:02:46', '2025-06-09 01:02:56', 'Cleaning', 0, 11000, 5500, '1970-01-01 00:00:00', '2025-06-09 01:02:55'),
(997, 7, '2025-06-09 01:04:16', '2025-06-09 01:05:14', 'Cleaning', 0, 7000, 1000, '1970-01-01 00:00:00', '2025-06-09 01:05:13'),
(998, 11, '2025-06-09 01:04:53', '2025-06-12 13:32:35', 'Cleaning', 0, 11000, 0, '1970-01-01 00:00:00', '2025-06-12 13:32:31'),
(999, 10, '2025-06-09 01:04:54', '2025-06-12 13:32:43', 'Cleaning', 0, 10000, 0, '1970-01-01 00:00:00', '2025-06-12 13:32:41'),
(1000, 4, '2025-06-09 01:37:59', '2025-06-09 01:38:00', 'Cleaning', 0, 4000, 0, '1970-01-01 00:00:00', '2025-06-09 01:38:00'),
(1001, 4, '2025-06-09 01:38:03', '2025-06-09 01:39:08', 'Cleaning', 10000, 11500, 18000, '1970-01-01 00:00:00', '2025-06-09 01:39:07'),
(1002, 4, '2025-06-09 01:44:53', '2025-06-09 01:45:58', 'Cleaning', 5000, 3500, 2000, '1970-01-01 00:00:00', '2025-06-09 01:45:57'),
(1003, 3, '2025-06-12 13:32:29', '2025-06-12 15:10:06', 'Cleaning', 10000, 1500, 4600, '1970-01-01 00:00:00', '2025-06-12 15:10:06'),
(1004, 7, '2025-06-12 13:52:56', '2025-06-12 20:52:56', 'Normal', 0, 7000, 0, '2025-06-12 13:52:56', '2025-06-12 13:52:56'),
(1005, 3, '2025-06-12 15:10:08', '2025-06-12 21:10:08', 'Normal', 0, 3000, 0, '2025-06-12 15:10:08', '2025-06-12 15:10:08'),
(1006, 8, '2025-06-12 15:18:07', '2025-06-12 23:18:07', 'Normal', 0, 8000, 0, '2025-06-12 15:18:07', '2025-06-12 15:18:07'),
(1007, 4, '2025-06-12 15:18:23', '2025-06-12 19:18:23', 'Normal', 0, 4000, 0, '2025-06-12 15:18:23', '2025-06-12 15:18:23'),
(1008, 10, '2025-06-12 15:18:28', '2025-06-13 01:18:28', 'Normal', 0, 10000, 0, '2025-06-12 15:18:28', '2025-06-12 15:18:28'),
(1009, 1, '2025-06-13 23:00:06', '2025-06-14 00:00:06', 'Normal', 0, 1000, 0, '2025-06-13 23:00:06', '2025-06-13 23:00:06'),
(1010, 1, '2025-06-13 23:00:06', '2025-06-14 00:00:06', 'Normal', 0, 1000, 0, '2025-06-13 23:00:06', '2025-06-13 23:00:06'),
(1011, 1, '2025-06-13 23:00:06', '2025-06-14 00:00:06', 'Normal', 0, 1000, 0, '2025-06-13 23:00:06', '2025-06-13 23:00:06'),
(1012, 1, '2025-06-13 23:00:06', '2025-06-14 00:00:06', 'Normal', 0, 1000, 0, '2025-06-13 23:00:06', '2025-06-13 23:00:06'),
(1013, 1, '2025-06-13 23:00:06', '2025-06-14 00:00:06', 'Normal', 0, 1000, 0, '2025-06-13 23:00:06', '2025-06-13 23:00:06'),
(1014, 1, '2025-06-13 23:00:06', '2025-06-14 00:00:06', 'Normal', 0, 1000, 0, '2025-06-13 23:00:06', '2025-06-13 23:00:06'),
(1015, 1, '2025-06-13 23:00:06', '2025-06-14 00:00:06', 'Normal', 0, 1000, 0, '2025-06-13 23:00:06', '2025-06-13 23:00:06'),
(1016, 1, '2025-06-13 23:00:06', '2025-06-14 00:00:06', 'Normal', 0, 1000, 0, '2025-06-13 23:00:06', '2025-06-13 23:00:06'),
(1017, 2, '2025-06-13 23:00:07', '2025-06-14 01:00:07', 'Normal', 0, 2000, 0, '2025-06-13 23:00:07', '2025-06-13 23:00:07'),
(1018, 2, '2025-06-13 23:00:07', '2025-06-14 01:00:07', 'Normal', 0, 2000, 0, '2025-06-13 23:00:07', '2025-06-13 23:00:07'),
(1019, 2, '2025-06-13 23:00:07', '2025-06-14 01:00:07', 'Normal', 0, 2000, 0, '2025-06-13 23:00:07', '2025-06-13 23:00:07'),
(1020, 2, '2025-06-13 23:00:07', '2025-06-14 01:00:07', 'Normal', 0, 2000, 0, '2025-06-13 23:00:07', '2025-06-13 23:00:07'),
(1021, 2, '2025-06-13 23:00:07', '2025-06-14 01:00:07', 'Normal', 0, 2000, 0, '2025-06-13 23:00:07', '2025-06-13 23:00:07'),
(1022, 2, '2025-06-13 23:00:07', '2025-06-14 01:00:07', 'Normal', 0, 2000, 0, '2025-06-13 23:00:07', '2025-06-13 23:00:07'),
(1023, 2, '2025-06-13 23:00:07', '2025-06-14 01:00:07', 'Normal', 0, 2000, 0, '2025-06-13 23:00:07', '2025-06-13 23:00:07'),
(1024, 2, '2025-06-13 23:00:07', '2025-06-14 01:00:07', 'Normal', 0, 2000, 0, '2025-06-13 23:00:07', '2025-06-13 23:00:07');

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
(11, 'Lucas', 'Medina', 'lucas123', 'Administrador', '$2a$10$c7CmvK9/5QF/5wftKfqiVe/lNW1a5JxUiOcq5b9EFkbjE9n78d8zO', NULL),
(19, 'Nicolas', 'Suarez', 'nicolas123', 'Administrador', '$2a$10$CFdDp7u2TcrTA2/.ygh8T.JN5XdhxMLbJTjCsB5iCH/J3oOg4.pue', NULL),
(20, 'Valeria', 'Rios', 'valeria123', 'Conserje', '$2a$10$Vxfbd91KYTlKFRTnpyhm9.MmVbXPG/wlFG4NQK1GybuCDEkBsbAp2', NULL),
(21, 'Hugo', 'Aguirre', 'hugo123', 'Conserje', '$2a$10$INF8atqJPXRH946bb9FRJ.X9P.Qgn4xXhBUQdvVjOFG2OYIF.kKmq', NULL),
(25, 'Facundo', 'Pancani', 'facupancani', 'Administrador', '$2a$10$tCUaAahFH1tcMEd7yvXHnexidneBxzST2KVoxNsJTyIEW.bONaXim', NULL),
(33, 'Diego', 'Torres', 'diego123', 'Conserje', '$2a$10$3uOOCleITmuZmqXK5K6Lsuq8k7iVoxZVAG9lyNCwurOg1iJH.Ktc2', NULL);

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
-- Indices de la tabla `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `observation`
--
ALTER TABLE `observation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shift_id_foreign_key` (`shift_id`);

--
-- Indices de la tabla `overtime_preset`
--
ALTER TABLE `overtime_preset`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `room_history`
--
ALTER TABLE `room_history`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hotel_room_id` (`room_id`);

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
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `bill`
--
ALTER TABLE `bill`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `cash_movement`
--
ALTER TABLE `cash_movement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `consumition`
--
ALTER TABLE `consumition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT de la tabla `laundry`
--
ALTER TABLE `laundry`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `observation`
--
ALTER TABLE `observation`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `overtime_preset`
--
ALTER TABLE `overtime_preset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `room_history`
--
ALTER TABLE `room_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1025;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
