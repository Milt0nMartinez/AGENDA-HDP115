-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2019 a las 23:52:11
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda-hdp115`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avatar`
--

CREATE TABLE `avatar` (
  `id_avatar` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `avatar_url` varchar(200) NOT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `avatar`
--

INSERT INTO `avatar` (`id_avatar`, `nombre`, `avatar_url`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 'anime 1', 'http://127.0.0.1:8000/AVATAR/vIWyqP3Z3D7rp6EbnXn0oQ4hZZej2kncMdIu7qyb.jpeg', 'publico', '2019-05-11 13:00:47', '0000-00-00 00:00:00'),
(2, 'anime 2', 'http://127.0.0.1:8000/AVATAR/xLrKdyWzvX1yytsiWFWy6wFqM8MBgcXchDPWEqYo.png', 'publico', '2019-05-11 13:03:01', '2019-05-11 13:03:01'),
(3, 'Task', 'http://127.0.0.1:8000/AVATAR/OPVLTOakMYTdYLCze1fSPLQqeDUnbn5IcxJB8E2p.png', 'publico', '2019-06-05 12:07:51', '2019-06-05 12:07:51'),
(4, 'Anime 4', 'http://mobile-yetitask.djfrankremixer.com/avatars/14fLsM3tR4mlTuhX5VNVmoQT4yg8DLdYbjkSNKxe.jpeg', 'JDwC86aE69pbWJR19aE', '2019-05-11 13:03:01', '2019-05-11 13:03:01'),
(5, 'Pikachu', 'http://mobile-yetitask.djfrankremixer.com/avatars/QwV5EqgMVFns4FvLdkun2usUM5DwczXdBVi2clrV.gif', 'wi3D502F400lsMU592F', '2019-05-11 13:03:01', '2019-05-11 13:03:01'),
(9, 'Zero two', 'http://127.0.0.1:8000/AVATAR/BjtF0AiIx4QhloQNG68MA5mrXCW9USwMwGssQuTZ.png', 'wi3D502F400lsMU592F', '2019-06-05 11:17:55', '2019-06-05 11:17:55'),
(10, 'Anime 4', 'http://127.0.0.1:8000/AVATAR/BdSP8Vm3ZkYpo6U3BktvFsLmHXU8DNNk2jGExvLX.jpeg', 'wi3D502F400lsMU592F', '2019-06-05 11:18:13', '2019-06-05 11:18:13'),
(11, 'Zombie', 'http://127.0.0.1:8000/AVATAR/Pc3dH3fKW35BAoGZAnMYnV3AVYgDjbJRadtTua4h.png', 'wi3D502F400lsMU592F', '2019-06-05 11:18:30', '2019-06-05 11:18:30'),
(12, 'Bola', 'http://127.0.0.1:8000/AVATAR/qtpdBFEJs0eqWSyU3V2Uosh9yujHEwfApq5PaQX1.png', 'wi3D502F400lsMU592F', '2019-06-05 11:24:17', '2019-06-05 11:24:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `codigo_grupo` varchar(100) NOT NULL,
  `nombre_grupo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcion` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`codigo_grupo`, `nombre_grupo`, `descripcion`, `created_at`, `updated_at`) VALUES
('JDwC86aE69pbWJR19aE', 'Grupo Hogar FPE', 'No tiene', '2019-06-01 17:49:56', '2019-06-01 17:49:56'),
('wi3D502F400lsMU592F', 'TareaHDP115', 'Grupo para gestionar la tarea de Herramientas de productividad', '2019-06-01 11:49:05', '2019-06-01 11:48:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_user`
--

CREATE TABLE `grupo_user` (
  `id_grupo_user` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `codigo_grupo` varchar(100) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupo_user`
--

INSERT INTO `grupo_user` (`id_grupo_user`, `user_id`, `codigo_grupo`, `rol`, `created_at`, `updated_at`) VALUES
(1, 2, 'wi3D502F400lsMU592F', 'Administrador', '2019-06-01 11:49:22', '2019-06-01 11:49:52'),
(2, 3, 'JDwC86aE69pbWJR19aE', 'Administrador', '2019-06-01 17:49:56', '2019-06-01 17:49:56'),
(6, 9, 'wi3D502F400lsMU592F', 'Usuario', '2019-06-03 16:06:34', '2019-06-03 16:06:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion`
--

CREATE TABLE `notificacion` (
  `id_noty` int(11) NOT NULL,
  `codigo_noty` varchar(200) DEFAULT NULL,
  `titulo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `cuerpo` text CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `creador` int(11) DEFAULT NULL,
  `grupo` varchar(200) DEFAULT NULL,
  `tarea_id` varchar(200) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion_user`
--

CREATE TABLE `notificacion_user` (
  `id` int(11) NOT NULL,
  `notificacion_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `id_tarea` int(11) NOT NULL,
  `codigo_tarea` varchar(200) NOT NULL,
  `titulo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `cuerpo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci,
  `estado` varchar(100) DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `creador` int(11) DEFAULT NULL,
  `grupo` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas_usuarios`
--

CREATE TABLE `tareas_usuarios` (
  `id` int(11) NOT NULL,
  `tarea_id` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo_activo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `grupo_activo`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Juan Barrera', 'barrera98@gmail.com', '$2y$10$dYwnj637NoJT027pMZR8o.aXYhRT5R5URt6CY9X1IACxPiSYm7Rqe', 'owner', 'https://i.ibb.co/P5p1trd/contacts2.png', 'TYdnLUdj4XGIwKj3Zqm9Ij0vPwdMjIt2ETUhvqYNooc1RZq8ni75Vk8GKkXt', '2019-05-29 17:22:35', '2019-05-29 17:22:35'),
(2, 'Francisco Navas', 'navasfran98@gmail.com', '$2y$10$dYwnj637NoJT027pMZR8o.aXYhRT5R5URt6CY9X1IACxPiSYm7Rqe', 'wi3D502F400lsMU592F', 'http://127.0.0.1:8000/AVATAR/vIWyqP3Z3D7rp6EbnXn0oQ4hZZej2kncMdIu7qyb.jpeg', 'L5TSvMaZSGCeHIEN928ior8DDH7ac6s6HlwgQ6JlZKro9TKesJyX6cun4EP1', '2019-05-29 17:22:35', '2019-06-05 11:54:03'),
(3, 'karla Margarita', 'karla@gmail.com', '$2y$10$AwOP.qc5u5go08GSvRP.MO.BTUmbCDNsw.UF.ErLtk7dpMwmjcFoe', 'JDwC86aE69pbWJR19aE', 'https://i.ibb.co/P5p1trd/contacts2.png', 'WJtdU1XmwSl1OipsIGR7wcawPrvlfZOkFD2JJ74KgX099ED5hojJSHM9u0gH', '2019-06-01 17:49:56', '2019-06-01 17:49:56'),
(9, 'Carlos Canela', 'carloscanela@gmail.com', '$2y$10$6DsaaraJtyJ0Or6B.3Zj8uk.YoJklmvqpPGwIfOwXSPsZbAmmZhOm', 'wi3D502F400lsMU592F', 'AVATAR/xLrKdyWzvX1yytsiWFWy6wFqM8MBgcXchDPWEqYo.png', NULL, '2019-06-03 16:06:34', '2019-06-03 16:06:34');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `avatar`
--
ALTER TABLE `avatar`
  ADD PRIMARY KEY (`id_avatar`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`codigo_grupo`);

--
-- Indices de la tabla `grupo_user`
--
ALTER TABLE `grupo_user`
  ADD PRIMARY KEY (`id_grupo_user`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `codigo_grupo` (`codigo_grupo`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`id_noty`),
  ADD UNIQUE KEY `codigo_noty` (`codigo_noty`),
  ADD KEY `creador` (`creador`),
  ADD KEY `tarea_id` (`tarea_id`);

--
-- Indices de la tabla `notificacion_user`
--
ALTER TABLE `notificacion_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notificacion_id` (`notificacion_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id_tarea`),
  ADD UNIQUE KEY `codigo_tarea` (`codigo_tarea`),
  ADD KEY `creador` (`creador`),
  ADD KEY `grupo` (`grupo`);

--
-- Indices de la tabla `tareas_usuarios`
--
ALTER TABLE `tareas_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tarea_id` (`tarea_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `avatar`
--
ALTER TABLE `avatar`
  MODIFY `id_avatar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `grupo_user`
--
ALTER TABLE `grupo_user`
  MODIFY `id_grupo_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  MODIFY `id_noty` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notificacion_user`
--
ALTER TABLE `notificacion_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id_tarea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tareas_usuarios`
--
ALTER TABLE `tareas_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `grupo_user`
--
ALTER TABLE `grupo_user`
  ADD CONSTRAINT `grupo_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `grupo_user_ibfk_2` FOREIGN KEY (`codigo_grupo`) REFERENCES `grupo` (`codigo_grupo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
