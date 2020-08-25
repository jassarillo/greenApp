-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-08-2020 a las 01:31:11
-- Versión del servidor: 5.7.31-log-cll-lve
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `capacomm_green_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `fecha` date NOT NULL,
  `lugar` varchar(255) NOT NULL,
  `comentarios` varchar(200) NOT NULL,
  `ruta_IMG` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `titulo`, `descripcion`, `fecha`, `lugar`, `comentarios`, `ruta_IMG`, `created_at`, `updated_at`) VALUES
(1, 'Teotihuacan', 'Evento masivo, intercambio cultural Europa-americano', '2020-05-15', 'Avenida de los remedos No. 33 col los santos, delegacion La Villa Rica de La Veracrus', 'ede rfrf f tg t g t gt', '1595364258_dos.jpg', '2020-04-29 00:00:00', '2020-07-21 15:44:18'),
(2, 'Tulum', 'LLenate de energia en el sagrado santuario de piramides mayas', '2020-05-30', 'Avenida de los remedos No. 33 col los santos, delegacion La Villa Rica de La Veracrus', 'efrrf frf rf r', '1595365178_uno', '2020-04-29 00:00:00', '2020-07-21 15:59:38'),
(3, 'prueba', 'descr', '2020-07-16', 'prueba ll', 'no words', '1595366820_product_5.jpg', '2020-07-16 14:16:24', '2020-07-21 16:27:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(4) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `ruta_IMG` varchar(200) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `status` int(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `titulo`, `ruta_IMG`, `descripcion`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Chocolat', '1595365451_product_2.jpg', 'de la mera mer. Pa ponerte al 100 por hora', 1, '2020-04-26 00:00:00', '2020-07-21 16:04:11'),
(4, 'Aceites', '1595365776_product_3.jpg', 'Variedad de aromas para humectar zonas dañadas de la dermis.', 1, '2020-04-30 00:00:00', '2020-07-21 16:09:36'),
(3, 'Semillas', '1595365826_product_4.jpg', 'Germina tu propia planta casera en macetas de concha de coco y naturaleza de frutos rojos', 1, '2020-04-30 00:00:00', '2020-07-21 16:10:26'),
(5, 'Ungüentos', '1595365850_product_5.jpg', 'Tipos de aromas y cremas que ayudan a calmar dolores musculares', 1, '2020-04-30 00:00:00', '2020-07-21 16:10:50'),
(6, 'prueba', '1598037884_sb.jpg', 'gtgtgt', 1, '2020-08-21 14:24:44', '2020-08-21 14:24:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_favoritos`
--

CREATE TABLE `productos_favoritos` (
  `id` int(16) NOT NULL,
  `id_product` int(8) NOT NULL,
  `id_user` int(8) NOT NULL,
  `status` int(2) NOT NULL,
  `date` date NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_favoritos`
--

INSERT INTO `productos_favoritos` (`id`, `id_product`, `id_user`, `status`, `date`, `created_at`, `updated_at`) VALUES
(10, 4, 1, 1, '2020-05-01', '2020-05-01', '2020-05-01'),
(19, 3, 1, 1, '2020-05-18', '2020-05-18', '2020-05-18'),
(15, 2, 1, 1, '2020-05-14', '2020-05-14', '2020-05-14'),
(18, 5, 1, 1, '2020-05-17', '2020-05-17', '2020-05-17'),
(17, 3, 1, 1, '2020-05-17', '2020-05-17', '2020-05-17'),
(16, 5, 1, 1, '2020-05-17', '2020-05-17', '2020-05-17'),
(20, 2, 1, 1, '2020-05-18', '2020-05-18', '2020-05-18'),
(21, 4, 1, 1, '2020-05-18', '2020-05-18', '2020-05-18'),
(22, 5, 1, 1, '2020-05-18', '2020-05-18', '2020-05-18'),
(23, 1, 1, 1, '2020-05-29', '2020-05-29', '2020-05-29'),
(24, 1, 1, 1, '2020-06-08', '2020-06-08', '2020-06-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '0',
  `bio` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contra` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_nac` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genero` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userFacebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userInstagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userTwitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `role`, `bio`, `remember_token`, `created_at`, `updated_at`, `contra`, `direccion`, `fecha_nac`, `genero`, `userFacebook`, `userInstagram`, `userTwitter`, `alias`, `status`) VALUES
(1, 'Julio', 'jas@g.com', '2020-04-24 07:38:47', '$2y$10$Whoukkjyn2Y.JUHCqcpb5OxTGntnLvvoEoknIyIAG01Sz6t12mnWC', NULL, 10, NULL, NULL, '2020-04-18 12:05:50', '2020-04-18 12:05:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'usr', 'jj@g.com', '2020-04-24 07:39:13', '12', NULL, 10, '1', '1', '2020-04-24 07:39:26', '2020-04-24 07:39:27', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'prueba', 'p@g.com', NULL, '$2y$10$Di6NF1oKhpt4b0FXgcgLT.2ye0kjdr8HIThpDyJCWZLuZTNqZzcXq', 'XZJ5ZBk9kB3Zx1hz.jpg', 10, 'babbb ababa bab', NULL, '2020-05-11 10:36:28', '2020-05-11 10:36:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '11', '44', NULL, '$2y$10$.4y60LdAtMdEoGfSH/qn6.Cp6g2liMTbf0wd84mAkzWHVX3cn8Rke', NULL, 0, NULL, NULL, '2020-05-14 01:29:03', '2020-05-14 01:29:03', '66', '22', '2020-04-04', 'f', '88', '10', '99', '33', NULL),
(5, '676', '33', NULL, '$2y$10$PC5tcgcQD4ilz.O94B1afO71ygXJncXhWGJeckcpSNdA6Ra4tJ8yu', NULL, 0, NULL, NULL, '2020-05-14 02:17:31', '2020-05-14 02:17:31', '55454', '78', '2020-04-09', 'f', 'frtff', 'ttf', 'ftf', '9090', 0),
(7, '676', 'frf@g.com', NULL, '$2y$10$DXPo4Xr5MzzNXUZ9wES2tO.Ft8xTk0LAp6NVeQ93QIyHuJsHG7euK', NULL, 0, NULL, NULL, '2020-05-14 02:19:31', '2020-05-14 02:19:31', '55454', '78', '2020-04-09', 'f', 'frtff', 'ttf', 'ftf', '9090', 0),
(8, '767', '121', NULL, '$2y$10$Yp.FvC3ip2YyJ0sHl8HpSuvrigaZit2owJXs0T2GK964BsuFsJDkW', NULL, 0, NULL, NULL, '2020-05-14 07:50:49', '2020-05-14 07:50:49', '444', '6767', '2020-07-07', 'f', '666', '888', '77', '66', 0),
(10, '767', '128', NULL, '$2y$10$xH6oHV12bGeF7AOtlaa/seKc3denylhNVHxHB81FwGgWVpTLhhEgu', NULL, 0, NULL, NULL, '2020-05-14 07:51:45', '2020-05-14 07:51:45', '444', '6767', '2020-07-07', 'f', '666', '888', '77', '66', 0),
(11, 'prueba3', 'gg@g.com', NULL, '$2y$10$YUAH6tG2r825kxj.H6aVCuWQkRlHit51w2TrFhUx.0ZMe3ih5.NLu', NULL, 0, NULL, NULL, '2020-05-15 06:38:42', '2020-05-15 06:38:42', '123', 'memem', '2020-05-14', 'f', 'fb', 'IG', 'tw', '44', 0),
(12, 'fghj', 'mm@g.com', NULL, '$2y$10$qq0GneDX4dmD3qSsvjKfdOo4OoOSDOXGO94wn0HPirOgEoYV2VUaK', NULL, 0, NULL, NULL, '2020-05-15 06:41:33', '2020-05-15 06:41:33', '123', 'tyui', '2020-05-14', 'm', 'ff', 'ig', 't', '3456', 0),
(13, 'Juan', 'fg@g.com', NULL, '$2y$10$UWIeee2Yn61va54xZgwkAuilJEFihlRsRZIoDAgxu.J21CQURujbO', NULL, 0, NULL, NULL, '2020-06-08 07:06:47', '2020-06-08 07:06:47', '123', 'yuy', '2020-06-07', 'm', 'juan_m', 'juan_mi', 'juan_m', '23', 0),
(14, 'fumanchu', 'Soriaproject@gmail.com', NULL, '$2y$10$STgerHgbpaAGfLRHcCDj5esCT.s3r.KfnOI4A.tb23dbfEOkIYqvi', NULL, 10, NULL, NULL, '2020-06-15 08:22:00', '2020-06-15 08:22:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Jose', 'sebastian.che21@gmail.com', NULL, '$2y$10$4x.U/IkEpRN3m8HOaZQrB.qBYO7n2DaG4c7Pd6Z0YV2/pN84b4rey', NULL, 0, NULL, NULL, '2020-08-19 18:26:34', '2020-08-19 18:26:34', '12345678', 'Dir', '2020-08-19', 'm', NULL, NULL, NULL, 'Jose', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_old`
--

CREATE TABLE `users_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '0',
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contra` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users_old`
--

INSERT INTO `users_old` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `role`, `bio`, `remember_token`, `created_at`, `updated_at`, `contra`) VALUES
(1, 'Julio', 'jas@g.com', '2020-04-24 07:38:47', '$2y$10$Whoukkjyn2Y.JUHCqcpb5OxTGntnLvvoEoknIyIAG01Sz6t12mnWC', NULL, 10, NULL, NULL, '2020-04-18 12:05:50', '2020-04-18 12:05:50', '123'),
(2, 'usr', 'jj@g.com', '2020-04-24 07:39:13', '12', NULL, 10, '1', '1', '2020-04-24 07:39:26', '2020-04-24 07:39:27', '123'),
(3, 'sergio', 'serg@g.com', NULL, '$2y$10$ZEiqJQtk.A3LVTLyVVqpD.IGVoJHI9t4cAebUTFkfZRN3wFcodxSi', NULL, 10, NULL, NULL, '2020-04-26 11:39:50', '2020-04-26 11:40:14', '123'),
(4, 'fumanchu', 'fumanchu@g.com', NULL, '$2y$10$Jk/9pPWlWSxyBpLI33vSMeeyAuEt9ecK1ozlgn1r0TlAR.8pBTddy', NULL, 10, NULL, NULL, '2020-04-26 23:01:11', '2020-04-26 23:01:11', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- Indices de la tabla `productos_favoritos`
--
ALTER TABLE `productos_favoritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `users_old`
--
ALTER TABLE `users_old`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos_favoritos`
--
ALTER TABLE `productos_favoritos`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `users_old`
--
ALTER TABLE `users_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
