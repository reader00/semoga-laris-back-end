-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2022 at 10:47 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `semoga_laris_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', NULL, '{}', '[]', '2022-06-29 09:08:01.513000', '2022-06-29 09:08:01.513000', NULL, NULL),
(2, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-06-29 09:08:01.519000', '2022-06-29 09:08:01.519000', NULL, NULL),
(3, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-06-29 09:08:01.525000', '2022-06-29 09:08:01.525000', NULL, NULL),
(4, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-06-29 09:08:01.529000', '2022-06-29 09:08:01.529000', NULL, NULL),
(5, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-06-29 09:08:01.534000', '2022-06-29 09:08:01.534000', NULL, NULL),
(6, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2022-06-29 09:08:01.541000', '2022-06-29 09:08:01.541000', NULL, NULL),
(7, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-06-29 09:08:01.545000', '2022-06-29 09:08:01.545000', NULL, NULL),
(8, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2022-06-29 09:08:01.550000', '2022-06-29 09:08:01.550000', NULL, NULL),
(9, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-06-29 09:08:01.555000', '2022-06-29 09:08:01.555000', NULL, NULL),
(10, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-06-29 09:08:01.559000', '2022-06-29 09:08:01.559000', NULL, NULL),
(14, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2022-06-29 09:08:01.619000', '2022-06-29 09:08:01.619000', NULL, NULL),
(15, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2022-06-29 09:08:01.624000', '2022-06-29 09:08:01.624000', NULL, NULL),
(16, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2022-06-29 09:08:01.628000', '2022-06-29 09:08:01.628000', NULL, NULL),
(17, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2022-06-29 09:08:01.633000', '2022-06-29 09:08:01.633000', NULL, NULL),
(18, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2022-06-29 09:08:01.638000', '2022-06-29 09:08:01.638000', NULL, NULL),
(19, 'plugin::email.settings.read', NULL, '{}', '[]', '2022-06-29 09:08:01.642000', '2022-06-29 09:08:01.642000', NULL, NULL),
(20, 'plugin::upload.read', NULL, '{}', '[]', '2022-06-29 09:08:01.647000', '2022-06-29 09:08:01.647000', NULL, NULL),
(21, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-06-29 09:08:01.665000', '2022-06-29 09:08:01.665000', NULL, NULL),
(22, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-06-29 09:08:01.678000', '2022-06-29 09:08:01.678000', NULL, NULL),
(23, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-06-29 09:08:01.691000', '2022-06-29 09:08:01.691000', NULL, NULL),
(24, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-06-29 09:08:01.706000', '2022-06-29 09:08:01.706000', NULL, NULL),
(25, 'plugin::upload.settings.read', NULL, '{}', '[]', '2022-06-29 09:08:01.718000', '2022-06-29 09:08:01.718000', NULL, NULL),
(26, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2022-06-29 09:08:01.737000', '2022-06-29 09:08:01.737000', NULL, NULL),
(27, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2022-06-29 09:08:01.771000', '2022-06-29 09:08:01.771000', NULL, NULL),
(28, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2022-06-29 09:08:01.779000', '2022-06-29 09:08:01.779000', NULL, NULL),
(29, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2022-06-29 09:08:01.791000', '2022-06-29 09:08:01.791000', NULL, NULL),
(30, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2022-06-29 09:08:01.796000', '2022-06-29 09:08:01.796000', NULL, NULL),
(31, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2022-06-29 09:08:01.802000', '2022-06-29 09:08:01.802000', NULL, NULL),
(32, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2022-06-29 09:08:01.808000', '2022-06-29 09:08:01.808000', NULL, NULL),
(33, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2022-06-29 09:08:01.814000', '2022-06-29 09:08:01.814000', NULL, NULL),
(34, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2022-06-29 09:08:01.819000', '2022-06-29 09:08:01.819000', NULL, NULL),
(35, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2022-06-29 09:08:01.825000', '2022-06-29 09:08:01.825000', NULL, NULL),
(36, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2022-06-29 09:08:01.830000', '2022-06-29 09:08:01.830000', NULL, NULL),
(37, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2022-06-29 09:08:01.835000', '2022-06-29 09:08:01.835000', NULL, NULL),
(38, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2022-06-29 09:08:01.840000', '2022-06-29 09:08:01.840000', NULL, NULL),
(39, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2022-06-29 09:08:01.846000', '2022-06-29 09:08:01.846000', NULL, NULL),
(40, 'admin::marketplace.read', NULL, '{}', '[]', '2022-06-29 09:08:01.851000', '2022-06-29 09:08:01.851000', NULL, NULL),
(41, 'admin::marketplace.plugins.install', NULL, '{}', '[]', '2022-06-29 09:08:01.856000', '2022-06-29 09:08:01.856000', NULL, NULL),
(42, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', '2022-06-29 09:08:01.861000', '2022-06-29 09:08:01.861000', NULL, NULL),
(43, 'admin::webhooks.create', NULL, '{}', '[]', '2022-06-29 09:08:01.866000', '2022-06-29 09:08:01.866000', NULL, NULL),
(44, 'admin::webhooks.read', NULL, '{}', '[]', '2022-06-29 09:08:01.873000', '2022-06-29 09:08:01.873000', NULL, NULL),
(45, 'admin::webhooks.update', NULL, '{}', '[]', '2022-06-29 09:08:01.881000', '2022-06-29 09:08:01.881000', NULL, NULL),
(46, 'admin::webhooks.delete', NULL, '{}', '[]', '2022-06-29 09:08:01.885000', '2022-06-29 09:08:01.885000', NULL, NULL),
(47, 'admin::users.create', NULL, '{}', '[]', '2022-06-29 09:08:01.890000', '2022-06-29 09:08:01.890000', NULL, NULL),
(48, 'admin::users.read', NULL, '{}', '[]', '2022-06-29 09:08:01.895000', '2022-06-29 09:08:01.895000', NULL, NULL),
(49, 'admin::users.update', NULL, '{}', '[]', '2022-06-29 09:08:01.900000', '2022-06-29 09:08:01.900000', NULL, NULL),
(50, 'admin::users.delete', NULL, '{}', '[]', '2022-06-29 09:08:01.906000', '2022-06-29 09:08:01.906000', NULL, NULL),
(51, 'admin::roles.create', NULL, '{}', '[]', '2022-06-29 09:08:01.911000', '2022-06-29 09:08:01.911000', NULL, NULL),
(52, 'admin::roles.read', NULL, '{}', '[]', '2022-06-29 09:08:01.916000', '2022-06-29 09:08:01.916000', NULL, NULL),
(53, 'admin::roles.update', NULL, '{}', '[]', '2022-06-29 09:08:01.921000', '2022-06-29 09:08:01.921000', NULL, NULL),
(54, 'admin::roles.delete', NULL, '{}', '[]', '2022-06-29 09:08:01.926000', '2022-06-29 09:08:01.926000', NULL, NULL),
(55, 'admin::api-tokens.create', NULL, '{}', '[]', '2022-06-29 09:08:01.931000', '2022-06-29 09:08:01.931000', NULL, NULL),
(56, 'admin::api-tokens.read', NULL, '{}', '[]', '2022-06-29 09:08:01.936000', '2022-06-29 09:08:01.936000', NULL, NULL),
(57, 'admin::api-tokens.update', NULL, '{}', '[]', '2022-06-29 09:08:01.943000', '2022-06-29 09:08:01.943000', NULL, NULL),
(58, 'admin::api-tokens.delete', NULL, '{}', '[]', '2022-06-29 09:08:01.948000', '2022-06-29 09:08:01.948000', NULL, NULL),
(59, 'admin::project-settings.update', NULL, '{}', '[]', '2022-06-29 09:08:01.953000', '2022-06-29 09:08:01.953000', NULL, NULL),
(60, 'admin::project-settings.read', NULL, '{}', '[]', '2022-06-29 09:08:01.957000', '2022-06-29 09:08:01.957000', NULL, NULL),
(64, 'plugin::content-manager.explorer.delete', 'api::product.product', '{}', '[]', '2022-06-29 09:40:34.323000', '2022-06-29 09:40:34.323000', NULL, NULL),
(65, 'plugin::content-manager.explorer.publish', 'api::product.product', '{}', '[]', '2022-06-29 09:40:34.331000', '2022-06-29 09:40:34.331000', NULL, NULL),
(86, 'plugin::content-manager.explorer.delete', 'api::review.review', '{}', '[]', '2022-06-29 09:47:35.635000', '2022-06-29 09:47:35.635000', NULL, NULL),
(108, 'plugin::content-manager.explorer.delete', 'api::transaction.transaction', '{}', '[]', '2022-06-29 10:01:22.330000', '2022-06-29 10:01:22.330000', NULL, NULL),
(113, 'plugin::content-manager.explorer.delete', 'api::transaction-detail.transaction-detail', '{}', '[]', '2022-06-29 10:06:12.623000', '2022-06-29 10:06:12.623000', NULL, NULL),
(138, 'plugin::content-manager.explorer.delete', 'api::cart.cart', '{}', '[]', '2022-06-29 10:21:23.900000', '2022-06-29 10:21:23.900000', NULL, NULL),
(148, 'plugin::content-manager.explorer.delete', 'api::category.category', '{}', '[]', '2022-06-29 10:30:48.750000', '2022-06-29 10:30:48.750000', NULL, NULL),
(149, 'plugin::content-manager.explorer.publish', 'api::category.category', '{}', '[]', '2022-06-29 10:30:48.755000', '2022-06-29 10:30:48.755000', NULL, NULL),
(171, 'plugin::content-manager.explorer.create', 'api::color.color', '{\"fields\":[\"color\"]}', '[]', '2022-06-29 11:15:46.934000', '2022-06-29 11:15:46.934000', NULL, NULL),
(172, 'plugin::content-manager.explorer.read', 'api::color.color', '{\"fields\":[\"color\"]}', '[]', '2022-06-29 11:15:46.942000', '2022-06-29 11:15:46.942000', NULL, NULL),
(173, 'plugin::content-manager.explorer.update', 'api::color.color', '{\"fields\":[\"color\"]}', '[]', '2022-06-29 11:15:46.956000', '2022-06-29 11:15:46.956000', NULL, NULL),
(174, 'plugin::content-manager.explorer.delete', 'api::color.color', '{}', '[]', '2022-06-29 11:15:46.965000', '2022-06-29 11:15:46.965000', NULL, NULL),
(175, 'plugin::content-manager.explorer.publish', 'api::color.color', '{}', '[]', '2022-06-29 11:15:46.972000', '2022-06-29 11:15:46.972000', NULL, NULL),
(185, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"transactions\",\"carts\"]}', '[]', '2022-06-29 13:50:10.170000', '2022-06-29 13:50:10.170000', NULL, NULL),
(186, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"transactions\",\"carts\"]}', '[]', '2022-06-29 13:50:10.187000', '2022-06-29 13:50:10.187000', NULL, NULL),
(187, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"transactions\",\"carts\"]}', '[]', '2022-06-29 13:50:10.194000', '2022-06-29 13:50:10.194000', NULL, NULL),
(188, 'plugin::content-manager.explorer.create', 'api::review.review', '{\"fields\":[\"product\",\"owner\",\"text\",\"star\"]}', '[]', '2022-06-29 13:52:26.154000', '2022-06-29 13:52:26.154000', NULL, NULL),
(189, 'plugin::content-manager.explorer.read', 'api::review.review', '{\"fields\":[\"product\",\"owner\",\"text\",\"star\"]}', '[]', '2022-06-29 13:52:26.161000', '2022-06-29 13:52:26.161000', NULL, NULL),
(190, 'plugin::content-manager.explorer.update', 'api::review.review', '{\"fields\":[\"product\",\"owner\",\"text\",\"star\"]}', '[]', '2022-06-29 13:52:26.167000', '2022-06-29 13:52:26.167000', NULL, NULL),
(197, 'plugin::content-manager.explorer.delete', 'api::cart-item.cart-item', '{}', '[]', '2022-06-29 14:10:05.031000', '2022-06-29 14:10:05.031000', NULL, NULL),
(204, 'plugin::content-manager.explorer.create', 'api::transaction-detail.transaction-detail', '{\"fields\":[\"payment_status\",\"name\",\"address\",\"province\",\"regency\",\"zip_code\",\"phone_number\",\"transaction\",\"shipping_fee\"]}', '[]', '2022-06-29 14:14:05.551000', '2022-06-29 14:14:05.551000', NULL, NULL),
(205, 'plugin::content-manager.explorer.read', 'api::transaction-detail.transaction-detail', '{\"fields\":[\"payment_status\",\"name\",\"address\",\"province\",\"regency\",\"zip_code\",\"phone_number\",\"transaction\",\"shipping_fee\"]}', '[]', '2022-06-29 14:14:05.558000', '2022-06-29 14:14:05.558000', NULL, NULL),
(206, 'plugin::content-manager.explorer.update', 'api::transaction-detail.transaction-detail', '{\"fields\":[\"payment_status\",\"name\",\"address\",\"province\",\"regency\",\"zip_code\",\"phone_number\",\"transaction\",\"shipping_fee\"]}', '[]', '2022-06-29 14:14:05.564000', '2022-06-29 14:14:05.564000', NULL, NULL),
(216, 'plugin::content-manager.explorer.create', 'api::cart.cart', '{\"fields\":[\"owner\",\"count\",\"total\",\"is_checked_out\",\"cart_items\"]}', '[]', '2022-06-29 18:37:55.205000', '2022-06-29 18:37:55.205000', NULL, NULL),
(217, 'plugin::content-manager.explorer.read', 'api::cart.cart', '{\"fields\":[\"owner\",\"count\",\"total\",\"is_checked_out\",\"cart_items\"]}', '[]', '2022-06-29 18:37:55.216000', '2022-06-29 18:37:55.216000', NULL, NULL),
(218, 'plugin::content-manager.explorer.update', 'api::cart.cart', '{\"fields\":[\"owner\",\"count\",\"total\",\"is_checked_out\",\"cart_items\"]}', '[]', '2022-06-29 18:37:55.223000', '2022-06-29 18:37:55.223000', NULL, NULL),
(222, 'plugin::content-manager.explorer.create', 'api::transaction.transaction', '{\"fields\":[\"owner\",\"cart\",\"transaction_detail\"]}', '[]', '2022-06-29 18:40:01.840000', '2022-06-29 18:40:01.840000', NULL, NULL),
(223, 'plugin::content-manager.explorer.read', 'api::transaction.transaction', '{\"fields\":[\"owner\",\"cart\",\"transaction_detail\"]}', '[]', '2022-06-29 18:40:01.845000', '2022-06-29 18:40:01.845000', NULL, NULL),
(224, 'plugin::content-manager.explorer.update', 'api::transaction.transaction', '{\"fields\":[\"owner\",\"cart\",\"transaction_detail\"]}', '[]', '2022-06-29 18:40:01.851000', '2022-06-29 18:40:01.851000', NULL, NULL),
(228, 'plugin::content-manager.explorer.create', 'api::product.product', '{\"fields\":[\"name\",\"stock\",\"price\",\"description\",\"categories\",\"image\",\"colors\",\"reviews\"]}', '[]', '2022-06-29 18:45:50.297000', '2022-06-29 18:45:50.297000', NULL, NULL),
(229, 'plugin::content-manager.explorer.read', 'api::product.product', '{\"fields\":[\"name\",\"stock\",\"price\",\"description\",\"categories\",\"image\",\"colors\",\"reviews\"]}', '[]', '2022-06-29 18:45:50.304000', '2022-06-29 18:45:50.304000', NULL, NULL),
(230, 'plugin::content-manager.explorer.update', 'api::product.product', '{\"fields\":[\"name\",\"stock\",\"price\",\"description\",\"categories\",\"image\",\"colors\",\"reviews\"]}', '[]', '2022-06-29 18:45:50.311000', '2022-06-29 18:45:50.311000', NULL, NULL),
(234, 'plugin::content-manager.explorer.create', 'api::cart-item.cart-item', '{\"fields\":[\"product\",\"count\",\"cart\"]}', '[]', '2022-06-29 19:15:25.156000', '2022-06-29 19:15:25.156000', NULL, NULL),
(235, 'plugin::content-manager.explorer.read', 'api::cart-item.cart-item', '{\"fields\":[\"product\",\"count\",\"cart\"]}', '[]', '2022-06-29 19:15:25.166000', '2022-06-29 19:15:25.166000', NULL, NULL),
(236, 'plugin::content-manager.explorer.update', 'api::cart-item.cart-item', '{\"fields\":[\"product\",\"count\",\"cart\"]}', '[]', '2022-06-29 19:15:25.172000', '2022-06-29 19:15:25.172000', NULL, NULL),
(237, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\":[\"name\",\"icon\",\"products\"]}', '[]', '2022-06-30 14:40:38.838000', '2022-06-30 14:40:38.838000', NULL, NULL),
(238, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\":[\"name\",\"icon\",\"products\"]}', '[]', '2022-06-30 14:40:38.849000', '2022-06-30 14:40:38.849000', NULL, NULL),
(239, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\":[\"name\",\"icon\",\"products\"]}', '[]', '2022-06-30 14:40:38.856000', '2022-06-30 14:40:38.856000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(64, 1),
(65, 1),
(86, 1),
(108, 1),
(113, 1),
(138, 1),
(148, 1),
(149, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(197, 1),
(204, 1),
(205, 1),
(206, 1),
(216, 1),
(217, 1),
(218, 1),
(222, 1),
(223, 1),
(224, 1),
(228, 1),
(229, 1),
(230, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2022-06-29 09:08:01.493000', '2022-06-29 09:08:01.493000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2022-06-29 09:08:01.502000', '2022-06-29 09:08:01.502000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2022-06-29 09:08:01.506000', '2022-06-29 09:08:01.506000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Qory Amanah', 'Putra', NULL, 'qoryamanahputra0708@gmail.com', '$2a$10$uSr70Aa/aTps8gnhuKA4P.ox34quy1jBH9QbmLx8pUQIiMLIJ4bpe', NULL, NULL, 1, 0, NULL, '2022-06-29 09:08:21.648000', '2022-06-29 09:08:21.648000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `is_checked_out` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `count`, `total`, `is_checked_out`) VALUES
(28, '2022-06-30 15:27:00.599000', '2022-06-30 15:36:08.876000', NULL, NULL, 2, 3350000, 0),
(29, '2022-06-30 15:38:19.055000', '2022-06-30 15:41:57.643000', NULL, NULL, 7, 69021000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `carts_owner_links`
--

CREATE TABLE `carts_owner_links` (
  `cart_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts_owner_links`
--

INSERT INTO `carts_owner_links` (`cart_id`, `user_id`) VALUES
(28, 22),
(29, 23);

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `count` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `count`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(46, 3, '2022-06-30 15:40:16.569000', '2022-06-30 15:40:16.569000', NULL, NULL),
(47, 4, '2022-06-30 15:40:23.431000', '2022-06-30 15:40:23.431000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart_items_cart_links`
--

CREATE TABLE `cart_items_cart_links` (
  `cart_item_id` int(10) UNSIGNED DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_items_cart_links`
--

INSERT INTO `cart_items_cart_links` (`cart_item_id`, `cart_id`) VALUES
(46, 29),
(47, 29);

-- --------------------------------------------------------

--
-- Table structure for table `cart_items_product_links`
--

CREATE TABLE `cart_items_product_links` (
  `cart_item_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_items_product_links`
--

INSERT INTO `cart_items_product_links` (`cart_item_id`, `product_id`) VALUES
(46, 4),
(47, 5);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `icon`) VALUES
(3, 'Komputer', '2022-06-29 10:23:28.195000', '2022-06-29 10:25:24.086000', '2022-06-29 10:25:24.080000', 1, 1, NULL),
(5, 'Smartphone', '2022-06-29 10:24:34.426000', '2022-06-29 10:24:39.543000', '2022-06-29 10:24:35.475000', 1, 1, NULL),
(7, 'Aksesoris', '2022-06-29 10:24:53.525000', '2022-06-29 10:25:20.605000', '2022-06-29 10:25:20.601000', 1, 1, NULL),
(9, 'Mouse', '2022-06-29 10:25:54.061000', '2022-06-29 10:26:24.010000', '2022-06-29 10:26:24.005000', 1, 1, NULL),
(11, 'Keyboard', '2022-06-29 10:26:31.254000', '2022-06-29 10:26:38.201000', '2022-06-29 10:26:32.086000', 1, 1, NULL),
(13, 'Headphone', '2022-06-29 10:27:34.173000', '2022-06-29 10:27:40.105000', '2022-06-29 10:27:34.842000', 1, 1, NULL),
(15, 'Smartwatch', '2022-06-29 10:28:09.734000', '2022-06-29 10:28:13.277000', '2022-06-29 10:28:10.438000', 1, 1, NULL),
(17, 'Smart TV', '2022-06-29 10:30:02.280000', '2022-06-29 10:30:10.706000', '2022-06-29 10:30:03.116000', 1, 1, NULL),
(19, 'Laptop', '2022-06-29 10:35:38.074000', '2022-06-29 10:35:38.665000', '2022-06-29 10:35:38.661000', 1, 1, NULL),
(20, 'Smart Home', '2022-06-29 10:35:53.659000', '2022-06-29 10:35:54.324000', '2022-06-29 10:35:54.320000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories_products_links`
--

CREATE TABLE `categories_products_links` (
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Biru', '2022-06-29 11:17:39.218000', '2022-06-29 11:17:40.151000', '2022-06-29 11:17:40.147000', 1, 1),
(2, 'Biru Metal', '2022-06-29 11:18:21.549000', '2022-06-29 11:18:23.197000', '2022-06-29 11:18:23.194000', 1, 1),
(3, 'Hitam', '2022-06-29 11:18:28.640000', '2022-06-29 11:18:29.548000', '2022-06-29 11:18:29.543000', 1, 1),
(4, 'Hitam Metal', '2022-06-29 11:18:35.881000', '2022-06-29 11:18:36.476000', '2022-06-29 11:18:36.471000', 1, 1),
(5, 'Merah', '2022-06-29 11:18:41.858000', '2022-06-29 11:18:42.695000', '2022-06-29 11:18:42.693000', 1, 1),
(6, 'Kuning', '2022-06-29 11:18:49.454000', '2022-06-29 11:18:50.273000', '2022-06-29 11:18:50.270000', 1, 1),
(7, 'Cyan', '2022-06-29 11:18:55.914000', '2022-06-29 11:18:56.463000', '2022-06-29 11:18:56.461000', 1, 1),
(8, 'Abu-abu', '2022-06-29 11:19:08.160000', '2022-06-29 11:19:08.627000', '2022-06-29 11:19:08.625000', 1, 1),
(9, 'Pink', '2022-06-29 11:19:17.227000', '2022-06-29 11:19:17.955000', '2022-06-29 11:19:17.952000', 1, 1),
(10, 'Putih', '2022-06-29 11:28:08.458000', '2022-06-29 11:28:09.495000', '2022-06-29 11:28:09.492000', 1, 1),
(11, 'Toska', '2022-06-29 11:28:24.033000', '2022-06-29 11:28:24.696000', '2022-06-29 11:28:24.693000', 1, 1),
(12, 'Army', '2022-06-29 11:28:30.019000', '2022-06-29 11:28:30.617000', '2022-06-29 11:28:30.614000', 1, 1),
(13, 'Coklat', '2022-06-29 11:31:26.053000', '2022-06-29 11:31:28.341000', '2022-06-29 11:31:28.338000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2022-06-29 09:08:01.428000', '2022-06-29 09:08:01.428000', NULL, NULL),
(2, 'Indonesian (id)', 'id', '2022-06-29 10:23:02.778000', '2022-06-29 10:23:02.778000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `stock`, `price`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `image`) VALUES
(1, 'Intel Core I3-10105F 3.7GHz up to 4.4GHz socket 1200 Comet Lake Box', 99, 2875000, 'PAKET PROC DAN MOTHERBOAED\ninclude\n\nProcessor Intel Core I3-10105F Box 3.7GHz LGA1200 - Intel I3 10105F\nMB ASUS PRIME H510M-D\n\nInfo Penting\nKoleksi Produk : Prosesor Intel® Core™ i3 Generasi ke-10\nNama Kode : Produk yang sebelumnya Comet Lake\nSegmen Vertikal : Desktop\nNomor Prosesor : i3-10105F\nStatus : Launched\nTanggal Peluncuran : Q1\'21\nLitografi : 14 nm\nKondisi Penggunaan : PC/Client/Tablet\n\nSpesifikasi CPU\nJumlah Inti : 4\nJumlah Untaian : 8\nFrekuensi Dasar Prosesor : 3.70 GHz\nFrekuensi Turbo Maks : 4.40 GHz\nCache : 6 MB Intel® Smart Cache\nKecepatan Bus : 8 GT/s\nIntel® Turbo Boost Technology 2.0 Frequency‡ : 4.40 GHz\nTDP : 65 W\n\nSpesifikasi Memori\nUkuran Memori Maks (bergantung jenis memori) : 128 GB\nJenis Memori : DDR4-2666\nJumlah Maksimum Saluran Memori : 2\nBandwidth Memori Maks : 41.6 GB/s\nMendukung Memori ECC ‡ : Tidak\n\nSpesifikasi Paket\nSoket yang Didukung : FCLGA1200\nKonfigurasi CPU Maks : 1\nSpesifikasi Solusi Termal : PCG 2015C\nTJUNCTION : 100°C\n\nTeknologi Canggih\nMemori Intel® Optane™ Didukung ‡ : Ya\nIntel® Thermal Velocity Boost : Tidak\nIntel® Turbo Boost Max Technology 3.0 ‡ : Tidak\nIntel® Turbo Boost Technology ‡ : 2.0\nPersyaratan Platform Intel® vPro™‡ : Tidak\nIntel® Hyper-Threading Technology ‡ : Ya\nIntel® Virtualization Technology (VT-x) ‡ : Ya\nIntel® VT-x dengan Extended Page Tables (EPT) ‡ : Ya\nIntel® TSX-NI : Tidak\nIntel® 64 ‡ : Ya\nSet Instruksi : 64-bit', '2022-06-29 11:00:16.906000', '2022-06-29 11:05:46.555000', '2022-06-29 11:05:46.549000', 1, 1, 'https://images.tokopedia.net/img/cache/200-square/LBbbUK/2021/10/18/f5bfa56a-bf92-46d2-af0f-1d3eb571c3dd.jpg'),
(2, 'INTEL CORE I5 11400 | Processor Intel Gen 11 LGA 1200 6 Core - Tray', 99, 2449000, 'Locked Multiplier, Fan Included, With Onboard Graphics\nIntel Core i5, Clock / Turbo: 2.6GHz / 4.4GHz, 12.0MB Smart Cache\nOcta (6) Core, Rocket Lake-S, 65W, LGA 1200', '2022-06-29 11:05:39.897000', '2022-06-29 11:05:40.702000', '2022-06-29 11:05:40.697000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/4/8/66dc408b-b28a-4255-8ce8-95fffc14ba97.jpg'),
(3, 'Intel Core i7-12700KF + MB ASUS ROG STRIX Z690-F GAMING WIFI', 99, 14452500, 'Intel Core i7-12700KF + MB ASUS ROG STRIX Z690-F GAMING WIFI\n\nCPU Specifications\n- Total Cores : 12\n- # of Performance-cores : 8\n- # of Efficient-cores : 4\n- Total Threads : 20\n- Max Turbo Frequency : 5.00 GHz\n- Intel® Turbo Boost Max Technology 3.0 Frequency : 5.00 GHz\n- Performance-core Max Turbo Frequency : 4.90 GHz\n- Efficient-core Max Turbo Frequency : 3.80 GHz\n- Performance-core Base Frequency : 3.60 GHz\n- Efficient-core Base Frequency : 2.70 GHz\n- Cache : 25 MB Intel® Smart Cache\n- Total L2 Cache : 12 MB\n- Processor Base Power : 125 W\n- Maximum Turbo Power : 190 W\n- Max Memory Size (dependent on memory type) : 128 GB\n- Processor Graphics : Not Available\n- Sockets Supported : FCLGA1700', '2022-06-29 11:10:14.179000', '2022-06-29 11:10:16.860000', '2022-06-29 11:10:16.856000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/11/15/675c12dc-c811-4683-aafe-ad1944df815f.jpg'),
(4, 'Samsung Galaxy A03s 4/64GB - Black', 99, 1675000, 'Samsung Galaxy A03s 4/64GB\n\n\nSpesifikasi:\n\n- Processor : MediaTek Helio P35\n- Size : 6.5\"\n- Technology : PLS LCD\n- Resolution : HD+\n- Rear Camera Resolution : 13.0 MP + 2.0 MP + 2.0 MP\n- Main Camera Auto Focus : Yes\n- Rear Camera - OIS : No\n- Rear Camera - Zoom : Digital Zoom up to 10x\n- Front Camera Resolution : 5.0 MP\n- Front Camera Auto Focus : No\n- Video Resolution : FHD (1920 x 1080) @30fps\n- RAM : 4GB\n- ROM : 64GB\n- SIM Tray : Dual-SIM\n- Network Type :4G\n- USB Interface : USB Type-C\n- USB Version : USB 2.0\n- Earjack : 3.5mm Stereo\n- Bluetooth Version : Bluetooth v5.0\n- NFC : No\n- Battery Capacity : 5000mAh\n- SamsungDex Support : No', '2022-06-29 11:21:25.007000', '2022-06-29 11:21:26.063000', '2022-06-29 11:21:26.052000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/6/8/449782e1-0d78-411b-a6e6-254a503bf2b1.jpg'),
(5, 'Samsung Galaxy Z Flip3 5G 8GB/256GB - Black', 99, 15999000, 'Samsung Galaxy Z Flip3 5G 8GB/256GB\n\nFree Limited Edition Rachel Ajeng Stickered Clear Casing, Strap, & Pouch\n*selama persediaan stok masih tersedia\n\nSpesifikasi:\n- Processor : Snapdragon 888\n- Main : \"6.7\"\" Dynamic AMOLED 2X, Infinity-O Display\"\n- Cover : 1.9\" Super AMOLED\n- Rear Camera Resolution : \"(Ultra Wide) 12.0 MP, (Wide) 12.0 MP\"\n- Front Camera Resolution : 10.0 MP\n- Cover Camera Resolution : -\n- Video Resolution : UHD 4K (3840 x 2160) @60fps\n- RAM : 8GB\n- ROM : 256GB\n- Network Type : 5G\n- Unfolded : 166 x 72.2 x 6.9 mm\n- Folded : 86.4 x 72.2 x 6.9 mm\n- Weight : 183 g\n- Battery Capacity : 3.300 mAh\n- Water Resistance : IPx8', '2022-06-29 11:24:54.055000', '2022-06-29 11:24:56.837000', '2022-06-29 11:24:56.833000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/4/27/f9fdedbe-ff1d-4ce3-8cad-23e464a24e6a.jpg'),
(6, 'Samsung Galaxy Tab S8 Ultra 5G 12/256GB', 99, 19999000, 'Promo Free Bookcover Keyboard (Claim via Samsung Gift Indonesia)\nPeriode Pembelian : 1-30 Juni 2022\n\nSpesifikasi:\n\n- Processor : Qualcomm Snapdragon 8 Gen 1\n- Size : 14.6 Inch\n- Technology :Super AMOLED\n- Resolution : WQXGA\n- Rear Camera Resolution : 13.0 MP + 6 MP\n- Main Camera Auto Focus : Yes - Rear Camera - OIS : No - Rear Camera\n- Zoom : Digital Zoom up to 10x\n- Front Camera Resolution : 12.0 MP + 12.0 MP\n- Front Camera Auto Focus : No\n- Video Resolution : UHD 4K (3840 x 2160) @30fps\n- RAM : 12GB\n- ROM : 256GB\n- SIM Tray : Dual-SIM\n- Network Type : 5G\n- USB Interface : USB Type-C\n- USB Version : USB 3.2 Gen 1\n- Earjack : 3.5mm Stereo\n- Bluetooth Version : Bluetooth v5.0\n- NFC : No\n- Battery Capacity : 11.2000mAh\n- Special Interface : S-Pen, Samsung DeX', '2022-06-29 11:25:50.630000', '2022-06-29 11:25:52.471000', '2022-06-29 11:25:52.468000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/6/10/f49e20b2-4738-4df4-97d6-a1606f3e8162.png'),
(7, 'Samsung Galaxy Buds2 - Onyx [Exclusive Color] - Onyx', 99, 1599000, 'Samsung Galaxy Buds2\n\nSpesifikasi:\n- ANC : Supported\n- Ambient : Amplify Ambient sound up to +9 dB, 0.5ms latecy\n- Speaker : 2-way\n- Call Quality : DNN + 3 Mics + VPU\n- Voice Wake-up : Seamless AI (Bixby)\n- Capacity : 61/472 mAh\n- Play Time : 5/20h (ANC ON), 7.5/14h (ANC OFF)\n- Talk Time : 3.5/13h (ANC ON), 3.5/14h (ANC OFF)\n- Connectivity : Auto Switching\n- Water Resistance : IPx2', '2022-06-29 11:26:39.796000', '2022-06-29 11:26:41.428000', '2022-06-29 11:26:41.425000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/5/25/69bc6722-20d4-4e12-9bf4-8301d9500b23.jpg'),
(8, 'Samsung Galaxy Watch4 Fresh (44mm) - Green', 99, 3299000, 'Samsung Galaxy Watch4 Fresh (44mm)\n\nSpesifikasi:\n- Operation System : Wear OS Powered by Samsung\n- Size : 1.4\"\n- Technology : Super AMOLED\n- Resolution : 450 X 450 px\n- RAM : 1.5 GB\n- ROM : 16 GB\n- Size : 44.4 x 43.3 x 9.8 t\n- Weight : 30.3 g\n- Battery Capacity : 361 mAh\n- Sensor : BIA Sensor, Compass, Photo Plethysmography, HRM, Electrocardiogram (ECG), Accelerometer (up to 32G), Gyro, Barometer, Ambient Light\n- Bezel : Digital Bezel\n- Button : 2 Buttons: Home Key, Back Key', '2022-06-29 11:27:59.663000', '2022-06-29 11:29:01.372000', '2022-06-29 11:29:01.368000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/1/21/668c03fb-66f7-47c7-8c03-b9b5118ad137.png'),
(9, 'Keychron K7 Hotswap RGB Backlight Low Profile Gateron Mechanical - Brown Switch', 99, 1485000, 'Keychron K7 RGB Backlight Low Profile Gateron Mechanical Hot-Swappable Switch\n\nKeychron K7 Ultra-slim Wireless Mechanical Keyboard\nThe K7 has included keycaps for both Windows and Mac operating systems.\nWorld’s first 65% ultra-slim wireless mechanical keyboard\n\n\nSPECIFICATION\n\n\nNumber of Keys: 68 keys\nLayout: ANSI\nVersion: Gateron / Optical / Hot-swappable\nSwitches: Low-profile Gateron mechanical / Low -profile Keychron Optical\nNumber of Multimedia Keys: 12\nFrame Material: ABS+Aluminum frame\nKeycap Material: ABS\n\nCONNECTIVITY AND POWER\n\n\nBacklit Types: 18\nBacklit: Adjustable 4-level RGB backlit\nSystem: Windows/Android/Mac/iOS\nBattery: 1550mAh Rechargeable li-polymer battery\nBT Working Time (Single LED): Up to 34 hours (Lab test result may vary by actual use)\nBT Working Time (RGB): Up to 34 hours (Lab test result may vary by actual use)\nConnection: Bluetooth and Type-C cable\nBluetooth version: 5.1\nBluetooth Device Name: Keychron K7\nCompatible System: macOS/Windows\n\nPHYSICAL UNIT\n\n\nDimension: 307 x 97.5mm\nHeight incl. keycap (rear) 22mm\nHeight incl. keycap (front) 18mm\nWeight: About 348.7g / 0.77lbs\nOperating Environment: -10 to 50℃\n\nPACKAGE CONTENT\n\n1 x Keyboard\n1 x USB-A to USB Type-C Cable\n1 x Keycap Puller\n1 x Switch Puller (For Hot-swappable version only)', '2022-06-29 11:31:48.082000', '2022-06-29 11:31:50.130000', '2022-06-29 11:31:50.127000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/11/23/7f37712f-3cf1-4afb-afad-a29042041ac7.jpg'),
(10, 'EBISU PBT Doubleshot Keycaps Keycap Set', 99, 449000, 'HANYA KEYCAPS, TIDAK BERIKUT KEYBOARD.\n\nPERHATIAN: Pembeli diharapkan tanggung jawab sendiri untuk mencari tahu tentang layout dan fit keyboard masing-masing.\n\nKami akan memberi rekomendasi dan masukan sebisa kami, namun jika layout atau stem tidak cocok kami tidak bisa terima refund atau ganti unit. Melakukan check out berarti sudah mengerti dan menyetujui syarat ini.\n\nEBISU Doubleshot PBT Keycaps sudah di packaging menggunakan TRAY + BOX.\n\nSpecs:\n- Cherry profile\n- Ketebalan keycap 1.4mm\n- Doubleshot PBT material (tidak berminyak, tidak fading)\n- 171 total keycaps\n- Include extra accent key warna biru tua: Esc, F5-F8, Backspace, Prtsc, Scrlk, Pause, Enter, Arrow Keys, 6.25 Spacebar\n- Include 1.75u shift, 1u ctrl, alt, fn, and more\n- Include 6u & 7u spacebar\n- Include 2.75u & 2.25u split Spacebar\n- Include keycap puller\n\nJadwal Pengiriman:\nSenin - Sabtu : Pesenan sebelum Jem 12 siang akan dikirim hari yang sama\nMinggu & Hari Libur: Tutup (tidak ada pengiriman)\n\nPesanan yang sudah di proses (pesanan diterima) tidak bisa di batalkan lagi.', '2022-06-29 11:34:01.703000', '2022-06-29 11:34:02.685000', '2022-06-29 11:34:02.636000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/5/14/82fc96c4-1382-4d88-b07b-7b2f6272a99a.jpg'),
(11, 'Digital Alliance Keyboard Gaming Meca 6 GREY WHITE RGB LED Colors - Switch Red', 99, 399000, 'UNTUK PROSES KLAIM/KOMPLAIN\n\nClaim harus disertakan bukti video Unboxing dari awal kamu buka packingan\nsampai barang terlihat dan kamu cek kalau tidak disertakan video Unboxing kami tidak bisa bantu\n\n\nMECA 6 RGB\n\nMain Feature\n\n• 60% Layout Mini Keyboard\n• Magnetic Frame Cover\n• RGB LED Light\n• Outemu Removable Switch\n• Type-C Detachable\n• Tricolor Keycaps Combination\n\nType : Mechanical 61Keys Mini Layout\nColor : White\nMaterial : ABS with Metal Plate\nWeight : 486±gr\nDimension (L x W x H) : 297 x 107 x 39mm\nInterface : Detachable Type-C\nKeycaps : Double Injection\nCable Length : 1.2m Braided Magnet Ring with Copper Plate\nBacklight : Yes, RGB LED Colors with 18 mode\nSoftware : No\nPolling Rate : 1000Hz\n\nSwitch :\nSwitch Name : Outemu Removable Switch\nSwitch Color : Blue, Red & Brown\nType Feel : Clicky, Linear & Tactile\nLifespan : 50 million times\n\nNote : Paling berisik blue switch suara kliklnya\nBrown n red switch hampir sama silent suara kliknya hanya beda kecepatan transfer input\nnya aja ...Red switch lebih cepat kecepatannya dikit', '2022-06-29 11:35:11.605000', '2022-06-29 11:35:12.706000', '2022-06-29 11:35:12.704000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/2/16/13d86158-8aab-4130-95c8-ec74146acbb9.jpg'),
(12, 'Razer DeathAdder Essential Gaming Mouse', 99, 213000, 'Keuntungan dan Kelebihan Berbelanja di Official Store ?\n\n✅ RAZER STORE adalah Official Brand StoreＲΛＺΞＲ E-commerce ( RESMI ) di Indonesia\n✅ Karena kami Official Store pengurusan Garansi akan jauh lebih mudah , cepat dan terjamin\n✅ Barang 100% ORIGINAL, GARANSI RESMI Razer Indonesia sampai 2 TAHUN ( Tidak Asli Uang Kembali)\n✅ Barang yang dijual semua pasti barang baru BNIB dan BERSEGEL\n✅ Potongan CASHBACK dan PROMO menarik lainnya hanya bisa didapatkan di Toko kami ????\n✅ Disarankan menggunakan Asuransi pengiriman untuk menghindari resiko pengiriman\n\nNote :\n\n● Barang pasti ready , Diproses setiap harinya\n● Bergaransi Resmi dari Razer Indonesia selama 2 tahun\n● Packingan pasti aman di Bubble Wrap + Lapis Kardus TANPA biaya tambahan\n● Pengiriman Grab dan Gojek akan dipick up sepagi2 nya jam 10 pagi\n● Pengiriman menggunakan ekspedisi ( Anter Aja, Si Cepat, JNE ) akan diproses di hari yang sama untuk order sebelum jam 17.00\n\nＲΛＺΞＲ by Gamers. for Gamers.\n\nDeskripsi Produk :\n\nTrue 6,400 DPI Optical Sensor\nErgonomic Form Factor\n5 Hyperesponse Buttons\n10 million-click life cycle\nProven history of performance\n\nTECH SPECS:\n\nFORM FACTOR: Right-Handed\nCONNECTIVITY: Wired - Standard Cable\nBATTERY LIFE: None\nRGB LIGHTING: Single-Color Green Lighting\nSENSOR: Optical\nMAX SENSITIVITY (DPI): 6400\nMAX SPEED (IPS): 220\nMAX ACCELERATION (G): 30\nPROGRAMMABLE BUTTONS: 5\nSWITCH TYPE: Mechanical\nSWITCH LIFECYCLE: 10 Million Clicks\nON-BOARD MEMORY PROFILES: None\nMOUSE FEET: Standard Stock Feet\nTILT SCROLL WHEEL: No\nSIZES: Length x Grip Width x Height 5\" x 2.43\" x 1.68\" 127.0 mm x 61.7 mm x 42.7 mm\nWEIGHT: 0.211 lbs / 96 g\nDOCK COMPATIBILITY: None', '2022-06-29 11:36:09.537000', '2022-06-29 11:36:33.831000', '2022-06-29 11:36:10.415000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/10/7/ed9e8bf9-0c1d-446f-8c20-e6cfe5d99472.png'),
(13, 'Mouse Lenovo M20 Optical USB', 99, 15500, 'Mouse Lenovo M20 Optical USB\n\nReady Hitam\n\nPanjang Kabel 1,4Meter', '2022-06-29 11:37:22.323000', '2022-06-29 11:37:43.810000', '2022-06-29 11:37:23.259000', 1, 1, 'https://images.tokopedia.net/img/cache/900/product-1/2017/5/24/381831/381831_68f00a24-74cd-40a4-841d-b42010e9de33.jpg'),
(14, 'Mouse Gaming/ Gaming Mouse Terlaris HP M160 - USB 1000DPI RGB 3 Button - Biru', 99, 59000, 'SELAMA PRODUK MASIH TAMPIL BERARTI READY YA, SILAHKAN DIORDER!\n\nSpecifications :\n- Connection Type : USB Wired\n- DPI : 1000DPI\n- Number of Buttons : 3 Button\n- Rating Voltage / Current : DC 5V/<80mA\n- Supported Operating Systems : Windows XP, Windows7, Windows8 and Windows10\n- Cable Length : 1.3M (PVC Cable)\n- Plug and Play\n- Unpackaged Product Dimension : 118.5mm (L) x 64mm (W) x 37mm (H) +- 0.5mm\n- Unpackaged Product Weight : 110g (Include Cable and Wrighting Block)\n- RGB LED\n\nGaransi Distributor 1 Tahun', '2022-06-29 11:39:18.805000', '2022-06-29 11:39:20.121000', '2022-06-29 11:39:20.115000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/11/30/634e0e95-e8c8-4fd9-a492-c3b65f961c35.jpg'),
(15, 'Headset | Headphone | Headset Bando | JETE HB8 - Garansi 1 Tahun', 99, 98100, 'Garansi 2 Tahun Rusak Ganti Baru | Tukar Sepuasnya\n\nAlasan Kenapa Harus Beli di Jete Indonesia:\n1. Barang Asli, Baru dan Bergaransi Resmi (Gratis kalo tidak Original)\n2. Selalu Ready Stock dan Siap Kirim\n3. Packing Aman dan Rapi\n4. Pengiriman Tepat Waktu\n5. Pelayanan Ramah dengan Product Knowledge yang Baik\n6. Proses Klaim Garansi Mudah & dibantu Hingga Selesai\n7. Banyak Bonus dan Voucher Cashback yang didapatkan\n8. Memiliki Cabang Toko Resmi Offline yang tersebar di seluruh Indonesia\n\n6 Keunggulan dari Headset HB8\n\n1. Desain Premium dan Ringan\nDidesain dengan menggunakan material berkualitas tinggi dengan paduan warna hitam dan merah membuat headset ini premium serta bahannya ringan jadi nyaman di pakai dalam waktu lama\n\n2. Adjustable Headband\nDesain headband yang mudah di sesuaikan dengan bentuk kepala sehingga lebih nyaman dalam pemakaian serta bobot yang sangat ringan membuat tidak mudah capek\n\n3. Earpads Lembut\nBantalan earpads headphone ini super lembut dan pas di telinga sehingga nyaman di buat dalam jangka waktu lama\n\n4. Suara Terbaik\nKualitas suara yang dihasilkan dari headphone ini sangat memukau dan sangat terasa bassnya\n\n5. Noise Cancelling\nDengan fitur ini membantu untuk meredam suara disekitar saat mendengarkan musik favorit\n\n6. Smart Button\nDengan dibekali kabel aux 1.5 meter dengan smart button yang dapat menerima panggilan, pause/play musik favorit Anda\n\n\n➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖\nSpesifikasi Headset Jete\n???? Merk : Jete\n???? Model : HB8\n???? Driver Unit : 40mm\n???? Plug Type : 3.5mm\n???? Frequency Response : 20-20KHZ\n???? Microphone : Yes\n???? Cable Length : 1.2m\n???? Sensitivity : 116dB?±3dB\n???? Max Input Power : 35mW\n???? Color : Hitam\n➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖\n\n???? Syarat Dan Ketentuan Klaim GARANSI\n☑ Garansi tidak berlaku jika :\n- Tidak ditemukan adanya kerusakan\n- Kerusakan akibat dari kesalahan pemakaian ( terjatuh, tergores, ternoda, pecah, terkena air,dan lain lain)\n', '2022-06-29 11:41:21.864000', '2022-06-29 11:41:23.012000', '2022-06-29 11:41:23.006000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/4/13/22b32d7e-29ac-41c6-a336-54353997d0f0.jpg'),
(16, 'Rexus Headset Gaming Thundervox Stream HX20 - Hitam', 99, 395000, 'tambahkan EXTRA Kardus tambahan agar paket km lebih aman\nhttps://www.tokopedia.com/rexusid/extra-kardus-tambahan-khusus-produk-rexus\n\njika di rasa masih kurang aman bs di tambahkan jg EXTRA Bubble\nhttps://www.tokopedia.com/rexusid/extra-bubble-tambahan-khusus-produk-rexus\n\n*Converter USB to Type C utk penggunaan ke HP yg sudah support OTG\nhttps://www.tokopedia.com/rexusid/rexus-converter-usb-to-type-c\n\nHeadset Gaming Rexus Thundervox HX20\nGive The Best for Your Ear\n\nFitur Unggulan\nEarpad yang Nyaman dan Fungsional\nEarpad Rexus Thundervox HX20 didesain oval sehingga sangat pas saat digunakan di telinga. . Busa earpad ini juga tebal dan empuk, serta berfungsi sebagai peredam bising dari luar.\n\nMikrofon Sensitif dan Dapat Dilepas\nRexus Thundervox HX20 didukung dengan replaceable microphone yang sensitif dan menghasilkan suara yang detil. Mikrofon semi-condenser ini dapat dikoneksikan di HP atau perangkat perekam lain secara langsung untuk menangkap suara rekaman\n\nTeknologi Virtual Surround 7.1\nTeknologi ini sudah kerap digunakan pada gaming headset. Fungsinya adalah untuk mengubah karakteristik suara stereo menjadi surround\n\nDigital Equalizer\nRexus Thundervox HX20 dilengkapi dengan ekualiser digital di perangkat lunaknya. Untuk mengatur suara dan efek suara agar sesuai dengan keinginan dan kebutuhan pengguna. Terdapat pengaturan ekualiser 3D untuk membuat efek terbuka atau tertutup\n\nKarakteristik Suara Riil\nRexus Thundervox HX20 mengunggulkan karakteristik suara yang riil dan detil. Dengan karakteristik suara seperti itu, indera pendengaran kita akan dipermudah saat menganalisa pergerakan musuh saat bermain game\n\nSpesifikasi\nDimensi: 190x230x110mm\nDaya keluaran rata-rata：100mW\nTegangan masuk: 5V\nDiameter driver: 50mm\nRentang frekuensi: 20 – 20.000Hz\nSensitivitas: 108dB\nImpedansi: 32Ω\nPanjang kabel: 2,1 meter\nTipe konektor: USB\n\nMikrofon:\nDiameter mic: 4 x 1,5mm\nRentang frekuensi: 50 – 10.000Hz\nSensitivitas: -48±3dB\n\nRexus Made For Everyone!', '2022-06-29 11:42:06.479000', '2022-06-29 11:42:07.526000', '2022-06-29 11:42:07.521000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/6/18/693d9455-4f37-4010-928e-6a193ff520be.png'),
(17, 'Headset Gaming Rexus Thundervox HX9 - Headphone RGB 7.1 Surround - Putih', 99, 235000, 'Dapatkan product ASLI hanya di Jaya PC.\nhttps://www.tokopedia.com/jayapc\n\nHeadset Gaming Rexus Thundervox HX9 - Headphone RGB 7.1 Surround\n\nGaransi Resmi 1 Tahun\n\nFitur Unggulan\nEarcup yang Nyaman dan Fungsional\nEarpad Rexus Thundervox HX9 didesain oval sehingga sangat pas saat digunakan di telinga. Earpad tersebut terbuat dari kulit sitentis yang sangat lembut sehingga nyaman dipakai dan tidak menyebabkan iritasi kulit di sekitar telinga. Busa earpad ini juga tebal dan empuk, serta berfungsi sebagai peredam bising dari luar.\n\nMikrofon Sensitif\nRexus Thundervox HX9 didukung dengan replaceable microphone yang sensitif dan menghasilkan suara yang detil. Dengan empat titik driver, mikrofon headset ini dapat menangkap suara dari beberapa arah sekaligus dan dapat disesuaikan posisinya berkat penggunaan tongkat mikrofon yang fleksibel.\n\nKarakter Suara Surround untuk Gaming\nRexus Thundervox HX9 mempunyai karakter suara surround yang didesain selayaknya sebuah headset gaming murni dengan suara flat sehingga seluruh detail dalam game dapat terdengar dengan jelas.\n\nSpesifikasi\nDiameter driver: 50mm\nImpedansi: 32Ω\nSensitivitas: 110dB ± 3dB\nRentang frekuensi: 20 – 20.000Hz\nPanjang kabel: 2 meter\nTipe konektor: Jack USB tunggal\nKompatibilitas OS: Windows/IOS\n\nMikrofon\nDiameter mikrofon: 4 x 1,5mm\nSensitivitas: -48±3dB\nImpedansi: 2.2KΩ', '2022-06-29 11:42:46.092000', '2022-06-29 11:42:47.010000', '2022-06-29 11:42:47.006000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/8/10/4e2aacd6-f314-4f8a-9e25-8026afcbcbf5.jpg'),
(18, 'ASUS ROG STRIX G17 G713RC - R735B6G-O - Geforce RTX3050-R7-6800H GREY', 99, 20499000, 'Step Up To The Power of 2nd Generation RTX with GeForce RTX 3050 Laptop Family\n\nGraphics : NVIDIA® GeForce RTX™ 3050 : 4GB GDDR6\nDisplay : 17.3-inch FHD (1920 x 1080) 16:9 anti-glare display sRGB: 62.5% Refresh Rate: 144Hz Value IPS-level Adaptive-Sync\nProcessor : AMD Ryzen™ 7 6800H (8-core/16-thread, 20MB cache, up to 4.7 GHz max boost)\nMemory : 8GB DDR5-4800 SO-DIMM\nStorage : 512GB M.2 NVMe™ PCIe® 4.0 SSD\nOptical Drive : -\nOperating System : Windows 11 HOME + OHS 2021\nCamera : -\nAudio : ASUS Technology\nNetworking : Wi-Fi 6(802.11ax)+Bluetooth 5.1 (Dual band) 2*2\n\nSlots/Interface :\n1x 3.5mm Combo Audio Jack\n1x HDMI 2.0b\n3x USB 3.2 Gen 1 Type-A\n1x USB 3.2 Gen 1 Type-C support DisplayPort / power delivery\n\nBattery : 90WHrs, 4S1P, 4-cell Li-ion\nPower Adapter :-\nSystem Dimensions : 35.4 x 25.9 x 2.26 ~ 2.72 cm\nWeight: 2.3Kg\nWarranty : 2 Years Asus Indonesia Warranty\nBonus : ROG Backpack', '2022-06-29 11:46:00.896000', '2022-06-29 11:46:01.917000', '2022-06-29 11:46:01.909000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/6/25/63697e71-5aef-4a90-80a8-57c0ef3208db.png'),
(19, 'ACER PREDATOR HELIOS 300 PH315 - RTX3070 I9 11900H 16GB 512SSD 15.6QHD - Non Bundle', 99, 26549000, 'Selamat Datang Di Intel Gaming ID Official\nSemua Produk Yang Kami Jual Bergaransi Resmi 100% dan DIJAMIN Original.\nJam Operasional : Senin - Sabtu : 09.00 - 18.00 WIB\nHari Minggu dan tanggal merah tertentu : Libur.\n\nACER PREDATOR HELIOS 300 PH315 I9 11900H 16GB 512SSD RTX3070 6GB W11+OHS 15.6QHD 165HZ 4ZRGB TGP110 3YR BLK -54.94U7\n\nSpesifikasi :\n- Intel Core i9-11900H\n- RAM 16GB DDR4\n- 512GB SSD\n- RTX3070 6GB\n- Screen 15.6\"QHD 165Hz\n- 4ZONE RGB\n- TGP 110W\n- OS Windows 11\n- FREE OFFICE HOME STUDENT ORIGINAL\n\nGARANSI : 2 TAHUN RESMI\nGaransi Toko 3 Hari sejak barang di terima customer jika ada kerusakan yg diakibatkan cacat pabrik.\n( NOTE : GARANSI TOKO BISA DIKLAIM JIKA OHS BELUM DIAKTIFKAN )\n\nKELENGKAPAN :\nUnit Laptop, Charger, Kartu Garansi, Dus/Box\n\nBUNDLING + PAKET :\nNikmati promo Pembelian Bundling Paket Antigores Screen Protector+Laminating Body hanya dengan menambah 200rb rupiah anda mendapatkan Screen Protector ukuran 11.6\"/13.3\"/14\"/15.6\" yg sesuai dengan ukuran laptop yg anda beli.\nBERGARANSI LIFETIME untuk Paket Antigoresnya.\nPembelian unit laptop baru yang di sertakan Bundling Paket Antigores tersebut awet untuk pemakaian jangka panjang dan pemasangan dilakukan oleh teknisi Profesional.\n\nNOTE :\n- Pesanan yang masuk akan kami proses sesuai antrian, Mohon Bersabar.\n- WAJIB tanyakan stok sebelum melakukan Checkout.\n- Sertakan warna cadangan, jika stok yang dipesan habis tanpa ada warna cadangan akan kami kirim random.\n- Pengiriman Via Kurir Instant Maksimal Order Pukul 15.00 ( Senin - Sabtu ), Jika pesanan sedang overload dikirim hari berikutnya.', '2022-06-29 11:46:39.775000', '2022-06-29 11:46:40.797000', '2022-06-29 11:46:40.788000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/3/28/1afb006d-e831-4ccf-b8c0-6dfd530bfa68.png'),
(20, 'Lenovo Legion 5 Ryzen 7 5800H RTX3060 512GB SSD 16GB Win10+OHS - Storm Grey', 99, 20894000, 'The Ultimate Play Geforce RTX30 series Laptop with 2nd gen RTX (RT & AI)\nNVIDIA GeForce RTX 3060 6GB GDDR6, Boost Clock 1425 / 1702MHz, TGP 130W\n\nPart Number :\n82JU00RPID - Phantom Blue (top), Shadow Black (bottom)\n\n\nAMD Ryzen 7 5800H (8C / 16T, 3.2 / 4.4GHz, 4MB L2 / 16MB L3)\nNVIDIA GeForce RTX 3060 6GB GDDR6, Boost Clock 1425 / 1702MHz, TGP 130W\n2x 8GB SO-DIMM DDR4-3200\nTwo DDR4 SO-DIMM slots, dual-channel capable\nUp to 32GB DDR4-3200 offering\n512GB SSD M.2 2280 PCIe 3.0x4 NVMe\nStorage Support\nUp to two drives, 2x M.2 2242/2280 SSD\n• M.2 2242 SSD up to 512GB\n• M.2 2280 SSD up to 1TB\nHigh Definition (HD) Audio, Realtek ALC3306 codec\nStereo speakers, 2W x2, Nahimic Audio\nCamera: 720p with E-camera Shutter\nMicrophone: 2x, Array\nBattery: Integrated 80Wh\nPower Adapter : 300W Slim Tip\n15.6\" FHD (1920x1080) IPS 300nits Anti-glare, 165Hz, 100% sRGB, Dolby Vision, Free-Sync, G-Sync, DC dimmer\nKeyboard 4-Zone RGB LED backlit, English\nCase Color: Phantom Blue\nSurface Treatment: Painting\nCase Material: PC + ABS (Top), PC + ABS (Bottom)\nDimensions (WxDxH): 362.56 x 260.61 x 22.5-25.75 mm\n\nEthernet: 100/1000M\nWLAN + Bluetooth: 11ax, 2x2 + BT5.1\n\nStandard Ports:\n\n1x power connector\n1x USB-C 3.2 Gen 2 (support data transfer, Power Delivery and DisplayPort 1.4)\n1x Ethernet (RJ-45)\n1x USB-C 3.2 Gen 2 (support data transfer and DisplayPort 1.4)\n1x headphone / microphone combo jack (3.5mm)\n1x HDMI 2.1\n4x USB 3.2 Gen 1 (one Always On)\n\n\nOS: Windows 11 Home, English\n\nBonus: Backpack + Mouse Legion + Office Home and student 2021', '2022-06-29 11:47:24.038000', '2022-06-29 11:47:25.092000', '2022-06-29 11:47:25.087000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/4/29/18c91dbc-bd6b-4192-beb0-41010dbe7ca1.jpg'),
(21, 'ASUS TUF Gaming F15 FX506HCB Core i7-11600H 16GB 512GB SSD RTX3050 - NON Bundling', 99, 15599000, 'Step Up To The Power of 2nd Generation RTX with GeForce RTX 3050 Laptop Family\n\n???? KLIK LINK DIBAWAH INI UNTUK EXTRA BUNDLING LAPTOP\nhttps://www.tokopedia.com/agusidstoreapple/etalase/tambahan-pembelian\n\n???? KLIK LINK DIBAWAH INI UNTUK UPGRADE RAM DAN PAKET INSTALL APLIKASI :)\nhttps://www.tokopedia.com/agusidstoreapple/etalase/paket-install-dan-upgrade-ram\n\n\nGRATIS BIAYA PEMASANGAN RAM\n\n\nASUS TUF i7 FX506HC-I735B8T-O11 (i7-11600H/16GB/512GB SSD NVMe M.2/RTX3050 4GB/15.6\" FHD IPS 144Hz/Win11+OHS2021/Graphite Black/Backlit KB RGB/2Y+1Y Perfect)\n\n\n\n\nMengenai varian:\nNon Bundle = Tidak dapat bonus yang seperti digambar\nBundle Mouse = Dapat Bonus Mouse Logitech G102\n\n\nSetiap pembelian unit di \"AGUS ID STORE\" Official Store\nCASHBACK HINGGA 400RB\n\n\n⚠️Kenapa harus beli laptop di AGUS ID STORE ?\n\n- Produk kami 100% ORIGINAL\n- Uang kita kembalikan 2x lipat kalau barang tidak original\n- GARANSI RESMI Indonesia\n- BNIB (Brand New In Box) barang segel\n- Kami memiliki TEAM AFTERSALES buat bantu klaim garansi\n- Reseller / dropshipper are welcome\n\n\n???? Fast Respon WA : *0821 2247 9856\n\n\nGARANSI:\n- Resmi Asus Indonesia 2 Tahun\n- Perfect Warranty (Accidental Damage Protection) 1 Tahun\n\nFREE: Asus Tuf Gaming Backpack selama persediaan masih ada\n\nSPESIFIKASI PRODUK:\n- GPU : NVIDIA GeForce RTX 3050 Laptop GPU 4GB\n- CPU : Intel Core i7-11600H (Cache 18 MB, hingga 4,60 GHz)\n- Display : 15.6-inch LED Backlit FHD (1920 x 1080) 16:9 250 nits anti-glare panel\n- RAM : 16GB DDR4\n- Storage : 512GB M.2 NVMe PCIe 3.0 SSD\n- OS : Windows 11 Home\n- Software: Microsoft Office Home Student 2021 Life Time\n- Keyboard : Backlit Chiclet Keyboard RGB\n- Wifi : Wi-Fi 6(802.11ax)+Bluetooth 5.2 (Dual band) 2*2\n\n\nSlots/Interface :\n\n1x Type-C USB 4,\n3x USB 3.2 (Gen 1) Type-A,\n1x Type C USB 3.2 (Gen 2) with Display Port\n1X HDMI\n1X RJ45\nBattery : 48WHrs, 3S1P, 3-cell Li-ion', '2022-06-29 11:48:02.874000', '2022-06-29 11:48:03.886000', '2022-06-29 11:48:03.881000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/6/26/07f8f975-137e-40f9-a7a4-097ba7be2755.png'),
(22, 'COOCAA LED TV 32 INCH -ANDROID 11.0- Digital TV - 2.4G/5G WIFI (32S7G)', 99, 2149000, 'Detail produk dari COOCAA LED TV 32 INCH - ANDROID 11.0 - Digital TV - 2.4G/5G WIFI (Coocaa 32S7G)\n\nCertified Android 11.0 with google assistant\nClear and Bright 32 inch LED screen with HD (1366*768)\nGraphic Processing Unit Mali G31MP2\nSupport Bluetooth 5.0\nSupport Chrome cast\nFrameless Design\nCertified Netflix\nCertified Youtube\nAnalog & Digital TV DVB T/T2 , DVB-C\nUSB 2* (V2.0), HDMI 2* V2.0b, LAN 1*\nPower Consumption 60W\nSize : 720.7 x 464.81 x 177.61 (mm)\nSupport video format :MPG/MPEG1/MPEG2/MPEG4/H.263/H.264/MP4/MKV/AVI/ASF/FLV\nSupport image format : BMPJPEGPNG\nSupport audio format :MP3/AAC/HEAAC/LPCM/IMA-ADPCM/MS-ADPCM\n3 Years Panel Warranty + 1 Year Sparepart', '2022-06-29 11:49:03.576000', '2022-06-29 11:49:04.824000', '2022-06-29 11:49:04.819000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/6/24/5cd8f5ff-0bce-485b-b7ff-e631e0706d70.jpg'),
(23, 'Samsung Smart TV 85 inch Neo QLED 8K QN900B', 99, 119000000, '- Quantum Matrix Technology pro\n- Neural Quantum Processor 8K\n- Infinity Screen\n- Dolby Atmos®\n- Real 8K Resolution\n- Anti Reflection\n- EyeComfort Mode\n- Real Depth Enhancer\n- Motion Xcelerator Turbo\n- FreeSync Premium Pro\n- Object Tracking Sound Pro (OTS Pro)\n- Attachable Slim One Connect\n- Infinity One Design\n- Smart Hub\n- SmartThings\n- Video Call Application', '2022-06-29 11:49:39.417000', '2022-06-29 11:49:40.356000', '2022-06-29 11:49:40.353000', 1, 1, 'https://images.tokopedia.net/img/cache/900/hDjmkQ/2022/4/27/4d337822-b105-49d6-bd6b-5c436bb6a560.jpg'),
(24, 'XIAOMI Mi TV 4 32\'\' Bezel-less SMART TV - ELA4554ID', 99, 2529000, 'XIAOMI Mi TV 4 32\'\' Bezel-less - ELA4554ID\n\nDisain tanpa bingkai\nTemukan keanggunan layar tanpa bingkai dan kemewahannya yang lebih inovatif. Bezel yang dihilangkan dari setiap sisinya menawarkan lebih banyak ruang untuk hiburan sehingga menjadikannya sebuah karya seni yang tidak bisa diabaikan, seperti sebuah lukisan, sangat original. Anda akan mendapatkan rasio STB 93% yang mengesankan dengan Mi TV 4 32 \" baru yang tanpa bingkai\n\nGambar Tajam\nDituning dengan kesempurnaan, menambah kealamian gambar. Sebuah paket lengkap software dan hardware yang sudah dikuasai selama bertahun-tahun. Visual yang sangat sederhana namun elegan. Sangat memanjakan mata.\n\nResolution：1366 x 768\nViewing Angle：178°\nRefresh Rate：60Hz\nResponse Time：6.5ms(Typ)\nAudio power2×10W\nUSB:2.0×3\nEthernet:1\nAV:1\nHeadphone:1\nHDMI:3（1 contain ARC）\nVideo decoder :H.265, H.264, Real, MPEG1/2/4\nImage decoder : PNG，GIF，JPG\nAudio decoder : DTS-HD\nPatchWall with Android TV\nVoltage：100-240V～50/60Hz\nPower：50W\nOperating-Environment：\nTemperature 0℃～45℃，Humidity 20%～80%\nStorage temperature -15℃～45℃，Relative humidity <80%', '2022-06-29 11:50:15.102000', '2022-06-29 11:50:16.021000', '2022-06-29 11:50:16.017000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/4/8/75d1a724-098d-4860-920a-c2a96a4cb90a.jpg'),
(25, 'Bardi Smart Home Door Lock Handle RFID Fingerprint Waterproof IP54 CBG', 99, 1789000, 'BARDI Smart Door Lock with Handle adalah gagang pintu berikut kunci yang bisa di memberikan password sementara melalui aplikasi (dengan memasukan password sementara), pakai kunci RFID, pin, kunci tradisional dan fingerprint.\n\nKunci ini dilengkapi dengan waterproof IP54 yaitu dapat kena tampias hujan tapi tidak tahan terhadap curahan hujan (splash proof bukan waterproof).\n\nTidak hanya terbatas pada satu pengguna, seluruh penghuni rumah (Maksimal 20 orang dengan fingerprint) dapat turut mengendalikan door lock ini.\n\nKunci dan Buka Kunci Pintu dengan 4 Cara :\nPassword\n(Dengan pengaturan asli, kunci dapat dibuka dengan sidik jari, kartu apapun, atau kata sandi \"1234567890\" yg akhiri dengan tanda \"#\"\n\nFingerprint\nTak perlu khawatir apabila terjadi gangguan pada koneksi wifi, door lock ini dapat mengunci dan membuka kunci pintu secara manual dengan menggunakan sensor sidik jari. (Mampu menyimpan up to 20 sidik jari atau fingerprint)\n\nKartu RFID\nmampu membuka pintu secara praktis dengan kartu RFID, tinggal tempel pada pintu dan pintu otomatis terbuka. (Terdapat 2 buah kartu RFID dalam paket pembelian)\n\nKunci Manual\nselain dengan cara diatas, Bardi Smart Doorlock juga dilengkapi dengan kunci manual\n\nSistem Self-Locking : Jika password yang dimasukkan salah sebanyak 5 kali berturut-turut, door lock akan terkunci selama 180 detik dan hanya sidik jari atau kartu RFID yang dapat membuka kunci.\n\nBardi Smart Doorlock juga akan terkunci otomatis dalam waktu 3 detik jika didiamkan, jadi keamanan akan terjaga.\n\nApabila daya door lock mulai menipis, door lock akan memberikan peringatan berupa alarm, kegagalan jaringan aplikasi, serta pembatasan jumlah pembukaan kunci door lock menjadi sebanyak 50 kali saja. Pengisian Daya Darurat Pada bagian bawah door lock terdapat port Micro USB yang berfungsi untuk pengisian daya darurat. Sambungkan power bank dengan kabel micro USB untuk mengisi daya.', '2022-06-29 11:54:46.036000', '2022-06-29 11:54:47.347000', '2022-06-29 11:54:47.344000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/1/16/effdd91f-611b-4703-8cfb-d8b9b8fe0bc9.jpg'),
(26, 'BARDI Smart BULB LED RGB+WW 12W Wifi Wireless IoT Home Automation', 99, 101990, '- Ready gojek/grab 7hari termasuk hari libur selalu kirim\n- Distributor Resmi - Ga perlu kawatir\n- Garansi Resmi 1 Thn (Sesuai invoice Tokopedia)\n- Barang Original Bardi (BNIB) Brand New in Box\n- Jika ada kerusakan / klaim garansi bisa langsung ke Bardi (Ongkir klaim ditanggung pembeli sepenuhnya)\n\n\nBARDI SMART LIGHT BULB adalah lampu yang di kontrol oleh aplikasi via wifi.\nProduk [BARDI] sangat cocok dengan Google Home & Amazon Alexa & Siri melalui aplikasi Bardi Smart Home\n(download free on playstore / app store)\n\nFeatures:\n1) Wireless WiFi control\n2) 2700 - 6500 kelvin (warm-cool white)\n3) 16 million color light\n4) Timing, delay switch\n5) Multiple scenarios\n6) Support Alexa Echo & Google home\n7) Support Siri & Google Assist from HP\n8) Can be controlled by multiple user\n9) 12W = 1110Lumens\n\nSpesifikasi :\nLumens : 1110 Lm\nPower : 12 watt\nWIFI : IEEE 802.11 b/g/n 2.4GHz\nSistem Suport : IOS & Android OS\nDimensi : 70 x 70 x 115mm\nBerat : 180gr\nVoltase : 240Volt 60Hz\nMasa Pakai : 50.000 jam\n\n-------------\n\nProduk ini sering di gunakan untuk:\n\nLampu kamar yang dapat di redupkan hingga 111 lumens jadi lampu tidur dan di terangkan hingga 1110 lumens sesuai alarm bangun yang sudah di skedulkan\n\nLampu ruang makan yang dapat di buat kuning hingga 2700K jadi lampu makan dan di atur putih hingga 6500K jadi lampu belajar/kerja\n\nLampu ruang main/hobby/karaoke yang dapat di buat kombinasi hingga 16jt RGB\n\nLampu balkon yang dapat di skedul mati nyala sesuai kebiasaan dan juga bisa di kendalikan dari jarak jauh agar terkesan ada orang di rumah selagi liburan keluar negeri', '2022-06-29 11:55:52.004000', '2022-06-29 11:55:53.142000', '2022-06-29 11:55:53.136000', 1, 1, 'BARDI Smart BULB LED RGB+WW 12W Wifi Wireless IoT Home Automation'),
(27, 'BARDI Smart IP CAMERA CCTV 360 INDOOR PTZ PAN TILT ZOOM Wifi HOME', 99, 385000, '- READY gojek/grab 7hari termasuk hari LIBUR selalu kirim\n- Distributor Resmi - Ga perlu kawatir reseller abal2\n- Garansi Resmi 1 Thn (Sesuai invoice Tokopedia)\n- Barang Original Bardi (BNIB) Brand New in Box\n- Jika ada kerusakan / klaim garansi bisa langsung ke BARDI seluruh Indonesia\n\nUntuk link microSD card:\n64Gb bisa rekam 5-8 hari https://www.tokopedia.com/bardijakarta/micro-sd-v-gen-64gb-class-10-turbo-100mb-s-non-adaptor-memory-card\n\n128gb bisa rekam 14-18 hari https://www.tokopedia.com/bardijakarta/micro-sd-v-gen-128gb-class-10-turbo-100mb-s-non-adaptor-memory-card\n\nIP Camera PTZ ini dapat digunakan dengan menggunakan aplikasi [BARDI Smart Home] / [Smart Life - Smart Living] dan dapat diintegrasikan dengan produk-produk Bardi Smart Home lainnya\nIP Camera ini dapat berputar secara vertikal dan horizontal sehingga dapat memantau kondisi secara lebih luas karena dapat dikontrol dari aplikasi\n\nBeberapa fungsi lainnya, antara lain:\n1. Motion Detection - Dapat melakukan capture photo pada schedule tertentu atau secara terus menerus saat terdapat gerakan yang dideteksi oleh IP Camera ini.\n2. Day & Night Vision - Memiliki sensor infrared agar dapat melihat secara jelas walaupun dalam kondisi tidak ada cahaya\n3. Mic & Speaker Built-in - Melalui aplikasi, user dapat berinteraksi secara 2 arah dengan orang yang sedang dipantau jadi akan lebih mudah jika ingin menyampaikan pesan ataupun mendengar suara dari IP Camera ini', '2022-06-29 11:56:20.552000', '2022-06-29 11:56:21.424000', '2022-06-29 11:56:21.420000', 1, 1, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/1/22/ebd6d9c0-9389-4b8d-a27c-493d9a34fae5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products_categories_links`
--

CREATE TABLE `products_categories_links` (
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_categories_links`
--

INSERT INTO `products_categories_links` (`product_id`, `category_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 5),
(5, 5),
(6, 3),
(6, 19),
(7, 7),
(7, 13),
(8, 7),
(8, 15),
(9, 11),
(9, 7),
(10, 7),
(10, 11),
(11, 7),
(11, 11),
(12, 7),
(12, 9),
(13, 7),
(13, 9),
(14, 7),
(14, 9),
(15, 7),
(15, 13),
(16, 7),
(16, 13),
(17, 7),
(17, 13),
(18, 3),
(18, 19),
(19, 3),
(19, 19),
(20, 3),
(20, 19),
(21, 3),
(21, 19),
(22, 17),
(23, 17),
(24, 17),
(25, 20),
(26, 20),
(27, 20);

-- --------------------------------------------------------

--
-- Table structure for table `products_colors_links`
--

CREATE TABLE `products_colors_links` (
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `color_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_colors_links`
--

INSERT INTO `products_colors_links` (`product_id`, `color_id`) VALUES
(4, 1),
(4, 3),
(4, 8),
(5, 1),
(5, 4),
(5, 2),
(5, 8),
(6, 3),
(6, 8),
(7, 1),
(7, 3),
(7, 8),
(7, 9),
(8, 3),
(8, 8),
(8, 12),
(8, 10),
(9, 13),
(9, 1),
(9, 5),
(10, 1),
(11, 3),
(11, 10),
(12, 3),
(12, 10),
(13, 3),
(13, 2),
(14, 1),
(14, 3),
(14, 10),
(15, 3),
(16, 3),
(16, 10),
(17, 3),
(17, 10),
(18, 4),
(18, 3),
(19, 4),
(19, 3),
(20, 3),
(20, 4),
(21, 4),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(25, 10);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `star` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_owner_links`
--

CREATE TABLE `reviews_owner_links` (
  `review_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_product_links`
--

CREATE TABLE `reviews_product_links` (
  `review_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"transactions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::transaction.transaction\",\"mappedBy\":\"owner\"},\"carts\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::cart.cart\",\"mappedBy\":\"owner\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"transactions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::transaction.transaction\",\"mappedBy\":\"owner\"},\"carts\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::cart.cart\",\"mappedBy\":\"owner\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"api::cart.cart\":{\"kind\":\"collectionType\",\"collectionName\":\"carts\",\"info\":{\"singularName\":\"cart\",\"pluralName\":\"carts\",\"displayName\":\"Cart\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"owner\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"carts\"},\"count\":{\"type\":\"integer\",\"required\":false,\"default\":0,\"min\":0},\"total\":{\"type\":\"integer\",\"required\":false,\"default\":0,\"min\":0},\"is_checked_out\":{\"type\":\"boolean\",\"default\":false},\"cart_items\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::cart-item.cart-item\",\"mappedBy\":\"cart\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"carts\",\"info\":{\"singularName\":\"cart\",\"pluralName\":\"carts\",\"displayName\":\"Cart\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"owner\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"carts\"},\"count\":{\"type\":\"integer\",\"required\":false,\"default\":0,\"min\":0},\"total\":{\"type\":\"integer\",\"required\":false,\"default\":0,\"min\":0},\"is_checked_out\":{\"type\":\"boolean\",\"default\":false},\"cart_items\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::cart-item.cart-item\",\"mappedBy\":\"cart\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"cart\",\"connection\":\"default\",\"uid\":\"api::cart.cart\",\"apiName\":\"cart\",\"globalId\":\"Cart\",\"actions\":{},\"lifecycles\":{}},\"api::cart-item.cart-item\":{\"kind\":\"collectionType\",\"collectionName\":\"cart_items\",\"info\":{\"singularName\":\"cart-item\",\"pluralName\":\"cart-items\",\"displayName\":\"Cart Item\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product.product\"},\"count\":{\"type\":\"integer\",\"required\":true},\"cart\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::cart.cart\",\"inversedBy\":\"cart_items\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"cart_items\",\"info\":{\"singularName\":\"cart-item\",\"pluralName\":\"cart-items\",\"displayName\":\"Cart Item\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product.product\"},\"count\":{\"type\":\"integer\",\"required\":true},\"cart\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::cart.cart\",\"inversedBy\":\"cart_items\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"cart-item\",\"connection\":\"default\",\"uid\":\"api::cart-item.cart-item\",\"apiName\":\"cart-item\",\"globalId\":\"CartItem\",\"actions\":{},\"lifecycles\":{}},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"pluginOptions\":{}},\"icon\":{\"type\":\"string\",\"required\":true},\"products\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::product.product\",\"inversedBy\":\"categories\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"pluginOptions\":{}},\"icon\":{\"type\":\"string\",\"required\":true},\"products\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::product.product\",\"inversedBy\":\"categories\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::color.color\":{\"kind\":\"collectionType\",\"collectionName\":\"colors\",\"info\":{\"singularName\":\"color\",\"pluralName\":\"colors\",\"displayName\":\"Color\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"color\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"colors\",\"info\":{\"singularName\":\"color\",\"pluralName\":\"colors\",\"displayName\":\"Color\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"color\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"color\",\"connection\":\"default\",\"uid\":\"api::color.color\",\"apiName\":\"color\",\"globalId\":\"Color\",\"actions\":{},\"lifecycles\":{}},\"api::product.product\":{\"kind\":\"collectionType\",\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"stock\":{\"type\":\"integer\",\"default\":99},\"price\":{\"type\":\"biginteger\",\"required\":true},\"description\":{\"type\":\"richtext\",\"required\":true},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"inversedBy\":\"products\"},\"image\":{\"type\":\"string\",\"required\":true},\"colors\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::color.color\"},\"reviews\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::review.review\",\"mappedBy\":\"product\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"stock\":{\"type\":\"integer\",\"default\":99},\"price\":{\"type\":\"biginteger\",\"required\":true},\"description\":{\"type\":\"richtext\",\"required\":true},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"inversedBy\":\"products\"},\"image\":{\"type\":\"string\",\"required\":true},\"colors\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::color.color\"},\"reviews\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::review.review\",\"mappedBy\":\"product\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"product\",\"connection\":\"default\",\"uid\":\"api::product.product\",\"apiName\":\"product\",\"globalId\":\"Product\",\"actions\":{},\"lifecycles\":{}},\"api::review.review\":{\"kind\":\"collectionType\",\"collectionName\":\"reviews\",\"info\":{\"singularName\":\"review\",\"pluralName\":\"reviews\",\"displayName\":\"Review\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"product\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::product.product\",\"inversedBy\":\"reviews\"},\"owner\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"text\":{\"type\":\"text\"},\"star\":{\"type\":\"integer\",\"max\":5,\"min\":1,\"required\":true,\"default\":4},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"reviews\",\"info\":{\"singularName\":\"review\",\"pluralName\":\"reviews\",\"displayName\":\"Review\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"product\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::product.product\",\"inversedBy\":\"reviews\"},\"owner\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"text\":{\"type\":\"text\"},\"star\":{\"type\":\"integer\",\"max\":5,\"min\":1,\"required\":true,\"default\":4}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"review\",\"connection\":\"default\",\"uid\":\"api::review.review\",\"apiName\":\"review\",\"globalId\":\"Review\",\"actions\":{},\"lifecycles\":{}},\"api::transaction.transaction\":{\"kind\":\"collectionType\",\"collectionName\":\"transactions\",\"info\":{\"singularName\":\"transaction\",\"pluralName\":\"transactions\",\"displayName\":\"Transaction\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"owner\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"transactions\"},\"cart\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::cart.cart\"},\"transaction_detail\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::transaction-detail.transaction-detail\",\"inversedBy\":\"transaction\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"transactions\",\"info\":{\"singularName\":\"transaction\",\"pluralName\":\"transactions\",\"displayName\":\"Transaction\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"owner\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"transactions\"},\"cart\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::cart.cart\"},\"transaction_detail\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::transaction-detail.transaction-detail\",\"inversedBy\":\"transaction\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transaction\",\"connection\":\"default\",\"uid\":\"api::transaction.transaction\",\"apiName\":\"transaction\",\"globalId\":\"Transaction\",\"actions\":{},\"lifecycles\":{}},\"api::transaction-detail.transaction-detail\":{\"kind\":\"collectionType\",\"collectionName\":\"transaction_details\",\"info\":{\"singularName\":\"transaction-detail\",\"pluralName\":\"transaction-details\",\"displayName\":\"Transaction Detail\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"payment_status\":{\"type\":\"boolean\",\"default\":false},\"name\":{\"type\":\"string\"},\"address\":{\"type\":\"text\"},\"province\":{\"type\":\"string\"},\"regency\":{\"type\":\"string\"},\"zip_code\":{\"type\":\"string\"},\"phone_number\":{\"type\":\"string\"},\"transaction\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::transaction.transaction\",\"inversedBy\":\"transaction_detail\"},\"shipping_fee\":{\"type\":\"biginteger\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"transaction_details\",\"info\":{\"singularName\":\"transaction-detail\",\"pluralName\":\"transaction-details\",\"displayName\":\"Transaction Detail\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"payment_status\":{\"type\":\"boolean\",\"default\":false},\"name\":{\"type\":\"string\"},\"address\":{\"type\":\"text\"},\"province\":{\"type\":\"string\"},\"regency\":{\"type\":\"string\"},\"zip_code\":{\"type\":\"string\"},\"phone_number\":{\"type\":\"string\"},\"transaction\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::transaction.transaction\",\"inversedBy\":\"transaction_detail\"},\"shipping_fee\":{\"type\":\"biginteger\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transaction-detail\",\"connection\":\"default\",\"uid\":\"api::transaction-detail.transaction-detail\",\"apiName\":\"transaction-detail\",\"globalId\":\"TransactionDetail\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL),
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(6, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"transactions\":{\"edit\":{\"label\":\"transactions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"transactions\",\"searchable\":false,\"sortable\":false}},\"carts\":{\"edit\":{\"label\":\"carts\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"carts\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]],\"editRelations\":[\"role\",\"carts\",\"transactions\"]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(12, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}', 'object', NULL, NULL),
(13, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(14, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":\"\",\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(15, 'plugin_i18n_default_locale', '\"id\"', 'string', NULL, NULL),
(16, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(17, 'plugin_content_manager_configuration_content_types::api::product.product', '{\"uid\":\"api::product.product\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"stock\":{\"edit\":{\"label\":\"stock\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"stock\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"categories\":{\"edit\":{\"label\":\"categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"categories\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"colors\":{\"edit\":{\"label\":\"colors\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"color\"},\"list\":{\"label\":\"colors\",\"searchable\":false,\"sortable\":false}},\"reviews\":{\"edit\":{\"label\":\"reviews\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"reviews\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"categories\",\"colors\"],\"edit\":[[{\"name\":\"name\",\"size\":6}],[{\"name\":\"stock\",\"size\":4},{\"name\":\"price\",\"size\":4}],[{\"name\":\"image\",\"size\":6}],[{\"name\":\"description\",\"size\":12}]],\"editRelations\":[\"categories\",\"colors\",\"reviews\"]}}', 'object', NULL, NULL),
(18, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"uid\":\"api::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":true,\"sortable\":true}},\"products\":{\"edit\":{\"label\":\"products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"products\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"icon\",\"size\":6}]],\"editRelations\":[\"products\"]}}', 'object', NULL, NULL),
(19, 'plugin_content_manager_configuration_content_types::api::review.review', '{\"uid\":\"api::review.review\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"product\":{\"edit\":{\"label\":\"product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"product\",\"searchable\":true,\"sortable\":true}},\"owner\":{\"edit\":{\"label\":\"owner\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"owner\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"text\",\"searchable\":true,\"sortable\":true}},\"star\":{\"edit\":{\"label\":\"star\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"star\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"text\",\"size\":6},{\"name\":\"star\",\"size\":4}]],\"editRelations\":[\"product\",\"owner\"],\"list\":[\"id\",\"product\",\"text\",\"star\",\"owner\"]}}', 'object', NULL, NULL),
(20, 'plugin_content_manager_configuration_content_types::api::cart.cart', '{\"uid\":\"api::cart.cart\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"owner\":{\"edit\":{\"label\":\"owner\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"owner\",\"searchable\":true,\"sortable\":true}},\"count\":{\"edit\":{\"label\":\"count\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"count\",\"searchable\":true,\"sortable\":true}},\"total\":{\"edit\":{\"label\":\"total\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"total\",\"searchable\":true,\"sortable\":true}},\"is_checked_out\":{\"edit\":{\"label\":\"is_checked_out\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"is_checked_out\",\"searchable\":true,\"sortable\":true}},\"cart_items\":{\"edit\":{\"label\":\"cart_items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"cart_items\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"owner\",\"count\",\"total\"],\"edit\":[[{\"name\":\"count\",\"size\":4},{\"name\":\"total\",\"size\":4},{\"name\":\"is_checked_out\",\"size\":4}]],\"editRelations\":[\"owner\",\"cart_items\"]}}', 'object', NULL, NULL),
(21, 'plugin_content_manager_configuration_content_types::api::transaction.transaction', '{\"uid\":\"api::transaction.transaction\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"owner\":{\"edit\":{\"label\":\"owner\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"owner\",\"searchable\":true,\"sortable\":true}},\"cart\":{\"edit\":{\"label\":\"cart\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"cart\",\"searchable\":true,\"sortable\":true}},\"transaction_detail\":{\"edit\":{\"label\":\"transaction_detail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"transaction_detail\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"owner\",\"cart\",\"createdAt\"],\"edit\":[],\"editRelations\":[\"owner\",\"cart\",\"transaction_detail\"]}}', 'object', NULL, NULL),
(22, 'plugin_content_manager_configuration_content_types::api::transaction-detail.transaction-detail', '{\"uid\":\"api::transaction-detail.transaction-detail\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"payment_status\":{\"edit\":{\"label\":\"payment_status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"payment_status\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"province\":{\"edit\":{\"label\":\"province\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"province\",\"searchable\":true,\"sortable\":true}},\"regency\":{\"edit\":{\"label\":\"regency\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"regency\",\"searchable\":true,\"sortable\":true}},\"zip_code\":{\"edit\":{\"label\":\"zip_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"zip_code\",\"searchable\":true,\"sortable\":true}},\"phone_number\":{\"edit\":{\"label\":\"phone_number\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone_number\",\"searchable\":true,\"sortable\":true}},\"transaction\":{\"edit\":{\"label\":\"transaction\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"transaction\",\"searchable\":true,\"sortable\":true}},\"shipping_fee\":{\"edit\":{\"label\":\"shipping_fee\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"shipping_fee\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"payment_status\",\"name\",\"address\"],\"edit\":[[{\"name\":\"payment_status\",\"size\":4},{\"name\":\"name\",\"size\":6}],[{\"name\":\"address\",\"size\":6},{\"name\":\"province\",\"size\":6}],[{\"name\":\"regency\",\"size\":6},{\"name\":\"zip_code\",\"size\":6}],[{\"name\":\"phone_number\",\"size\":6},{\"name\":\"shipping_fee\",\"size\":4}]],\"editRelations\":[\"transaction\"]}}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::api::color.color', '{\"uid\":\"api::color.color\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"color\",\"defaultSortBy\":\"color\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"color\",\"createdAt\",\"updatedAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"color\",\"size\":6}]]}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::api::cart-item.cart-item', '{\"uid\":\"api::cart-item.cart-item\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"product\":{\"edit\":{\"label\":\"product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"product\",\"searchable\":true,\"sortable\":true}},\"count\":{\"edit\":{\"label\":\"count\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"count\",\"searchable\":true,\"sortable\":true}},\"cart\":{\"edit\":{\"label\":\"cart\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"cart\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"product\",\"count\",\"cart\"],\"edit\":[[{\"name\":\"count\",\"size\":4}]],\"editRelations\":[\"product\",\"cart\"]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(40, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"carts\",\"indexes\":[{\"name\":\"carts_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"carts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"carts_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"carts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"count\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"total\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_checked_out\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"cart_items\",\"indexes\":[{\"name\":\"cart_items_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"cart_items_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"cart_items_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"cart_items_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"count\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"categories\",\"indexes\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"icon\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"colors\",\"indexes\":[{\"name\":\"colors_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"colors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"colors_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"colors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products\",\"indexes\":[{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"stock\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"price\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"image\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"reviews\",\"indexes\":[{\"name\":\"reviews_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"reviews_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"reviews_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"reviews_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"text\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"star\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"transactions\",\"indexes\":[{\"name\":\"transactions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"transactions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"transactions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"transactions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"transaction_details\",\"indexes\":[{\"name\":\"transaction_details_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"transaction_details_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"transaction_details_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"transaction_details_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"payment_status\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"address\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"province\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"regency\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"zip_code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"phone_number\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"shipping_fee\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"carts_owner_links\",\"indexes\":[{\"name\":\"carts_owner_links_fk\",\"columns\":[\"cart_id\"]},{\"name\":\"carts_owner_links_inv_fk\",\"columns\":[\"user_id\"]}],\"foreignKeys\":[{\"name\":\"carts_owner_links_fk\",\"columns\":[\"cart_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"carts\",\"onDelete\":\"CASCADE\"},{\"name\":\"carts_owner_links_inv_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"cart_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"cart_items_product_links\",\"indexes\":[{\"name\":\"cart_items_product_links_fk\",\"columns\":[\"cart_item_id\"]},{\"name\":\"cart_items_product_links_inv_fk\",\"columns\":[\"product_id\"]}],\"foreignKeys\":[{\"name\":\"cart_items_product_links_fk\",\"columns\":[\"cart_item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"cart_items\",\"onDelete\":\"CASCADE\"},{\"name\":\"cart_items_product_links_inv_fk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"cart_item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"cart_items_cart_links\",\"indexes\":[{\"name\":\"cart_items_cart_links_fk\",\"columns\":[\"cart_item_id\"]},{\"name\":\"cart_items_cart_links_inv_fk\",\"columns\":[\"cart_id\"]}],\"foreignKeys\":[{\"name\":\"cart_items_cart_links_fk\",\"columns\":[\"cart_item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"cart_items\",\"onDelete\":\"CASCADE\"},{\"name\":\"cart_items_cart_links_inv_fk\",\"columns\":[\"cart_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"carts\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"cart_item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cart_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"categories_products_links\",\"indexes\":[{\"name\":\"categories_products_links_fk\",\"columns\":[\"category_id\"]},{\"name\":\"categories_products_links_inv_fk\",\"columns\":[\"product_id\"]}],\"foreignKeys\":[{\"name\":\"categories_products_links_fk\",\"columns\":[\"category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"categories\",\"onDelete\":\"CASCADE\"},{\"name\":\"categories_products_links_inv_fk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products_categories_links\",\"indexes\":[{\"name\":\"products_categories_links_fk\",\"columns\":[\"product_id\"]},{\"name\":\"products_categories_links_inv_fk\",\"columns\":[\"category_id\"]}],\"foreignKeys\":[{\"name\":\"products_categories_links_fk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"},{\"name\":\"products_categories_links_inv_fk\",\"columns\":[\"category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"categories\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products_colors_links\",\"indexes\":[{\"name\":\"products_colors_links_fk\",\"columns\":[\"product_id\"]},{\"name\":\"products_colors_links_inv_fk\",\"columns\":[\"color_id\"]}],\"foreignKeys\":[{\"name\":\"products_colors_links_fk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"},{\"name\":\"products_colors_links_inv_fk\",\"columns\":[\"color_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"colors\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"color_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"reviews_product_links\",\"indexes\":[{\"name\":\"reviews_product_links_fk\",\"columns\":[\"review_id\"]},{\"name\":\"reviews_product_links_inv_fk\",\"columns\":[\"product_id\"]}],\"foreignKeys\":[{\"name\":\"reviews_product_links_fk\",\"columns\":[\"review_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"reviews\",\"onDelete\":\"CASCADE\"},{\"name\":\"reviews_product_links_inv_fk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"review_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"reviews_owner_links\",\"indexes\":[{\"name\":\"reviews_owner_links_fk\",\"columns\":[\"review_id\"]},{\"name\":\"reviews_owner_links_inv_fk\",\"columns\":[\"user_id\"]}],\"foreignKeys\":[{\"name\":\"reviews_owner_links_fk\",\"columns\":[\"review_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"reviews\",\"onDelete\":\"CASCADE\"},{\"name\":\"reviews_owner_links_inv_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"review_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"transactions_owner_links\",\"indexes\":[{\"name\":\"transactions_owner_links_fk\",\"columns\":[\"transaction_id\"]},{\"name\":\"transactions_owner_links_inv_fk\",\"columns\":[\"user_id\"]}],\"foreignKeys\":[{\"name\":\"transactions_owner_links_fk\",\"columns\":[\"transaction_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"transactions\",\"onDelete\":\"CASCADE\"},{\"name\":\"transactions_owner_links_inv_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"transaction_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"transactions_cart_links\",\"indexes\":[{\"name\":\"transactions_cart_links_fk\",\"columns\":[\"transaction_id\"]},{\"name\":\"transactions_cart_links_inv_fk\",\"columns\":[\"cart_id\"]}],\"foreignKeys\":[{\"name\":\"transactions_cart_links_fk\",\"columns\":[\"transaction_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"transactions\",\"onDelete\":\"CASCADE\"},{\"name\":\"transactions_cart_links_inv_fk\",\"columns\":[\"cart_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"carts\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"transaction_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cart_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"transactions_transaction_detail_links\",\"indexes\":[{\"name\":\"transactions_transaction_detail_links_fk\",\"columns\":[\"transaction_id\"]},{\"name\":\"transactions_transaction_detail_links_inv_fk\",\"columns\":[\"transaction_detail_id\"]}],\"foreignKeys\":[{\"name\":\"transactions_transaction_detail_links_fk\",\"columns\":[\"transaction_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"transactions\",\"onDelete\":\"CASCADE\"},{\"name\":\"transactions_transaction_detail_links_inv_fk\",\"columns\":[\"transaction_detail_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"transaction_details\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"transaction_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transaction_detail_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"transaction_details_transaction_links\",\"indexes\":[{\"name\":\"transaction_details_transaction_links_fk\",\"columns\":[\"transaction_detail_id\"]},{\"name\":\"transaction_details_transaction_links_inv_fk\",\"columns\":[\"transaction_id\"]}],\"foreignKeys\":[{\"name\":\"transaction_details_transaction_links_fk\",\"columns\":[\"transaction_detail_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"transaction_details\",\"onDelete\":\"CASCADE\"},{\"name\":\"transaction_details_transaction_links_inv_fk\",\"columns\":[\"transaction_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"transactions\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"transaction_detail_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transaction_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2022-06-30 14:40:37', 'dab6079c00e147303c4853cd98fac83a');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transactions_cart_links`
--

CREATE TABLE `transactions_cart_links` (
  `transaction_id` int(10) UNSIGNED DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transactions_owner_links`
--

CREATE TABLE `transactions_owner_links` (
  `transaction_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transactions_transaction_detail_links`
--

CREATE TABLE `transactions_transaction_detail_links` (
  `transaction_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_detail_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_status` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `regency` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `shipping_fee` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details_transaction_links`
--

CREATE TABLE `transaction_details_transaction_links` (
  `transaction_detail_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.auth.connect', '2022-06-29 09:08:01.379000', '2022-06-29 09:08:01.379000', NULL, NULL),
(2, 'plugin::users-permissions.user.me', '2022-06-29 09:08:01.379000', '2022-06-29 09:08:01.379000', NULL, NULL),
(5, 'plugin::users-permissions.auth.callback', '2022-06-29 09:08:01.390000', '2022-06-29 09:08:01.390000', NULL, NULL),
(6, 'plugin::users-permissions.auth.connect', '2022-06-29 09:08:01.390000', '2022-06-29 09:08:01.390000', NULL, NULL),
(9, 'plugin::users-permissions.auth.register', '2022-06-29 09:08:01.390000', '2022-06-29 09:08:01.390000', NULL, NULL),
(11, 'plugin::users-permissions.user.me', '2022-06-29 09:08:01.390000', '2022-06-29 09:08:01.390000', NULL, NULL),
(12, 'api::cart.cart.findOne', '2022-06-29 12:37:07.261000', '2022-06-29 12:37:07.261000', NULL, NULL),
(13, 'api::cart.cart.update', '2022-06-29 12:37:07.261000', '2022-06-29 12:37:07.261000', NULL, NULL),
(14, 'api::category.category.find', '2022-06-29 12:37:07.261000', '2022-06-29 12:37:07.261000', NULL, NULL),
(15, 'api::category.category.findOne', '2022-06-29 12:37:07.261000', '2022-06-29 12:37:07.261000', NULL, NULL),
(16, 'api::product.product.find', '2022-06-29 12:37:07.261000', '2022-06-29 12:37:07.261000', NULL, NULL),
(17, 'api::review.review.find', '2022-06-29 12:37:07.261000', '2022-06-29 12:37:07.261000', NULL, NULL),
(18, 'api::review.review.findOne', '2022-06-29 12:37:07.261000', '2022-06-29 12:37:07.261000', NULL, NULL),
(19, 'api::product.product.findOne', '2022-06-29 12:37:07.261000', '2022-06-29 12:37:07.261000', NULL, NULL),
(20, 'api::review.review.create', '2022-06-29 12:37:07.261000', '2022-06-29 12:37:07.261000', NULL, NULL),
(21, 'api::transaction.transaction.findOne', '2022-06-29 12:37:07.261000', '2022-06-29 12:37:07.261000', NULL, NULL),
(22, 'api::transaction.transaction.create', '2022-06-29 12:37:07.261000', '2022-06-29 12:37:07.261000', NULL, NULL),
(23, 'api::transaction-detail.transaction-detail.findOne', '2022-06-29 12:37:07.261000', '2022-06-29 12:37:07.261000', NULL, NULL),
(24, 'api::transaction-detail.transaction-detail.create', '2022-06-29 12:37:07.261000', '2022-06-29 12:37:07.261000', NULL, NULL),
(25, 'api::category.category.find', '2022-06-29 12:38:17.247000', '2022-06-29 12:38:17.247000', NULL, NULL),
(26, 'api::category.category.findOne', '2022-06-29 12:38:17.247000', '2022-06-29 12:38:17.247000', NULL, NULL),
(27, 'api::product.product.find', '2022-06-29 12:38:17.247000', '2022-06-29 12:38:17.247000', NULL, NULL),
(28, 'api::product.product.findOne', '2022-06-29 12:38:17.247000', '2022-06-29 12:38:17.247000', NULL, NULL),
(29, 'api::color.color.find', '2022-06-29 13:04:46.021000', '2022-06-29 13:04:46.021000', NULL, NULL),
(30, 'api::color.color.findOne', '2022-06-29 13:04:46.021000', '2022-06-29 13:04:46.021000', NULL, NULL),
(31, 'api::color.color.find', '2022-06-29 13:04:54.098000', '2022-06-29 13:04:54.098000', NULL, NULL),
(32, 'api::color.color.findOne', '2022-06-29 13:04:54.098000', '2022-06-29 13:04:54.098000', NULL, NULL),
(33, 'api::cart-item.cart-item.create', '2022-06-29 15:44:41.310000', '2022-06-29 15:44:41.310000', NULL, NULL),
(34, 'api::cart-item.cart-item.find', '2022-06-29 15:44:41.311000', '2022-06-29 15:44:41.311000', NULL, NULL),
(35, 'api::cart-item.cart-item.update', '2022-06-29 15:44:41.311000', '2022-06-29 15:44:41.311000', NULL, NULL),
(36, 'api::cart-item.cart-item.delete', '2022-06-29 15:44:41.311000', '2022-06-29 15:44:41.311000', NULL, NULL),
(37, 'api::cart-item.cart-item.findOne', '2022-06-29 15:44:41.311000', '2022-06-29 15:44:41.311000', NULL, NULL),
(38, 'api::cart.cart.create', '2022-06-29 17:45:01.342000', '2022-06-29 17:45:01.342000', NULL, NULL),
(39, 'api::cart.cart.find', '2022-06-29 17:55:01.263000', '2022-06-29 17:55:01.263000', NULL, NULL),
(40, 'api::review.review.find', '2022-06-29 20:51:15.131000', '2022-06-29 20:51:15.131000', NULL, NULL),
(41, 'plugin::users-permissions.user.find', '2022-06-30 13:41:46.078000', '2022-06-30 13:41:46.078000', NULL, NULL),
(42, 'plugin::users-permissions.user.findOne', '2022-06-30 13:41:46.078000', '2022-06-30 13:41:46.078000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(5, 2),
(6, 2),
(9, 2),
(11, 2),
(12, 1),
(14, 1),
(13, 1),
(16, 1),
(17, 1),
(15, 1),
(18, 1),
(20, 1),
(19, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 2),
(28, 2),
(27, 2),
(26, 2),
(29, 1),
(30, 1),
(32, 2),
(31, 2),
(33, 1),
(34, 1),
(35, 1),
(37, 1),
(36, 1),
(38, 1),
(39, 1),
(40, 2),
(42, 1),
(41, 1);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2022-06-29 09:08:01.366000', '2022-06-30 13:41:46.070000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2022-06-29 09:08:01.370000', '2022-06-29 20:51:15.123000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(18, 'johndoe16', 'john16@doe.com', 'local', '$2a$10$bta1VDHqGJgTJkfgaIrFMORRiQ4C5Ijdm0aFpq1LMbAIVIcQT87NW', NULL, NULL, 1, 0, '2022-06-29 21:11:22.437000', '2022-06-29 21:11:22.437000', NULL, NULL),
(19, 'johndoe17', 'john17@doe.com', 'local', '$2a$10$Tv4WFtlaYQF2DmYJlXicOebwEW8e3DzC3mKulg4/r1RqCp7yugjr.', NULL, NULL, 1, 0, '2022-06-29 21:11:28.895000', '2022-06-29 21:11:28.895000', NULL, NULL),
(20, 'johndoe18', 'john18@doe.com', 'local', '$2a$10$GPGgBTBcaxUPBzNTudZSruK/5RvEDltPAwrawQxXLXi6HsmrEHr02', NULL, NULL, 1, 0, '2022-06-30 14:09:53.945000', '2022-06-30 14:09:53.945000', NULL, NULL),
(21, 'johndoe19', 'john19@doe.com', 'local', '$2a$10$W8EKYQJapQLyWq9FMJtyzuUQ2AyQN4mAIpEzLEeIBIiwzsubS901m', NULL, NULL, 1, 0, '2022-06-30 14:10:03.988000', '2022-06-30 14:10:03.988000', NULL, NULL),
(22, 'johndoe20', 'john20@doe.com', 'local', '$2a$10$INdQP51GszlQ1S4OtTZRheWnEnXTiqy79n1ldEuIa9hCIuWD6HXLq', NULL, NULL, 1, 0, '2022-06-30 14:36:07.473000', '2022-06-30 14:36:07.473000', NULL, NULL),
(23, 'johndoe21', 'john21@doe.com', 'local', '$2a$10$cF1ovf.xC9jjXhPnLIOqhOVAnNKP23ptFAAnWy3Sp93fVa2BKr.su', NULL, NULL, 1, 0, '2022-06-30 14:36:13.040000', '2022-06-30 14:36:13.040000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`user_id`, `role_id`) VALUES
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_created_by_id_fk` (`created_by_id`),
  ADD KEY `carts_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `carts_owner_links`
--
ALTER TABLE `carts_owner_links`
  ADD KEY `carts_owner_links_fk` (`cart_id`),
  ADD KEY `carts_owner_links_inv_fk` (`user_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_created_by_id_fk` (`created_by_id`),
  ADD KEY `cart_items_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `cart_items_cart_links`
--
ALTER TABLE `cart_items_cart_links`
  ADD KEY `cart_items_cart_links_fk` (`cart_item_id`),
  ADD KEY `cart_items_cart_links_inv_fk` (`cart_id`);

--
-- Indexes for table `cart_items_product_links`
--
ALTER TABLE `cart_items_product_links`
  ADD KEY `cart_items_product_links_fk` (`cart_item_id`),
  ADD KEY `cart_items_product_links_inv_fk` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `categories_products_links`
--
ALTER TABLE `categories_products_links`
  ADD KEY `categories_products_links_fk` (`category_id`),
  ADD KEY `categories_products_links_inv_fk` (`product_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colors_created_by_id_fk` (`created_by_id`),
  ADD KEY `colors_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD KEY `files_related_morphs_fk` (`file_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_created_by_id_fk` (`created_by_id`),
  ADD KEY `products_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `products_categories_links`
--
ALTER TABLE `products_categories_links`
  ADD KEY `products_categories_links_fk` (`product_id`),
  ADD KEY `products_categories_links_inv_fk` (`category_id`);

--
-- Indexes for table `products_colors_links`
--
ALTER TABLE `products_colors_links`
  ADD KEY `products_colors_links_fk` (`product_id`),
  ADD KEY `products_colors_links_inv_fk` (`color_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_created_by_id_fk` (`created_by_id`),
  ADD KEY `reviews_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `reviews_owner_links`
--
ALTER TABLE `reviews_owner_links`
  ADD KEY `reviews_owner_links_fk` (`review_id`),
  ADD KEY `reviews_owner_links_inv_fk` (`user_id`);

--
-- Indexes for table `reviews_product_links`
--
ALTER TABLE `reviews_product_links`
  ADD KEY `reviews_product_links_fk` (`review_id`),
  ADD KEY `reviews_product_links_inv_fk` (`product_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_created_by_id_fk` (`created_by_id`),
  ADD KEY `transactions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `transactions_cart_links`
--
ALTER TABLE `transactions_cart_links`
  ADD KEY `transactions_cart_links_fk` (`transaction_id`),
  ADD KEY `transactions_cart_links_inv_fk` (`cart_id`);

--
-- Indexes for table `transactions_owner_links`
--
ALTER TABLE `transactions_owner_links`
  ADD KEY `transactions_owner_links_fk` (`transaction_id`),
  ADD KEY `transactions_owner_links_inv_fk` (`user_id`);

--
-- Indexes for table `transactions_transaction_detail_links`
--
ALTER TABLE `transactions_transaction_detail_links`
  ADD KEY `transactions_transaction_detail_links_fk` (`transaction_id`),
  ADD KEY `transactions_transaction_detail_links_inv_fk` (`transaction_detail_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_created_by_id_fk` (`created_by_id`),
  ADD KEY `transaction_details_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `transaction_details_transaction_links`
--
ALTER TABLE `transaction_details_transaction_links`
  ADD KEY `transaction_details_transaction_links_fk` (`transaction_detail_id`),
  ADD KEY `transaction_details_transaction_links_inv_fk` (`transaction_id`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `carts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `carts_owner_links`
--
ALTER TABLE `carts_owner_links`
  ADD CONSTRAINT `carts_owner_links_fk` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_owner_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cart_items_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cart_items_cart_links`
--
ALTER TABLE `cart_items_cart_links`
  ADD CONSTRAINT `cart_items_cart_links_fk` FOREIGN KEY (`cart_item_id`) REFERENCES `cart_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_cart_links_inv_fk` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_items_product_links`
--
ALTER TABLE `cart_items_product_links`
  ADD CONSTRAINT `cart_items_product_links_fk` FOREIGN KEY (`cart_item_id`) REFERENCES `cart_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_product_links_inv_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categories_products_links`
--
ALTER TABLE `categories_products_links`
  ADD CONSTRAINT `categories_products_links_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_products_links_inv_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `colors_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products_categories_links`
--
ALTER TABLE `products_categories_links`
  ADD CONSTRAINT `products_categories_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_categories_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_colors_links`
--
ALTER TABLE `products_colors_links`
  ADD CONSTRAINT `products_colors_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_colors_links_inv_fk` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `reviews_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `reviews_owner_links`
--
ALTER TABLE `reviews_owner_links`
  ADD CONSTRAINT `reviews_owner_links_fk` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_owner_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews_product_links`
--
ALTER TABLE `reviews_product_links`
  ADD CONSTRAINT `reviews_product_links_fk` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_product_links_inv_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transactions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `transactions_cart_links`
--
ALTER TABLE `transactions_cart_links`
  ADD CONSTRAINT `transactions_cart_links_fk` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_cart_links_inv_fk` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions_owner_links`
--
ALTER TABLE `transactions_owner_links`
  ADD CONSTRAINT `transactions_owner_links_fk` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_owner_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions_transaction_detail_links`
--
ALTER TABLE `transactions_transaction_detail_links`
  ADD CONSTRAINT `transactions_transaction_detail_links_fk` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_transaction_detail_links_inv_fk` FOREIGN KEY (`transaction_detail_id`) REFERENCES `transaction_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transaction_details_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `transaction_details_transaction_links`
--
ALTER TABLE `transaction_details_transaction_links`
  ADD CONSTRAINT `transaction_details_transaction_links_fk` FOREIGN KEY (`transaction_detail_id`) REFERENCES `transaction_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_details_transaction_links_inv_fk` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
