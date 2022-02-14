-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 14, 2022 at 01:57 PM
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
-- Database: `laravel_task`
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
) ENGINE=MyISAM AUTO_INCREMENT=4498 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4476, 'chargebalance_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(238, 'user_management_edit', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(237, 'user_management_create', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(236, 'user_management_show', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(235, 'permission_edit', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(234, 'permission_show', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(233, 'role_delete', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(232, 'role_edit', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(231, 'role_create', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(4475, '  chargebalance_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(230, 'role_show', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(229, 'settings_edit', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(228, 'settings_show', 1, NULL, '2021-06-19 07:56:30', '2021-06-19 07:56:30'),
(4474, '  chargebalance_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4473, '  chargebalance_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
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
(4472, 'tag_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4471, 'help_center_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4470, 'help_center_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4469, 'help_center_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4468, 'category_main_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4467, 'video_category_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4466, 'help_center_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4465, 'category_main_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4464, 'category_main_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4463, 'setting_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4462, 'paymentmethod_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4461, 'chargebalancerequest_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4460, 'sound_category_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4459, 'paymentmethod_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4458, 'paymentmethod_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4457, 'socialmedid_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4456, 'Contactus_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4455, 'Contactus_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4454, 'Contactus_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4453, 'Contactus_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4452, 'partner_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4451, 'testimonial_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4450, 'chargebalancerequest_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4449, 'chargebalancerequest_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4448, 'subscribe_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4446, 'subscribe_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4447, 'subscribe_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4445, 'chargebalancerequest_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4444, 'subscribe_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4443, 'order_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4442, 'order_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4441, 'sound_category_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4440, 'video_category_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4439, 'chargebalance_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4438, 'country_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4436, 'country_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4437, 'talent_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4435, 'country_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4434, 'video_category_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4433, 'sound_category_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4431, 'user_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4432, 'video_category_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4430, 'country_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4429, 'sound_category_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4428, 'user_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4426, 'user_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4427, 'user_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4425, 'soundCategory_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4424, 'brand_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4422, 'talent_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4423, 'brand_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4421, 'videoCategory_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4420, 'brand_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4419, 'videoCategory_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4418, 'videoCategory_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4417, 'videoCategory_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4416, 'soundCategory_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4414, 'brand_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4415, 'settings_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4413, 'permission_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4411, 'soundCategory_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4412, 'settings_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4410, 'soundCategory_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4409, 'role_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4408, 'user_management_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4407, 'role_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4406, 'user_management_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4405, 'role_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4404, 'permission_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4403, 'role_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4402, 'user_management_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4401, 'user_management_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4400, 'gallary_banner_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4399, 'city_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4398, 'city_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4397, 'gallary_banner_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4396, 'governorate_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4395, 'order_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4394, 'governorate_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4392, 'coupon_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4393, 'governorate_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4390, 'faq_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4391, 'coupon_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4389, 'faq_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4388, 'customer_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4387, 'coupon_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4386, 'customer_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4384, 'products_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4385, 'order_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4383, 'city_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4382, 'city_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4381, 'coupon_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4379, 'faq_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4380, 'customer_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4378, 'customer_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4377, 'region_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4376, 'faq_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4375, 'products_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4374, 'brands_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4373, 'governorate_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4372, 'products_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4371, 'products_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4370, 'brands_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4369, 'brands_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4368, 'page_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4367, 'page_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4366, 'sliders_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4365, 'page_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4364, 'sliders_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4363, 'page_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4362, 'sliders_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4361, 'sliders_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4360, 'brands_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4359, 'categories_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4358, 'categories_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4357, 'categories_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4356, 'categories_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4355, 'gallary_banner_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4354, 'talent_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4353, 'gallary_banner_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4352, 'talent_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4351, 'region_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4350, 'region_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4349, 'region_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4348, 'tag_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4347, 'tag_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4346, 'tag_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4345, 'category_main_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4344, 'setting_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4477, '  chargebalance_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4478, 'chargebalance_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4479, 'chargebalance_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4480, 'testimonial_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4481, 'testimonial_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4482, 'paymentmethod_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4483, 'partner_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4484, 'testimonial_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4485, 'partner_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4486, 'partner_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4487, 'socialmedid_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4488, 'socialmedid_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4489, 'socialmedid_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4490, 'salesAgent_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4491, 'salesAgent_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4492, 'salesAgent_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4493, 'salesAgent_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4494, 'home_delete', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4495, 'home_edit', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4496, 'home_create', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16'),
(4497, 'home_show', 1, 1, '2022-02-14 09:09:16', '2022-02-14 09:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'name',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Alanya', '2022-02-14 07:25:28', '2022-02-14 07:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `facilites`
--

DROP TABLE IF EXISTS `facilites`;
CREATE TABLE IF NOT EXISTS `facilites` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facilites_home_id_foreign` (`home_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilites`
--

INSERT INTO `facilites` (`id`, `name`, `home_id`, `created_at`, `updated_at`) VALUES
(6, 'ننن', 1, '2022-02-14 11:55:16', '2022-02-14 11:55:16'),
(5, 'ننن', 1, '2022-02-14 11:55:16', '2022-02-14 11:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

DROP TABLE IF EXISTS `homes`;
CREATE TABLE IF NOT EXISTS `homes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'title',
  `description` longtext COLLATE utf8mb4_unicode_ci COMMENT 'description',
  `city_id` int DEFAULT NULL COMMENT 'city_id',
  `sales_agent_id` int DEFAULT NULL COMMENT 'sales_agent_id',
  `bedroom_count` int DEFAULT NULL COMMENT 'bedroom_count',
  `bathroom_count` int DEFAULT NULL COMMENT 'bathroom_count',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `title`, `description`, `city_id`, `sales_agent_id`, `bedroom_count`, `bathroom_count`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'GGGGG', 'hhhhhhhhhhhhhhhhhhhhhhhh', 1, 2, 4, 4, '2022-02-14 10:54:29', '2022-02-14 10:54:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_images`
--

DROP TABLE IF EXISTS `home_images`;
CREATE TABLE IF NOT EXISTS `home_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_main` tinyint(1) DEFAULT '0',
  `home_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `home_images_home_id_foreign` (`home_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_images`
--

INSERT INTO `home_images` (`id`, `image`, `is_main`, `home_id`, `created_at`, `updated_at`) VALUES
(14, 'iehsQUfjVdKancAWWOiMTluxYRSXAmNLEGaXr839.png', 1, 1, '2022-02-14 11:55:23', '2022-02-14 11:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `home_rooms`
--

DROP TABLE IF EXISTS `home_rooms`;
CREATE TABLE IF NOT EXISTS `home_rooms` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT '0',
  `home_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `home_rooms_home_id_foreign` (`home_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_rooms`
--

INSERT INTO `home_rooms` (`id`, `name`, `size`, `price`, `home_id`, `created_at`, `updated_at`) VALUES
(9, 'نن', '1', 44, 1, '2022-02-14 11:55:16', '2022-02-14 11:55:16'),
(8, 'hh', '11', 44, 1, '2022-02-14 11:55:16', '2022-02-14 11:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `log_date` datetime NOT NULL,
  `table_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `log_date`, `table_name`, `log_type`, `data`) VALUES
(1, 1, '2022-01-25 14:36:13', '', 'login', '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/97.0.4692.99 Safari\\/537.36\"}'),
(2, 1, '2022-02-14 08:32:33', '', 'login', '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.82 Safari\\/537.36\"}'),
(3, 1, '2022-02-14 08:49:05', '', 'login', '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.82 Safari\\/537.36\"}'),
(4, 1, '2022-02-14 09:04:14', '', 'login', '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.82 Safari\\/537.36\"}'),
(5, 1, '2022-02-14 13:29:49', '', 'login', '{\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.82 Safari\\/537.36\"}');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(21, '2021_08_17_083756_create_blogs_table', 2),
(22, '2022_02_14_092325_create_cities_table', 3),
(23, '2022_02_14_093505_create_sales_agents_table', 4),
(24, '2022_02_14_110531_create_homes_table', 5),
(25, '2022_02_14_115909_create_home_images_table', 6),
(26, '2022_02_14_122143_add_softdelete_to_homes_table', 7),
(27, '2022_02_14_123028_create_home_rooms_table', 8),
(28, '2022_02_14_130117_create_facilites_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `sales_agents`
--

DROP TABLE IF EXISTS `sales_agents`;
CREATE TABLE IF NOT EXISTS `sales_agents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'image',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'name',
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mobile',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'phone',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email',
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_agents`
--

INSERT INTO `sales_agents` (`id`, `image`, `name`, `mobile`, `phone`, `email`, `whatsapp`, `created_at`, `updated_at`) VALUES
(1, 'vxwPrd2bCkBNq4uwARADgIcrBISebYs1FmH5r08m.png', 'dd', '123456', '14789652', 'aa@n.com', 'http://127.0.0.1:8000/dashboard/salesAgent/1/edit', '2022-02-14 08:19:22', '2022-02-14 08:42:32'),
(2, 'k0EFyRzpqKy1BsMkhWBvQFVmTuuqjSdvDAagnwBx.png', 'dddd', '123456', '14789652', 'agga@n.com', 'http://127.0.0.1:8000/dashboard/salesAgent/1/edit', '2022-02-14 08:42:51', '2022-02-14 08:57:30'),
(3, NULL, 'dd', '123456', '14789652', 'agga@n.com', 'http://127.0.0.1:8000/dashboard/salesAgent/1/edit', '2022-02-14 08:57:44', '2022-02-14 08:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('WLLnOVfT5CmNPltBWFxEWBqKePy9uEHu5Iqrpw8Q', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiOEF4a2hCTm93d0ZFc0RXTkxCdHZpUEVleEdaNkY3c05NZENQbWVaSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQvaG9tZS8xL2VkaXQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkUi5KQjNwdHJoM1puWnZuYkMxbk5LLndWeFMvV1FjZFUvbk1uU0ZLaDhCOVhNRDFIdE8xR2UiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFIuSkIzcHRyaDNablp2bmJDMW5OSy53VnhTL1dRY2RVL25NblNGS2g4QjlYTUQxSHRPMUdlIjt9', 1644843561),
('klIU2ejDPii7tSirV41txoWnUNnPzglDrdYi1xzk', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQjhMVWVWcEpMcGlhR1l2Y1pjbGxWV0U5U1RXZ3FTdmVGNXp6TGtNMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly90YXNrLnVuaXQtb25lL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRSLkpCM3B0cmgzWm5adm5iQzFuTksud1Z4Uy9XUWNkVS9uTW5TRktoOEI5WE1EMUh0TzFHZSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkUi5KQjNwdHJoM1puWnZuYkMxbk5LLndWeFMvV1FjZFUvbk1uU0ZLaDhCOVhNRDFIdE8xR2UiO30=', 1644846953);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `website_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linked_in` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role_id`, `avatar`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$R.JB3ptrh3ZnZvnbC1nNK.wVxS/WQcdU/nMnSFKh8B9XMD1HtO1Ge', NULL, NULL, NULL, NULL, NULL, '2022-01-25 12:36:13', '2022-02-14 06:54:33', 1, 'OsgCkM6J5V2sa6a7uUfLw2VOeRAHvEMGPG07c0c5.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
