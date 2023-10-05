-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-08-2023 a las 16:39:02
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `datosp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(191) NOT NULL,
  `contenido` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `blogs`
--

INSERT INTO `blogs` (`id`, `titulo`, `contenido`, `created_at`, `updated_at`) VALUES
(1, 'reporte 30/07/2023', 'Se crearon 10 nuevos puntos', '2023-07-30 21:55:15', '2023-07-30 22:08:56'),
(4, 'hola', 'hohohohoh', '2023-08-01 01:15:42', '2023-08-01 01:15:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_30_132836_create_permission_tables', 1),
(6, '2023_07_30_164906_create_blogs_table', 2),
(7, '2023_07_30_185054_create_postes_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(10, 'App\\Models\\User', 13),
(10, 'App\\Models\\User', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'ver-rol', 'web', '2023-07-30 19:27:59', '2023-07-30 19:27:59'),
(2, 'crear-rol', 'web', '2023-07-30 19:27:59', '2023-07-30 19:27:59'),
(3, 'editar-rol', 'web', '2023-07-30 19:27:59', '2023-07-30 19:27:59'),
(4, 'borrar-rol', 'web', '2023-07-30 19:27:59', '2023-07-30 19:27:59'),
(5, 'ver-blog', 'web', '2023-07-30 19:27:59', '2023-07-30 19:27:59'),
(6, 'crear-blog', 'web', '2023-07-30 19:27:59', '2023-07-30 19:27:59'),
(7, 'editar-blog', 'web', '2023-07-30 19:27:59', '2023-07-30 19:27:59'),
(8, 'borrar-blog', 'web', '2023-07-30 19:28:00', '2023-07-30 19:28:00'),
(9, 'ver-poste', 'web', '2023-07-31 00:27:59', '2023-07-31 00:27:59'),
(10, 'crear-poste', 'web', '2023-07-31 00:27:59', '2023-07-31 00:27:59'),
(11, 'editar-poste', 'web', '2023-07-31 00:27:59', '2023-07-31 00:27:59'),
(12, 'borrar-poste', 'web', '2023-07-31 00:27:59', '2023-07-31 00:27:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postes`
--

CREATE TABLE `postes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_poste` varchar(100) NOT NULL,
  `latitud` decimal(10,8) NOT NULL,
  `longitud` decimal(11,8) NOT NULL,
  `altura` decimal(5,2) NOT NULL,
  `material` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `comuna` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `nivel_tension` varchar(50) NOT NULL,
  `observacion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `postes`
--

INSERT INTO `postes` (`id`, `nombre_poste`, `latitud`, `longitud`, `altura`, `material`, `estado`, `comuna`, `direccion`, `nivel_tension`, `observacion`, `created_at`, `updated_at`) VALUES
(55, 'Poste21', 2.96982434, -75.29552101, 3.00, 'madera', 'buena', 'La Floresta', 'Dirección21', 'alta tension', '444444444444', '2023-07-31 18:46:25', '2023-08-01 01:17:13'),
(56, 'Poste22', -32.07123600, -132.31777619, 6.97, 'Concreto', 'Regular', 'Las Palmas', 'Dirección22', 'Media Tensión', 'Observación22', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(57, 'Poste23', -74.42696486, -56.78527593, 4.52, 'Metálico', 'Malo', 'Noroccidental', 'Dirección23', 'Alta Tensión', 'Observación23', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(58, 'Poste24', -48.23352916, 109.75845777, 3.28, 'Plástico', 'Bueno', 'Nororiental', 'Dirección24', 'Media Tensión', 'Observación24', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(60, 'Poste26', 69.98606358, -93.10598824, 5.40, 'Concreto', 'Malo', 'Oriental', 'Dirección26', 'Baja Tensión', 'Observación26', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(61, 'Poste27', 86.04320895, -83.22896475, 4.10, 'Metálico', 'Regular', 'Occidental', 'Dirección27', 'Alta Tensión', 'Observación27', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(62, 'Poste28', -46.16671327, 175.54507747, 2.08, 'Plástico', 'Regular', 'Entre Ríos', 'Dirección28', 'Media Tensión', 'Observación28', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(63, 'Poste29', -76.50341558, 90.78882116, 5.36, 'Madera', 'Bueno', 'La Floresta', 'Dirección29', 'Alta Tensión', 'Observación29', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(64, 'Poste30', -13.77170036, 3.38917645, 2.77, 'Concreto', 'Regular', 'Las Palmas', 'Dirección30', 'Media Tensión', 'Observación30', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(65, 'Poste31', 63.85647954, -20.16347997, 6.56, 'Metálico', 'Malo', 'Noroccidental', 'Dirección31', 'Alta Tensión', 'Observación31', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(66, 'Poste32', 80.35456046, 95.41441366, 9.86, 'Plástico', 'Bueno', 'Nororiental', 'Dirección32', 'Media Tensión', 'Observación32', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(67, 'Poste33', 24.24017658, -102.43237298, 1.73, 'Madera', 'Regular', 'Norte', 'Dirección33', 'Alta Tensión', 'Observación33', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(68, 'Poste34', -50.35871830, 29.22156804, 2.45, 'Concreto', 'Malo', 'Oriental', 'Dirección34', 'Baja Tensión', 'Observación34', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(69, 'Poste35', -3.18194387, 63.40008919, 9.34, 'Metálico', 'Regular', 'Occidental', 'Dirección35', 'Alta Tensión', 'Observación35', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(70, 'Poste36', 25.13017226, -36.97462698, 0.68, 'Plástico', 'Regular', 'Entre Ríos', 'Dirección36', 'Media Tensión', 'Observación36', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(71, 'Poste37', -63.67344744, 10.22800881, 2.03, 'Madera', 'Bueno', 'La Floresta', 'Dirección37', 'Alta Tensión', 'Observación37', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(72, 'Poste38', -12.39015836, 16.55620824, 4.36, 'Concreto', 'Malo', 'Las Palmas', 'Dirección38', 'Media Tensión', 'Observación38', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(73, 'Poste39', 7.97069933, -31.65900302, 4.27, 'Metálico', 'Regular', 'Noroccidental', 'Dirección39', 'Alta Tensión', 'Observación39', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(74, 'Poste40', 72.19050998, -99.73728903, 4.12, 'Plástico', 'Regular', 'Nororiental', 'Dirección40', 'Media Tensión', 'Observación40', '2023-07-31 18:46:25', '2023-07-31 18:46:25'),
(75, 'Poste1', -57.82621787, -39.55829868, 3.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección1', 'Alta Tensión', 'Observación1', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(76, 'Poste2', -15.41708757, 144.50403143, 3.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección2', 'Media Tensión', 'Observación2', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(77, 'Poste3', -42.48865319, 41.60138490, 4.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección3', 'Alta Tensión', 'Observación3', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(78, 'Poste4', -38.53057266, 29.89012976, 4.50, 'Plástico', 'Bueno', 'Nororiental', 'Dirección4', 'Media Tensión', 'Observación4', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(79, 'Poste5', -79.68295208, 13.50010096, 5.00, 'Madera', 'Regular', 'Norte', 'Dirección5', 'Alta Tensión', 'Observación5', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(80, 'Poste6', 2.79911419, 167.49085004, 5.50, 'Concreto', 'Malo', 'Oriente', 'Dirección6', 'Baja Tensión', 'Observación6', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(81, 'Poste7', -39.67021192, 0.82534170, 6.00, 'Metálico', 'Regular', 'Occidental', 'Dirección7', 'Alta Tensión', 'Observación7', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(82, 'Poste8', 31.07399555, 128.26394147, 3.00, 'Plástico', 'Regular', 'Entre Ríos', 'Dirección8', 'Media Tensión', 'Observación8', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(83, 'Poste9', -42.56212744, 89.58691223, 3.50, 'Madera', 'Bueno', 'La Floresta', 'Dirección9', 'Alta Tensión', 'Observación9', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(84, 'Poste10', 81.65366844, 7.77595880, 4.00, 'Concreto', 'Regular', 'Las Palmas', 'Dirección10', 'Media Tensión', 'Observación10', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(85, 'Poste11', 44.47889721, -118.53889329, 4.50, 'Metálico', 'Malo', 'Noroccidental', 'Dirección11', 'Alta Tensión', 'Observación11', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(86, 'Poste12', 20.21608069, 17.77749780, 5.00, 'Plástico', 'Bueno', 'Nororiental', 'Dirección12', 'Media Tensión', 'Observación12', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(87, 'Poste13', 73.79550798, 144.62259748, 5.50, 'Madera', 'Regular', 'Norte', 'Dirección13', 'Alta Tensión', 'Observación13', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(88, 'Poste14', 50.16997527, -112.16802863, 6.00, 'Concreto', 'Malo', 'Oriente', 'Dirección14', 'Baja Tensión', 'Observación14', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(89, 'Poste15', 19.07000814, -12.79582161, 3.00, 'Metálico', 'Regular', 'Occidental', 'Dirección15', 'Alta Tensión', 'Observación15', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(90, 'Poste16', 0.80042708, -133.60825333, 3.50, 'Plástico', 'Regular', 'Entre Ríos', 'Dirección16', 'Media Tensión', 'Observación16', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(91, 'Poste17', -66.42190903, -83.39431925, 4.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección17', 'Alta Tensión', 'Observación17', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(92, 'Poste18', 80.77993450, 157.98231380, 4.50, 'Concreto', 'Malo', 'Las Palmas', 'Dirección18', 'Media Tensión', 'Observación18', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(93, 'Poste19', 62.61598653, -27.78706499, 5.00, 'Metálico', 'Regular', 'Noroccidental', 'Dirección19', 'Alta Tensión', 'Observación19', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(94, 'Poste20', 12.68438345, 30.20504055, 5.50, 'Plástico', 'Regular', 'Nororiental', 'Dirección20', 'Media Tensión', 'Observación20', '2023-07-31 18:53:32', '2023-07-31 18:53:32'),
(95, 'Poste41', -31.14447445, 141.75337210, 3.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección41', 'Alta Tensión', 'Observación41', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(96, 'Poste42', -2.18314086, 92.90848612, 3.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección42', 'Media Tensión', 'Observación42', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(97, 'Poste43', -31.17935658, -50.51901306, 4.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección43', 'Alta Tensión', 'Observación43', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(98, 'Poste44', 57.24054261, -176.03752367, 4.50, 'Plástico', 'Bueno', 'Nororiental', 'Dirección44', 'Media Tensión', 'Observación44', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(99, 'Poste45', 18.18456854, 169.95826743, 5.00, 'Madera', 'Regular', 'Norte', 'Dirección45', 'Alta Tensión', 'Observación45', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(100, 'Poste46', -79.65803151, -46.45510631, 5.50, 'Concreto', 'Malo', 'Oriente', 'Dirección46', 'Baja Tensión', 'Observación46', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(101, 'Poste47', 32.83633428, -72.27132720, 6.00, 'Metálico', 'Regular', 'Occidental', 'Dirección47', 'Alta Tensión', 'Observación47', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(102, 'Poste48', -9.18731531, -55.05916044, 3.00, 'Plástico', 'Regular', 'Entre Ríos', 'Dirección48', 'Media Tensión', 'Observación48', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(103, 'Poste49', -20.08594963, 144.31799610, 3.50, 'Madera', 'Bueno', 'La Floresta', 'Dirección49', 'Alta Tensión', 'Observación49', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(104, 'Poste50', -28.94715534, 177.57446933, 4.00, 'Concreto', 'Regular', 'Las Palmas', 'Dirección50', 'Media Tensión', 'Observación50', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(105, 'Poste51', 80.77764490, 95.05305204, 4.50, 'Metálico', 'Malo', 'Noroccidental', 'Dirección51', 'Alta Tensión', 'Observación51', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(106, 'Poste52', 85.29970094, 27.83786435, 5.00, 'Plástico', 'Bueno', 'Nororiental', 'Dirección52', 'Media Tensión', 'Observación52', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(107, 'Poste53', 83.69556359, -146.55794606, 5.50, 'Madera', 'Regular', 'Norte', 'Dirección53', 'Alta Tensión', 'Observación53', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(108, 'Poste54', 12.51844960, 24.85834521, 6.00, 'Concreto', 'Malo', 'Oriente', 'Dirección54', 'Baja Tensión', 'Observación54', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(109, 'Poste55', -65.40948024, 171.33017308, 3.00, 'Metálico', 'Regular', 'Occidental', 'Dirección55', 'Alta Tensión', 'Observación55', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(110, 'Poste56', -5.44612106, -28.45171873, 3.50, 'Plástico', 'Regular', 'Entre Ríos', 'Dirección56', 'Media Tensión', 'Observación56', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(111, 'Poste57', 35.20907186, -102.55411409, 4.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección57', 'Alta Tensión', 'Observación57', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(112, 'Poste58', 87.98750471, -72.46259955, 4.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección58', 'Media Tensión', 'Observación58', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(113, 'Poste59', 4.88099252, 86.19773495, 5.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección59', 'Alta Tensión', 'Observación59', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(114, 'Poste60', -69.14863467, -50.07954049, 5.50, 'Plástico', 'Regular', 'Nororiental', 'Dirección60', 'Media Tensión', 'Observación60', '2023-07-31 18:58:08', '2023-07-31 18:58:08'),
(115, 'Poste61', 4.10847861, -173.77181176, 3.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección61', 'Alta Tension', 'Observacion61', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(116, 'Poste62', 3.24504032, 13.76584954, 3.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección62', 'Media Tension', 'Observacion62', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(117, 'Poste63', -65.32049158, -154.50245337, 4.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección63', 'Alta Tension', 'Observacion63', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(118, 'Poste64', 79.70534685, 0.56083968, 4.50, 'Plástico', 'Bueno', 'Nororiental', 'Dirección64', 'Media Tension', 'Observacion64', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(119, 'Poste65', 32.28606418, 141.17813382, 5.00, 'Madera', 'Regular', 'Norte', 'Dirección65', 'Alta Tension', 'Observacion65', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(120, 'Poste66', -13.91285245, -22.66291488, 5.50, 'Concreto', 'Malo', 'Oriente', 'Dirección66', 'Baja Tension', 'Observacion66', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(121, 'Poste67', 75.08127567, -81.19848760, 6.00, 'Metálico', 'Regular', 'Occidental', 'Dirección67', 'Alta Tension', 'Observacion67', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(122, 'Poste68', 21.75995953, -78.80493088, 3.00, 'Plástico', 'Regular', 'Entre Rios', 'Dirección68', 'Media Tension', 'Observacion68', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(123, 'Poste69', 7.70779976, 133.49280133, 3.50, 'Madera', 'Bueno', 'La Floresta', 'Dirección69', 'Alta Tension', 'Observacion69', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(124, 'Poste70', 40.60860957, -174.39229723, 4.00, 'Concreto', 'Regular', 'Las Palmas', 'Dirección70', 'Media Tension', 'Observacion70', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(125, 'Poste71', 72.19343376, -14.88875970, 4.50, 'Metálico', 'Malo', 'Noroccidental', 'Dirección71', 'Alta Tension', 'Observacion71', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(126, 'Poste72', 16.19780502, 26.64434035, 5.00, 'Plástico', 'Bueno', 'Nororiental', 'Dirección72', 'Media Tension', 'Observacion72', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(127, 'Poste73', -71.98255865, 100.24140351, 5.50, 'Madera', 'Regular', 'Norte', 'Dirección73', 'Alta Tension', 'Observacion73', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(128, 'Poste74', 16.55119025, 44.78770303, 6.00, 'Concreto', 'Malo', 'Oriente', 'Dirección74', 'Baja Tension', 'Observacion74', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(129, 'Poste75', -27.68430764, 128.79382561, 3.00, 'Metálico', 'Regular', 'Occidental', 'Dirección75', 'Alta Tension', 'Observacion75', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(130, 'Poste76', -44.96250754, 63.99345886, 3.50, 'Plástico', 'Regular', 'Entre Rios', 'Dirección76', 'Media Tension', 'Observacion76', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(131, 'Poste77', 24.87117530, -123.26861250, 4.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección77', 'Alta Tension', 'Observacion77', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(132, 'Poste78', 67.21494838, 141.95533239, 4.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección78', 'Media Tension', 'Observacion78', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(133, 'Poste79', 63.24349135, 26.56892736, 5.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección79', 'Alta Tension', 'Observacion79', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(134, 'Poste80', -33.30815010, 127.21172797, 5.50, 'Plástico', 'Regular', 'Nororiental', 'Dirección80', 'Media Tension', 'Observacion80', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(135, 'Poste81', -32.04622423, -162.09741520, 6.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección81', 'Alta Tension', 'Observacion81', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(136, 'Poste82', -39.10485976, -84.75634097, 3.00, 'Concreto', 'Regular', 'Las Palmas', 'Dirección82', 'Media Tension', 'Observacion82', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(137, 'Poste83', -4.57626760, 28.50635801, 3.50, 'Metálico', 'Malo', 'Noroccidental', 'Dirección83', 'Alta Tension', 'Observacion83', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(138, 'Poste84', -5.00529665, 44.42797052, 4.00, 'Plástico', 'Bueno', 'Nororiental', 'Dirección84', 'Media Tension', 'Observacion84', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(139, 'Poste85', 36.08582179, 47.57431737, 4.50, 'Madera', 'Regular', 'Norte', 'Dirección85', 'Alta Tension', 'Observacion85', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(140, 'Poste86', -79.32166641, -35.93960510, 5.00, 'Concreto', 'Malo', 'Oriente', 'Dirección86', 'Baja Tension', 'Observacion86', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(141, 'Poste87', 58.11599199, 148.97874632, 5.50, 'Metálico', 'Regular', 'Occidental', 'Dirección87', 'Alta Tension', 'Observacion87', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(142, 'Poste88', -71.90110466, 94.05272554, 6.00, 'Plástico', 'Regular', 'Entre Rios', 'Dirección88', 'Media Tension', 'Observacion88', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(143, 'Poste89', 0.83513335, -93.80683202, 3.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección89', 'Alta Tension', 'Observacion89', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(144, 'Poste90', 32.97752543, 71.19576139, 3.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección90', 'Media Tension', 'Observacion90', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(145, 'Poste91', -10.94316729, -143.01894594, 4.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección91', 'Alta Tension', 'Observacion91', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(146, 'Poste92', -54.71785747, 61.87827420, 4.50, 'Plástico', 'Bueno', 'Nororiental', 'Dirección92', 'Media Tension', 'Observacion92', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(147, 'Poste93', 48.84926343, 122.85782280, 5.00, 'Madera', 'Regular', 'Norte', 'Dirección93', 'Alta Tension', 'Observacion93', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(148, 'Poste94', 70.59677223, 157.39426495, 5.50, 'Concreto', 'Malo', 'Oriente', 'Dirección94', 'Baja Tension', 'Observacion94', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(149, 'Poste95', -88.30464877, -95.22927150, 6.00, 'Metálico', 'Regular', 'Occidental', 'Dirección95', 'Alta Tension', 'Observacion95', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(150, 'Poste96', -63.15922690, -165.90444344, 3.00, 'Plástico', 'Regular', 'Entre Rios', 'Dirección96', 'Media Tension', 'Observacion96', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(151, 'Poste97', 44.71657764, 44.87911774, 3.50, 'Madera', 'Bueno', 'La Floresta', 'Dirección97', 'Alta Tension', 'Observacion97', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(152, 'Poste98', 68.04806698, 5.84332763, 4.00, 'Concreto', 'Regular', 'Las Palmas', 'Dirección98', 'Media Tension', 'Observacion98', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(153, 'Poste99', 80.46412366, -112.88873517, 4.50, 'Metálico', 'Malo', 'Noroccidental', 'Dirección99', 'Alta Tension', 'Observacion99', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(154, 'Poste100', -73.61420339, 142.52418265, 5.00, 'Plástico', 'Regular', 'Nororiental', 'Dirección100', 'Media Tension', 'Observacion100', '2023-07-31 19:01:32', '2023-07-31 19:01:32'),
(155, 'Poste101', -43.05080329, 9.56183358, 3.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección101', 'Alta Tension', 'Observacion101', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(156, 'Poste102', 63.05699936, 61.88450396, 3.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección102', 'Media Tension', 'Observacion102', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(157, 'Poste103', 55.54026735, -170.25082736, 4.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección103', 'Alta Tension', 'Observacion103', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(158, 'Poste104', 37.75213509, -11.72615598, 4.50, 'Plástico', 'Bueno', 'Nororiental', 'Dirección104', 'Media Tension', 'Observacion104', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(159, 'Poste105', -52.57178968, 49.46058220, 5.00, 'Madera', 'Regular', 'Norte', 'Dirección105', 'Alta Tension', 'Observacion105', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(160, 'Poste106', 11.36683008, 145.28656524, 5.50, 'Concreto', 'Malo', 'Oriente', 'Dirección106', 'Baja Tension', 'Observacion106', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(161, 'Poste107', 59.11592840, -24.70040065, 6.00, 'Metálico', 'Regular', 'Occidental', 'Dirección107', 'Alta Tension', 'Observacion107', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(162, 'Poste108', 30.90121871, -156.88659990, 3.00, 'Plástico', 'Regular', 'Entre Rios', 'Dirección108', 'Media Tension', 'Observacion108', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(163, 'Poste109', -34.92015034, -58.54169268, 3.50, 'Madera', 'Bueno', 'La Floresta', 'Dirección109', 'Alta Tension', 'Observacion109', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(164, 'Poste110', 48.40622486, 119.68733774, 4.00, 'Concreto', 'Regular', 'Las Palmas', 'Dirección110', 'Media Tension', 'Observacion110', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(165, 'Poste111', 63.99967530, 100.93475085, 4.50, 'Metálico', 'Malo', 'Noroccidental', 'Dirección111', 'Alta Tension', 'Observacion111', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(166, 'Poste112', -29.66214325, -59.42567401, 5.00, 'Plástico', 'Bueno', 'Nororiental', 'Dirección112', 'Media Tension', 'Observacion112', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(167, 'Poste113', 30.42225027, -57.50046417, 5.50, 'Madera', 'Regular', 'Norte', 'Dirección113', 'Alta Tension', 'Observacion113', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(168, 'Poste114', 34.98209429, -17.67765358, 6.00, 'Concreto', 'Malo', 'Oriente', 'Dirección114', 'Baja Tension', 'Observacion114', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(169, 'Poste115', -59.14041127, 1.62885910, 3.00, 'Metálico', 'Regular', 'Occidental', 'Dirección115', 'Alta Tension', 'Observacion115', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(170, 'Poste116', -88.50661291, 10.04730470, 3.50, 'Plástico', 'Regular', 'Entre Rios', 'Dirección116', 'Media Tension', 'Observacion116', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(171, 'Poste117', 20.63810599, -3.76084311, 4.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección117', 'Alta Tension', 'Observacion117', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(172, 'Poste118', 18.68357978, 18.11833817, 4.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección118', 'Media Tension', 'Observacion118', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(173, 'Poste119', 79.24511163, -161.90388711, 5.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección119', 'Alta Tension', 'Observacion119', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(174, 'Poste120', -12.49504715, -179.23879914, 5.50, 'Plástico', 'Regular', 'Nororiental', 'Dirección120', 'Media Tension', 'Observacion120', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(175, 'Poste121', 39.38814915, 31.59789995, 6.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección121', 'Alta Tension', 'Observacion121', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(176, 'Poste122', 50.83030798, -126.49060904, 3.00, 'Concreto', 'Regular', 'Las Palmas', 'Dirección122', 'Media Tension', 'Observacion122', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(177, 'Poste123', -18.71744099, 12.29742828, 3.50, 'Metálico', 'Malo', 'Noroccidental', 'Dirección123', 'Alta Tension', 'Observacion123', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(178, 'Poste124', -3.10410080, 112.06671824, 4.00, 'Plástico', 'Bueno', 'Nororiental', 'Dirección124', 'Media Tension', 'Observacion124', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(179, 'Poste125', 19.47910353, 38.59089160, 4.50, 'Madera', 'Regular', 'Norte', 'Dirección125', 'Alta Tension', 'Observacion125', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(180, 'Poste126', -51.96007604, -95.37342414, 5.00, 'Concreto', 'Malo', 'Oriente', 'Dirección126', 'Baja Tension', 'Observacion126', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(181, 'Poste127', 7.44667331, -179.41298347, 5.50, 'Metálico', 'Regular', 'Occidental', 'Dirección127', 'Alta Tension', 'Observacion127', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(182, 'Poste128', -20.87247306, 149.51423091, 6.00, 'Plástico', 'Regular', 'Entre Rios', 'Dirección128', 'Media Tension', 'Observacion128', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(183, 'Poste129', -13.59699803, -44.51266194, 3.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección129', 'Alta Tension', 'Observacion129', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(184, 'Poste130', 19.50934476, 148.63144451, 3.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección130', 'Media Tension', 'Observacion130', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(185, 'Poste131', 43.05058251, 164.61150269, 4.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección131', 'Alta Tension', 'Observacion131', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(186, 'Poste132', 12.37701470, 169.93565003, 4.50, 'Plástico', 'Bueno', 'Nororiental', 'Dirección132', 'Media Tension', 'Observacion132', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(187, 'Poste133', -62.29191349, 127.27392605, 5.00, 'Madera', 'Regular', 'Norte', 'Dirección133', 'Alta Tension', 'Observacion133', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(188, 'Poste134', 55.06056114, -11.21615573, 5.50, 'Concreto', 'Malo', 'Oriente', 'Dirección134', 'Baja Tension', 'Observacion134', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(189, 'Poste135', 76.77793280, -98.57219376, 3.00, 'Metálico', 'Regular', 'Occidental', 'Dirección135', 'Alta Tension', 'Observacion135', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(190, 'Poste136', -26.76427725, -151.92618021, 3.50, 'Plástico', 'Regular', 'Entre Rios', 'Dirección136', 'Media Tension', 'Observacion136', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(191, 'Poste137', -29.52261323, -19.44758061, 4.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección137', 'Alta Tension', 'Observacion137', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(192, 'Poste138', -50.05110631, 97.83168983, 4.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección138', 'Media Tension', 'Observacion138', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(193, 'Poste139', -55.26745098, 53.83043177, 5.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección139', 'Alta Tension', 'Observacion139', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(194, 'Poste140', 30.37843790, -37.70690525, 5.50, 'Plástico', 'Regular', 'Nororiental', 'Dirección140', 'Media Tension', 'Observacion140', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(195, 'Poste141', 84.59742872, 59.09501396, 6.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección141', 'Alta Tension', 'Observacion141', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(196, 'Poste142', -16.05474571, -157.83248795, 3.00, 'Concreto', 'Regular', 'Las Palmas', 'Dirección142', 'Media Tension', 'Observacion142', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(197, 'Poste143', -76.41697720, -110.67229712, 3.50, 'Metálico', 'Malo', 'Noroccidental', 'Dirección143', 'Alta Tension', 'Observacion143', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(198, 'Poste144', 42.57019435, -142.28115406, 4.00, 'Plástico', 'Bueno', 'Nororiental', 'Dirección144', 'Media Tension', 'Observacion144', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(199, 'Poste145', -33.41346268, -87.29115355, 4.50, 'Madera', 'Regular', 'Norte', 'Dirección145', 'Alta Tension', 'Observacion145', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(200, 'Poste146', -27.98749029, 161.99856876, 5.00, 'Concreto', 'Malo', 'Oriente', 'Dirección146', 'Baja Tension', 'Observacion146', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(201, 'Poste147', 38.95889831, 83.59328786, 5.50, 'Metálico', 'Regular', 'Occidental', 'Dirección147', 'Alta Tension', 'Observacion147', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(202, 'Poste148', 2.10653027, -49.71454984, 6.00, 'Plástico', 'Regular', 'Entre Rios', 'Dirección148', 'Media Tension', 'Observacion148', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(203, 'Poste149', -40.60595988, -76.91593824, 3.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección149', 'Alta Tension', 'Observacion149', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(204, 'Poste150', 19.52803959, -113.97177832, 3.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección150', 'Media Tension', 'Observacion150', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(205, 'Poste151', -73.51355903, 146.77975570, 4.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección151', 'Alta Tension', 'Observacion151', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(206, 'Poste152', -42.50992813, 34.56146264, 4.50, 'Plástico', 'Bueno', 'Nororiental', 'Dirección152', 'Media Tension', 'Observacion152', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(207, 'Poste153', -56.06655347, -124.34991153, 5.00, 'Madera', 'Regular', 'Norte', 'Dirección153', 'Alta Tension', 'Observacion153', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(208, 'Poste154', -52.67511290, 26.29861668, 5.50, 'Concreto', 'Malo', 'Oriente', 'Dirección154', 'Baja Tension', 'Observacion154', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(209, 'Poste155', -46.22811406, -1.17697964, 3.00, 'Metálico', 'Regular', 'Occidental', 'Dirección155', 'Alta Tension', 'Observacion155', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(210, 'Poste156', 45.74189864, -79.05006366, 3.50, 'Plástico', 'Regular', 'Entre Rios', 'Dirección156', 'Media Tension', 'Observacion156', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(211, 'Poste157', -64.85084952, 128.64170681, 4.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección157', 'Alta Tension', 'Observacion157', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(212, 'Poste158', 66.15682112, 95.64310181, 4.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección158', 'Media Tension', 'Observacion158', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(213, 'Poste159', -49.36270328, 119.44367280, 5.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección159', 'Alta Tension', 'Observacion159', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(214, 'Poste160', -3.30270262, 148.64196648, 5.50, 'Plástico', 'Regular', 'Nororiental', 'Dirección160', 'Media Tension', 'Observacion160', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(215, 'Poste161', -68.48697042, 129.20440744, 6.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección161', 'Alta Tension', 'Observacion161', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(216, 'Poste162', 78.47193538, -142.89385744, 3.00, 'Concreto', 'Regular', 'Las Palmas', 'Dirección162', 'Media Tension', 'Observacion162', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(217, 'Poste163', 37.34955580, -97.82285865, 3.50, 'Metálico', 'Malo', 'Noroccidental', 'Dirección163', 'Alta Tension', 'Observacion163', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(218, 'Poste164', -86.60580849, -32.58949788, 4.00, 'Plástico', 'Bueno', 'Nororiental', 'Dirección164', 'Media Tension', 'Observacion164', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(219, 'Poste165', 88.34368631, 81.20536780, 4.50, 'Madera', 'Regular', 'Norte', 'Dirección165', 'Alta Tension', 'Observacion165', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(220, 'Poste166', 27.98236610, -143.79243132, 5.00, 'Concreto', 'Malo', 'Oriente', 'Dirección166', 'Baja Tension', 'Observacion166', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(221, 'Poste167', 6.57182892, -42.90440573, 5.50, 'Metálico', 'Regular', 'Occidental', 'Dirección167', 'Alta Tension', 'Observacion167', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(222, 'Poste168', -36.97649556, -61.05172735, 6.00, 'Plástico', 'Regular', 'Entre Rios', 'Dirección168', 'Media Tension', 'Observacion168', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(223, 'Poste169', 48.30017384, 126.15693151, 3.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección169', 'Alta Tension', 'Observacion169', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(224, 'Poste170', 80.49181278, -113.55265566, 3.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección170', 'Media Tension', 'Observacion170', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(225, 'Poste171', -75.35707197, 127.08725839, 4.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección171', 'Alta Tension', 'Observacion171', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(226, 'Poste172', -86.21063260, 16.63190990, 4.50, 'Plástico', 'Bueno', 'Nororiental', 'Dirección172', 'Media Tension', 'Observacion172', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(227, 'Poste173', 30.21167809, 72.22106227, 5.00, 'Madera', 'Regular', 'Norte', 'Dirección173', 'Alta Tension', 'Observacion173', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(228, 'Poste174', -0.08237307, -37.48690644, 5.50, 'Concreto', 'Malo', 'Oriente', 'Dirección174', 'Baja Tension', 'Observacion174', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(229, 'Poste175', -3.47014136, -102.24068321, 3.00, 'Metálico', 'Regular', 'Occidental', 'Dirección175', 'Alta Tension', 'Observacion175', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(230, 'Poste176', 24.80872157, 14.80927646, 3.50, 'Plástico', 'Regular', 'Entre Rios', 'Dirección176', 'Media Tension', 'Observacion176', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(231, 'Poste177', 52.59703195, -58.45749881, 4.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección177', 'Alta Tension', 'Observacion177', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(232, 'Poste178', -33.93483734, 16.02413408, 4.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección178', 'Media Tension', 'Observacion178', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(233, 'Poste179', 51.86485276, -69.42386360, 5.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección179', 'Alta Tension', 'Observacion179', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(234, 'Poste180', -59.15421174, 156.72948448, 5.50, 'Plástico', 'Regular', 'Nororiental', 'Dirección180', 'Media Tension', 'Observacion180', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(235, 'Poste181', -60.71364806, -177.32492298, 6.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección181', 'Alta Tension', 'Observacion181', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(236, 'Poste182', 8.82864227, 80.26120273, 3.00, 'Concreto', 'Regular', 'Las Palmas', 'Dirección182', 'Media Tension', 'Observacion182', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(237, 'Poste183', 84.16708555, 60.88725831, 3.50, 'Metálico', 'Malo', 'Noroccidental', 'Dirección183', 'Alta Tension', 'Observacion183', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(238, 'Poste184', -10.28310532, -105.49281706, 4.00, 'Plástico', 'Bueno', 'Nororiental', 'Dirección184', 'Media Tension', 'Observacion184', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(239, 'Poste185', 37.11727884, 147.65125067, 4.50, 'Madera', 'Regular', 'Norte', 'Dirección185', 'Alta Tension', 'Observacion185', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(240, 'Poste186', -12.22370433, -25.19078423, 5.00, 'Concreto', 'Malo', 'Oriente', 'Dirección186', 'Baja Tension', 'Observacion186', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(241, 'Poste187', 63.69415795, 172.51394323, 5.50, 'Metálico', 'Regular', 'Occidental', 'Dirección187', 'Alta Tension', 'Observacion187', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(242, 'Poste188', -29.79761023, 84.48207906, 6.00, 'Plástico', 'Regular', 'Entre Rios', 'Dirección188', 'Media Tension', 'Observacion188', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(243, 'Poste189', 30.59803387, -127.46588739, 3.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección189', 'Alta Tension', 'Observacion189', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(244, 'Poste190', 39.54118543, -122.19047243, 3.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección190', 'Media Tension', 'Observacion190', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(245, 'Poste191', 25.90026816, 85.57410995, 4.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección191', 'Alta Tension', 'Observacion191', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(246, 'Poste192', 46.23447593, 25.62244051, 4.50, 'Plástico', 'Bueno', 'Nororiental', 'Dirección192', 'Media Tension', 'Observacion192', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(247, 'Poste193', 15.35267901, -103.34052034, 5.00, 'Madera', 'Regular', 'Norte', 'Dirección193', 'Alta Tension', 'Observacion193', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(248, 'Poste194', -34.40933235, 145.92824855, 5.50, 'Concreto', 'Malo', 'Oriente', 'Dirección194', 'Baja Tension', 'Observacion194', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(249, 'Poste195', 18.04862396, -77.29849500, 3.00, 'Metálico', 'Regular', 'Occidental', 'Dirección195', 'Alta Tension', 'Observacion195', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(250, 'Poste196', 22.60789615, -82.02554239, 3.50, 'Plástico', 'Regular', 'Entre Rios', 'Dirección196', 'Media Tension', 'Observacion196', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(251, 'Poste197', -2.88753891, 37.20124917, 4.00, 'Madera', 'Bueno', 'La Floresta', 'Dirección197', 'Alta Tension', 'Observacion197', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(252, 'Poste198', 11.66574517, -174.94628470, 4.50, 'Concreto', 'Regular', 'Las Palmas', 'Dirección198', 'Media Tension', 'Observacion198', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(253, 'Poste199', -22.36294174, 121.20944778, 5.00, 'Metálico', 'Malo', 'Noroccidental', 'Dirección199', 'Alta Tension', 'Observacion199', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(254, 'Poste200', -79.88754981, 97.49616962, 5.50, 'Plástico', 'Regular', 'Nororiental', 'Dirección200', 'Media Tension', 'Observacion200', '2023-07-31 19:06:12', '2023-07-31 19:06:12'),
(255, 'YTTY5225', 2.96983592, -75.29551695, 5.50, 'concreto', 'buena', 'Oriental', 'CRA 89', 'baja tension', 'POSTE EN BUENAS CONDICIONES', '2023-08-01 01:02:26', '2023-08-01 01:02:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(10, 'seguridad', 'web', '2023-08-02 03:45:52', '2023-08-02 03:45:52');

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
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(5, 10),
(6, 10),
(7, 10),
(8, 10),
(9, 10),
(10, 10),
(11, 10),
(12, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'Super Administrador', 'admin@gmail.com', NULL, '$2y$10$ZoWBrc4x3P041ZR5lcdtX.KoQ6s8m2A7Okm.ZiBksdAGmIKYKcnKy', NULL, '2023-08-02 03:36:21', '2023-08-02 03:36:21'),
(13, 'operador', 'operador@gmail.com', NULL, '$2y$10$qlXLrxClVayRxwQC2cySH.4ixBGMQmnuIowrmWK0QyEgpEiickPpW', NULL, '2023-08-02 03:46:40', '2023-08-02 03:46:40'),
(19, 'pepe', 'pepe@gmail.com', NULL, '$2y$10$DQSFOYvDjvs/diY0FSbkf.rYsAuOhaJTT3I2prSreHQHm/5ZnlXqy', NULL, '2023-08-02 05:26:40', '2023-08-02 05:26:40');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `postes`
--
ALTER TABLE `postes`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `postes`
--
ALTER TABLE `postes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
