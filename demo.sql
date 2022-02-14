-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 25, 2022 at 02:42 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_roles`
--

DROP TABLE IF EXISTS `action_roles`;
CREATE TABLE IF NOT EXISTS `action_roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_roles`
--

INSERT INTO `action_roles` (`id`, `name`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(250, 'sliders_edit', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(249, 'sliders_create', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(247, 'categories_delete', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(248, 'sliders_show', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(246, 'categories_edit', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(245, 'categories_create', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(244, 'categories_show', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(243, 'gallary_banner_delete', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(242, 'gallary_banner_edit', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(241, 'gallary_banner_create', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(240, 'gallary_banner_show', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(239, 'user_management_delete', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(4190, 'socialmedid_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4189, 'Contactus_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(238, 'user_management_edit', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(237, 'user_management_create', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(236, 'user_management_show', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(235, 'permission_edit', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(234, 'permission_show', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(233, 'role_delete', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(232, 'role_edit', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(231, 'role_create', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(4188, 'Contactus_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(230, 'role_show', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(229, 'settings_edit', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(228, 'settings_show', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(4187, 'Contactus_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4186, 'Contactus_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4185, 'partner_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4184, 'testimonial_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(251, 'sliders_delete', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(252, 'page_show', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(253, 'page_create', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(254, 'page_edit', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(255, 'page_delete', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(256, 'brands_show', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(257, 'brands_create', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(258, 'brands_edit', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(259, 'brands_delete', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(260, 'products_show', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(261, 'products_create', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(262, 'products_edit', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(263, 'products_delete', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(4183, 'chargebalancerequest_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4182, 'chargebalancerequest_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4177, 'subscribe_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4178, 'subscribe_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4179, 'subscribe_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4180, 'chargebalancerequest_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4181, 'subscribe_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4175, 'order_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4176, 'order_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4174, 'sound_category_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4173, 'video_category_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4172, 'chargebalance_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4167, 'country_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4168, 'talent_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4169, 'country_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4170, 'country_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4171, 'video_category_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4166, 'sound_category_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4165, 'video_category_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4164, 'user_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4163, 'country_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4162, 'sound_category_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4161, 'user_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4160, 'user_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4159, 'user_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4158, 'soundCategory_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4156, 'brand_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4157, 'brand_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4155, 'talent_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4154, 'videoCategory_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4153, 'brand_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4152, 'videoCategory_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4151, 'videoCategory_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4150, 'videoCategory_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4148, 'soundCategory_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4149, 'settings_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4147, 'brand_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4146, 'permission_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4145, 'settings_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4143, 'soundCategory_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4144, 'soundCategory_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4142, 'role_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4141, 'user_management_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4140, 'role_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4139, 'user_management_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4138, 'role_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4137, 'permission_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4136, 'role_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4135, 'user_management_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4133, 'user_management_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4134, 'gallary_banner_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4132, 'city_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4131, 'city_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4130, 'gallary_banner_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4129, 'governorate_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4128, 'order_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4127, 'governorate_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4126, 'governorate_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4125, 'coupon_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4124, 'coupon_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4123, 'faq_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4122, 'faq_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4121, 'customer_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4120, 'coupon_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4119, 'customer_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4118, 'order_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4117, 'products_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4115, 'city_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4116, 'city_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4114, 'coupon_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4113, 'customer_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4112, 'faq_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4111, 'customer_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4110, 'region_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4109, 'faq_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4108, 'products_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4105, 'brands_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4107, 'governorate_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4106, 'products_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4104, 'products_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4103, 'brands_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4102, 'brands_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4100, 'page_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4101, 'page_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4099, 'sliders_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4098, 'page_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4096, 'sliders_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4097, 'page_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4093, 'sliders_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4094, 'sliders_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4095, 'brands_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4092, 'categories_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4091, 'categories_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4089, 'categories_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4090, 'categories_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4088, 'gallary_banner_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4087, 'talent_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4086, 'gallary_banner_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4083, 'talent_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4084, 'region_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4085, 'region_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4082, 'region_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4080, 'tag_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4081, 'tag_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4078, 'tag_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4079, 'category_main_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4077, 'paymentmethod_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4076, 'paymentmethod_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4075, 'sound_category_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4074, 'chargebalancerequest_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4073, 'paymentmethod_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4071, 'setting_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4072, 'category_main_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4070, 'category_main_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4068, 'help_center_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4069, 'video_category_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4067, 'category_main_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4065, 'help_center_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4066, 'help_center_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4063, 'help_center_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4064, 'tag_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4061, '  chargebalance_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4062, '  chargebalance_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4060, '  chargebalance_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4058, 'chargebalance_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4059, '  chargebalance_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4057, 'chargebalance_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4056, 'chargebalance_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4054, 'testimonial_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4055, 'testimonial_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4053, 'paymentmethod_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4052, 'partner_delete', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4051, 'testimonial_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4050, 'partner_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4049, 'partner_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4048, 'setting_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4191, 'socialmedid_edit', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4192, 'socialmedid_create', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48'),
(4193, 'socialmedid_show', 1, 1, '2022-01-10 07:25:48', '2022-01-10 07:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci COMMENT 'title',
  `description` longtext COLLATE utf8mb4_unicode_ci COMMENT 'description',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `error_file_in_form_builders`
--

DROP TABLE IF EXISTS `error_file_in_form_builders`;
CREATE TABLE IF NOT EXISTS `error_file_in_form_builders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `modal` longtext COLLATE utf8mb4_unicode_ci,
  `path` longtext COLLATE utf8mb4_unicode_ci,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallary_banners`
--

DROP TABLE IF EXISTS `gallary_banners`;
CREATE TABLE IF NOT EXISTS `gallary_banners` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` longtext COLLATE utf8mb4_unicode_ci,
  `iframe` longtext COLLATE utf8mb4_unicode_ci,
  `page_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `log_date` datetime NOT NULL,
  `table_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `log_date`, `table_name`, `log_type`, `data`) VALUES
(1, 1, '2022-01-25 14:36:13', '', 'login', '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/97.0.4692.99 Safari\\/537.36\"}');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2020_11_20_100001_create_log_table', 1),
(10, '2021_01_14_092806_create_roles_table', 1),
(11, '2021_01_21_081609_create_sessions_table', 1),
(12, '2021_01_23_110417_add_avatar_to_users_table', 1),
(13, '2021_01_23_125059_create_settings_table', 1),
(14, '2021_01_25_112348_create_action_roles_table', 1),
(15, '2021_06_13_075004_create_gallary_banners_table', 1),
(16, '2021_06_13_093446_create_categories_table', 1),
(17, '2021_06_14_075840_create_sliders_table', 1),
(18, '2021_06_14_090634_create_pages_table', 1),
(19, '2021_06_14_093612_create_brands_table', 1),
(20, '2021_08_14_134459_create_error_file_in_form_builders_table', 1),
(21, '2021_08_17_083756_create_blogs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('rrz1sx3hN9y62Bk7o6QQwZI0Lva9Nx42XjcUR52p', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiWnE0RUhSWWJoaG11ZnFoWTZhSXRRTFFtaUIxMXpzVXViVXFrQ0lIZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQvYnJhbmRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJExPWjhTcGg4cnpHUXdIT3lRUWNWVnVPRlpLejJvektxcnFGYVdNNG1JbzZnUEJoakJSSjNLIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRMT1o4U3BoOHJ6R1F3SE95UVFjVlZ1T0ZaS3oyb3pLcXJxRmFXTTRtSW82Z1BCaGpCUkozSyI7fQ==', 1643121548);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `website_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linked_in` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `email`, `address_1`, `address_2`, `seo_keywords`, `seo_description`, `phone`, `mobile_1`, `mobile_2`, `facebook`, `instagram`, `whatsapp`, `twitter`, `linked_in`, `logo`, `favicon`, `created_at`, `updated_at`) VALUES
(1, 'jdsj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `order` bigint DEFAULT NULL,
  `is_main` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teams_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin\'s Team', 1, '2022-01-25 12:36:13', '2022-01-25 12:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

DROP TABLE IF EXISTS `team_invitations`;
CREATE TABLE IF NOT EXISTS `team_invitations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `team_id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

DROP TABLE IF EXISTS `team_user`;
CREATE TABLE IF NOT EXISTS `team_user` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `team_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role_id`, `avatar`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$LOZ8Sph8rzGQwHOyQQcVVuOFZKz2ozKqrqFaWM4mIo6gPBhjBRJ3K', NULL, NULL, NULL, NULL, NULL, '2022-01-25 12:36:13', '2022-01-25 12:36:13', 1, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
