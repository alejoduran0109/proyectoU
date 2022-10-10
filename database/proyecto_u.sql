-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-10-2022 a las 05:45:12
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_u`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `present` int(10) UNSIGNED NOT NULL,
  `day` date NOT NULL,
  `time_in` timestamp NULL DEFAULT NULL,
  `time_out` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `attendances`
--

INSERT INTO `attendances` (`id`, `ip`, `user_id`, `present`, `day`, `time_in`, `time_out`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '127.0.0.1', 1, 0, '2022-09-25', '2022-09-25 05:41:02', '2022-09-25 05:49:56', '2022-09-25 05:41:02', '2022-09-25 05:49:56', NULL),
(2, '127.0.0.1', 1, 0, '2022-09-25', '2022-09-25 05:50:37', '2022-09-25 05:50:51', '2022-09-25 05:50:37', '2022-09-25 05:50:51', NULL),
(3, '127.0.0.1', 2, 0, '2022-09-25', '2022-09-25 05:50:59', '2022-09-25 05:54:08', '2022-09-25 05:50:59', '2022-09-25 05:54:08', NULL),
(4, '127.0.0.1', 2, 0, '2022-09-25', '2022-09-25 06:15:20', '2022-09-25 06:24:56', '2022-09-25 06:15:20', '2022-09-25 06:24:56', NULL),
(5, '127.0.0.1', 2, 0, '2022-09-25', '2022-09-25 06:25:20', '2022-09-25 07:14:42', '2022-09-25 06:25:20', '2022-09-25 08:25:21', NULL),
(6, '127.0.0.1', 2, 0, '2022-09-25', '2022-09-25 08:25:21', '2022-09-25 11:22:14', '2022-09-25 08:25:21', '2022-10-09 06:25:35', NULL),
(7, '127.0.0.1', 2, 1, '2022-10-09', '2022-10-09 06:25:35', '2022-10-09 11:37:06', '2022-10-09 06:25:35', '2022-10-09 11:37:06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `file_uploads`
--

CREATE TABLE `file_uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_23_145341_create_permission_tables', 1),
(5, '2021_07_23_163325_add_column_to_permissions', 1),
(6, '2021_07_23_174927_add_column_deleted_at_to_roles', 1),
(7, '2021_07_24_023615_add_column_deleted_at_to_users', 1),
(8, '2021_07_26_121755_create_attendances_table', 1),
(9, '2021_08_14_011347_create_file_uploads_table', 1),
(10, '2022_10_09_014433_create_group_investigation_table', 2),
(11, '2022_10_09_014744_create_prueba_table', 2),
(12, '2022_10_09_024417_create_group_investigation_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `title`, `description`, `module`, `deleted_at`) VALUES
(1, 'permissions.index', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'permissions.index', NULL, 'permissions', NULL),
(2, 'permissions.create', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'permissions.create', NULL, 'permissions', NULL),
(3, 'permissions.store', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'permissions.store', NULL, 'permissions', NULL),
(4, 'permissions.show', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'permissions.show', NULL, 'permissions', NULL),
(5, 'permissions.edit', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'permissions.edit', NULL, 'permissions', NULL),
(6, 'permissions.update', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'permissions.update', NULL, 'permissions', NULL),
(7, 'permissions.destroy', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'permissions.destroy', NULL, 'permissions', NULL),
(8, 'permissions.load-router', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'permissions.load-router', NULL, 'permissions', NULL),
(9, 'roles.index', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'roles.index', NULL, 'roles', NULL),
(10, 'roles.create', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'roles.create', NULL, 'roles', NULL),
(11, 'roles.store', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'roles.store', NULL, 'roles', NULL),
(12, 'roles.show', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'roles.show', NULL, 'roles', NULL),
(13, 'roles.edit', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'roles.edit', NULL, 'roles', NULL),
(14, 'roles.update', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'roles.update', NULL, 'roles', NULL),
(15, 'roles.destroy', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'roles.destroy', NULL, 'roles', NULL),
(16, 'users.index', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'users.index', NULL, 'users', NULL),
(17, 'users.create', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'users.create', NULL, 'users', NULL),
(18, 'users.store', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'users.store', NULL, 'users', NULL),
(19, 'users.show', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'users.show', NULL, 'users', NULL),
(20, 'users.edit', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'users.edit', NULL, 'users', NULL),
(21, 'users.update', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'users.update', NULL, 'users', NULL),
(22, 'users.destroy', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'users.destroy', NULL, 'users', NULL),
(23, 'attendances.index', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'attendances.index', NULL, 'attendances', NULL),
(24, 'attendances.create', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'attendances.create', NULL, 'attendances', NULL),
(25, 'attendances.store', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'attendances.store', NULL, 'attendances', NULL),
(26, 'attendances.show', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'attendances.show', NULL, 'attendances', NULL),
(27, 'attendances.edit', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'attendances.edit', NULL, 'attendances', NULL),
(28, 'attendances.update', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'attendances.update', NULL, 'attendances', NULL),
(29, 'attendances.destroy', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'attendances.destroy', NULL, 'attendances', NULL),
(30, 'generator_builder.index', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'generator_builder.index', NULL, 'generator_builder', NULL),
(31, 'generator_builder.field_template', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'generator_builder.field_template', NULL, 'generator_builder', NULL),
(32, 'generator_builder.relation_field_template', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'generator_builder.relation_field_template', NULL, 'generator_builder', NULL),
(33, 'generator_builder.generate', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'generator_builder.generate', NULL, 'generator_builder', NULL),
(34, 'generator_builder.rollback', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'generator_builder.rollback', NULL, 'generator_builder', NULL),
(35, 'generator_builder.from_file', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'generator_builder.from_file', NULL, 'generator_builder', NULL),
(36, 'fileUploads.index', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'fileUploads.index', NULL, 'fileUploads', NULL),
(37, 'fileUploads.create', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'fileUploads.create', NULL, 'fileUploads', NULL),
(38, 'fileUploads.store', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'fileUploads.store', NULL, 'fileUploads', NULL),
(39, 'fileUploads.show', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'fileUploads.show', NULL, 'fileUploads', NULL),
(40, 'fileUploads.edit', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'fileUploads.edit', NULL, 'fileUploads', NULL),
(41, 'fileUploads.update', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'fileUploads.update', NULL, 'fileUploads', NULL),
(42, 'fileUploads.destroy', 'web', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'fileUploads.destroy', NULL, 'fileUploads', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `title`, `description`, `deleted_at`) VALUES
(1, 'supper-admin', 'api', '2022-09-25 05:40:58', '2022-09-25 05:40:58', 'Supper Admin', NULL, NULL),
(2, 'admin', 'web', '2022-09-25 05:43:15', '2022-09-25 05:49:42', 'administrador', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nguyễn Văn Hậu', 'hau@hau.xyz', NULL, '$2y$10$9NTwQOxMYEyBDeQRCfi6y.PmPABWAXMuv.vSWVYMcNmfbZswWc/Ka', NULL, '2022-09-25 05:40:58', '2022-09-25 05:51:06', '2022-09-25 00:51:06'),
(2, 'alejoduran', 'alejoduran@example.com', NULL, '$2y$10$E8/448nrrKIKR/0ED81Kzeh1rApy.iDYK.J3vk4HsxVJ8I6jo3BbO', NULL, '2022-09-25 05:49:18', '2022-09-25 05:49:18', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `file_uploads`
--
ALTER TABLE `file_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT de la tabla `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `file_uploads`
--
ALTER TABLE `file_uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
