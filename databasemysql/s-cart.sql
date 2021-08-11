-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 11, 2021 lúc 04:07 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `s-cart`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_admin_config`
--

CREATE TABLE `demo_admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `detail` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_admin_config`
--

INSERT INTO `demo_admin_config` (`id`, `group`, `code`, `key`, `value`, `store_id`, `sort`, `detail`) VALUES
(1, 'Plugins', 'Payment', 'Cash', '1', 0, 0, 'Plugins/Payment/Cash::lang.title'),
(2, 'Plugins', 'Shipping', 'ShippingStandard', '1', 0, 0, 'lang::Shipping Standard'),
(3, 'global', 'env_global', 'ADMIN_LOG', 'on', 0, 0, 'lang::env.ADMIN_LOG'),
(4, 'global', 'env_global', 'ADMIN_LOG_EXP', '', 0, 0, 'lang::env.ADMIN_LOG_EXP'),
(5, 'global', 'env_global', 'ADMIN_FOOTER_OFF', '0', 0, 0, 'lang::env.ADMIN_FOOTER_OFF'),
(6, 'global', 'seo_config', 'url_seo_lang', '0', 0, 1, 'lang::seo.url_seo_lang'),
(7, 'global', 'webhook_config', 'LOG_SLACK_WEBHOOK_URL', '', 0, 0, 'lang::config.LOG_SLACK_WEBHOOK_URL'),
(8, 'global', 'webhook_config', 'GOOGLE_CHAT_WEBHOOK_URL', '', 0, 0, 'lang::config.GOOGLE_CHAT_WEBHOOK_URL'),
(9, 'global', 'webhook_config', 'CHATWORK_CHAT_WEBHOOK_URL', '', 0, 0, 'lang::config.CHATWORK_CHAT_WEBHOOK_URL'),
(10, 'global', 'api_config', 'api_connection_required', '1', 0, 1, 'lang::api_connection.api_connection_required'),
(11, 'global', 'cache', 'cache_status', '0', 0, 0, 'lang::cache.config_manager.cache_status'),
(12, 'global', 'cache', 'cache_time', '600', 0, 0, 'lang::cache.config_manager.cache_time'),
(13, 'global', 'cache', 'cache_category', '0', 0, 3, 'lang::cache.config_manager.cache_category'),
(14, 'global', 'cache', 'cache_product', '0', 0, 4, 'lang::cache.config_manager.cache_product'),
(15, 'global', 'cache', 'cache_news', '0', 0, 5, 'lang::cache.config_manager.cache_news'),
(16, 'global', 'cache', 'cache_category_cms', '0', 0, 6, 'lang::cache.config_manager.cache_category_cms'),
(17, 'global', 'cache', 'cache_content_cms', '0', 0, 7, 'lang::cache.config_manager.cache_content_cms'),
(18, 'global', 'cache', 'cache_page', '0', 0, 8, 'lang::cache.config_manager.cache_page'),
(19, 'global', 'cache', 'cache_country', '0', 0, 10, 'lang::cache.config_manager.cache_country'),
(20, 'global', 'env_mail', 'smtp_mode', '', 0, 0, 'lang::email.smtp_mode'),
(21, '', 'product_config_attribute', 'product_brand', '1', 1, 0, 'lang::product.config_manager.brand'),
(22, '', 'product_config_attribute_required', 'product_brand_required', '0', 1, 0, ''),
(23, '', 'product_config_attribute', 'product_supplier', '1', 1, 0, 'lang::product.config_manager.supplier'),
(24, '', 'product_config_attribute_required', 'product_supplier_required', '0', 1, 0, ''),
(25, '', 'product_config_attribute', 'product_price', '1', 1, 0, 'lang::product.config_manager.price'),
(26, '', 'product_config_attribute_required', 'product_price_required', '1', 1, 0, ''),
(27, '', 'product_config_attribute', 'product_cost', '1', 1, 0, 'lang::product.config_manager.cost'),
(28, '', 'product_config_attribute_required', 'product_cost_required', '0', 1, 0, ''),
(29, '', 'product_config_attribute', 'product_promotion', '1', 1, 0, 'lang::product.config_manager.promotion'),
(30, '', 'product_config_attribute_required', 'product_promotion_required', '0', 1, 0, ''),
(31, '', 'product_config_attribute', 'product_stock', '1', 1, 0, 'lang::product.config_manager.stock'),
(32, '', 'product_config_attribute_required', 'product_stock_required', '0', 1, 0, ''),
(33, '', 'product_config_attribute', 'product_kind', '1', 1, 0, 'lang::product.config_manager.kind'),
(34, '', 'product_config_attribute', 'product_property', '1', 1, 0, 'lang::product.config_manager.property'),
(35, '', 'product_config_attribute_required', 'product_property_required', '0', 1, 0, ''),
(36, '', 'product_config_attribute', 'product_attribute', '1', 1, 0, 'lang::product.config_manager.attribute'),
(37, '', 'product_config_attribute_required', 'product_attribute_required', '0', 1, 0, ''),
(38, '', 'product_config_attribute', 'product_available', '1', 1, 0, 'lang::product.config_manager.available'),
(39, '', 'product_config_attribute_required', 'product_available_required', '0', 1, 0, ''),
(40, '', 'product_config_attribute', 'product_weight', '1', 1, 0, 'lang::product.config_manager.weight'),
(41, '', 'product_config_attribute_required', 'product_weight_required', '0', 1, 0, ''),
(42, '', 'product_config_attribute', 'product_length', '1', 1, 0, 'lang::product.config_manager.length'),
(43, '', 'product_config_attribute_required', 'product_length_required', '0', 1, 0, ''),
(44, '', 'product_config', 'product_display_out_of_stock', '1', 1, 19, 'lang::admin.product_display_out_of_stock'),
(45, '', 'product_config', 'show_date_available', '1', 1, 21, 'lang::admin.show_date_available'),
(46, '', 'product_config', 'product_tax', '1', 1, 0, 'lang::product.config_manager.tax'),
(47, '', 'customer_config_attribute', 'customer_lastname', '1', 1, 1, 'lang::customer.config_manager.lastname'),
(48, '', 'customer_config_attribute_required', 'customer_lastname_required', '1', 1, 1, ''),
(49, '', 'customer_config_attribute', 'customer_address1', '1', 1, 2, 'lang::customer.config_manager.address1'),
(50, '', 'customer_config_attribute_required', 'customer_address1_required', '1', 1, 2, ''),
(51, '', 'customer_config_attribute', 'customer_address2', '1', 1, 2, 'lang::customer.config_manager.address2'),
(52, '', 'customer_config_attribute_required', 'customer_address2_required', '1', 1, 2, ''),
(53, '', 'customer_config_attribute', 'customer_address3', '0', 1, 2, 'lang::customer.config_manager.address3'),
(54, '', 'customer_config_attribute_required', 'customer_address3_required', '0', 1, 2, ''),
(55, '', 'customer_config_attribute', 'customer_company', '0', 1, 0, 'lang::customer.config_manager.company'),
(56, '', 'customer_config_attribute_required', 'customer_company_required', '0', 1, 0, ''),
(57, '', 'customer_config_attribute', 'customer_postcode', '0', 1, 0, 'lang::customer.config_manager.postcode'),
(58, '', 'customer_config_attribute_required', 'customer_postcode_required', '0', 1, 0, ''),
(59, '', 'customer_config_attribute', 'customer_country', '1', 1, 0, 'lang::customer.config_manager.country'),
(60, '', 'customer_config_attribute_required', 'customer_country_required', '1', 1, 0, ''),
(61, '', 'customer_config_attribute', 'customer_group', '0', 1, 0, 'lang::customer.config_manager.group'),
(62, '', 'customer_config_attribute_required', 'customer_group_required', '0', 1, 0, ''),
(63, '', 'customer_config_attribute', 'customer_birthday', '0', 1, 0, 'lang::customer.config_manager.birthday'),
(64, '', 'customer_config_attribute_required', 'customer_birthday_required', '0', 1, 0, ''),
(65, '', 'customer_config_attribute', 'customer_sex', '0', 1, 0, 'lang::customer.config_manager.sex'),
(66, '', 'customer_config_attribute_required', 'customer_sex_required', '0', 1, 0, ''),
(67, '', 'customer_config_attribute', 'customer_phone', '1', 1, 0, 'lang::customer.config_manager.phone'),
(68, '', 'customer_config_attribute_required', 'customer_phone_required', '1', 1, 1, ''),
(69, '', 'customer_config_attribute', 'customer_name_kana', '0', 1, 0, 'lang::customer.config_manager.name_kana'),
(70, '', 'customer_config_attribute_required', 'customer_name_kana_required', '0', 1, 1, ''),
(71, '', 'admin_config', 'ADMIN_NAME', 'S-Cart System', 1, 0, 'lang::env.ADMIN_NAME'),
(72, '', 'admin_config', 'ADMIN_TITLE', 'S-Cart Admin', 1, 0, 'lang::env.ADMIN_TITLE'),
(73, '', 'admin_config', 'ADMIN_LOGO', 'S-Cart Admin', 1, 0, 'lang::env.ADMIN_LOGO'),
(74, '', 'display_config', 'product_top', '8', 1, 0, 'lang::admin.product_top'),
(75, '', 'display_config', 'product_list', '12', 1, 0, 'lang::admin.list_product'),
(76, '', 'display_config', 'product_relation', '4', 1, 0, 'lang::admin.relation_product'),
(77, '', 'display_config', 'product_viewed', '4', 1, 0, 'lang::admin.viewed_product'),
(78, '', 'display_config', 'item_list', '12', 1, 0, 'lang::admin.item_list'),
(79, '', 'display_config', 'item_top', '8', 1, 0, 'lang::admin.item_top'),
(80, '', 'order_config', 'shop_allow_guest', '1', 1, 11, 'lang::order.admin.shop_allow_guest'),
(81, '', 'order_config', 'product_preorder', '1', 1, 18, 'lang::order.admin.product_preorder'),
(82, '', 'order_config', 'product_buy_out_of_stock', '1', 1, 20, 'lang::order.admin.product_buy_out_of_stock'),
(83, '', 'order_config', 'shipping_off', '0', 1, 20, 'lang::order.admin.shipping_off'),
(84, '', 'order_config', 'payment_off', '0', 1, 20, 'lang::order.admin.payment_off'),
(85, '', 'email_action', 'email_action_mode', '0', 1, 0, 'lang::email.email_action.email_action_mode'),
(86, '', 'email_action', 'email_action_queue', '0', 1, 1, 'lang::email.email_action.email_action_queue'),
(87, '', 'email_action', 'order_success_to_admin', '0', 1, 1, 'lang::email.email_action.order_success_to_admin'),
(88, '', 'email_action', 'order_success_to_customer', '0', 1, 2, 'lang::email.email_action.order_success_to_cutomer'),
(89, '', 'email_action', 'order_success_to_customer_pdf', '0', 1, 3, 'lang::email.email_action.order_success_to_cutomer_pdf'),
(90, '', 'email_action', 'customer_verify', '0', 1, 4, 'lang::email.email_action.customer_verify'),
(91, '', 'email_action', 'welcome_customer', '0', 1, 4, 'lang::email.email_action.welcome_customer'),
(92, '', 'email_action', 'contact_to_admin', '1', 1, 6, 'lang::email.email_action.contact_to_admin'),
(93, '', 'smtp_config', 'smtp_host', '', 1, 1, 'lang::email.smtp_host'),
(94, '', 'smtp_config', 'smtp_user', '', 1, 2, 'lang::email.smtp_user'),
(95, '', 'smtp_config', 'smtp_password', '', 1, 3, 'lang::email.smtp_password'),
(96, '', 'smtp_config', 'smtp_security', '', 1, 4, 'lang::email.smtp_security'),
(97, '', 'smtp_config', 'smtp_port', '', 1, 5, 'lang::email.smtp_port'),
(98, '', 'url_config', 'SUFFIX_URL', '.html', 1, 0, 'lang::url.SUFFIX_URL'),
(99, '', 'url_config', 'PREFIX_SHOP', 'shop', 1, 0, 'lang::env.PREFIX_SHOP'),
(100, '', 'url_config', 'PREFIX_BRAND', 'brand', 1, 0, 'lang::env.PREFIX_BRAND'),
(101, '', 'url_config', 'PREFIX_CATEGORY', 'category', 1, 0, 'lang::env.PREFIX_CATEGORY'),
(102, '', 'url_config', 'PREFIX_SUB_CATEGORY', 'sub-category', 1, 0, 'lang::env.PREFIX_SUB_CATEGORY'),
(103, '', 'url_config', 'PREFIX_PRODUCT', 'product', 1, 0, 'lang::env.PREFIX_PRODUCT'),
(104, '', 'url_config', 'PREFIX_SEARCH', 'search', 1, 0, 'lang::env.PREFIX_SEARCH'),
(105, '', 'url_config', 'PREFIX_CONTACT', 'contact', 1, 0, 'lang::env.PREFIX_CONTACT'),
(106, '', 'url_config', 'PREFIX_NEWS', 'news', 1, 0, 'lang::env.PREFIX_NEWS'),
(107, '', 'url_config', 'PREFIX_MEMBER', 'customer', 1, 0, 'lang::env.PREFIX_MEMBER'),
(108, '', 'url_config', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', 1, 0, 'lang::env.PREFIX_MEMBER_ORDER_LIST'),
(109, '', 'url_config', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', 1, 0, 'lang::env.PREFIX_MEMBER_CHANGE_PWD'),
(110, '', 'url_config', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', 1, 0, 'lang::env.PREFIX_MEMBER_CHANGE_INFO'),
(111, '', 'url_config', 'PREFIX_CMS_CATEGORY', 'cms-category', 1, 0, 'lang::env.PREFIX_CMS_CATEGORY'),
(112, '', 'url_config', 'PREFIX_CMS_ENTRY', 'entry', 1, 0, 'lang::env.PREFIX_CMS_ENTRY'),
(113, '', 'url_config', 'PREFIX_CART_WISHLIST', 'wishlst', 1, 0, 'lang::env.PREFIX_CART_WISHLIST'),
(114, '', 'url_config', 'PREFIX_CART_COMPARE', 'compare', 1, 0, 'lang::env.PREFIX_CART_COMPARE'),
(115, '', 'url_config', 'PREFIX_CART_DEFAULT', 'cart', 1, 0, 'lang::env.PREFIX_CART_DEFAULT'),
(116, '', 'url_config', 'PREFIX_CART_CHECKOUT', 'checkout', 1, 0, 'lang::env.PREFIX_CART_CHECKOUT'),
(117, '', 'url_config', 'PREFIX_ORDER_SUCCESS', 'order-success', 1, 0, 'lang::env.PREFIX_ORDER_SUCCESS'),
(118, '', 'captcha_config', 'captcha_mode', '0', 1, 20, 'lang::captcha.captcha_mode'),
(119, '', 'captcha_config', 'captcha_page', '[]', 1, 10, 'lang::captcha.captcha_page'),
(120, '', 'captcha_config', 'captcha_method', '', 1, 0, 'lang::captcha.captcha_method');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_admin_log`
--

CREATE TABLE `demo_admin_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_admin_log`
--

INSERT INTO `demo_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'demo_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-09 13:51:47', '2021-08-09 13:51:47'),
(2, 1, 'demo_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:08:40', '2021-08-10 14:08:40'),
(3, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:08:48', '2021-08-10 14:08:48'),
(4, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:10:46', '2021-08-10 14:10:46'),
(5, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:10:51', '2021-08-10 14:10:51'),
(6, 1, 'demo_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:10:58', '2021-08-10 14:10:58'),
(7, 1, 'demo_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:10:59', '2021-08-10 14:10:59'),
(8, 1, 'demo_admin/email_template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:11:02', '2021-08-10 14:11:02'),
(9, 1, 'demo_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:11:07', '2021-08-10 14:11:07'),
(10, 1, 'demo_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"Demo S-Cart: M\\u00e3 ngu\\u1ed3n website th\\u01b0\\u01a1ng m\\u1ea1i \\u0111i\\u1ec7n t\\u1eed mi\\u1ec5n ph\\u00ed1\",\"pk\":null,\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\",\"storeId\":\"1\"}', '2021-08-10 14:11:34', '2021-08-10 14:11:34'),
(11, 1, 'demo_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"Demo S-Cart: M\\u00e3 ngu\\u1ed3n website th\\u01b0\\u01a1ng m\\u1ea1i \\u0111i\\u1ec7n t\\u1eed mi\\u1ec5n ph\\u00ed\",\"pk\":null,\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\",\"storeId\":\"1\"}', '2021-08-10 14:12:20', '2021-08-10 14:12:20'),
(12, 1, 'demo_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:12:24', '2021-08-10 14:12:24'),
(13, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:12:51', '2021-08-10 14:12:51'),
(14, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 14:12:58', '2021-08-10 14:12:58'),
(15, 1, 'demo_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:13:41', '2021-08-10 14:13:41'),
(16, 1, 'demo_admin/api_connection', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:14:20', '2021-08-10 14:14:20'),
(17, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:14:30', '2021-08-10 14:14:30'),
(18, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:18:50', '2021-08-10 14:18:50'),
(19, 1, 'demo_admin/theme/dark', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:18:58', '2021-08-10 14:18:58'),
(20, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:18:58', '2021-08-10 14:18:58'),
(21, 1, 'demo_admin/theme/lightblue', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:19:00', '2021-08-10 14:19:00'),
(22, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 14:19:00', '2021-08-10 14:19:00'),
(23, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:41:12', '2021-08-10 15:41:12'),
(24, 1, 'demo_admin/category/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:44:55', '2021-08-10 15:44:55'),
(25, 1, 'demo_admin/category/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"IPhone\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"IPhone\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"electronics\",\"image\":\"\\/data\\/category\\/img-40.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 15:45:31', '2021-08-10 15:45:31'),
(26, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:45:32', '2021-08-10 15:45:32'),
(27, 1, 'demo_admin/category/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:45:49', '2021-08-10 15:45:49'),
(28, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"category\"}', '2021-08-10 15:46:22', '2021-08-10 15:46:22'),
(29, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610383756\"}', '2021-08-10 15:46:25', '2021-08-10 15:46:25'),
(30, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610383757\"}', '2021-08-10 15:46:25', '2021-08-10 15:46:25'),
(31, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628610383758\"}', '2021-08-10 15:46:25', '2021-08-10 15:46:25'),
(32, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"category\"}', '2021-08-10 15:47:32', '2021-08-10 15:47:32'),
(33, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610452680\"}', '2021-08-10 15:47:33', '2021-08-10 15:47:33'),
(34, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610452681\"}', '2021-08-10 15:47:33', '2021-08-10 15:47:33'),
(35, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628610452682\"}', '2021-08-10 15:47:34', '2021-08-10 15:47:34'),
(36, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"category\"}', '2021-08-10 15:49:52', '2021-08-10 15:49:52'),
(37, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610592717\"}', '2021-08-10 15:49:53', '2021-08-10 15:49:53'),
(38, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610592718\"}', '2021-08-10 15:49:53', '2021-08-10 15:49:53'),
(39, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628610592719\"}', '2021-08-10 15:49:54', '2021-08-10 15:49:54'),
(40, 1, 'demo_admin/category/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"IPhone\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"IPhone\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"iphone\",\"image\":\"\\/data\\/category\\/img-iphone.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 15:50:00', '2021-08-10 15:50:00'),
(41, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:50:00', '2021-08-10 15:50:00'),
(42, 1, 'demo_admin/category/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:50:44', '2021-08-10 15:50:44'),
(43, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"category\"}', '2021-08-10 15:51:11', '2021-08-10 15:51:11'),
(44, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610671586\"}', '2021-08-10 15:51:12', '2021-08-10 15:51:12'),
(45, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610671587\"}', '2021-08-10 15:51:12', '2021-08-10 15:51:12'),
(46, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628610671588\"}', '2021-08-10 15:51:13', '2021-08-10 15:51:13'),
(47, 1, 'demo_admin/category/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"SAMSUNG\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"SAMSUNG\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"samsung\",\"image\":\"\\/data\\/category\\/img-samsung.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 15:51:21', '2021-08-10 15:51:21'),
(48, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:51:22', '2021-08-10 15:51:22'),
(49, 1, 'demo_admin/category/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:51:26', '2021-08-10 15:51:26'),
(50, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"category\"}', '2021-08-10 15:51:57', '2021-08-10 15:51:57'),
(51, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610717511\"}', '2021-08-10 15:51:58', '2021-08-10 15:51:58'),
(52, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610717512\"}', '2021-08-10 15:51:58', '2021-08-10 15:51:58'),
(53, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628610717513\"}', '2021-08-10 15:51:59', '2021-08-10 15:51:59'),
(54, 1, 'demo_admin/category/edit/3', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"OPPO\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"OPPO\",\"keyword\":null,\"description\":null}},\"parent\":\"1\",\"alias\":\"oppo\",\"image\":\"\\/data\\/category\\/img-oppo.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 15:52:03', '2021-08-10 15:52:03'),
(55, 1, 'demo_admin/category/edit/3', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"OPPO\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"OPPO\",\"keyword\":null,\"description\":null}},\"parent\":\"1\",\"alias\":\"oppo\",\"image\":\"\\/data\\/category\\/img-oppo.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 15:52:03', '2021-08-10 15:52:03'),
(56, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:52:04', '2021-08-10 15:52:04'),
(57, 1, 'demo_admin/category/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:52:14', '2021-08-10 15:52:14'),
(58, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"category\"}', '2021-08-10 15:52:41', '2021-08-10 15:52:41'),
(59, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610761560\"}', '2021-08-10 15:52:42', '2021-08-10 15:52:42'),
(60, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610761559\"}', '2021-08-10 15:52:42', '2021-08-10 15:52:42'),
(61, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628610761561\"}', '2021-08-10 15:52:43', '2021-08-10 15:52:43'),
(62, 1, 'demo_admin/category/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"XiAOMI\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"XiAOMI\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"xiaomi\",\"image\":\"\\/data\\/category\\/img-xiaomi.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 15:52:49', '2021-08-10 15:52:49'),
(63, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:52:50', '2021-08-10 15:52:50'),
(64, 1, 'demo_admin/category/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:52:53', '2021-08-10 15:52:53'),
(65, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"category\"}', '2021-08-10 15:53:07', '2021-08-10 15:53:07'),
(66, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610788100\"}', '2021-08-10 15:53:08', '2021-08-10 15:53:08'),
(67, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610788101\"}', '2021-08-10 15:53:08', '2021-08-10 15:53:08'),
(68, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628610788102\"}', '2021-08-10 15:53:09', '2021-08-10 15:53:09'),
(69, 1, 'demo_admin/category/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"VIVO\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"VIVO\",\"keyword\":null,\"description\":null}},\"parent\":\"1\",\"alias\":\"vivo\",\"image\":\"\\/data\\/category\\/img-vivo.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 15:53:13', '2021-08-10 15:53:13'),
(70, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:53:14', '2021-08-10 15:53:14'),
(71, 1, 'demo_admin/category/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:53:18', '2021-08-10 15:53:18'),
(72, 1, 'demo_admin/category/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:53:24', '2021-08-10 15:53:24'),
(73, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"category\"}', '2021-08-10 15:54:00', '2021-08-10 15:54:00'),
(74, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610840696\"}', '2021-08-10 15:54:01', '2021-08-10 15:54:01'),
(75, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610840697\"}', '2021-08-10 15:54:01', '2021-08-10 15:54:01'),
(76, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628610840698\"}', '2021-08-10 15:54:02', '2021-08-10 15:54:02'),
(77, 1, 'demo_admin/category/edit/9', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"realme\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"realme\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"realme\",\"image\":\"\\/data\\/category\\/img-realme.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 15:54:09', '2021-08-10 15:54:09'),
(78, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:54:10', '2021-08-10 15:54:10'),
(79, 1, 'demo_admin/category/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:54:15', '2021-08-10 15:54:15'),
(80, 1, 'demo_admin/category/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:54:23', '2021-08-10 15:54:23'),
(81, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"category\"}', '2021-08-10 15:54:45', '2021-08-10 15:54:45'),
(82, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610885369\"}', '2021-08-10 15:54:46', '2021-08-10 15:54:46'),
(83, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628610885370\"}', '2021-08-10 15:54:46', '2021-08-10 15:54:46'),
(84, 1, 'demo_admin/category/edit/3', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"OPPO\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"oppo\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"oppo\",\"image\":\"\\/data\\/category\\/img-oppo.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 15:54:48', '2021-08-10 15:54:48'),
(85, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:54:48', '2021-08-10 15:54:48'),
(86, 1, 'demo_admin/category/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:54:52', '2021-08-10 15:54:52'),
(87, 1, 'demo_admin/category/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"xiaomi\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"xiaomi\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"xiaomi\",\"image\":\"\\/data\\/category\\/img-xiaomi.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 15:55:08', '2021-08-10 15:55:08'),
(88, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:55:09', '2021-08-10 15:55:09'),
(89, 1, 'demo_admin/category/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:55:13', '2021-08-10 15:55:13'),
(90, 1, 'demo_admin/category/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"xiaomi\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"xiaomi\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"xiaomi\",\"image\":\"\\/data\\/category\\/img-xiaomi.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 15:55:16', '2021-08-10 15:55:16'),
(91, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:55:17', '2021-08-10 15:55:17'),
(92, 1, 'demo_admin/category/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"xiaomi\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"xiaomi\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"xiaomi\",\"image\":\"\\/data\\/category\\/img-xiaomi.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 15:55:17', '2021-08-10 15:55:17'),
(93, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:55:17', '2021-08-10 15:55:17'),
(94, 1, 'demo_admin/category/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:55:29', '2021-08-10 15:55:29'),
(95, 1, 'demo_admin/category/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"vivo\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"vivo\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"vivo\",\"image\":\"\\/data\\/category\\/img-vivo.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 15:55:45', '2021-08-10 15:55:45'),
(96, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:55:46', '2021-08-10 15:55:46'),
(97, 1, 'demo_admin/category/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:55:55', '2021-08-10 15:55:55'),
(98, 1, 'demo_admin/category/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:56:25', '2021-08-10 15:56:25'),
(99, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:56:40', '2021-08-10 15:56:40'),
(100, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:57:00', '2021-08-10 15:57:00'),
(101, 1, 'demo_admin/banner/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:57:58', '2021-08-10 15:57:58'),
(102, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 15:58:02', '2021-08-10 15:58:02'),
(103, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611082339\"}', '2021-08-10 15:58:03', '2021-08-10 15:58:03'),
(104, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611082338\"}', '2021-08-10 15:58:03', '2021-08-10 15:58:03'),
(105, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628611082340\"}', '2021-08-10 15:58:03', '2021-08-10 15:58:03'),
(106, 1, 'demo_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:58:16', '2021-08-10 15:58:16'),
(107, 1, 'demo_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 15:59:19', '2021-08-10 15:59:19'),
(108, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 15:59:21', '2021-08-10 15:59:21'),
(109, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611161299\"}', '2021-08-10 15:59:21', '2021-08-10 15:59:21'),
(110, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611161298\"}', '2021-08-10 15:59:21', '2021-08-10 15:59:21'),
(111, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628611161300\"}', '2021-08-10 15:59:22', '2021-08-10 15:59:22'),
(112, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:02:32', '2021-08-10 16:02:32'),
(113, 1, 'demo_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:02:35', '2021-08-10 16:02:35'),
(114, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 16:02:37', '2021-08-10 16:02:37'),
(115, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611357911\"}', '2021-08-10 16:02:38', '2021-08-10 16:02:38'),
(116, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611357910\"}', '2021-08-10 16:02:38', '2021-08-10 16:02:38'),
(117, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628611357912\"}', '2021-08-10 16:02:39', '2021-08-10 16:02:39'),
(118, 1, 'demo_admin/banner/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-1.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 16:02:43', '2021-08-10 16:02:43'),
(119, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:02:43', '2021-08-10 16:02:43'),
(120, 1, 'demo_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:02:48', '2021-08-10 16:02:48'),
(121, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 16:02:50', '2021-08-10 16:02:50'),
(122, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611371052\"}', '2021-08-10 16:02:51', '2021-08-10 16:02:51'),
(123, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611371053\"}', '2021-08-10 16:02:51', '2021-08-10 16:02:51'),
(124, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628611371054\"}', '2021-08-10 16:02:52', '2021-08-10 16:02:52'),
(125, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 16:03:13', '2021-08-10 16:03:13'),
(126, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611393224\"}', '2021-08-10 16:03:13', '2021-08-10 16:03:13'),
(127, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611393225\"}', '2021-08-10 16:03:14', '2021-08-10 16:03:14'),
(128, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628611393226\"}', '2021-08-10 16:03:14', '2021-08-10 16:03:14'),
(129, 1, 'demo_admin/banner/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-1.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 16:03:50', '2021-08-10 16:03:50'),
(130, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:03:50', '2021-08-10 16:03:50'),
(131, 1, 'demo_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:04:02', '2021-08-10 16:04:02'),
(132, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 16:04:04', '2021-08-10 16:04:04'),
(133, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611444540\"}', '2021-08-10 16:04:05', '2021-08-10 16:04:05'),
(134, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611444541\"}', '2021-08-10 16:04:05', '2021-08-10 16:04:05'),
(135, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628611444542\"}', '2021-08-10 16:04:06', '2021-08-10 16:04:06'),
(136, 1, 'demo_admin/banner/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-1 - Copy.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 16:04:14', '2021-08-10 16:04:14'),
(137, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:04:15', '2021-08-10 16:04:15'),
(138, 1, 'demo_admin/banner/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:04:34', '2021-08-10 16:04:34'),
(139, 1, 'demo_admin/banner/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:04:34', '2021-08-10 16:04:34'),
(140, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 16:04:36', '2021-08-10 16:04:36'),
(141, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611476824\"}', '2021-08-10 16:04:37', '2021-08-10 16:04:37'),
(142, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611476823\"}', '2021-08-10 16:04:37', '2021-08-10 16:04:37'),
(143, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628611476825\"}', '2021-08-10 16:04:38', '2021-08-10 16:04:38'),
(144, 1, 'demo_admin/banner/edit/3', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-2 - Copy.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"breadcrumb\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 16:04:44', '2021-08-10 16:04:44'),
(145, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:04:44', '2021-08-10 16:04:44'),
(146, 1, 'demo_admin/banner/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:05:01', '2021-08-10 16:05:01'),
(147, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 16:05:03', '2021-08-10 16:05:03'),
(148, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611503861\"}', '2021-08-10 16:05:04', '2021-08-10 16:05:04'),
(149, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611503862\"}', '2021-08-10 16:05:04', '2021-08-10 16:05:04'),
(150, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628611503863\"}', '2021-08-10 16:05:05', '2021-08-10 16:05:05'),
(151, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 16:05:06', '2021-08-10 16:05:06'),
(152, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611507049\"}', '2021-08-10 16:05:07', '2021-08-10 16:05:07'),
(153, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611507048\"}', '2021-08-10 16:05:07', '2021-08-10 16:05:07'),
(154, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628611507050\"}', '2021-08-10 16:05:08', '2021-08-10 16:05:08'),
(155, 1, 'demo_admin/banner/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/Main-banner-3-1903x600 - Copy.jpg\",\"url\":null,\"target\":\"_self\",\"html\":\"<h1 class=\\\"swiper-title-1\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"100\\\">Top-notch Furniture<\\/h1><p class=\\\"biggest text-white-70\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"200\\\">Sofa Store provides the best furniture and accessories for homes and offices.<\\/p><div class=\\\"button-wrap\\\" data-caption-animate=\\\"fadeInUp\\\" data-caption-delay=\\\"300\\\"> <span class=\\\"button button-zachem-tak-delat button-white button-zakaria\\\"> Shop now<\\/span> <\\/div>\",\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 16:05:19', '2021-08-10 16:05:19'),
(156, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:05:19', '2021-08-10 16:05:19'),
(157, 1, 'demo_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:05:26', '2021-08-10 16:05:26'),
(158, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 16:05:30', '2021-08-10 16:05:30'),
(159, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611530760\"}', '2021-08-10 16:05:31', '2021-08-10 16:05:31'),
(160, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611530761\"}', '2021-08-10 16:05:31', '2021-08-10 16:05:31');
INSERT INTO `demo_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(161, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628611530762\"}', '2021-08-10 16:05:32', '2021-08-10 16:05:32'),
(162, 1, 'demo_admin/banner/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/Main-banner-1-1903x600 - Copy.jpg\",\"url\":null,\"target\":\"_self\",\"html\":\"<h1 class=\\\"swiper-title-1\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"100\\\">Top-notch Furniture<\\/h1><p class=\\\"biggest text-white-70\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"200\\\">Sofa Store provides the best furniture and accessories for homes and offices.<\\/p><div class=\\\"button-wrap\\\" data-caption-animate=\\\"fadeInUp\\\" data-caption-delay=\\\"300\\\"> <span class=\\\"button button-zachem-tak-delat button-white button-zakaria\\\"> Shop now<\\/span> <\\/div>\",\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 16:05:36', '2021-08-10 16:05:36'),
(163, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:05:37', '2021-08-10 16:05:37'),
(164, 1, 'demo_admin/banner/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:07:15', '2021-08-10 16:07:15'),
(165, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 16:07:17', '2021-08-10 16:07:17'),
(166, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611638095\"}', '2021-08-10 16:07:18', '2021-08-10 16:07:18'),
(167, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628611638096\"}', '2021-08-10 16:07:18', '2021-08-10 16:07:18'),
(168, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628611638097\"}', '2021-08-10 16:07:19', '2021-08-10 16:07:19'),
(169, 1, 'demo_admin/banner/edit/3', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-2 - Copy.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"breadcrumb\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 16:07:23', '2021-08-10 16:07:23'),
(170, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:07:24', '2021-08-10 16:07:24'),
(171, 1, 'demo_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:08:28', '2021-08-10 16:08:28'),
(172, 1, 'demo_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:08:33', '2021-08-10 16:08:33'),
(173, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:08:37', '2021-08-10 16:08:37'),
(174, 1, 'demo_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:08:45', '2021-08-10 16:08:45'),
(175, 1, 'demo_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:08:49', '2021-08-10 16:08:49'),
(176, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:09:05', '2021-08-10 16:09:05'),
(177, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:10:07', '2021-08-10 16:10:07'),
(178, 1, 'demo_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:10:12', '2021-08-10 16:10:12'),
(179, 1, 'demo_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:16:46', '2021-08-10 16:16:46'),
(180, 1, 'demo_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:16:50', '2021-08-10 16:16:50'),
(181, 1, 'demo_admin/store_block', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:16:56', '2021-08-10 16:16:56'),
(182, 1, 'demo_admin/store_block/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:17:17', '2021-08-10 16:17:17'),
(183, 1, 'demo_admin/store_link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:17:29', '2021-08-10 16:17:29'),
(184, 1, 'demo_admin/store_css', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:17:33', '2021-08-10 16:17:33'),
(185, 1, 'demo_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:17:37', '2021-08-10 16:17:37'),
(186, 1, 'demo_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:17:52', '2021-08-10 16:17:52'),
(187, 1, 'demo_admin/page/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:17:56', '2021-08-10 16:17:56'),
(188, 1, 'demo_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:18:09', '2021-08-10 16:18:09'),
(189, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:18:12', '2021-08-10 16:18:12'),
(190, 1, 'demo_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:18:44', '2021-08-10 16:18:44'),
(191, 1, 'demo_admin/banner/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:18:51', '2021-08-10 16:18:51'),
(192, 1, 'demo_admin/banner/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:19:20', '2021-08-10 16:19:20'),
(193, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 16:19:24', '2021-08-10 16:19:24'),
(194, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628612364925\"}', '2021-08-10 16:19:25', '2021-08-10 16:19:25'),
(195, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628612364924\"}', '2021-08-10 16:19:25', '2021-08-10 16:19:25'),
(196, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628612364926\"}', '2021-08-10 16:19:26', '2021-08-10 16:19:26'),
(197, 1, 'demo_admin/banner/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/Main-banner-3-1903x600.jpg\",\"url\":null,\"target\":\"_self\",\"html\":\"<h1 class=\\\"swiper-title-1\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"100\\\">Top-notch Furniture<\\/h1><p class=\\\"biggest text-white-70\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"200\\\">Sofa Store provides the best furniture and accessories for homes and offices.<\\/p><div class=\\\"button-wrap\\\" data-caption-animate=\\\"fadeInUp\\\" data-caption-delay=\\\"300\\\"> <span class=\\\"button button-zachem-tak-delat button-white button-zakaria\\\"> Shop now<\\/span> <\\/div>\",\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 16:19:37', '2021-08-10 16:19:37'),
(198, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:19:38', '2021-08-10 16:19:38'),
(199, 1, 'demo_admin/banner/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:20:14', '2021-08-10 16:20:14'),
(200, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 16:23:03', '2021-08-10 16:23:03'),
(201, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628612583669\"}', '2021-08-10 16:23:04', '2021-08-10 16:23:04'),
(202, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628612583670\"}', '2021-08-10 16:23:04', '2021-08-10 16:23:04'),
(203, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628612583671\"}', '2021-08-10 16:23:05', '2021-08-10 16:23:05'),
(204, 1, 'demo_admin/banner/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/Main-banner-3-1903x600 - Copy.jpg\",\"url\":null,\"target\":\"_self\",\"html\":\"<h1 class=\\\"swiper-title-1\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"100\\\">Top-notch Furniture<\\/h1><p class=\\\"biggest text-white-70\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"200\\\">Sofa Store provides the best furniture and accessories for homes and offices.<\\/p><div class=\\\"button-wrap\\\" data-caption-animate=\\\"fadeInUp\\\" data-caption-delay=\\\"300\\\"> <span class=\\\"button button-zachem-tak-delat button-white button-zakaria\\\"> Shop now<\\/span> <\\/div>\",\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 16:23:09', '2021-08-10 16:23:09'),
(205, 1, 'demo_admin/banner/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/Main-banner-3-1903x600 - Copy.jpg\",\"url\":null,\"target\":\"_self\",\"html\":\"<h1 class=\\\"swiper-title-1\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"100\\\">Top-notch Furniture<\\/h1><p class=\\\"biggest text-white-70\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"200\\\">Sofa Store provides the best furniture and accessories for homes and offices.<\\/p><div class=\\\"button-wrap\\\" data-caption-animate=\\\"fadeInUp\\\" data-caption-delay=\\\"300\\\"> <span class=\\\"button button-zachem-tak-delat button-white button-zakaria\\\"> Shop now<\\/span> <\\/div>\",\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 16:23:09', '2021-08-10 16:23:09'),
(206, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:23:10', '2021-08-10 16:23:10'),
(207, 1, 'demo_admin/banner/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:26:42', '2021-08-10 16:26:42'),
(208, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 16:26:46', '2021-08-10 16:26:46'),
(209, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628612806355\"}', '2021-08-10 16:26:47', '2021-08-10 16:26:47'),
(210, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628612806356\"}', '2021-08-10 16:26:47', '2021-08-10 16:26:47'),
(211, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628612806357\"}', '2021-08-10 16:26:47', '2021-08-10 16:26:47'),
(212, 1, 'demo_admin/banner/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/Main-banner-3-1903x600.jpg\",\"url\":null,\"target\":\"_self\",\"html\":\"<h1 class=\\\"swiper-title-1\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"100\\\">Top-notch Furniture<\\/h1><p class=\\\"biggest text-white-70\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"200\\\">Sofa Store provides the best furniture and accessories for homes and offices.<\\/p><div class=\\\"button-wrap\\\" data-caption-animate=\\\"fadeInUp\\\" data-caption-delay=\\\"300\\\"> <span class=\\\"button button-zachem-tak-delat button-white button-zakaria\\\"> Shop now<\\/span> <\\/div>\",\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 16:26:58', '2021-08-10 16:26:58'),
(213, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:26:59', '2021-08-10 16:26:59'),
(214, 1, 'demo_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:30:52', '2021-08-10 16:30:52'),
(215, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 16:30:54', '2021-08-10 16:30:54'),
(216, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628613055003\"}', '2021-08-10 16:30:55', '2021-08-10 16:30:55'),
(217, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628613055004\"}', '2021-08-10 16:30:55', '2021-08-10 16:30:55'),
(218, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628613055005\"}', '2021-08-10 16:30:56', '2021-08-10 16:30:56'),
(219, 1, 'demo_admin/banner/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/Main-banner-1-1903x600.jpg\",\"url\":null,\"target\":\"_self\",\"html\":\"<h1 class=\\\"swiper-title-1\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"100\\\">Top-notch Furniture<\\/h1><p class=\\\"biggest text-white-70\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"200\\\">Sofa Store provides the best furniture and accessories for homes and offices.<\\/p><div class=\\\"button-wrap\\\" data-caption-animate=\\\"fadeInUp\\\" data-caption-delay=\\\"300\\\"> <span class=\\\"button button-zachem-tak-delat button-white button-zakaria\\\"> Shop now<\\/span> <\\/div>\",\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"1HKc97SglAqWxSl5OMUS8EH2eXLC3cPL8spWySSp\"}', '2021-08-10 16:31:00', '2021-08-10 16:31:00'),
(220, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:31:00', '2021-08-10 16:31:00'),
(221, 1, 'demo_admin/banner/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-10 16:31:24', '2021-08-10 16:31:24'),
(222, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-10 16:31:26', '2021-08-10 16:31:26'),
(223, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628613086900\"}', '2021-08-10 16:31:27', '2021-08-10 16:31:27'),
(224, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628613086901\"}', '2021-08-10 16:31:27', '2021-08-10 16:31:27'),
(225, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628613086902\"}', '2021-08-10 16:31:28', '2021-08-10 16:31:28'),
(226, 1, 'demo_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:15:42', '2021-08-11 01:15:42'),
(227, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:15:53', '2021-08-11 01:15:53'),
(228, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:15:54', '2021-08-11 01:15:54'),
(229, 1, 'demo_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:15:56', '2021-08-11 01:15:56'),
(230, 1, 'demo_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:15:57', '2021-08-11 01:15:57'),
(231, 1, 'demo_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:15:58', '2021-08-11 01:15:58'),
(232, 1, 'demo_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:16:08', '2021-08-11 01:16:08'),
(233, 1, 'demo_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:16:41', '2021-08-11 01:16:41'),
(234, 1, 'demo_admin/news/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:18:04', '2021-08-11 01:18:04'),
(235, 1, 'demo_admin/news/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:18:20', '2021-08-11 01:18:20'),
(236, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:20:57', '2021-08-11 01:20:57'),
(237, 1, 'demo_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:21:05', '2021-08-11 01:21:05'),
(238, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-11 01:21:07', '2021-08-11 01:21:07'),
(239, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628644867709\"}', '2021-08-11 01:21:08', '2021-08-11 01:21:08'),
(240, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628644867708\"}', '2021-08-11 01:21:08', '2021-08-11 01:21:08'),
(241, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628644867710\"}', '2021-08-11 01:21:08', '2021-08-11 01:21:08'),
(242, 1, 'demo_admin/banner/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:21:35', '2021-08-11 01:21:35'),
(243, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-11 01:23:33', '2021-08-11 01:23:33'),
(244, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628645013642\"}', '2021-08-11 01:23:33', '2021-08-11 01:23:33'),
(245, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628645013641\"}', '2021-08-11 01:23:33', '2021-08-11 01:23:33'),
(246, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628645013643\"}', '2021-08-11 01:23:34', '2021-08-11 01:23:34'),
(247, 1, 'demo_admin/banner/edit/3', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-2 - Copy.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"breadcrumb\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"Ht8pVqpQYx0yXAyOab1bCvF5W6n7NPb8aWXyCglG\"}', '2021-08-11 01:23:42', '2021-08-11 01:23:42'),
(248, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:23:42', '2021-08-11 01:23:42'),
(249, 1, 'demo_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:23:49', '2021-08-11 01:23:49'),
(250, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-11 01:23:51', '2021-08-11 01:23:51'),
(251, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628645031795\"}', '2021-08-11 01:23:52', '2021-08-11 01:23:52'),
(252, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628645031794\"}', '2021-08-11 01:23:52', '2021-08-11 01:23:52'),
(253, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628645031796\"}', '2021-08-11 01:23:52', '2021-08-11 01:23:52'),
(254, 1, 'demo_admin/banner/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-1 - Copy.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"Ht8pVqpQYx0yXAyOab1bCvF5W6n7NPb8aWXyCglG\"}', '2021-08-11 01:23:59', '2021-08-11 01:23:59'),
(255, 1, 'demo_admin/banner/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-1 - Copy.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"Ht8pVqpQYx0yXAyOab1bCvF5W6n7NPb8aWXyCglG\"}', '2021-08-11 01:23:59', '2021-08-11 01:23:59'),
(256, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:23:59', '2021-08-11 01:23:59'),
(257, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:24:07', '2021-08-11 01:24:07'),
(258, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:24:22', '2021-08-11 01:24:22'),
(259, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:26:50', '2021-08-11 01:26:50'),
(260, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:26:52', '2021-08-11 01:26:52'),
(261, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:26:54', '2021-08-11 01:26:54'),
(262, 1, 'demo_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:27:11', '2021-08-11 01:27:11'),
(263, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-11 01:28:31', '2021-08-11 01:28:31'),
(264, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628645311936\"}', '2021-08-11 01:28:32', '2021-08-11 01:28:32'),
(265, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628645311937\"}', '2021-08-11 01:28:32', '2021-08-11 01:28:32'),
(266, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628645311938\"}', '2021-08-11 01:28:32', '2021-08-11 01:28:32'),
(267, 1, 'demo_admin/banner/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-1.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"Ht8pVqpQYx0yXAyOab1bCvF5W6n7NPb8aWXyCglG\"}', '2021-08-11 01:28:36', '2021-08-11 01:28:36'),
(268, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:28:36', '2021-08-11 01:28:36'),
(269, 1, 'demo_admin/banner/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:28:39', '2021-08-11 01:28:39'),
(270, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-11 01:28:40', '2021-08-11 01:28:40'),
(271, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628645320921\"}', '2021-08-11 01:28:41', '2021-08-11 01:28:41'),
(272, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628645320922\"}', '2021-08-11 01:28:41', '2021-08-11 01:28:41'),
(273, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628645320923\"}', '2021-08-11 01:28:41', '2021-08-11 01:28:41'),
(274, 1, 'demo_admin/banner/edit/3', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-2.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"breadcrumb\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"Ht8pVqpQYx0yXAyOab1bCvF5W6n7NPb8aWXyCglG\"}', '2021-08-11 01:28:46', '2021-08-11 01:28:46'),
(275, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:28:46', '2021-08-11 01:28:46'),
(276, 1, 'demo_admin/banner/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:52:53', '2021-08-11 01:52:53'),
(277, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-11 01:52:55', '2021-08-11 01:52:55'),
(278, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628646775137\"}', '2021-08-11 01:52:55', '2021-08-11 01:52:55'),
(279, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628646775138\"}', '2021-08-11 01:52:55', '2021-08-11 01:52:55'),
(280, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628646775139\"}', '2021-08-11 01:52:55', '2021-08-11 01:52:55'),
(281, 1, 'demo_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:53:43', '2021-08-11 01:53:43'),
(282, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-11 01:53:45', '2021-08-11 01:53:45'),
(283, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628646825573\"}', '2021-08-11 01:53:45', '2021-08-11 01:53:45'),
(284, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628646825572\"}', '2021-08-11 01:53:45', '2021-08-11 01:53:45'),
(285, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628646825574\"}', '2021-08-11 01:53:46', '2021-08-11 01:53:46'),
(286, 1, 'demo_admin/banner/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/Main-banner-1-1903x600 - Copy.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"Ht8pVqpQYx0yXAyOab1bCvF5W6n7NPb8aWXyCglG\"}', '2021-08-11 01:54:07', '2021-08-11 01:54:07'),
(287, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:54:08', '2021-08-11 01:54:08'),
(288, 1, 'demo_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:54:10', '2021-08-11 01:54:10'),
(289, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-11 01:54:17', '2021-08-11 01:54:17'),
(290, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628646857562\"}', '2021-08-11 01:54:17', '2021-08-11 01:54:17'),
(291, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628646857563\"}', '2021-08-11 01:54:17', '2021-08-11 01:54:17'),
(292, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628646857564\"}', '2021-08-11 01:54:18', '2021-08-11 01:54:18'),
(293, 1, 'demo_admin/banner/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/Main-banner-1-1903x6001 - Copy.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"Ht8pVqpQYx0yXAyOab1bCvF5W6n7NPb8aWXyCglG\"}', '2021-08-11 01:54:29', '2021-08-11 01:54:29'),
(294, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:54:30', '2021-08-11 01:54:30'),
(295, 1, 'demo_admin/banner/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:56:41', '2021-08-11 01:56:41'),
(296, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"banner\"}', '2021-08-11 01:56:43', '2021-08-11 01:56:43'),
(297, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628647003572\"}', '2021-08-11 01:56:43', '2021-08-11 01:56:43'),
(298, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1628647003573\"}', '2021-08-11 01:56:43', '2021-08-11 01:56:43'),
(299, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628647003574\"}', '2021-08-11 01:56:44', '2021-08-11 01:56:44'),
(300, 1, 'demo_admin/banner/edit/3', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-1.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"breadcrumb\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"Ht8pVqpQYx0yXAyOab1bCvF5W6n7NPb8aWXyCglG\"}', '2021-08-11 01:56:49', '2021-08-11 01:56:49'),
(301, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:56:49', '2021-08-11 01:56:49'),
(302, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:58:17', '2021-08-11 01:58:17'),
(303, 1, 'demo_admin/product/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:58:21', '2021-08-11 01:58:21'),
(304, 1, 'demo_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:58:39', '2021-08-11 01:58:39'),
(305, 1, 'demo_admin/product/edit/16', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:58:43', '2021-08-11 01:58:43'),
(306, 1, 'demo_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:59:02', '2021-08-11 01:59:02'),
(307, 1, 'demo_admin/product/edit/15', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:59:06', '2021-08-11 01:59:06'),
(308, 1, 'demo_admin/product/edit/14', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:59:11', '2021-08-11 01:59:11'),
(309, 1, 'demo_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:59:15', '2021-08-11 01:59:15'),
(310, 1, 'demo_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:59:21', '2021-08-11 01:59:21'),
(311, 1, 'demo_admin/product/build_create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:59:33', '2021-08-11 01:59:33'),
(312, 1, 'demo_admin/product/edit/16', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:59:51', '2021-08-11 01:59:51'),
(313, 1, 'demo_admin/product/edit/15', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:59:53', '2021-08-11 01:59:53'),
(314, 1, 'demo_admin/product/build_create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 01:59:56', '2021-08-11 01:59:56'),
(315, 1, 'demo_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 02:00:08', '2021-08-11 02:00:08'),
(316, 1, 'demo_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 02:00:17', '2021-08-11 02:00:17'),
(317, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 02:16:08', '2021-08-11 02:16:08'),
(318, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 02:16:11', '2021-08-11 02:16:11'),
(319, 1, 'demo_admin/product/edit/15', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 02:16:18', '2021-08-11 02:16:18'),
(320, 1, 'demo_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 02:17:02', '2021-08-11 02:17:02'),
(321, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 02:18:42', '2021-08-11 02:18:42'),
(322, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628648323261\"}', '2021-08-11 02:18:43', '2021-08-11 02:18:43'),
(323, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628648323262\"}', '2021-08-11 02:18:44', '2021-08-11 02:18:44');
INSERT INTO `demo_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(324, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628648323263\"}', '2021-08-11 02:18:45', '2021-08-11 02:18:45'),
(325, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 02:20:46', '2021-08-11 02:20:46'),
(326, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628648446334\"}', '2021-08-11 02:20:46', '2021-08-11 02:20:46'),
(327, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628648446335\"}', '2021-08-11 02:20:47', '2021-08-11 02:20:47'),
(328, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628648446336\"}', '2021-08-11 02:20:48', '2021-08-11 02:20:48'),
(329, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 02:20:57', '2021-08-11 02:20:57'),
(330, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628648457185\"}', '2021-08-11 02:20:57', '2021-08-11 02:20:57'),
(331, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628648457186\"}', '2021-08-11 02:20:58', '2021-08-11 02:20:58'),
(332, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628648457187\"}', '2021-08-11 02:20:58', '2021-08-11 02:20:58'),
(333, 1, 'demo_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 04:37:24', '2021-08-11 04:37:24'),
(334, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 04:37:34', '2021-08-11 04:37:34'),
(335, 1, 'demo_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 04:37:37', '2021-08-11 04:37:37'),
(336, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 04:37:42', '2021-08-11 04:37:42'),
(337, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628656663015\"}', '2021-08-11 04:37:43', '2021-08-11 04:37:43'),
(338, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628656663014\"}', '2021-08-11 04:37:43', '2021-08-11 04:37:43'),
(339, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628656663016\"}', '2021-08-11 04:37:45', '2021-08-11 04:37:45'),
(340, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 04:37:49', '2021-08-11 04:37:49'),
(341, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628656670019\"}', '2021-08-11 04:37:51', '2021-08-11 04:37:51'),
(342, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628656670020\"}', '2021-08-11 04:37:51', '2021-08-11 04:37:51'),
(343, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628656670021\"}', '2021-08-11 04:37:52', '2021-08-11 04:37:52'),
(344, 1, 'demo_admin/product/edit/17', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPhone 12 Pro Max 512GB\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"iPhone 12 Pro Max 512GB\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product-17.png\",\"sub_image\":[\"\\/data\\/product\\/product-17-1.png\",\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-17\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Blue\",\"White\"],\"add_price\":[\"50\",\"0\"]},\"2\":{\"name\":[\"S\",\"XL\"],\"add_price\":[\"20\",\"30\"]}},\"_token\":\"H4YGisqjGHiGzCLeRUS5GIAkZa5LwhPwbXOewcyp\"}', '2021-08-11 04:38:07', '2021-08-11 04:38:07'),
(345, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 04:38:08', '2021-08-11 04:38:08'),
(346, 1, 'demo_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:18:57', '2021-08-11 08:18:57'),
(347, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 08:23:50', '2021-08-11 08:23:50'),
(348, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628670230161\"}', '2021-08-11 08:23:50', '2021-08-11 08:23:50'),
(349, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628670230160\"}', '2021-08-11 08:23:50', '2021-08-11 08:23:50'),
(350, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628670230162\"}', '2021-08-11 08:23:51', '2021-08-11 08:23:51'),
(351, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 08:23:56', '2021-08-11 08:23:56'),
(352, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628670236489\"}', '2021-08-11 08:23:56', '2021-08-11 08:23:56'),
(353, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628670236490\"}', '2021-08-11 08:23:57', '2021-08-11 08:23:57'),
(354, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628670236491\"}', '2021-08-11 08:23:57', '2021-08-11 08:23:57'),
(355, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 08:24:01', '2021-08-11 08:24:01'),
(356, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628670241723\"}', '2021-08-11 08:24:02', '2021-08-11 08:24:02'),
(357, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628670241724\"}', '2021-08-11 08:24:02', '2021-08-11 08:24:02'),
(358, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628670241725\"}', '2021-08-11 08:24:02', '2021-08-11 08:24:02'),
(359, 1, 'demo_admin/product/edit/17', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPhone Xs 64GB International New Drift BH has not been activated\",\"keyword\":null,\"description\":null,\"content\":\"<p>The phone&nbsp;iPhone XS 64GB&nbsp;is 100% new, unused, unactivated, full of genuine accessories. And when activated, the user will be delayed for a few months instead of the full 12-month warranty.<\\/p>\"},\"vi\":{\"name\":\"iPhone Xs 64GB Qu\\u1ed1c T\\u1ebf M\\u1edbi Tr\\u00f4i BH ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"keyword\":null,\"description\":null,\"content\":\"<p>Chi\\u1ebfc \\u0111i\\u1ec7n tho\\u1ea1i&nbsp;<strong>iPhone XS 64GB<\\/strong>&nbsp;l&agrave; h&agrave;ng m\\u1edbi 100%, ch\\u01b0a qua s\\u1eed d\\u1ee5ng, ch\\u01b0a k&iacute;ch ho\\u1ea1t, \\u0111\\u1ea7y \\u0111\\u1ee7 ph\\u1ee5 ki\\u1ec7n ch&iacute;nh h&atilde;ng. V&agrave; khi k&iacute;ch ho\\u1ea1t l&ecirc;n ng\\u01b0\\u1eddi d&ugrave;ng s\\u1ebd b\\u1ecb tr&ocirc;i th\\u1eddi gian b\\u1ea3o h&agrave;nh v&agrave;i th&aacute;ng thay v&igrave; \\u0111\\u1ee7 b\\u1ea3o h&agrave;nh 12 th&aacute;ng.<br \\/>\\r\\n<br \\/>\\r\\n<strong>GI\\u1edaI THI\\u1ec6U S\\u1ea2N PH\\u1ea8M<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>iPhone Xs c\\u0169 64GB<\\/strong>&nbsp;v\\u1eabn &aacute;p d\\u1ee5ng nguy&ecirc;n t\\u1eafc thi\\u1ebft k\\u1ebf quen thu\\u1ed9c v\\u1edbi ph\\u1ea7n khung \\u0111\\u01b0\\u1ee3c l&agrave;m t\\u1eeb th&eacute;p kh&ocirc;ng g\\u1ec9. Hai m\\u1eb7t tr\\u01b0\\u1edbc sau \\u0111\\u01b0\\u1ee3c \\u1ed1p k&iacute;nh c\\u01b0\\u1eddng l\\u1ef1c th\\u1ebf h\\u1ec7 m\\u1edbi nh\\u1eb1m gi&uacute;p gi\\u1ea3m thi\\u1ec3u t\\u1ed1i \\u0111a thi\\u1ec7t h\\u1ea1i khi va \\u0111\\u1eadp. C&aacute;c chi ti\\u1ebft nh\\u1ecf \\u0111\\u1ea1t \\u0111\\u1ed9 ho&agrave;n thi\\u1ec7n cao, \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf t\\u1ec9 m\\u1ec9.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"520\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 780px) 100vw, 780px\\\" src=\\\"https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex.jpg\\\" srcset=\\\"https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex.jpg 780w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-300x200.jpg 300w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-768x512.jpg 768w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-24x16.jpg 24w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-36x24.jpg 36w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-48x32.jpg 48w\\\" width=\\\"780\\\" \\/><\\/p>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf l\\u1ea7n n&agrave;y c\\u1ee7a m&aacute;y v\\u1eabn ch\\u1ecbu nhi\\u1ec1u \\u1ea3nh h\\u01b0\\u1edfng t\\u1eeb iPhone X. K&iacute;ch th\\u01b0\\u1edbc m&agrave;n h&igrave;nh kh&ocirc;ng qu&aacute; l\\u1edbn c\\u1ee7a Xs gi&uacute;p ng\\u01b0\\u1eddi d&ugrave;ng d\\u1ec5 d&agrave;ng thao t&aacute;c h\\u01a1n. Tr\\u1ecdng l\\u01b0\\u1ee3ng c\\u1ee7a m&aacute;y ch\\u1ec9 177gr c\\u0169ng g&oacute;p ph\\u1ea7n h\\u1ea1n ch\\u1ebf t&igrave;nh tr\\u1ea1ng m\\u1ecfi tay khi c\\u1ea7m m&aacute;y l&acirc;u.<\\/p>\\r\\n\\r\\n<p>M\\u1eb7t l\\u01b0ng v\\u1eabn gi\\u1eef phong c&aacute;ch s\\u1eafp x\\u1ebfp quen thu\\u1ed9c. C\\u1ee5m camera ch&iacute;nh \\u0111\\u01b0\\u1ee3c \\u0111\\u1eb7t d\\u1ecdc th&acirc;n m&aacute;y c&ugrave;ng v\\u1edbi \\u0111&oacute; l&agrave; logo qu\\u1ea3 t&aacute;o c\\u1eafn d\\u1edf quen thu\\u1ed9c. iPhone Xs c\\u0169 64GB c&ograve;n \\u0111\\u01b0\\u1ee3c Apple trang b\\u1ecb t&iacute;nh n\\u0103ng ch\\u1ed1ng n\\u01b0\\u1edbc b\\u1ee5i IP68.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product-17.png\",\"sub_image\":[\"\\/data\\/product\\/product-17-1.png\",\"\\/data\\/product\\/product-17-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-17\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000000\",\"price\":\"11290000\",\"tax_id\":\"auto\",\"price_promotion\":\"10790000\",\"price_promotion_start\":\"2021-08-11\",\"price_promotion_end\":\"2021-08-31\",\"stock\":\"65\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"-1\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 08:27:45', '2021-08-11 08:27:45'),
(360, 1, 'demo_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:27:46', '2021-08-11 08:27:46'),
(361, 1, 'demo_admin/product/edit/17', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPhone Xs 64GB International New Drift BH has not been activated\",\"keyword\":null,\"description\":null,\"content\":\"<p>The phone&nbsp;iPhone XS 64GB&nbsp;is 100% new, unused, unactivated, full of genuine accessories. And when activated, the user will be delayed for a few months instead of the full 12-month warranty.<\\/p>\"},\"vi\":{\"name\":\"iPhone Xs 64GB Qu\\u1ed1c T\\u1ebf M\\u1edbi Tr\\u00f4i BH ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"keyword\":null,\"description\":null,\"content\":\"<p>Chi\\u1ebfc \\u0111i\\u1ec7n tho\\u1ea1i&nbsp;<strong>iPhone XS 64GB<\\/strong>&nbsp;l&agrave; h&agrave;ng m\\u1edbi 100%, ch\\u01b0a qua s\\u1eed d\\u1ee5ng, ch\\u01b0a k&iacute;ch ho\\u1ea1t, \\u0111\\u1ea7y \\u0111\\u1ee7 ph\\u1ee5 ki\\u1ec7n ch&iacute;nh h&atilde;ng. V&agrave; khi k&iacute;ch ho\\u1ea1t l&ecirc;n ng\\u01b0\\u1eddi d&ugrave;ng s\\u1ebd b\\u1ecb tr&ocirc;i th\\u1eddi gian b\\u1ea3o h&agrave;nh v&agrave;i th&aacute;ng thay v&igrave; \\u0111\\u1ee7 b\\u1ea3o h&agrave;nh 12 th&aacute;ng.<br \\/>\\r\\n<br \\/>\\r\\n<strong>GI\\u1edaI THI\\u1ec6U S\\u1ea2N PH\\u1ea8M<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>iPhone Xs c\\u0169 64GB<\\/strong>&nbsp;v\\u1eabn &aacute;p d\\u1ee5ng nguy&ecirc;n t\\u1eafc thi\\u1ebft k\\u1ebf quen thu\\u1ed9c v\\u1edbi ph\\u1ea7n khung \\u0111\\u01b0\\u1ee3c l&agrave;m t\\u1eeb th&eacute;p kh&ocirc;ng g\\u1ec9. Hai m\\u1eb7t tr\\u01b0\\u1edbc sau \\u0111\\u01b0\\u1ee3c \\u1ed1p k&iacute;nh c\\u01b0\\u1eddng l\\u1ef1c th\\u1ebf h\\u1ec7 m\\u1edbi nh\\u1eb1m gi&uacute;p gi\\u1ea3m thi\\u1ec3u t\\u1ed1i \\u0111a thi\\u1ec7t h\\u1ea1i khi va \\u0111\\u1eadp. C&aacute;c chi ti\\u1ebft nh\\u1ecf \\u0111\\u1ea1t \\u0111\\u1ed9 ho&agrave;n thi\\u1ec7n cao, \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf t\\u1ec9 m\\u1ec9.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"520\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 780px) 100vw, 780px\\\" src=\\\"https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex.jpg\\\" srcset=\\\"https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex.jpg 780w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-300x200.jpg 300w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-768x512.jpg 768w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-24x16.jpg 24w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-36x24.jpg 36w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-48x32.jpg 48w\\\" width=\\\"780\\\" \\/><\\/p>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf l\\u1ea7n n&agrave;y c\\u1ee7a m&aacute;y v\\u1eabn ch\\u1ecbu nhi\\u1ec1u \\u1ea3nh h\\u01b0\\u1edfng t\\u1eeb iPhone X. K&iacute;ch th\\u01b0\\u1edbc m&agrave;n h&igrave;nh kh&ocirc;ng qu&aacute; l\\u1edbn c\\u1ee7a Xs gi&uacute;p ng\\u01b0\\u1eddi d&ugrave;ng d\\u1ec5 d&agrave;ng thao t&aacute;c h\\u01a1n. Tr\\u1ecdng l\\u01b0\\u1ee3ng c\\u1ee7a m&aacute;y ch\\u1ec9 177gr c\\u0169ng g&oacute;p ph\\u1ea7n h\\u1ea1n ch\\u1ebf t&igrave;nh tr\\u1ea1ng m\\u1ecfi tay khi c\\u1ea7m m&aacute;y l&acirc;u.<\\/p>\\r\\n\\r\\n<p>M\\u1eb7t l\\u01b0ng v\\u1eabn gi\\u1eef phong c&aacute;ch s\\u1eafp x\\u1ebfp quen thu\\u1ed9c. C\\u1ee5m camera ch&iacute;nh \\u0111\\u01b0\\u1ee3c \\u0111\\u1eb7t d\\u1ecdc th&acirc;n m&aacute;y c&ugrave;ng v\\u1edbi \\u0111&oacute; l&agrave; logo qu\\u1ea3 t&aacute;o c\\u1eafn d\\u1edf quen thu\\u1ed9c. iPhone Xs c\\u0169 64GB c&ograve;n \\u0111\\u01b0\\u1ee3c Apple trang b\\u1ecb t&iacute;nh n\\u0103ng ch\\u1ed1ng n\\u01b0\\u1edbc b\\u1ee5i IP68.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product-17.png\",\"sub_image\":[\"\\/data\\/product\\/product-17-1.png\",\"\\/data\\/product\\/product-17-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-17\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000000\",\"price\":\"11290000\",\"tax_id\":\"auto\",\"price_promotion\":\"10790000\",\"price_promotion_start\":\"2021-08-11\",\"price_promotion_end\":\"2021-08-31\",\"stock\":\"65\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Blue\",\"White\"],\"add_price\":[\"50\",\"0\"]},\"2\":{\"name\":[\"S\",\"XL\"],\"add_price\":[\"20\",\"30\"]}},\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 08:27:59', '2021-08-11 08:27:59'),
(362, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:28:00', '2021-08-11 08:28:00'),
(363, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:29:07', '2021-08-11 08:29:07'),
(364, 1, 'demo_admin/category/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:30:26', '2021-08-11 08:30:26'),
(365, 1, 'demo_admin/category/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Macbook\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Macbook\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"macbook\",\"image\":\"\\/data\\/category\\/img-iphone.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 08:31:55', '2021-08-11 08:31:55'),
(366, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:31:55', '2021-08-11 08:31:55'),
(367, 1, 'demo_admin/category/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:32:00', '2021-08-11 08:32:00'),
(368, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"category\"}', '2021-08-11 08:33:05', '2021-08-11 08:33:05'),
(369, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628670785244\"}', '2021-08-11 08:33:05', '2021-08-11 08:33:05'),
(370, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1628670785245\"}', '2021-08-11 08:33:05', '2021-08-11 08:33:05'),
(371, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628670785246\"}', '2021-08-11 08:33:05', '2021-08-11 08:33:05'),
(372, 1, 'demo_admin/category/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Smartphone\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"dienthoai\",\"image\":\"\\/data\\/category\\/img-samsung.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 08:33:19', '2021-08-11 08:33:19'),
(373, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:33:19', '2021-08-11 08:33:19'),
(374, 1, 'demo_admin/category/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:33:23', '2021-08-11 08:33:23'),
(375, 1, 'demo_admin/category/edit/3', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Apple Watch\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Apple Watch\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"applewatch\",\"image\":\"\\/data\\/category\\/img-oppo.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 08:33:50', '2021-08-11 08:33:50'),
(376, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:33:50', '2021-08-11 08:33:50'),
(377, 1, 'demo_admin/category/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:33:54', '2021-08-11 08:33:54'),
(378, 1, 'demo_admin/category/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"IPad\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"iPad\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"ipad\",\"image\":\"\\/data\\/category\\/img-xiaomi.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 08:34:39', '2021-08-11 08:34:39'),
(379, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:34:39', '2021-08-11 08:34:39'),
(380, 1, 'demo_admin/category/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:34:44', '2021-08-11 08:34:44'),
(381, 1, 'demo_admin/category/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Accessory\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"phukien\",\"image\":\"\\/data\\/category\\/img-vivo.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 08:35:14', '2021-08-11 08:35:14'),
(382, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:35:14', '2021-08-11 08:35:14'),
(383, 1, 'demo_admin/category/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:35:16', '2021-08-11 08:35:16'),
(384, 1, 'demo_admin/category/edit/9', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Repair\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"S\\u1eefa ch\\u1eefa\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"suachua\",\"image\":\"\\/data\\/category\\/img-realme.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 08:35:43', '2021-08-11 08:35:43'),
(385, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:35:43', '2021-08-11 08:35:43'),
(386, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:40:39', '2021-08-11 08:40:39'),
(387, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:40:41', '2021-08-11 08:40:41'),
(388, 1, 'demo_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:40:43', '2021-08-11 08:40:43'),
(389, 1, 'demo_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:40:52', '2021-08-11 08:40:52'),
(390, 1, 'demo_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:44:35', '2021-08-11 08:44:35'),
(391, 1, 'demo_admin/product/edit/17', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPhone Xs 64GB International New Drift BH has not been activated\",\"keyword\":null,\"description\":null,\"content\":\"<p>The phone&nbsp;iPhone XS 64GB&nbsp;is 100% new, unused, unactivated, full of genuine accessories. And when activated, the user will be delayed for a few months instead of the full 12-month warranty.<\\/p>\"},\"vi\":{\"name\":\"iPhone Xs 64GB Qu\\u1ed1c T\\u1ebf M\\u1edbi Tr\\u00f4i BH ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"keyword\":null,\"description\":null,\"content\":\"<p>Chi\\u1ebfc \\u0111i\\u1ec7n tho\\u1ea1i&nbsp;<strong>iPhone XS 64GB<\\/strong>&nbsp;l&agrave; h&agrave;ng m\\u1edbi 100%, ch\\u01b0a qua s\\u1eed d\\u1ee5ng, ch\\u01b0a k&iacute;ch ho\\u1ea1t, \\u0111\\u1ea7y \\u0111\\u1ee7 ph\\u1ee5 ki\\u1ec7n ch&iacute;nh h&atilde;ng. V&agrave; khi k&iacute;ch ho\\u1ea1t l&ecirc;n ng\\u01b0\\u1eddi d&ugrave;ng s\\u1ebd b\\u1ecb tr&ocirc;i th\\u1eddi gian b\\u1ea3o h&agrave;nh v&agrave;i th&aacute;ng thay v&igrave; \\u0111\\u1ee7 b\\u1ea3o h&agrave;nh 12 th&aacute;ng.<br \\/>\\r\\n<br \\/>\\r\\n<strong>GI\\u1edaI THI\\u1ec6U S\\u1ea2N PH\\u1ea8M<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>iPhone Xs c\\u0169 64GB<\\/strong>&nbsp;v\\u1eabn &aacute;p d\\u1ee5ng nguy&ecirc;n t\\u1eafc thi\\u1ebft k\\u1ebf quen thu\\u1ed9c v\\u1edbi ph\\u1ea7n khung \\u0111\\u01b0\\u1ee3c l&agrave;m t\\u1eeb th&eacute;p kh&ocirc;ng g\\u1ec9. Hai m\\u1eb7t tr\\u01b0\\u1edbc sau \\u0111\\u01b0\\u1ee3c \\u1ed1p k&iacute;nh c\\u01b0\\u1eddng l\\u1ef1c th\\u1ebf h\\u1ec7 m\\u1edbi nh\\u1eb1m gi&uacute;p gi\\u1ea3m thi\\u1ec3u t\\u1ed1i \\u0111a thi\\u1ec7t h\\u1ea1i khi va \\u0111\\u1eadp. C&aacute;c chi ti\\u1ebft nh\\u1ecf \\u0111\\u1ea1t \\u0111\\u1ed9 ho&agrave;n thi\\u1ec7n cao, \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf t\\u1ec9 m\\u1ec9.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"520\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 780px) 100vw, 780px\\\" src=\\\"https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex.jpg\\\" srcset=\\\"https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex.jpg 780w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-300x200.jpg 300w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-768x512.jpg 768w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-24x16.jpg 24w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-36x24.jpg 36w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-48x32.jpg 48w\\\" width=\\\"780\\\" \\/><\\/p>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf l\\u1ea7n n&agrave;y c\\u1ee7a m&aacute;y v\\u1eabn ch\\u1ecbu nhi\\u1ec1u \\u1ea3nh h\\u01b0\\u1edfng t\\u1eeb iPhone X. K&iacute;ch th\\u01b0\\u1edbc m&agrave;n h&igrave;nh kh&ocirc;ng qu&aacute; l\\u1edbn c\\u1ee7a Xs gi&uacute;p ng\\u01b0\\u1eddi d&ugrave;ng d\\u1ec5 d&agrave;ng thao t&aacute;c h\\u01a1n. Tr\\u1ecdng l\\u01b0\\u1ee3ng c\\u1ee7a m&aacute;y ch\\u1ec9 177gr c\\u0169ng g&oacute;p ph\\u1ea7n h\\u1ea1n ch\\u1ebf t&igrave;nh tr\\u1ea1ng m\\u1ecfi tay khi c\\u1ea7m m&aacute;y l&acirc;u.<\\/p>\\r\\n\\r\\n<p>M\\u1eb7t l\\u01b0ng v\\u1eabn gi\\u1eef phong c&aacute;ch s\\u1eafp x\\u1ebfp quen thu\\u1ed9c. C\\u1ee5m camera ch&iacute;nh \\u0111\\u01b0\\u1ee3c \\u0111\\u1eb7t d\\u1ecdc th&acirc;n m&aacute;y c&ugrave;ng v\\u1edbi \\u0111&oacute; l&agrave; logo qu\\u1ea3 t&aacute;o c\\u1eafn d\\u1edf quen thu\\u1ed9c. iPhone Xs c\\u0169 64GB c&ograve;n \\u0111\\u01b0\\u1ee3c Apple trang b\\u1ecb t&iacute;nh n\\u0103ng ch\\u1ed1ng n\\u01b0\\u1edbc b\\u1ee5i IP68.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product-17.png\",\"sub_image\":[\"\\/data\\/product\\/product-17-1.png\",\"\\/data\\/product\\/product-17-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-17\",\"brand_id\":\"1\",\"supplier_id\":\"1\",\"cost\":\"10000000\",\"price\":\"11290000\",\"tax_id\":\"auto\",\"price_promotion\":\"10790000\",\"price_promotion_start\":\"2021-08-11 00:00:00\",\"price_promotion_end\":\"2021-08-31 00:00:00\",\"stock\":\"65\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Blue\",\"White\"],\"add_price\":[\"50\",\"0\"]},\"2\":{\"name\":[\"S\",\"XL\"],\"add_price\":[\"20\",\"30\"]}},\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 08:45:35', '2021-08-11 08:45:35'),
(392, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:45:35', '2021-08-11 08:45:35'),
(393, 1, 'demo_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:46:15', '2021-08-11 08:46:15'),
(394, 1, 'demo_admin/product/edit/17', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPhone Xs 64GB International New Drift BH has not been activated\",\"keyword\":null,\"description\":null,\"content\":\"<p>The phone&nbsp;iPhone XS 64GB&nbsp;is 100% new, unused, unactivated, full of genuine accessories. And when activated, the user will be delayed for a few months instead of the full 12-month warranty.<\\/p>\"},\"vi\":{\"name\":\"iPhone Xs 64GB Qu\\u1ed1c T\\u1ebf M\\u1edbi Tr\\u00f4i BH ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"keyword\":null,\"description\":null,\"content\":\"<p>Chi\\u1ebfc \\u0111i\\u1ec7n tho\\u1ea1i&nbsp;<strong>iPhone XS 64GB<\\/strong>&nbsp;l&agrave; h&agrave;ng m\\u1edbi 100%, ch\\u01b0a qua s\\u1eed d\\u1ee5ng, ch\\u01b0a k&iacute;ch ho\\u1ea1t, \\u0111\\u1ea7y \\u0111\\u1ee7 ph\\u1ee5 ki\\u1ec7n ch&iacute;nh h&atilde;ng. V&agrave; khi k&iacute;ch ho\\u1ea1t l&ecirc;n ng\\u01b0\\u1eddi d&ugrave;ng s\\u1ebd b\\u1ecb tr&ocirc;i th\\u1eddi gian b\\u1ea3o h&agrave;nh v&agrave;i th&aacute;ng thay v&igrave; \\u0111\\u1ee7 b\\u1ea3o h&agrave;nh 12 th&aacute;ng.<br \\/>\\r\\n<br \\/>\\r\\n<strong>GI\\u1edaI THI\\u1ec6U S\\u1ea2N PH\\u1ea8M<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>iPhone Xs c\\u0169 64GB<\\/strong>&nbsp;v\\u1eabn &aacute;p d\\u1ee5ng nguy&ecirc;n t\\u1eafc thi\\u1ebft k\\u1ebf quen thu\\u1ed9c v\\u1edbi ph\\u1ea7n khung \\u0111\\u01b0\\u1ee3c l&agrave;m t\\u1eeb th&eacute;p kh&ocirc;ng g\\u1ec9. Hai m\\u1eb7t tr\\u01b0\\u1edbc sau \\u0111\\u01b0\\u1ee3c \\u1ed1p k&iacute;nh c\\u01b0\\u1eddng l\\u1ef1c th\\u1ebf h\\u1ec7 m\\u1edbi nh\\u1eb1m gi&uacute;p gi\\u1ea3m thi\\u1ec3u t\\u1ed1i \\u0111a thi\\u1ec7t h\\u1ea1i khi va \\u0111\\u1eadp. C&aacute;c chi ti\\u1ebft nh\\u1ecf \\u0111\\u1ea1t \\u0111\\u1ed9 ho&agrave;n thi\\u1ec7n cao, \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf t\\u1ec9 m\\u1ec9.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"520\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 780px) 100vw, 780px\\\" src=\\\"https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex.jpg\\\" srcset=\\\"https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex.jpg 780w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-300x200.jpg 300w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-768x512.jpg 768w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-24x16.jpg 24w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-36x24.jpg 36w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-48x32.jpg 48w\\\" width=\\\"780\\\" \\/><\\/p>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf l\\u1ea7n n&agrave;y c\\u1ee7a m&aacute;y v\\u1eabn ch\\u1ecbu nhi\\u1ec1u \\u1ea3nh h\\u01b0\\u1edfng t\\u1eeb iPhone X. K&iacute;ch th\\u01b0\\u1edbc m&agrave;n h&igrave;nh kh&ocirc;ng qu&aacute; l\\u1edbn c\\u1ee7a Xs gi&uacute;p ng\\u01b0\\u1eddi d&ugrave;ng d\\u1ec5 d&agrave;ng thao t&aacute;c h\\u01a1n. Tr\\u1ecdng l\\u01b0\\u1ee3ng c\\u1ee7a m&aacute;y ch\\u1ec9 177gr c\\u0169ng g&oacute;p ph\\u1ea7n h\\u1ea1n ch\\u1ebf t&igrave;nh tr\\u1ea1ng m\\u1ecfi tay khi c\\u1ea7m m&aacute;y l&acirc;u.<\\/p>\\r\\n\\r\\n<p>M\\u1eb7t l\\u01b0ng v\\u1eabn gi\\u1eef phong c&aacute;ch s\\u1eafp x\\u1ebfp quen thu\\u1ed9c. C\\u1ee5m camera ch&iacute;nh \\u0111\\u01b0\\u1ee3c \\u0111\\u1eb7t d\\u1ecdc th&acirc;n m&aacute;y c&ugrave;ng v\\u1edbi \\u0111&oacute; l&agrave; logo qu\\u1ea3 t&aacute;o c\\u1eafn d\\u1edf quen thu\\u1ed9c. iPhone Xs c\\u0169 64GB c&ograve;n \\u0111\\u01b0\\u1ee3c Apple trang b\\u1ecb t&iacute;nh n\\u0103ng ch\\u1ed1ng n\\u01b0\\u1edbc b\\u1ee5i IP68.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product-17.png\",\"sub_image\":[\"\\/data\\/product\\/product-17-1.png\",\"\\/data\\/product\\/product-17-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-17\",\"brand_id\":\"1\",\"supplier_id\":\"1\",\"cost\":\"10000000\",\"price\":\"11290000\",\"tax_id\":\"auto\",\"price_promotion\":\"10790000\",\"price_promotion_start\":\"2021-08-11 00:00:00\",\"price_promotion_end\":\"2021-08-31 00:00:00\",\"stock\":\"65\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 08:46:33', '2021-08-11 08:46:33'),
(395, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:46:33', '2021-08-11 08:46:33'),
(396, 1, 'demo_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:46:44', '2021-08-11 08:46:44'),
(397, 1, 'demo_admin/product/edit/17', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPhone Xs 64GB International New Drift BH has not been activated\",\"keyword\":null,\"description\":null,\"content\":\"<p>The phone&nbsp;iPhone XS 64GB&nbsp;is 100% new, unused, unactivated, full of genuine accessories. And when activated, the user will be delayed for a few months instead of the full 12-month warranty.<\\/p>\"},\"vi\":{\"name\":\"iPhone Xs 64GB Qu\\u1ed1c T\\u1ebf M\\u1edbi Tr\\u00f4i BH ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"keyword\":null,\"description\":null,\"content\":\"<p>Chi\\u1ebfc \\u0111i\\u1ec7n tho\\u1ea1i&nbsp;<strong>iPhone XS 64GB<\\/strong>&nbsp;l&agrave; h&agrave;ng m\\u1edbi 100%, ch\\u01b0a qua s\\u1eed d\\u1ee5ng, ch\\u01b0a k&iacute;ch ho\\u1ea1t, \\u0111\\u1ea7y \\u0111\\u1ee7 ph\\u1ee5 ki\\u1ec7n ch&iacute;nh h&atilde;ng. V&agrave; khi k&iacute;ch ho\\u1ea1t l&ecirc;n ng\\u01b0\\u1eddi d&ugrave;ng s\\u1ebd b\\u1ecb tr&ocirc;i th\\u1eddi gian b\\u1ea3o h&agrave;nh v&agrave;i th&aacute;ng thay v&igrave; \\u0111\\u1ee7 b\\u1ea3o h&agrave;nh 12 th&aacute;ng.<br \\/>\\r\\n<br \\/>\\r\\n<strong>GI\\u1edaI THI\\u1ec6U S\\u1ea2N PH\\u1ea8M<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>iPhone Xs c\\u0169 64GB<\\/strong>&nbsp;v\\u1eabn &aacute;p d\\u1ee5ng nguy&ecirc;n t\\u1eafc thi\\u1ebft k\\u1ebf quen thu\\u1ed9c v\\u1edbi ph\\u1ea7n khung \\u0111\\u01b0\\u1ee3c l&agrave;m t\\u1eeb th&eacute;p kh&ocirc;ng g\\u1ec9. Hai m\\u1eb7t tr\\u01b0\\u1edbc sau \\u0111\\u01b0\\u1ee3c \\u1ed1p k&iacute;nh c\\u01b0\\u1eddng l\\u1ef1c th\\u1ebf h\\u1ec7 m\\u1edbi nh\\u1eb1m gi&uacute;p gi\\u1ea3m thi\\u1ec3u t\\u1ed1i \\u0111a thi\\u1ec7t h\\u1ea1i khi va \\u0111\\u1eadp. C&aacute;c chi ti\\u1ebft nh\\u1ecf \\u0111\\u1ea1t \\u0111\\u1ed9 ho&agrave;n thi\\u1ec7n cao, \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf t\\u1ec9 m\\u1ec9.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"520\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 780px) 100vw, 780px\\\" src=\\\"https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex.jpg\\\" srcset=\\\"https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex.jpg 780w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-300x200.jpg 300w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-768x512.jpg 768w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-24x16.jpg 24w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-36x24.jpg 36w, https:\\/\\/exphone.vn\\/uploads\\/2018\\/10\\/thiet-ke-iphone-xs-ex-48x32.jpg 48w\\\" width=\\\"780\\\" \\/><\\/p>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf l\\u1ea7n n&agrave;y c\\u1ee7a m&aacute;y v\\u1eabn ch\\u1ecbu nhi\\u1ec1u \\u1ea3nh h\\u01b0\\u1edfng t\\u1eeb iPhone X. K&iacute;ch th\\u01b0\\u1edbc m&agrave;n h&igrave;nh kh&ocirc;ng qu&aacute; l\\u1edbn c\\u1ee7a Xs gi&uacute;p ng\\u01b0\\u1eddi d&ugrave;ng d\\u1ec5 d&agrave;ng thao t&aacute;c h\\u01a1n. Tr\\u1ecdng l\\u01b0\\u1ee3ng c\\u1ee7a m&aacute;y ch\\u1ec9 177gr c\\u0169ng g&oacute;p ph\\u1ea7n h\\u1ea1n ch\\u1ebf t&igrave;nh tr\\u1ea1ng m\\u1ecfi tay khi c\\u1ea7m m&aacute;y l&acirc;u.<\\/p>\\r\\n\\r\\n<p>M\\u1eb7t l\\u01b0ng v\\u1eabn gi\\u1eef phong c&aacute;ch s\\u1eafp x\\u1ebfp quen thu\\u1ed9c. C\\u1ee5m camera ch&iacute;nh \\u0111\\u01b0\\u1ee3c \\u0111\\u1eb7t d\\u1ecdc th&acirc;n m&aacute;y c&ugrave;ng v\\u1edbi \\u0111&oacute; l&agrave; logo qu\\u1ea3 t&aacute;o c\\u1eafn d\\u1edf quen thu\\u1ed9c. iPhone Xs c\\u0169 64GB c&ograve;n \\u0111\\u01b0\\u1ee3c Apple trang b\\u1ecb t&iacute;nh n\\u0103ng ch\\u1ed1ng n\\u01b0\\u1edbc b\\u1ee5i IP68.<\\/p>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/product-17.png\",\"sub_image\":[\"\\/data\\/product\\/product-17-1.png\",\"\\/data\\/product\\/product-17-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-17\",\"brand_id\":\"1\",\"supplier_id\":\"1\",\"cost\":\"10000000\",\"price\":\"11290000\",\"tax_id\":\"auto\",\"price_promotion\":\"10790000\",\"price_promotion_start\":\"2021-08-11 00:00:00\",\"price_promotion_end\":\"2021-08-31 00:00:00\",\"stock\":\"65\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 08:47:35', '2021-08-11 08:47:35'),
(398, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:47:35', '2021-08-11 08:47:35'),
(399, 1, 'demo_admin/product/edit/16', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:48:04', '2021-08-11 08:48:04'),
(400, 1, 'demo_admin/product/edit/16', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Easy Polo Black Edition 16\",\"keyword\":null,\"description\":null},\"vi\":{\"name\":\"Easy Polo Black Edition 16\",\"keyword\":null,\"description\":null}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product-16.png\",\"sku\":\"RAMPS15-3D\",\"alias\":\"demo-alias-name-product-16\",\"sort\":\"0\",\"productInGroup\":[\"1\",\"2\"],\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 08:48:09', '2021-08-11 08:48:09'),
(401, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:48:09', '2021-08-11 08:48:09'),
(402, 1, 'demo_admin/product/edit/15', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:48:11', '2021-08-11 08:48:11'),
(403, 1, 'demo_admin/product/edit/15', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Easy Polo Black Edition 15\",\"keyword\":null,\"description\":null},\"vi\":{\"name\":\"Easy Polo Black Edition 15\",\"keyword\":null,\"description\":null}},\"category\":[\"6\"],\"image\":\"\\/data\\/product\\/product-15.png\",\"sub_image\":[\"\\/data\\/product\\/product-13.png\",\"\\/data\\/product\\/product-6.png\"],\"sku\":\"LCD2004-3D\",\"alias\":\"demo-alias-name-product-15\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"date_available\":null,\"minimum\":\"10\",\"sort\":\"0\",\"productBuild\":[\"6\",\"7\"],\"productBuildQty\":[\"1\",\"2\"],\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 08:48:14', '2021-08-11 08:48:14'),
(404, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:48:14', '2021-08-11 08:48:14'),
(405, 1, 'demo_admin/product/edit/14', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:49:58', '2021-08-11 08:49:58');
INSERT INTO `demo_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(406, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 08:53:27', '2021-08-11 08:53:27'),
(407, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672007871\"}', '2021-08-11 08:53:28', '2021-08-11 08:53:28'),
(408, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672007872\"}', '2021-08-11 08:53:28', '2021-08-11 08:53:28'),
(409, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628672007873\"}', '2021-08-11 08:53:28', '2021-08-11 08:53:28'),
(410, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 08:53:33', '2021-08-11 08:53:33'),
(411, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672013171\"}', '2021-08-11 08:53:33', '2021-08-11 08:53:33'),
(412, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672013172\"}', '2021-08-11 08:53:33', '2021-08-11 08:53:33'),
(413, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628672013173\"}', '2021-08-11 08:53:33', '2021-08-11 08:53:33'),
(414, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 08:53:37', '2021-08-11 08:53:37'),
(415, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672017079\"}', '2021-08-11 08:53:37', '2021-08-11 08:53:37'),
(416, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672017080\"}', '2021-08-11 08:53:37', '2021-08-11 08:53:37'),
(417, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628672017081\"}', '2021-08-11 08:53:37', '2021-08-11 08:53:37'),
(418, 1, 'demo_admin/product/edit/14', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"New iPhone Xs CPO 64GB Original Seal not activated yet\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone Xs 64G New 100% International CPO version New 100% Original Seal, Unactivated. Accessories include: imei box, charger, cable, headset, manual, sim stick. ExPhone.vn is committed to brandnew standard products, genuine seals and genuine accessories, when activated, it will have a genuine 12-month warranty. Upgrade more ExGold | ExPro for a better comprehensive warranty.<\\/p>\"},\"vi\":{\"name\":\"iPhone Xs M\\u1edbi CPO 64GB Nguy\\u00ean Seal ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong><a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/iphone-xs-xs-max-xr\\/iphone-xs-max-64g-moi-chua-kich\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\">iPhone Xs 64G M\\u1edbi 100%<\\/a><\\/strong>&nbsp;phi&ecirc;n b\\u1ea3n CPO qu\\u1ed1c t\\u1ebf M\\u1edbi 100% Nguy&ecirc;n Seal, Ch\\u01b0a k&iacute;ch ho\\u1ea1t.<\\/p>\\r\\n\\r\\n<p>Ph\\u1ee5 ki\\u1ec7n g\\u1ed3m: h\\u1ed9p tr&ugrave;ng imei, s\\u1ea1c, cable, tai nghe, s&aacute;ch h\\u01b0\\u1edbng d\\u1eabn, que ch\\u1ecdc sim.<\\/p>\\r\\n\\r\\n<p><strong>ExPhone.vn<\\/strong>&nbsp;cam k\\u1ebft h&agrave;ng chu\\u1ea9n brandnew, nguy&ecirc;n seal x\\u1ecbn v&agrave; ph\\u1ee5 ki\\u1ec7n ch&iacute;nh h&atilde;ng, khi k&iacute;ch h\\u1ecdat l&ecirc;n s\\u1ebd \\u0111\\u1ee7 b\\u1ea3o h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng.&nbsp;<em>N&acirc;ng c\\u1ea5p th&ecirc;m<\\/em>&nbsp;<a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/chinh-sach-bao-hanh\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\"><strong>ExGold | ExPro<\\/strong><\\/a>&nbsp;<em>\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh to&agrave;n di\\u1ec7n t\\u1ed1t h\\u01a1n.&nbsp;<\\/em><\\/p>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/product-14.png\",\"sub_image\":[\"\\/data\\/product\\/product-14-1.png\",\"\\/data\\/product\\/product-14-2.png\"],\"sku\":\"LCD12864-3D\",\"alias\":\"demo-alias-name-product-14\",\"brand_id\":\"1\",\"supplier_id\":\"1\",\"cost\":\"13000000\",\"price\":\"13990000\",\"tax_id\":\"auto\",\"stock\":\"68\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 08:54:29', '2021-08-11 08:54:29'),
(419, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:54:29', '2021-08-11 08:54:29'),
(420, 1, 'demo_admin/product/edit/13', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:55:16', '2021-08-11 08:55:16'),
(421, 1, 'demo_admin/product/edit/13', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:56:29', '2021-08-11 08:56:29'),
(422, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 08:58:22', '2021-08-11 08:58:22'),
(423, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672302942\"}', '2021-08-11 08:58:23', '2021-08-11 08:58:23'),
(424, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672302943\"}', '2021-08-11 08:58:23', '2021-08-11 08:58:23'),
(425, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628672302944\"}', '2021-08-11 08:58:23', '2021-08-11 08:58:23'),
(426, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 08:58:27', '2021-08-11 08:58:27'),
(427, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672307769\"}', '2021-08-11 08:58:28', '2021-08-11 08:58:28'),
(428, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672307770\"}', '2021-08-11 08:58:28', '2021-08-11 08:58:28'),
(429, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628672307771\"}', '2021-08-11 08:58:28', '2021-08-11 08:58:28'),
(430, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 08:58:30', '2021-08-11 08:58:30'),
(431, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672311037\"}', '2021-08-11 08:58:31', '2021-08-11 08:58:31'),
(432, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672311038\"}', '2021-08-11 08:58:31', '2021-08-11 08:58:31'),
(433, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628672311039\"}', '2021-08-11 08:58:31', '2021-08-11 08:58:31'),
(434, 1, 'demo_admin/product/edit/13', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPhone 11 Pro Max 64GB International New Drift BH has not been activated\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone 11 Pro Max 64Gb Drift BH Not activated international version 100% of the US, Japanese, Korean, European markets. 100% new form. Not activated, after activation will no longer be full 12 months or the end of Apple&#39;s warranty. Products are warranted for 6 months at ExPhone. ExGold Upgrade | ExPro for a better extended warranty.<\\/p>\"},\"vi\":{\"name\":\"iPhone 11 Pro Max 64GB Qu\\u1ed1c t\\u1ebf M\\u1edbi Tr\\u00f4i BH ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>iPhone 11 Pro Max 64Gb Tr&ocirc;i BH Ch\\u01b0a k&iacute;ch ho\\u1ea1t<\\/strong>&nbsp;phi&ecirc;n b\\u1ea3n qu\\u1ed1c t\\u1ebf 100% th\\u1ecb tr\\u01b0\\u1eddng M\\u1ef9 , Nh\\u1eadt, H&agrave;n , khu v\\u1ef1c Ch&acirc;u &acirc;u.<br \\/>\\r\\nH&igrave;nh th\\u1ee9c m\\u1edbi 100%. Ch\\u01b0a k&iacute;ch ho\\u1ea1t, sau khi k&iacute;ch ho\\u1ea1t s\\u1ebd kh&ocirc;ng c&ograve;n \\u0111\\u1ee7 12 th&aacute;ng ho\\u1eb7c h\\u1ebft b\\u1ea3o h&agrave;nh c\\u1ee7a Apple.<br \\/>\\r\\nS\\u1ea3n ph\\u1ea9m \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh 6 Th&aacute;ng t\\u1ea1i&nbsp;<strong>ExPhone<\\/strong>. N&acirc;ng c\\u1ea5p&nbsp;<a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/chinh-sach-bao-hanh\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\"><strong>ExGold | ExPro<\\/strong><\\/a>&nbsp;\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh m\\u1edf r\\u1ed9ng t\\u1ed1t h\\u01a1n.<\\/p>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/product-13.png\",\"sub_image\":[\"\\/data\\/product\\/product-13-2.png\",\"\\/data\\/product\\/product-13-1.png\"],\"sku\":\"3D-GOLD175\",\"alias\":\"demo-alias-name-product-13\",\"brand_id\":\"1\",\"supplier_id\":\"1\",\"cost\":\"20000000\",\"price\":\"20490000\",\"tax_id\":\"auto\",\"price_promotion\":\"1500000\",\"price_promotion_start\":\"2021-08-04\",\"price_promotion_end\":\"2021-08-15\",\"stock\":\"0\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 08:59:40', '2021-08-11 08:59:40'),
(435, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:59:40', '2021-08-11 08:59:40'),
(436, 1, 'demo_admin/product/edit/13', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 08:59:59', '2021-08-11 08:59:59'),
(437, 1, 'demo_admin/product/edit/13', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPhone 11 Pro Max 64GB International New Drift BH has not been activated\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone 11 Pro Max 64Gb Drift BH Not activated international version 100% of the US, Japanese, Korean, European markets. 100% new form. Not activated, after activation will no longer be full 12 months or the end of Apple&#39;s warranty. Products are warranted for 6 months at ExPhone. ExGold Upgrade | ExPro for a better extended warranty.<\\/p>\"},\"vi\":{\"name\":\"iPhone 11 Pro Max 64GB Qu\\u1ed1c t\\u1ebf M\\u1edbi Tr\\u00f4i BH ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>iPhone 11 Pro Max 64Gb Tr&ocirc;i BH Ch\\u01b0a k&iacute;ch ho\\u1ea1t<\\/strong>&nbsp;phi&ecirc;n b\\u1ea3n qu\\u1ed1c t\\u1ebf 100% th\\u1ecb tr\\u01b0\\u1eddng M\\u1ef9 , Nh\\u1eadt, H&agrave;n , khu v\\u1ef1c Ch&acirc;u &acirc;u.<br \\/>\\r\\nH&igrave;nh th\\u1ee9c m\\u1edbi 100%. Ch\\u01b0a k&iacute;ch ho\\u1ea1t, sau khi k&iacute;ch ho\\u1ea1t s\\u1ebd kh&ocirc;ng c&ograve;n \\u0111\\u1ee7 12 th&aacute;ng ho\\u1eb7c h\\u1ebft b\\u1ea3o h&agrave;nh c\\u1ee7a Apple.<br \\/>\\r\\nS\\u1ea3n ph\\u1ea9m \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh 6 Th&aacute;ng t\\u1ea1i&nbsp;<strong>ExPhone<\\/strong>. N&acirc;ng c\\u1ea5p&nbsp;<a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/chinh-sach-bao-hanh\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\"><strong>ExGold | ExPro<\\/strong><\\/a>&nbsp;\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh m\\u1edf r\\u1ed9ng t\\u1ed1t h\\u01a1n.<\\/p>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/product-13.png\",\"sub_image\":[\"\\/data\\/product\\/product-13-2.png\",\"\\/data\\/product\\/product-13-1.png\"],\"sku\":\"3D-GOLD175\",\"alias\":\"demo-alias-name-product-13\",\"brand_id\":\"1\",\"supplier_id\":\"1\",\"cost\":\"20000000\",\"price\":\"21990000\",\"tax_id\":\"auto\",\"price_promotion\":\"20490000\",\"price_promotion_start\":\"2021-08-04 00:00:00\",\"price_promotion_end\":\"2021-08-15 00:00:00\",\"stock\":\"0\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:00:30', '2021-08-11 09:00:30'),
(438, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:00:30', '2021-08-11 09:00:30'),
(439, 1, 'demo_admin/product/edit/12', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:01:42', '2021-08-11 09:01:42'),
(440, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 09:03:39', '2021-08-11 09:03:39'),
(441, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672619926\"}', '2021-08-11 09:03:40', '2021-08-11 09:03:40'),
(442, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672619927\"}', '2021-08-11 09:03:40', '2021-08-11 09:03:40'),
(443, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628672619928\"}', '2021-08-11 09:03:40', '2021-08-11 09:03:40'),
(444, 1, 'demo_admin/product/edit/12', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPhone X New 64GB Original Seal not activated yet\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone X 64GB New 100% international version New 100% Original Seal, Unactivated Accessories include: identical imei box, charger, cable, headset, manual, sim stick. ExPhone.vn is committed to brandnew standard products, genuine seals and genuine accessories, when activated, it will have a genuine 12-month warranty. Upgrade more ExGold | ExPro for a better comprehensive warranty.<\\/p>\"},\"vi\":{\"name\":\"iPhone X M\\u1edbi 64GB Nguy\\u00ean Seal ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone X 64GB M\\u1edbi 100% phi&ecirc;n b\\u1ea3n qu\\u1ed1c t\\u1ebf M\\u1edbi 100% Nguy&ecirc;n Seal, Ch\\u01b0a k&iacute;ch ho\\u1ea1t Ph\\u1ee5 ki\\u1ec7n g\\u1ed3m: h\\u1ed9p tr&ugrave;ng imei, s\\u1ea1c, cable, tai nghe, s&aacute;ch h\\u01b0\\u1edbng d\\u1eabn, que ch\\u1ecdc sim. ExPhone.vn cam k\\u1ebft h&agrave;ng chu\\u1ea9n brandnew, nguy&ecirc;n seal x\\u1ecbn v&agrave; ph\\u1ee5 ki\\u1ec7n ch&iacute;nh h&atilde;ng, khi k&iacute;ch h\\u1ecdat l&ecirc;n s\\u1ebd \\u0111\\u1ee7 b\\u1ea3o h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng. N&acirc;ng c\\u1ea5p th&ecirc;m ExGold | ExPro \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh to&agrave;n di\\u1ec7n t\\u1ed1t h\\u01a1n. &nbsp;<\\/p>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/product-12.png\",\"sku\":\"3D-CARBON175\",\"alias\":\"demo-alias-name-product-12\",\"brand_id\":\"1\",\"supplier_id\":\"1\",\"cost\":\"13000000\",\"price\":\"13990000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:05:06', '2021-08-11 09:05:06'),
(445, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:05:06', '2021-08-11 09:05:06'),
(446, 1, 'demo_admin/product/edit/11', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:07:46', '2021-08-11 09:07:46'),
(447, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 09:08:24', '2021-08-11 09:08:24'),
(448, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672904555\"}', '2021-08-11 09:08:24', '2021-08-11 09:08:24'),
(449, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628672904554\"}', '2021-08-11 09:08:24', '2021-08-11 09:08:24'),
(450, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628672904556\"}', '2021-08-11 09:08:25', '2021-08-11 09:08:25'),
(451, 1, 'demo_admin/product/edit/11', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPhone X Lock Old 64Gb 99% as beautiful as new\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone X Lock network lock from the US, Japan. Currently, ExPhone comes with a sim card to fix errors and limitations, using it as normal as the international version. Especially the original committed machine. - Beautiful appearance 99% like new, beautiful body, no heavy scratches. Original according to manufacturer standards. Has not been replaced and repaired &ndash; The level of battery wear is over 90% ~ 95%. Free 1 time battery replacement when below 80% when upgrading ExGold comprehensive warranty package | ExPro<\\/p>\"},\"vi\":{\"name\":\"iPhone X Lock C\\u0169 64Gb 99% \\u0111\\u1eb9p nh\\u01b0 m\\u1edbi\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone X Lock kho&aacute; m\\u1ea1ng t\\u1eeb M\\u1ef9, Nh\\u1eadt. Hi\\u1ec7n t\\u1ea1i ExPhone t\\u1eb7ng k&egrave;m sim gh&eacute;p fix full l\\u1ed7i v&agrave; h\\u1ea1n ch\\u1ebf, s\\u1eed d\\u1ee5ng ho&agrave;n to&agrave;n b&igrave;nh th\\u01b0\\u1eddng nh\\u01b0 phi&ecirc;n b\\u1ea3n qu\\u1ed1c t\\u1ebf. \\u0110\\u1eb7c bi\\u1ec7t m&aacute;y cam k\\u1ebft nguy&ecirc;n b\\u1ea3n.<br \\/>\\r\\n&ndash; H&igrave;nh th\\u1ee9c \\u0111\\u1eb9p 99% nh\\u01b0 m\\u1edbi, th&acirc;n v\\u1ecf \\u0111\\u1eb9p, kh&ocirc;ng c\\u1ea5n m&oacute;p tr\\u1ea7y x\\u01b0\\u1edbc n\\u1eb7ng. Nguy&ecirc;n b\\u1ea3n theo ti&ecirc;u chu\\u1ea9n nh&agrave; s\\u1ea3n xu\\u1ea5t. Ch\\u01b0a qua thay th\\u1ebf v&agrave; s\\u1eeda ch\\u1eefa<br \\/>\\r\\n&ndash; M\\u1ee9c \\u0111\\u1ed9 hao m&ograve;n pin tr&ecirc;n 90% ~ 95%. Mi\\u1ec5n ph&iacute; 1 l\\u1ea7n thay pin khi d\\u01b0\\u1edbi 80% khi n&acirc;ng c\\u1ea5p g&oacute;i b\\u1ea3o h&agrave;nh to&agrave;n di\\u1ec7n ExGold | ExPro&nbsp;<\\/p>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/product-11.png\",\"sku\":\"SS495A\",\"alias\":\"demo-alias-name-product-11\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"8000000\",\"price\":\"8990000\",\"tax_id\":\"auto\",\"price_promotion\":\"7990000\",\"price_promotion_start\":\"2021-08-04\",\"price_promotion_end\":\"2021-08-20\",\"stock\":\"45\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:10:28', '2021-08-11 09:10:28'),
(452, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:10:28', '2021-08-11 09:10:28'),
(453, 1, 'demo_admin/product/edit/10', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:11:17', '2021-08-11 09:11:17'),
(454, 1, 'demo_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"ckCsrfToken\":\"Rn2qDt1dpabT5gFLdCtrEYpDKDK61097plBdtgCN\",\"type\":\"product\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\",\"responseType\":\"json\"}', '2021-08-11 09:11:50', '2021-08-11 09:11:50'),
(455, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 09:12:42', '2021-08-11 09:12:42'),
(456, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628673162240\"}', '2021-08-11 09:12:42', '2021-08-11 09:12:42'),
(457, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628673162239\"}', '2021-08-11 09:12:42', '2021-08-11 09:12:42'),
(458, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628673162241\"}', '2021-08-11 09:12:42', '2021-08-11 09:12:42'),
(459, 1, 'demo_admin/product/edit/10', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Phone Samsung Galaxy A52 (8GB\\/128GB)\",\"keyword\":null,\"description\":null,\"content\":\"<br \\/>\\r\\nSamsung Galaxy A52 distributed at ExPhone is a genuine product with warranty at SAMSUNG Vietnam Center.\\r\\n<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>B\\u1ed9 nh\\u1edb trong<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>128 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera sau<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Ch&iacute;nh 64 MP &amp; Ph\\u1ee5 12 MP, 5 MP, 5 MP<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera tr\\u01b0\\u1edbc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>32 MP<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Chip \\u0111\\u1ed3 h\\u1ecda (GPU)<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Adreno 618<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>CPU<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Snapdragon 720G<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Dung l\\u01b0\\u1ee3ng pin<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>4500 mAh<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;n h&igrave;nh<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Full HD+ (1080 x 2400 Pixels)<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;u s\\u1eafc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Black, Blue, Purple<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ram<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>8 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sim<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Dual Nano Sim<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Th\\u1ebb nh\\u1edb<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>MicroSD, h\\u1ed7 tr\\u1ee3 t\\u1ed1i \\u0111a 1 TB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\"},\"vi\":{\"name\":\"\\u0110i\\u1ec7n tho\\u1ea1i Samsung Galaxy A52 (8GB\\/128GB)\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>Samsung Galaxy A52<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c ph&acirc;n ph\\u1ed1i t\\u1ea1i ExPhone l&agrave; s\\u1ea3n ph\\u1ea9m ch&iacute;nh h&atilde;ng \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh t\\u1ea1i&nbsp;<strong>TTBH SAMSUNG Vi\\u1ec7t Nam<\\/strong>&nbsp;to&agrave;n qu\\u1ed1c .<\\/p>\\r\\n\\r\\n<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>B\\u1ed9 nh\\u1edb trong<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>128 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera sau<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Ch&iacute;nh 64 MP &amp; Ph\\u1ee5 12 MP, 5 MP, 5 MP<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera tr\\u01b0\\u1edbc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>32 MP<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Chip \\u0111\\u1ed3 h\\u1ecda (GPU)<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Adreno 618<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>CPU<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Snapdragon 720G<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Dung l\\u01b0\\u1ee3ng pin<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>4500 mAh<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;n h&igrave;nh<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Full HD+ (1080 x 2400 Pixels)<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;u s\\u1eafc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Black, Blue, Purple<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ram<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>8 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sim<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Dual Nano Sim<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Th\\u1ebb nh\\u1edb<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>MicroSD, h\\u1ed7 tr\\u1ee3 t\\u1ed1i \\u0111a 1 TB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/product-10.png\",\"sku\":\"3DHLFD-P\",\"alias\":\"demo-alias-name-product-10\",\"brand_id\":\"4\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:13:04', '2021-08-11 09:13:04'),
(460, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:13:04', '2021-08-11 09:13:04'),
(461, 1, 'demo_admin/product/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:13:28', '2021-08-11 09:13:28'),
(462, 1, 'demo_admin/product/edit/9', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Samsung Galaxy Note 9 128GB old Korean 99% Beautiful like new\",\"keyword\":null,\"description\":null,\"content\":\"<p>Samsung Galaxy Note 9 (6GB - 128GB) 2 sim Korean imported version uses high-end Exynos chip, runs 2 convenient sims. The above price does not include warranty Power, Screen, Security sensor (Fingerprint, Eye Nail, Face). Upgrade to ExGold Comprehensive 12 Months for a better comprehensive warranty.<br \\/>\\r\\n&nbsp;<\\/p>\"},\"vi\":{\"name\":\"Samsung Galaxy Note 9 128GB H\\u00e0n c\\u0169 99% \\u0110\\u1eb9p nh\\u01b0 m\\u1edbi\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>Samsung Galaxy Note 9 (6GB &ndash; 128GB) 2 sim H&agrave;n Qu\\u1ed1c<\\/strong>&nbsp;phi&ecirc;n b\\u1ea3n nh\\u1eadp kh\\u1ea9u d&ugrave;ng chip Exynos cao c\\u1ea5p, ch\\u1ea1y 2 sim ti\\u1ec7n d\\u1ee5ng. Gi&aacute; tr&ecirc;n ch\\u01b0a bao g\\u1ed3m b\\u1ea3o h&agrave;nh Ngu\\u1ed3n , M&agrave;n h&igrave;nh , C\\u1ea3m bi\\u1ebfn b\\u1ea3o m\\u1eadt (<strong>V&acirc;n tay , M&oacute;ng M\\u1eaft , Khu&ocirc;n M\\u1eb7t<\\/strong>&nbsp;).&nbsp;<em>N&acirc;ng c\\u1ea5p th&ecirc;m<\\/em>&nbsp;<a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/chinh-sach-bao-hanh\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\"><strong>ExGold To&agrave;n Di\\u1ec7n 12 Th&aacute;ng<\\/strong><\\/a>&nbsp;<em>\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh to&agrave;n di\\u1ec7n t\\u1ed1t h\\u01a1n.&nbsp;<\\/em><br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;n h&igrave;nh<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>C&ocirc;ng ngh\\u1ec7 m&agrave;n h&igrave;nh: Super AMOLED, \\u0110\\u1ed9 ph&acirc;n gi\\u1ea3i: 1440 x 2960 pixels, M&agrave;n h&igrave;nh r\\u1ed9ng: 6.1 inches, M\\u1eb7t k&iacute;nh c\\u1ea3m \\u1ee9ng: Corning Gorilla Glass 5<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera sau<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>\\u0110\\u1ed9 ph&acirc;n gi\\u1ea3i: 12 MP, f\\/1.5-2.4 dual pixel PDAF, OIS v&agrave; 12 MP, f\\/2.4 OIS, 2x optical zoom, Quay phim: 2160p@60fps, 1080p@240fps, 720p@960fps, HDR, dual-video rec<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera tr\\u01b0\\u1edbc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>\\u0110\\u1ed9 ph&acirc;n gi\\u1ea3i: 8 MP<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>CPU<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Exynos 9810, 8 nh&acirc;n 64bit, T\\u1ed1c \\u0111\\u1ed9 CPU: Octa-core (4&times;2.7 GHz Mongoose M3 &amp; 4&times;1.8 GHz Cortex-A55)<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Chip \\u0111\\u1ed3 h\\u1ecda (GPU)<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Mali-G72 MP18<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>B\\u1ed9 nh\\u1edb trong<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>128 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ram<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>6 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Dung l\\u01b0\\u1ee3ng pin<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>4000 mAh<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sim<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>2 SIM Nano (SIM 2 chung khe th\\u1ebb nh\\u1edb), H\\u1ed7 tr\\u1ee3 4G<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;u s\\u1eafc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>copper, Black, Blue, Purple, White<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\"}},\"category\":[\"6\"],\"image\":\"\\/data\\/product\\/product-9.png\",\"sku\":\"ANYCUBIC-P\",\"alias\":\"demo-alias-name-product-9\",\"brand_id\":\"5\",\"supplier_id\":\"1\",\"cost\":\"8000000\",\"price\":\"8990000\",\"tax_id\":\"auto\",\"price_promotion\":\"8490000\",\"price_promotion_start\":\"2021-08-05\",\"price_promotion_end\":\"2021-08-25\",\"stock\":\"86\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:15:41', '2021-08-11 09:15:41'),
(463, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:15:41', '2021-08-11 09:15:41'),
(464, 1, 'demo_admin/product/edit/8', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:16:19', '2021-08-11 09:16:19'),
(465, 1, 'demo_admin/product/edit/8', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Macbook Air M1 2020 8G 256GB\",\"keyword\":null,\"description\":null,\"content\":\"<p>Apple has just launched an impressive new version of the MacBook Air M1 2020 with a new M1 chip designed specifically for MacBooks that boosts CPU performance up to 3.5 times faster, longest battery life ever on the market. MacBook Air.<\\/p>\"},\"vi\":{\"name\":\"Macbook Air M1 2020 8G 256GB\",\"keyword\":null,\"description\":null,\"content\":\"<p>Apple v\\u1eeba cho ra m\\u1eaft phi&ecirc;n b\\u1ea3n&nbsp;<strong>MacBook Air M1 2020<\\/strong>&nbsp;m\\u1edbi c\\u1ef1c k&igrave; \\u1ea5n t\\u01b0\\u1ee3ng v\\u1edbi con chip M1 m\\u1edbi \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf d&agrave;nh ri&ecirc;ng cho MacBook t\\u0103ng hi\\u1ec7u su\\u1ea5t CPU nhanh h\\u01a1n t\\u1edbi 3.5 l\\u1ea7n, tu\\u1ed5i th\\u1ecd pin d&agrave;i nh\\u1ea5t t\\u1eeb \\u200b\\u200btr\\u01b0\\u1edbc \\u0111\\u1ebfn nay tr&ecirc;n MacBook Air.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h3>Sang tr\\u1ecdng, c\\u01a1 \\u0111\\u1ed9ng v&agrave; \\u0111\\u1eb3ng c\\u1ea5p<\\/h3>\\r\\n\\r\\n<p>\\u0110\\u01b0\\u1ee3c ch\\u1ebf t&aacute;c tinh x\\u1ea3o t\\u1eeb kim lo\\u1ea1i nguy&ecirc;n kh\\u1ed1i t&aacute;i ch\\u1ebf, Apple \\u0111em \\u0111\\u1ebfn m\\u1ed9t phi&ecirc;n b\\u1ea3n&nbsp;MacBook Air&nbsp;sang tr\\u1ecdng, \\u0111\\u1eb3ng c\\u1ea5p nh\\u01b0ng v\\u1eabn gi\\u1eef \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9 m\\u1ecfng nh\\u1eb9, th&acirc;n m&aacute;y ch\\u1ec9<strong>&nbsp;16.1 mm<\\/strong>, n\\u1eb7ng&nbsp;<strong>1.29 kg<\\/strong>&nbsp;\\u0111\\u1ec1 cao t&iacute;nh di \\u0111\\u1ed9ng, b\\u1eaft k\\u1ecbp xu h\\u01b0\\u1edbng hi\\u1ec7n nay.<\\/p>\\r\\n\\r\\n<p><a data-wpel-link=\\\"external\\\" href=\\\"https:\\/\\/www.thegioididong.com\\/images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-280420-100425.jpg\\\" rel=\\\"nofollow external noopener noreferrer\\\" target=\\\"_blank\\\"><img alt=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Thi\\u1ebft k\\u1ebf\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-280420-100425.jpg\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-280420-100425.jpg\\\" title=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Thi\\u1ebft k\\u1ebf\\\" \\/><\\/a><\\/p>\\r\\n\\r\\n<p><strong>Chip b\\u1ea3o m\\u1eadt T2<\\/strong>&nbsp;m&atilde; h&oacute;a m\\u1ecdi th&ocirc;ng tin tr&ecirc;n m&aacute;y \\u0111\\u1ea3m b\\u1ea3o th&ocirc;ng tin c&aacute; nh&acirc;n c\\u1ee7a b\\u1ea1n. \\u0110\\u0103ng nh\\u1eadp v&agrave;o m&aacute;y d\\u1ec5 d&agrave;ng b\\u1eb1ng<strong>&nbsp;b\\u1ea3o m\\u1eadt v&acirc;n tay<\\/strong>, h\\u1ed7 tr\\u1ee3 thanh to&aacute;n online c\\u1ef1c k&igrave; nhanh ch&oacute;ng v&agrave; ti\\u1ec7n l\\u1ee3i.<\\/p>\\r\\n\\r\\n<p><a data-wpel-link=\\\"external\\\" href=\\\"https:\\/\\/www.thegioididong.com\\/images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-073520-103521.jpg\\\" rel=\\\"nofollow external noopener noreferrer\\\" target=\\\"_blank\\\"><img alt=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Touch ID\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-073520-103521.jpg\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-073520-103521.jpg\\\" title=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Touch ID\\\" \\/><\\/a><\\/p>\"}},\"category\":[\"1\"],\"image\":\"\\/data\\/product\\/product-8.png\",\"sku\":\"A4988\",\"alias\":\"demo-alias-name-product-8\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"25000000\",\"price\":\"25490000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:19:44', '2021-08-11 09:19:44'),
(466, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:19:44', '2021-08-11 09:19:44'),
(467, 1, 'demo_admin/product/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:20:15', '2021-08-11 09:20:15'),
(468, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 09:21:17', '2021-08-11 09:21:17'),
(469, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628673677085\"}', '2021-08-11 09:21:17', '2021-08-11 09:21:17'),
(470, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628673677084\"}', '2021-08-11 09:21:17', '2021-08-11 09:21:17'),
(471, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628673677086\"}', '2021-08-11 09:21:17', '2021-08-11 09:21:17'),
(472, 1, 'demo_admin/product/edit/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPad Pro M1 (2021) 11 256GB WI-FI new\",\"keyword\":null,\"description\":null,\"content\":\"<p>The 11-inch iPad Pro 2021 is a tablet product line that has just been launched by Apple at the last Apple Spring 2021 event along with the 12.9-inch iPad Pro 2021. Although the design is not too different from its predecessor iPad Pro 2020, Apple has still upgraded a lot in terms of screen, camera and Apple M1 chip that promises to bring users many great experiences in terms of performance and performance. daily entertainment.<\\/p>\"},\"vi\":{\"name\":\"iPad Pro M1 (2021) 11 256GB WI-FI M\\u1edbi\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPad Pro 2021 11inch l&agrave; d&ograve;ng s\\u1ea3n ph\\u1ea9m tablet v\\u1eeba \\u0111\\u01b0\\u1ee3c Apple ra m\\u1eaft v&agrave;o s\\u1ef1 ki\\u1ec7n Apple Spring 2021 v\\u1eeba qua c&ugrave;ng v\\u1edbi iPad Pro 2021 12.9inch. Tuy thi\\u1ebft k\\u1ebf kh&ocirc;ng qu&aacute; kh&aacute;c bi\\u1ec7t so v\\u1edbi ti\\u1ec1n nhi\\u1ec7m iPad Pro 2020 nh\\u01b0ng v\\u1eabn \\u0111\\u01b0\\u1ee3c Apple n&acirc;ng c\\u1ea5p r\\u1ea5t nhi\\u1ec1u v\\u1ec1 m&agrave;n h&igrave;nh, camera c&ugrave;ng con chip Apple M1 h\\u1ee9a h\\u1eb9n s\\u1ebd mang l\\u1ea1i cho ng\\u01b0\\u1eddi d&ugrave;ng nhi\\u1ec1u tr\\u1ea3i nghi\\u1ec7m tuy\\u1ec7t v\\u1eddi v\\u1ec1 hi\\u1ec7u n\\u0103ng c\\u0169ng nh\\u01b0 gi\\u1ea3i tr&iacute; h&agrave;ng ng&agrave;y.<\\/p>\"}},\"category\":[\"4\"],\"image\":\"\\/data\\/product\\/product-7.png\",\"sku\":\"FILAMENT\",\"alias\":\"demo-alias-name-product-7\",\"brand_id\":null,\"supplier_id\":\"1\",\"cost\":\"23000000\",\"price\":\"23490000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:22:43', '2021-08-11 09:22:43'),
(473, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:22:43', '2021-08-11 09:22:43'),
(474, 1, 'demo_admin/product/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:23:17', '2021-08-11 09:23:17'),
(475, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 09:24:09', '2021-08-11 09:24:09'),
(476, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628673849974\"}', '2021-08-11 09:24:10', '2021-08-11 09:24:10'),
(477, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628673849973\"}', '2021-08-11 09:24:10', '2021-08-11 09:24:10'),
(478, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628673849975\"}', '2021-08-11 09:24:10', '2021-08-11 09:24:10'),
(479, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 09:24:33', '2021-08-11 09:24:33'),
(480, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628673873879\"}', '2021-08-11 09:24:34', '2021-08-11 09:24:34'),
(481, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628673873880\"}', '2021-08-11 09:24:34', '2021-08-11 09:24:34'),
(482, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628673873881\"}', '2021-08-11 09:24:34', '2021-08-11 09:24:34'),
(483, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"2\",\"_\":\"1628673873882\"}', '2021-08-11 09:24:46', '2021-08-11 09:24:46');
INSERT INTO `demo_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(484, 1, 'demo_admin/product/edit/6', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Apple Watch SE 40mm Genuine GPS VN\\/A\",\"keyword\":null,\"description\":null,\"content\":\"<p>Apple Watch SE 40mm Genuine GPS VN\\/A . New machine with unactivated seal, genuine 12 months warranty at authorized Apple insurance centers in Vietnam<\\/p>\"},\"vi\":{\"name\":\"Apple Watch SE 40mm GPS ch\\u00ednh h\\u00e3ng VN\\/A\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>Apple Watch SE 40mm GPS ch&iacute;nh h&atilde;ng VN\\/A<\\/strong>&nbsp;. M&aacute;y m\\u1edbi nguy&ecirc;n seal ch\\u01b0a k&iacute;ch ho\\u1ea1t , \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh 12 th&aacute;ng ch&iacute;nh h&atilde;ng t\\u1ea1i c&aacute;c TTBH u\\u1ef7 quy\\u1ec1n c\\u1ee7a Apple t\\u1ea1i Vi\\u1ec7t Nam<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>Apple Watch SE 40mm GPS: R\\u1ebb c&oacute; n&ecirc;n n&acirc;ng c\\u1ea5p?<\\/strong><\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"420\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1.jpeg\\\" srcset=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1.jpeg 800w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1-300x158.jpeg 300w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1-768x403.jpeg 768w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1-24x13.jpeg 24w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1-36x19.jpeg 36w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1-48x25.jpeg 48w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p><b>Phi&ecirc;n b\\u1ea3n&nbsp;<a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/apple-watch\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\" title=\\\"Apple Watch\\\">Apple Watch<\\/a>&nbsp;SE 40mm GPS<\\/b>&nbsp;\\u0111\\u01b0\\u1ee3c bi\\u1ebft \\u0111\\u1ebfn l&agrave; m\\u1eabu \\u0111\\u1ed3ng h\\u1ed3 th&ocirc;ng minh v&agrave; &ldquo;gi&aacute; r\\u1ebb&rdquo; \\u0111\\u1ec3 \\u0111&aacute;nh th\\u1eb3ng v&agrave;o ph&acirc;n kh&uacute;c t\\u1ea7m trung c\\u1ee7a nh&agrave; T&aacute;o. S\\u1ea3n ph\\u1ea9m tuy \\u0111\\u01b0\\u1ee3c coi l&agrave; m\\u1ed9t bi\\u1ebfn th\\u1ec3 lai gi\\u1eefa Series 4 &ndash; Series 5 v&agrave; Series 6 nh\\u01b0ng l\\u1ea1i mang trong m&igrave;nh chi\\u1ebfn l\\u01b0\\u1ee3c nh\\u1eb1m thu h&uacute;t ng\\u01b0\\u1eddi d&ugrave;ng tham gia v&agrave;o h\\u1ec7 sinh th&aacute;i&nbsp;<a data-wpel-link=\\\"external\\\" href=\\\"https:\\/\\/apple.com\\/\\\" rel=\\\"nofollow external noopener noreferrer\\\" target=\\\"_blank\\\">Apple<\\/a>. C&ugrave;ng Exphone.vn \\u0111&aacute;nh gi&aacute; \\u0111\\u1ec3 hi\\u1ec3u r&otilde; h\\u01a1n nh&eacute;!<\\/p>\\r\\n\\r\\n<h2><b>1. Phi&ecirc;n b\\u1ea3n Apple Watch SE 40mm GPS &ndash; r\\u1ebb nh\\u01b0ng v\\u1eabn r\\u1ea5t x\\u1ecbn<\\/b><\\/h2>\\r\\n\\r\\n<p>Apple Watch SE 40mm GPS s\\u1edf h\\u1eefu m&agrave;n h&igrave;nh c&oacute; di\\u1ec7n t&iacute;ch hi\\u1ec3n th\\u1ecb h\\u1eefu d\\u1ee5ng cao (b\\u1ea3n 44mm: 977 sq mm v&agrave; b\\u1ea3n 40mm: 759 sq mm) gi&uacute;p hi\\u1ec3n th\\u1ecb \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u n\\u1ed9i dung tr&ecirc;n m\\u1eb7t \\u0111\\u1ed3ng h\\u1ed3.<\\/p>\\r\\n\\r\\n<p>M\\u1eb7t \\u0111\\u1ed3ng h\\u1ed3 l\\u1edbn c\\u0169ng gi&uacute;p Apple Watch SE 40mm GPS hi\\u1ec3n th\\u1ecb c&aacute;c m\\u1eb7t \\u0111\\u1ed3ng h\\u1ed3 \\u0111\\u1eb9p v&agrave; h\\u1eefu d\\u1ee5ng. Ngo&agrave;i ra, Apple Watch SE 40mm GPS c&oacute; t\\u1ea5t c\\u1ea3 c&aacute;c m\\u1eb7t \\u0111\\u1ed3ng h\\u1ed3 m\\u1edbi c\\u1ee7a Apple, ch\\u1ec9 l&agrave; thi\\u1ebfu \\u0111i phi&ecirc;n b\\u1ea3n M&agrave;n h&igrave;nh lu&ocirc;n s&aacute;ng m&agrave; th&ocirc;i.<\\/p>\\r\\n\\r\\n<p>M\\u1eb7t \\u0111\\u1ed3ng h\\u1ed3 l\\u1edbn hi\\u1ec3n th\\u1ecb nhi\\u1ec1u tr\\u01b0\\u1eddng th&ocirc;ng tin ph\\u1ee5 gi&uacute;p ng\\u01b0\\u1eddi d&ugrave;ng t&ugrave;y bi\\u1ebfn \\u0111\\u1ec3 theo d&otilde;i \\u0111\\u01b0\\u1ee3c nh\\u1eefng th&ocirc;ng tin mang t&iacute;nh c&aacute; nh&acirc;n h&oacute;a cao h\\u01a1n.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"450\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2.jpg\\\" srcset=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2.jpg 800w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2-300x169.jpg 300w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2-768x432.jpg 768w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2-24x14.jpg 24w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2-36x20.jpg 36w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2-48x27.jpg 48w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p>Phi&ecirc;n b\\u1ea3n Apple Watch SE 40mm GPS &ndash; r\\u1ebb nh\\u01b0ng v\\u1eabn r\\u1ea5t x\\u1ecbn<\\/p>\\r\\n\\r\\n<p>N&uacute;t xoay Digital Crown k\\u1ebft h\\u1ee3p c&ugrave;ng c\\u1ee5m rung Taptic Engine gi&uacute;p mang l\\u1ea1i tr\\u1ea3i nghi\\u1ec7m giao ti\\u1ebfp r\\u1ea5t \\u0111\\u1ed9c \\u0111&aacute;o m&agrave; kh&ocirc;ng m\\u1ed9t thi\\u1ebft b\\u1ecb \\u0111eo n&agrave;o c&oacute; \\u0111\\u01b0\\u1ee3c.<\\/p>\\r\\n\\r\\n<p>B&ecirc;n c\\u1ea1nh \\u0111&oacute;, c\\u1ee5m c\\u1ea3m bi\\u1ebfn nh\\u1ecbp tim \\u0111\\u01b0\\u1ee3c \\u0111\\u1eb7t trong m\\u1eb7t k&iacute;nh sapphire gi&uacute;p n&oacute; h\\u1ea7u nh\\u01b0 kh&ocirc;ng b\\u1ecb tr\\u1ea7y x\\u01b0\\u1edbc hay l&atilde;o h&oacute;a trong su\\u1ed1t v&ograve;ng \\u0111\\u1eddi s\\u1eed d\\u1ee5ng. \\u0110i\\u1ec1u n&agrave;y s\\u1ebd \\u0111\\u1ea3m b\\u1ea3o cho nh\\u1ecbp tim m&agrave; n&oacute; \\u0111o \\u0111\\u01b0\\u1ee3c c&oacute; \\u0111\\u1ed9 ch&iacute;nh x&aacute;c cao nh\\u1ea5t.<\\/p>\"}},\"category\":[\"3\"],\"image\":\"\\/data\\/product\\/product-6.png\",\"sub_image\":[\"\\/data\\/product\\/product-6-1.png\"],\"sku\":\"TMC2208\",\"alias\":\"demo-alias-name-product-6\",\"brand_id\":null,\"supplier_id\":\"1\",\"cost\":\"8000000\",\"price\":\"8690000\",\"tax_id\":\"auto\",\"price_promotion\":\"7490000\",\"price_promotion_start\":\"2021-08-05\",\"price_promotion_end\":\"2021-08-26\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:25:28', '2021-08-11 09:25:28'),
(485, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:25:28', '2021-08-11 09:25:28'),
(486, 1, 'demo_admin/product/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:25:33', '2021-08-11 09:25:33'),
(487, 1, 'demo_admin/product/edit/6', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Apple Watch SE 40mm Genuine GPS VN\\/A\",\"keyword\":null,\"description\":null,\"content\":\"<p>Apple Watch SE 40mm Genuine GPS VN\\/A . New machine with unactivated seal, genuine 12 months warranty at authorized Apple insurance centers in Vietnam<\\/p>\"},\"vi\":{\"name\":\"Apple Watch SE 40mm GPS ch\\u00ednh h\\u00e3ng VN\\/A\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>Apple Watch SE 40mm GPS ch&iacute;nh h&atilde;ng VN\\/A<\\/strong>&nbsp;. M&aacute;y m\\u1edbi nguy&ecirc;n seal ch\\u01b0a k&iacute;ch ho\\u1ea1t , \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh 12 th&aacute;ng ch&iacute;nh h&atilde;ng t\\u1ea1i c&aacute;c TTBH u\\u1ef7 quy\\u1ec1n c\\u1ee7a Apple t\\u1ea1i Vi\\u1ec7t Nam<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>Apple Watch SE 40mm GPS: R\\u1ebb c&oacute; n&ecirc;n n&acirc;ng c\\u1ea5p?<\\/strong><\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"420\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1.jpeg\\\" srcset=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1.jpeg 800w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1-300x158.jpeg 300w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1-768x403.jpeg 768w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1-24x13.jpeg 24w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1-36x19.jpeg 36w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1-48x25.jpeg 48w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p><b>Phi&ecirc;n b\\u1ea3n&nbsp;<a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/apple-watch\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\" title=\\\"Apple Watch\\\">Apple Watch<\\/a>&nbsp;SE 40mm GPS<\\/b>&nbsp;\\u0111\\u01b0\\u1ee3c bi\\u1ebft \\u0111\\u1ebfn l&agrave; m\\u1eabu \\u0111\\u1ed3ng h\\u1ed3 th&ocirc;ng minh v&agrave; &ldquo;gi&aacute; r\\u1ebb&rdquo; \\u0111\\u1ec3 \\u0111&aacute;nh th\\u1eb3ng v&agrave;o ph&acirc;n kh&uacute;c t\\u1ea7m trung c\\u1ee7a nh&agrave; T&aacute;o. S\\u1ea3n ph\\u1ea9m tuy \\u0111\\u01b0\\u1ee3c coi l&agrave; m\\u1ed9t bi\\u1ebfn th\\u1ec3 lai gi\\u1eefa Series 4 &ndash; Series 5 v&agrave; Series 6 nh\\u01b0ng l\\u1ea1i mang trong m&igrave;nh chi\\u1ebfn l\\u01b0\\u1ee3c nh\\u1eb1m thu h&uacute;t ng\\u01b0\\u1eddi d&ugrave;ng tham gia v&agrave;o h\\u1ec7 sinh th&aacute;i&nbsp;<a data-wpel-link=\\\"external\\\" href=\\\"https:\\/\\/apple.com\\/\\\" rel=\\\"nofollow external noopener noreferrer\\\" target=\\\"_blank\\\">Apple<\\/a>. C&ugrave;ng Exphone.vn \\u0111&aacute;nh gi&aacute; \\u0111\\u1ec3 hi\\u1ec3u r&otilde; h\\u01a1n nh&eacute;!<\\/p>\\r\\n\\r\\n<h2><b>1. Phi&ecirc;n b\\u1ea3n Apple Watch SE 40mm GPS &ndash; r\\u1ebb nh\\u01b0ng v\\u1eabn r\\u1ea5t x\\u1ecbn<\\/b><\\/h2>\\r\\n\\r\\n<p>Apple Watch SE 40mm GPS s\\u1edf h\\u1eefu m&agrave;n h&igrave;nh c&oacute; di\\u1ec7n t&iacute;ch hi\\u1ec3n th\\u1ecb h\\u1eefu d\\u1ee5ng cao (b\\u1ea3n 44mm: 977 sq mm v&agrave; b\\u1ea3n 40mm: 759 sq mm) gi&uacute;p hi\\u1ec3n th\\u1ecb \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u n\\u1ed9i dung tr&ecirc;n m\\u1eb7t \\u0111\\u1ed3ng h\\u1ed3.<\\/p>\\r\\n\\r\\n<p>M\\u1eb7t \\u0111\\u1ed3ng h\\u1ed3 l\\u1edbn c\\u0169ng gi&uacute;p Apple Watch SE 40mm GPS hi\\u1ec3n th\\u1ecb c&aacute;c m\\u1eb7t \\u0111\\u1ed3ng h\\u1ed3 \\u0111\\u1eb9p v&agrave; h\\u1eefu d\\u1ee5ng. Ngo&agrave;i ra, Apple Watch SE 40mm GPS c&oacute; t\\u1ea5t c\\u1ea3 c&aacute;c m\\u1eb7t \\u0111\\u1ed3ng h\\u1ed3 m\\u1edbi c\\u1ee7a Apple, ch\\u1ec9 l&agrave; thi\\u1ebfu \\u0111i phi&ecirc;n b\\u1ea3n M&agrave;n h&igrave;nh lu&ocirc;n s&aacute;ng m&agrave; th&ocirc;i.<\\/p>\\r\\n\\r\\n<p>M\\u1eb7t \\u0111\\u1ed3ng h\\u1ed3 l\\u1edbn hi\\u1ec3n th\\u1ecb nhi\\u1ec1u tr\\u01b0\\u1eddng th&ocirc;ng tin ph\\u1ee5 gi&uacute;p ng\\u01b0\\u1eddi d&ugrave;ng t&ugrave;y bi\\u1ebfn \\u0111\\u1ec3 theo d&otilde;i \\u0111\\u01b0\\u1ee3c nh\\u1eefng th&ocirc;ng tin mang t&iacute;nh c&aacute; nh&acirc;n h&oacute;a cao h\\u01a1n.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"450\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2.jpg\\\" srcset=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2.jpg 800w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2-300x169.jpg 300w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2-768x432.jpg 768w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2-24x14.jpg 24w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2-36x20.jpg 36w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2-48x27.jpg 48w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p>Phi&ecirc;n b\\u1ea3n Apple Watch SE 40mm GPS &ndash; r\\u1ebb nh\\u01b0ng v\\u1eabn r\\u1ea5t x\\u1ecbn<\\/p>\\r\\n\\r\\n<p>N&uacute;t xoay Digital Crown k\\u1ebft h\\u1ee3p c&ugrave;ng c\\u1ee5m rung Taptic Engine gi&uacute;p mang l\\u1ea1i tr\\u1ea3i nghi\\u1ec7m giao ti\\u1ebfp r\\u1ea5t \\u0111\\u1ed9c \\u0111&aacute;o m&agrave; kh&ocirc;ng m\\u1ed9t thi\\u1ebft b\\u1ecb \\u0111eo n&agrave;o c&oacute; \\u0111\\u01b0\\u1ee3c.<\\/p>\\r\\n\\r\\n<p>B&ecirc;n c\\u1ea1nh \\u0111&oacute;, c\\u1ee5m c\\u1ea3m bi\\u1ebfn nh\\u1ecbp tim \\u0111\\u01b0\\u1ee3c \\u0111\\u1eb7t trong m\\u1eb7t k&iacute;nh sapphire gi&uacute;p n&oacute; h\\u1ea7u nh\\u01b0 kh&ocirc;ng b\\u1ecb tr\\u1ea7y x\\u01b0\\u1edbc hay l&atilde;o h&oacute;a trong su\\u1ed1t v&ograve;ng \\u0111\\u1eddi s\\u1eed d\\u1ee5ng. \\u0110i\\u1ec1u n&agrave;y s\\u1ebd \\u0111\\u1ea3m b\\u1ea3o cho nh\\u1ecbp tim m&agrave; n&oacute; \\u0111o \\u0111\\u01b0\\u1ee3c c&oacute; \\u0111\\u1ed9 ch&iacute;nh x&aacute;c cao nh\\u1ea5t.<\\/p>\"}},\"category\":[\"3\"],\"image\":\"\\/data\\/product\\/product-6.png\",\"sub_image\":[\"\\/data\\/product\\/product-6-1.png\"],\"sku\":\"TMC2208\",\"alias\":\"demo-alias-name-product-6\",\"brand_id\":null,\"supplier_id\":\"1\",\"cost\":\"8000000\",\"price\":\"8690000\",\"tax_id\":\"auto\",\"price_promotion\":\"7490000\",\"price_promotion_start\":\"2021-08-05 00:00:00\",\"price_promotion_end\":\"2021-08-26 00:00:00\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:25:40', '2021-08-11 09:25:40'),
(488, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:25:41', '2021-08-11 09:25:41'),
(489, 1, 'demo_admin/product/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:25:47', '2021-08-11 09:25:47'),
(490, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 09:27:58', '2021-08-11 09:27:58'),
(491, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674078892\"}', '2021-08-11 09:27:59', '2021-08-11 09:27:59'),
(492, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674078893\"}', '2021-08-11 09:27:59', '2021-08-11 09:27:59'),
(493, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628674078894\"}', '2021-08-11 09:27:59', '2021-08-11 09:27:59'),
(494, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 09:28:01', '2021-08-11 09:28:01'),
(495, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674081084\"}', '2021-08-11 09:28:01', '2021-08-11 09:28:01'),
(496, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674081085\"}', '2021-08-11 09:28:01', '2021-08-11 09:28:01'),
(497, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628674081086\"}', '2021-08-11 09:28:01', '2021-08-11 09:28:01'),
(498, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"2\",\"_\":\"1628674081087\"}', '2021-08-11 09:28:05', '2021-08-11 09:28:05'),
(499, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628674081088\"}', '2021-08-11 09:28:08', '2021-08-11 09:28:08'),
(500, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 09:28:12', '2021-08-11 09:28:12'),
(501, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674092247\"}', '2021-08-11 09:28:12', '2021-08-11 09:28:12'),
(502, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674092248\"}', '2021-08-11 09:28:12', '2021-08-11 09:28:12'),
(503, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628674092249\"}', '2021-08-11 09:28:12', '2021-08-11 09:28:12'),
(504, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"2\",\"_\":\"1628674092250\"}', '2021-08-11 09:28:14', '2021-08-11 09:28:14'),
(505, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 09:28:17', '2021-08-11 09:28:17'),
(506, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674097488\"}', '2021-08-11 09:28:17', '2021-08-11 09:28:17'),
(507, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674097487\"}', '2021-08-11 09:28:17', '2021-08-11 09:28:17'),
(508, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628674097489\"}', '2021-08-11 09:28:18', '2021-08-11 09:28:18'),
(509, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"2\",\"_\":\"1628674097490\"}', '2021-08-11 09:28:20', '2021-08-11 09:28:20'),
(510, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 09:28:30', '2021-08-11 09:28:30'),
(511, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674110341\"}', '2021-08-11 09:28:30', '2021-08-11 09:28:30'),
(512, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674110340\"}', '2021-08-11 09:28:30', '2021-08-11 09:28:30'),
(513, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628674110342\"}', '2021-08-11 09:28:30', '2021-08-11 09:28:30'),
(514, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"2\",\"_\":\"1628674110343\"}', '2021-08-11 09:28:32', '2021-08-11 09:28:32'),
(515, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 09:28:35', '2021-08-11 09:28:35'),
(516, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674116037\"}', '2021-08-11 09:28:36', '2021-08-11 09:28:36'),
(517, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674116036\"}', '2021-08-11 09:28:36', '2021-08-11 09:28:36'),
(518, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628674116038\"}', '2021-08-11 09:28:36', '2021-08-11 09:28:36'),
(519, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"2\",\"_\":\"1628674116039\"}', '2021-08-11 09:28:38', '2021-08-11 09:28:38'),
(520, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 09:28:42', '2021-08-11 09:28:42'),
(521, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674122137\"}', '2021-08-11 09:28:42', '2021-08-11 09:28:42'),
(522, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674122138\"}', '2021-08-11 09:28:42', '2021-08-11 09:28:42'),
(523, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628674122139\"}', '2021-08-11 09:28:42', '2021-08-11 09:28:42'),
(524, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"2\",\"_\":\"1628674122140\"}', '2021-08-11 09:28:44', '2021-08-11 09:28:44'),
(525, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 09:28:54', '2021-08-11 09:28:54'),
(526, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674134193\"}', '2021-08-11 09:28:54', '2021-08-11 09:28:54'),
(527, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628674134194\"}', '2021-08-11 09:28:54', '2021-08-11 09:28:54'),
(528, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628674134195\"}', '2021-08-11 09:28:54', '2021-08-11 09:28:54'),
(529, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"2\",\"_\":\"1628674134196\"}', '2021-08-11 09:28:56', '2021-08-11 09:28:56'),
(530, 1, 'demo_admin/product/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Genuine Samsung Galaxy Buds Live Bluetooth Headset\",\"keyword\":null,\"description\":null,\"content\":\"<p>Outstanding Features<br \\/>\\r\\nErgonomic earphone design, fits snugly in the ear, comfortable to wear<br \\/>\\r\\nImpressive charging case design, with a glossy surface, fits comfortably in the hand<br \\/>\\r\\nTrendy colors, enhance your personal style<br \\/>\\r\\nBuilt-in microphone helps users answer calls easily<br \\/>\\r\\nNoise cancellation technology eliminates background noise<br \\/>\\r\\nAKG sound enjoy quality music with deep bass<br \\/>\\r\\nCharging box capacity up to 21 hours, comfortable experience<\\/p>\"},\"vi\":{\"name\":\"Tai nghe Bluetooth Samsung Galaxy Buds Live Ch\\u00ednh H\\u00e3ng\",\"keyword\":null,\"description\":null,\"content\":\"<h2>\\u0110\\u1eb7c \\u0111i\\u1ec3m n\\u1ed5i b\\u1eadt<\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Thi\\u1ebft k\\u1ebf&nbsp;tai nghe c&ocirc;ng th&aacute;i h\\u1ecdc, v\\u1eeba v\\u1eb7n &ocirc;m kh&iacute;t tai, &ecirc;m &aacute;i khi mang<\\/li>\\r\\n\\t<li>Thi\\u1ebft k\\u1ebf h\\u1ed9p s\\u1ea1c \\u1ea5n t\\u01b0\\u1ee3ng, v\\u1edbi b\\u1ec1 m\\u1eb7t b&oacute;ng b\\u1ea9y, v\\u1eeba v\\u1eb7n c\\u1ea7m n\\u1eafm<\\/li>\\r\\n\\t<li>M&agrave;u s\\u1eafc th\\u1eddi th\\u01b0\\u1ee3ng, n&acirc;ng t\\u1ea7m phong c&aacute;ch c&aacute; nh&acirc;n<\\/li>\\r\\n\\t<li>T&iacute;ch h\\u1ee3p micro gi&uacute;p ng\\u01b0\\u1eddi d&ugrave;ng tr\\u1ea3 l\\u1eddi cu\\u1ed9c g\\u1ecdi d\\u1ec5 d&agrave;ng<\\/li>\\r\\n\\t<li>C&ocirc;ng ngh\\u1ec7 kh\\u1eed ti\\u1ebfng \\u1ed3n gi&uacute;p lo\\u1ea1i b\\u1ecf t\\u1ea1p &acirc;m xung quanh<\\/li>\\r\\n\\t<li>&Acirc;m thanh AKG t\\u1eadn h\\u01b0\\u1edfng &acirc;m nh\\u1ea1c ch\\u1ea5t l\\u01b0\\u1ee3ng v\\u1edbi &acirc;m tr\\u1ea7m s&acirc;u<\\/li>\\r\\n\\t<li>Dung l\\u01b0\\u1ee3ng h\\u1ed9p s\\u1ea1c l&ecirc;n \\u0111\\u1ebfn 21 gi\\u1edd, tho\\u1ea3i m&aacute;i tr\\u1ea3i nghi\\u1ec7m<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"5\"],\"image\":\"\\/data\\/product\\/product-5.png\",\"sub_image\":[\"\\/data\\/product\\/product-5-1.png\",\"\\/data\\/product\\/product-5-4.png\",\"\\/data\\/product\\/product-5-3.png\",\"\\/data\\/product\\/product-5-4.png\"],\"sku\":\"CLOCKFAN3\",\"alias\":\"demo-alias-name-product-5\",\"brand_id\":null,\"supplier_id\":\"1\",\"cost\":\"2500000\",\"price\":\"3090000\",\"tax_id\":\"auto\",\"price_promotion\":\"2790000\",\"price_promotion_start\":\"2021-08-05\",\"price_promotion_end\":\"2021-08-31\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:29:53', '2021-08-11 09:29:53'),
(531, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:29:53', '2021-08-11 09:29:53'),
(532, 1, 'demo_admin/product/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:29:57', '2021-08-11 09:29:57'),
(533, 1, 'demo_admin/product/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:30:47', '2021-08-11 09:30:47'),
(534, 1, 'demo_admin/product/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"IPhone XS glass replacement service\",\"keyword\":null,\"description\":null,\"content\":\"<p>&diams; 100% genuine glass.<br \\/>\\r\\n<br \\/>\\r\\n&diams; The replacement glass is transparent, beautiful as the original.<\\/p>\"},\"vi\":{\"name\":\"D\\u1ecbch v\\u1ee5 thay k\\u00ednh IPhone XS\",\"keyword\":null,\"description\":null,\"content\":\"<p>&diams; M\\u1eb7t k&iacute;nh ch&iacute;nh h&atilde;ng 100%.<\\/p>\\r\\n\\r\\n<p>&diams; K&iacute;nh thay c&oacute; \\u0111\\u1ed9 trong su\\u1ed1t, \\u0111\\u1eb9p chu\\u1ea9n nh\\u01b0 ban \\u0111\\u1ea7u.<\\/p>\"}},\"category\":[\"11\"],\"image\":\"\\/data\\/product\\/product-4.png\",\"sku\":\"CLOCKFAN2\",\"alias\":\"demo-alias-name-product-4\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"500000\",\"price\":\"1000000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"10\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:31:43', '2021-08-11 09:31:43'),
(535, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:31:44', '2021-08-11 09:31:44'),
(536, 1, 'demo_admin/product/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:31:47', '2021-08-11 09:31:47'),
(537, 1, 'demo_admin/product/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"IPhone XS glass replacement service\",\"keyword\":null,\"description\":null,\"content\":\"<p>&diams; 100% genuine glass.<br \\/>\\r\\n<br \\/>\\r\\n&diams; The replacement glass is transparent, beautiful as the original.<\\/p>\"},\"vi\":{\"name\":\"D\\u1ecbch v\\u1ee5 thay k\\u00ednh IPhone XS\",\"keyword\":null,\"description\":null,\"content\":\"<p>&diams; M\\u1eb7t k&iacute;nh ch&iacute;nh h&atilde;ng 100%.<\\/p>\\r\\n\\r\\n<p>&diams; K&iacute;nh thay c&oacute; \\u0111\\u1ed9 trong su\\u1ed1t, \\u0111\\u1eb9p chu\\u1ea9n nh\\u01b0 ban \\u0111\\u1ea7u.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product-4.png\",\"sub_image\":[\"\\/data\\/product\\/product-13.png\"],\"sku\":\"CLOCKFAN2\",\"alias\":\"demo-alias-name-product-4\",\"brand_id\":null,\"supplier_id\":\"1\",\"cost\":\"500000\",\"price\":\"1000000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"10\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:32:00', '2021-08-11 09:32:00'),
(538, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:32:01', '2021-08-11 09:32:01'),
(539, 1, 'demo_admin/product/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:32:11', '2021-08-11 09:32:11'),
(540, 1, 'demo_admin/product/edit/3', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Easy Polo Black Edition 3\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 3\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"11\"],\"image\":\"\\/data\\/product\\/product-3.png\",\"sku\":\"CLOCKFAN1\",\"alias\":\"demo-alias-name-product-3\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:32:19', '2021-08-11 09:32:19'),
(541, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:32:19', '2021-08-11 09:32:19'),
(542, 1, 'demo_admin/product/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:32:22', '2021-08-11 09:32:22'),
(543, 1, 'demo_admin/product/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Easy Polo Black Edition 2\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 2\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"13\"],\"image\":\"\\/data\\/product\\/product-2.png\",\"sub_image\":[\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-1.png\",\"\\/data\\/product\\/product-15.png\"],\"sku\":\"LEDFAN1\",\"alias\":\"demo-alias-name-product-2\",\"brand_id\":\"1\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"3000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:32:25', '2021-08-11 09:32:25'),
(544, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:32:26', '2021-08-11 09:32:26'),
(545, 1, 'demo_admin/product/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:32:28', '2021-08-11 09:32:28'),
(546, 1, 'demo_admin/product/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"6\",\"10\",\"13\"],\"image\":\"\\/data\\/product\\/product-1.png\",\"sub_image\":[\"\\/data\\/product\\/product-2.png\",\"\\/data\\/product\\/product-11.png\"],\"sku\":\"ABCZZ\",\"alias\":\"demo-alias-name-product-1\",\"brand_id\":\"1\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"5000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"99\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":\"2021-09-09\",\"minimum\":\"0\",\"sort\":\"0\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:32:31', '2021-08-11 09:32:31'),
(547, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:32:31', '2021-08-11 09:32:31'),
(548, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:33:00', '2021-08-11 09:33:00'),
(549, 1, 'demo_admin/category/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:33:13', '2021-08-11 09:33:13'),
(550, 1, 'demo_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"ids\":\"13,12,11,10,8,7,6\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:33:27', '2021-08-11 09:33:27'),
(551, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-08-11 09:33:27', '2021-08-11 09:33:27'),
(552, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:33:30', '2021-08-11 09:33:30'),
(553, 1, 'demo_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:34:08', '2021-08-11 09:34:08'),
(554, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:34:11', '2021-08-11 09:34:11'),
(555, 1, 'demo_admin/product/edit/8', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:34:17', '2021-08-11 09:34:17');
INSERT INTO `demo_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(556, 1, 'demo_admin/product/edit/8', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Macbook Air M1 2020 8G 256GB\",\"keyword\":null,\"description\":null,\"content\":\"<p>Apple has just launched an impressive new version of the MacBook Air M1 2020 with a new M1 chip designed specifically for MacBooks that boosts CPU performance up to 3.5 times faster, longest battery life ever on the market. MacBook Air.<\\/p>\"},\"vi\":{\"name\":\"Macbook Air M1 2020 8G 256GB\",\"keyword\":null,\"description\":null,\"content\":\"<p>Apple v\\u1eeba cho ra m\\u1eaft phi&ecirc;n b\\u1ea3n&nbsp;<strong>MacBook Air M1 2020<\\/strong>&nbsp;m\\u1edbi c\\u1ef1c k&igrave; \\u1ea5n t\\u01b0\\u1ee3ng v\\u1edbi con chip M1 m\\u1edbi \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf d&agrave;nh ri&ecirc;ng cho MacBook t\\u0103ng hi\\u1ec7u su\\u1ea5t CPU nhanh h\\u01a1n t\\u1edbi 3.5 l\\u1ea7n, tu\\u1ed5i th\\u1ecd pin d&agrave;i nh\\u1ea5t t\\u1eeb \\u200b\\u200btr\\u01b0\\u1edbc \\u0111\\u1ebfn nay tr&ecirc;n MacBook Air.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h3>Sang tr\\u1ecdng, c\\u01a1 \\u0111\\u1ed9ng v&agrave; \\u0111\\u1eb3ng c\\u1ea5p<\\/h3>\\r\\n\\r\\n<p>\\u0110\\u01b0\\u1ee3c ch\\u1ebf t&aacute;c tinh x\\u1ea3o t\\u1eeb kim lo\\u1ea1i nguy&ecirc;n kh\\u1ed1i t&aacute;i ch\\u1ebf, Apple \\u0111em \\u0111\\u1ebfn m\\u1ed9t phi&ecirc;n b\\u1ea3n&nbsp;MacBook Air&nbsp;sang tr\\u1ecdng, \\u0111\\u1eb3ng c\\u1ea5p nh\\u01b0ng v\\u1eabn gi\\u1eef \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9 m\\u1ecfng nh\\u1eb9, th&acirc;n m&aacute;y ch\\u1ec9<strong>&nbsp;16.1 mm<\\/strong>, n\\u1eb7ng&nbsp;<strong>1.29 kg<\\/strong>&nbsp;\\u0111\\u1ec1 cao t&iacute;nh di \\u0111\\u1ed9ng, b\\u1eaft k\\u1ecbp xu h\\u01b0\\u1edbng hi\\u1ec7n nay.<\\/p>\\r\\n\\r\\n<p><a data-wpel-link=\\\"external\\\" href=\\\"https:\\/\\/www.thegioididong.com\\/images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-280420-100425.jpg\\\" rel=\\\"nofollow external noopener noreferrer\\\" target=\\\"_blank\\\"><img alt=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Thi\\u1ebft k\\u1ebf\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-280420-100425.jpg\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-280420-100425.jpg\\\" title=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Thi\\u1ebft k\\u1ebf\\\" \\/><\\/a><\\/p>\\r\\n\\r\\n<p><strong>Chip b\\u1ea3o m\\u1eadt T2<\\/strong>&nbsp;m&atilde; h&oacute;a m\\u1ecdi th&ocirc;ng tin tr&ecirc;n m&aacute;y \\u0111\\u1ea3m b\\u1ea3o th&ocirc;ng tin c&aacute; nh&acirc;n c\\u1ee7a b\\u1ea1n. \\u0110\\u0103ng nh\\u1eadp v&agrave;o m&aacute;y d\\u1ec5 d&agrave;ng b\\u1eb1ng<strong>&nbsp;b\\u1ea3o m\\u1eadt v&acirc;n tay<\\/strong>, h\\u1ed7 tr\\u1ee3 thanh to&aacute;n online c\\u1ef1c k&igrave; nhanh ch&oacute;ng v&agrave; ti\\u1ec7n l\\u1ee3i.<\\/p>\\r\\n\\r\\n<p><a data-wpel-link=\\\"external\\\" href=\\\"https:\\/\\/www.thegioididong.com\\/images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-073520-103521.jpg\\\" rel=\\\"nofollow external noopener noreferrer\\\" target=\\\"_blank\\\"><img alt=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Touch ID\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-073520-103521.jpg\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-073520-103521.jpg\\\" title=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Touch ID\\\" \\/><\\/a><\\/p>\"}},\"category\":[\"1\"],\"image\":\"\\/data\\/product\\/product-8.png\",\"sub_image\":[\"\\/data\\/product\\/product-8.png\"],\"sku\":\"A4988\",\"alias\":\"demo-alias-name-product-8\",\"brand_id\":null,\"supplier_id\":\"1\",\"cost\":\"25000000\",\"price\":\"25490000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:34:23', '2021-08-11 09:34:23'),
(557, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:34:23', '2021-08-11 09:34:23'),
(558, 1, 'demo_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:36:57', '2021-08-11 09:36:57'),
(559, 1, 'demo_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:37:13', '2021-08-11 09:37:13'),
(560, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:37:41', '2021-08-11 09:37:41'),
(561, 1, 'demo_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:37:43', '2021-08-11 09:37:43'),
(562, 1, 'demo_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:37:51', '2021-08-11 09:37:51'),
(563, 1, 'demo_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"Shop HPTV: Shop b\\u00e1n \\u0111i\\u1ec7n tho\\u1ea1i th\\u00f4ng minh uy t\\u00edn\",\"pk\":null,\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\",\"storeId\":\"1\"}', '2021-08-11 09:41:01', '2021-08-11 09:41:01'),
(564, 1, 'demo_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"name\":\"title__en\",\"value\":\"Shop HPTV: Shop selling reputable smartphones\",\"pk\":null,\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\",\"storeId\":\"1\"}', '2021-08-11 09:41:12', '2021-08-11 09:41:12'),
(565, 1, 'demo_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"name\":\"description__en\",\"value\":\"Shop b\\u00e1n h\\u00e0ng uy t\\u00edn \\u0110\\u00e0 N\\u1eb5ng\",\"pk\":null,\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\",\"storeId\":\"1\"}', '2021-08-11 09:42:22', '2021-08-11 09:42:22'),
(566, 1, 'demo_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"name\":\"description__vi\",\"value\":\"Prestigious shop in Da Nang\",\"pk\":null,\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\",\"storeId\":\"1\"}', '2021-08-11 09:42:41', '2021-08-11 09:42:41'),
(567, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"logo\"}', '2021-08-11 09:42:46', '2021-08-11 09:42:46'),
(568, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1628674966960\"}', '2021-08-11 09:42:47', '2021-08-11 09:42:47'),
(569, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1628674966961\"}', '2021-08-11 09:42:47', '2021-08-11 09:42:47'),
(570, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628674966962\"}', '2021-08-11 09:42:47', '2021-08-11 09:42:47'),
(571, 1, 'demo_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"name\":\"logo\",\"value\":\"\\/data\\/logo\\/mau-logo-dien-thoai-dep-02.jpg\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\",\"storeId\":\"1\"}', '2021-08-11 09:42:54', '2021-08-11 09:42:54'),
(572, 1, 'demo_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"name\":\"address\",\"value\":\"184 - Hu\\u1ef3nh V\\u0103n Ngh\\u1ec7  - Ng\\u0169 H\\u00e0nh S\\u01a1n - \\u0110\\u00e0 N\\u1eb5ng\",\"pk\":null,\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\",\"storeId\":\"1\"}', '2021-08-11 09:43:50', '2021-08-11 09:43:50'),
(573, 1, 'demo_admin/email_template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:44:22', '2021-08-11 09:44:22'),
(574, 1, 'demo_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:44:29', '2021-08-11 09:44:29'),
(575, 1, 'demo_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:44:34', '2021-08-11 09:44:34'),
(576, 1, 'demo_admin/store_block', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:44:42', '2021-08-11 09:44:42'),
(577, 1, 'demo_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:46:40', '2021-08-11 09:46:40'),
(578, 1, 'demo_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:46:41', '2021-08-11 09:46:41'),
(579, 1, 'demo_admin/page/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:46:45', '2021-08-11 09:46:45'),
(580, 1, 'demo_admin/page/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"About\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>I. Th&ocirc;ng tin chung<\\/strong><\\/p>\\r\\n\\r\\n<p>Th&ocirc;ng tin chung v\\u1ec1 c\\u1eeda h&agrave;ng<\\/p>\\r\\n\\r\\n<p>&ndash; \\u0110\\u1ecba ch\\u1ec9: 27 H&agrave;m Nghi &ndash; Qu\\u1eadn Thanh Kh&ecirc; &ndash; TP.\\u0110&agrave; N\\u1eb5ng<br \\/>\\r\\n&ndash; Th\\u1eddi gian th&agrave;nh l\\u1eadp th&aacute;ng 7\\/2018<br \\/>\\r\\n&ndash; \\u0110\\u1ecba ch\\u1ec9 website:&nbsp;<a data-lynx-mode=\\\"origin\\\" data-wpel-link=\\\"external\\\" href=\\\"https:\\/\\/l.facebook.com\\/l.php?u=http%3A%2F%2Fwww.exphone.vn%2F&amp;h=AT2Fl2Z_mYWtUBJe8klqxk0GsW_7ctMAqbiPQuNsds4db0oVGw1U3U_Fi_lgKUpeLBBJBRGSvbONKFUW0WOEliw1giOgJTeOuu7sbBJ01-7BZNwkdpHvaXgAwZnYuzOuWUPsMKb4gXI\\\" rel=\\\"noopener nofollow external noreferrer\\\" target=\\\"_blank\\\">www.exphone.vn<\\/a>&nbsp;&ndash; Hotline: 0918.503.543<br \\/>\\r\\n&ndash; Gi\\u1ea5y ch\\u1ee9ng nh\\u1eadn \\u0111\\u0103ng k&iacute; h\\u1ed9 kinh doanh: S\\u1ed1 32B8017064<br \\/>\\r\\n&ndash; \\u0110\\u0103ng k&iacute; l\\u1ea7n \\u0111\\u1ea7u: 21\\/7\\/2018<br \\/>\\r\\n&ndash; N\\u01a1i c\\u1ea5p: U\\u1ef7 Ban Nh&acirc;n D&acirc;n Qu\\u1eadn Thanh Kh&ecirc;, Ph&ograve;ng T&agrave;i Ch&iacute;nh &amp; K\\u1ebf Ho\\u1ea1ch<\\/p>\\r\\n\\r\\n<p><strong>II. Gi\\u1edbi thi\\u1ec7u v\\u1ec1 c\\u1eeda h&agrave;ng<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0110\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave;o gi\\u1eefa n\\u0103m 2018, c\\u1eeda h&agrave;ng \\u0111i\\u1ec7n tho\\u1ea1i ExPhone ch&uacute;ng t&ocirc;i chuy&ecirc;n cung c\\u1ea5p s\\u1ea3n ph\\u1ea9m smartphone, tablet Apple v&agrave; Android \\u0111i k&egrave;m \\u0111&oacute; l&agrave; s\\u1ea3n ph\\u1ea9m ph\\u1ee5 ki\\u1ec7n, \\u0111\\u1ed3 ch\\u01a1i c&ocirc;ng ngh\\u1ec7 , d\\u1ecbch v\\u1ee5 s\\u1eeda ch\\u1eefa chuy&ecirc;n nghi\\u1ec7p. Tuy l&agrave; m\\u1ed9t th\\u01b0\\u01a1ng hi\\u1ec7u m\\u1edbi nh\\u01b0ng ch&uacute;ng t&ocirc;i r\\u1ea5t t\\u1ef1 tin v\\u1edbi \\u0111\\u1ed9i ng\\u0169 nh&acirc;n s\\u1ef1 l&agrave; nh\\u1eefng nh&acirc;n vi&ecirc;n \\u01b0u t&uacute; \\u0111&atilde; c&oacute; nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m ho\\u1ea1t \\u0111\\u1ed9ng v&agrave; gi\\u1eef nhi\\u1ec1u v\\u1ecb tr&iacute; quan tr\\u1ecdng trong c&aacute;c h\\u1ec7 th\\u1ed1ng b&aacute;n l\\u1ebb l\\u1edbn t\\u1ea1i Vi\\u1ec7t Nam.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"440\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 660px) 100vw, 660px\\\" src=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38284425_286620045437958_2251146020878548992_o-1024x683.jpg\\\" srcset=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38284425_286620045437958_2251146020878548992_o-1024x683.jpg 1024w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38284425_286620045437958_2251146020878548992_o-300x200.jpg 300w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38284425_286620045437958_2251146020878548992_o-800x533.jpg 800w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38284425_286620045437958_2251146020878548992_o-768x512.jpg 768w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38284425_286620045437958_2251146020878548992_o.jpg 2048w\\\" width=\\\"660\\\" \\/><\\/p>\\r\\n\\r\\n<p>C&aacute;i t&ecirc;n ExPhone \\u1ea9n ch\\u01b0a nhi\\u1ec1u &yacute; ngh\\u0129a v&agrave; th&ocirc;ng \\u0111i\\u1ec7p m&agrave; ch&uacute;ng t&ocirc;i mu\\u1ed1n g\\u1eedi \\u0111\\u1ebfn cho qu&yacute; kh&aacute;ch h&agrave;ng, \\u0111\\u01a1n c\\u1eed nh\\u01b0 Ex c\\u1ee7a Excellent c&oacute; ngh\\u0129a l&agrave; &ldquo;\\u0111\\u1ebfn v\\u1edbi ch&uacute;ng t&ocirc;i b\\u1ea1n c&oacute; th\\u1ec3 t&igrave;m \\u0111\\u01b0\\u1ee3c nh\\u1eefng chi\\u1ebfc \\u0111i\\u1ec7n tho\\u1ea1i ho&agrave;n h\\u1ea3o nh\\u1ea5t&rdquo;. Hay nh\\u01b0 Excited l&agrave; c\\u1ea3m th\\u1ea5y ph\\u1ea5n kh&iacute;ch, vui s\\u01b0\\u1edbng. C&ocirc; \\u0111\\u1ecdng t\\u1eeb nh\\u1eefng &yacute; ngh\\u0129a \\u0111&oacute;, ch&uacute;ng t&ocirc;i \\u0111&atilde; \\u0111\\u1eb7t slogan &ldquo; Ph\\u1ee5c v\\u1ee5 t\\u1eadn t&acirc;m, trao tay c\\u1ea3m x&uacute;c&rdquo;, \\u0111\\u1ebfn v\\u1edbi ExPhone b\\u1ea1n s\\u1ebd kh&ocirc;ng ch\\u1ec9 t&igrave;m th\\u1ea5y s\\u1ef1 h&agrave;i l&ograve;ng \\u1edf s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t v\\u1eddi m&agrave; s\\u1ebd c&ograve;n nh\\u1eadn \\u0111\\u01b0\\u1ee3c c\\u1ea3m gi&aacute;c vui v\\u1ebb, an t&acirc;m.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"440\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 660px) 100vw, 660px\\\" src=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38448980_1845532828826724_147515569518673920_o-1024x683.jpg\\\" srcset=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38448980_1845532828826724_147515569518673920_o-1024x683.jpg 1024w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38448980_1845532828826724_147515569518673920_o-300x200.jpg 300w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38448980_1845532828826724_147515569518673920_o-800x533.jpg 800w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38448980_1845532828826724_147515569518673920_o-768x512.jpg 768w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38448980_1845532828826724_147515569518673920_o.jpg 2048w\\\" width=\\\"660\\\" \\/><\\/p>\"},\"vi\":{\"title\":\"Gi\\u1edbi thi\\u1ec7u\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>I. Th&ocirc;ng tin chung<\\/strong><\\/p>\\r\\n\\r\\n<p>Th&ocirc;ng tin chung v\\u1ec1 c\\u1eeda h&agrave;ng<\\/p>\\r\\n\\r\\n<p>&ndash; \\u0110\\u1ecba ch\\u1ec9: 27 H&agrave;m Nghi &ndash; Qu\\u1eadn Thanh Kh&ecirc; &ndash; TP.\\u0110&agrave; N\\u1eb5ng<br \\/>\\r\\n&ndash; Th\\u1eddi gian th&agrave;nh l\\u1eadp th&aacute;ng 7\\/2018<br \\/>\\r\\n&ndash; \\u0110\\u1ecba ch\\u1ec9 website:&nbsp;<a data-lynx-mode=\\\"origin\\\" data-wpel-link=\\\"external\\\" href=\\\"https:\\/\\/l.facebook.com\\/l.php?u=http%3A%2F%2Fwww.exphone.vn%2F&amp;h=AT2Fl2Z_mYWtUBJe8klqxk0GsW_7ctMAqbiPQuNsds4db0oVGw1U3U_Fi_lgKUpeLBBJBRGSvbONKFUW0WOEliw1giOgJTeOuu7sbBJ01-7BZNwkdpHvaXgAwZnYuzOuWUPsMKb4gXI\\\" rel=\\\"noopener nofollow external noreferrer\\\" target=\\\"_blank\\\">www.exphone.vn<\\/a>&nbsp;&ndash; Hotline: 0918.503.543<br \\/>\\r\\n&ndash; Gi\\u1ea5y ch\\u1ee9ng nh\\u1eadn \\u0111\\u0103ng k&iacute; h\\u1ed9 kinh doanh: S\\u1ed1 32B8017064<br \\/>\\r\\n&ndash; \\u0110\\u0103ng k&iacute; l\\u1ea7n \\u0111\\u1ea7u: 21\\/7\\/2018<br \\/>\\r\\n&ndash; N\\u01a1i c\\u1ea5p: U\\u1ef7 Ban Nh&acirc;n D&acirc;n Qu\\u1eadn Thanh Kh&ecirc;, Ph&ograve;ng T&agrave;i Ch&iacute;nh &amp; K\\u1ebf Ho\\u1ea1ch<\\/p>\\r\\n\\r\\n<p><strong>II. Gi\\u1edbi thi\\u1ec7u v\\u1ec1 c\\u1eeda h&agrave;ng<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0110\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave;o gi\\u1eefa n\\u0103m 2018, c\\u1eeda h&agrave;ng \\u0111i\\u1ec7n tho\\u1ea1i ExPhone ch&uacute;ng t&ocirc;i chuy&ecirc;n cung c\\u1ea5p s\\u1ea3n ph\\u1ea9m smartphone, tablet Apple v&agrave; Android \\u0111i k&egrave;m \\u0111&oacute; l&agrave; s\\u1ea3n ph\\u1ea9m ph\\u1ee5 ki\\u1ec7n, \\u0111\\u1ed3 ch\\u01a1i c&ocirc;ng ngh\\u1ec7 , d\\u1ecbch v\\u1ee5 s\\u1eeda ch\\u1eefa chuy&ecirc;n nghi\\u1ec7p. Tuy l&agrave; m\\u1ed9t th\\u01b0\\u01a1ng hi\\u1ec7u m\\u1edbi nh\\u01b0ng ch&uacute;ng t&ocirc;i r\\u1ea5t t\\u1ef1 tin v\\u1edbi \\u0111\\u1ed9i ng\\u0169 nh&acirc;n s\\u1ef1 l&agrave; nh\\u1eefng nh&acirc;n vi&ecirc;n \\u01b0u t&uacute; \\u0111&atilde; c&oacute; nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m ho\\u1ea1t \\u0111\\u1ed9ng v&agrave; gi\\u1eef nhi\\u1ec1u v\\u1ecb tr&iacute; quan tr\\u1ecdng trong c&aacute;c h\\u1ec7 th\\u1ed1ng b&aacute;n l\\u1ebb l\\u1edbn t\\u1ea1i Vi\\u1ec7t Nam.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"440\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 660px) 100vw, 660px\\\" src=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38284425_286620045437958_2251146020878548992_o-1024x683.jpg\\\" srcset=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38284425_286620045437958_2251146020878548992_o-1024x683.jpg 1024w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38284425_286620045437958_2251146020878548992_o-300x200.jpg 300w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38284425_286620045437958_2251146020878548992_o-800x533.jpg 800w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38284425_286620045437958_2251146020878548992_o-768x512.jpg 768w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38284425_286620045437958_2251146020878548992_o.jpg 2048w\\\" width=\\\"660\\\" \\/><\\/p>\\r\\n\\r\\n<p>C&aacute;i t&ecirc;n ExPhone \\u1ea9n ch\\u01b0a nhi\\u1ec1u &yacute; ngh\\u0129a v&agrave; th&ocirc;ng \\u0111i\\u1ec7p m&agrave; ch&uacute;ng t&ocirc;i mu\\u1ed1n g\\u1eedi \\u0111\\u1ebfn cho qu&yacute; kh&aacute;ch h&agrave;ng, \\u0111\\u01a1n c\\u1eed nh\\u01b0 Ex c\\u1ee7a Excellent c&oacute; ngh\\u0129a l&agrave; &ldquo;\\u0111\\u1ebfn v\\u1edbi ch&uacute;ng t&ocirc;i b\\u1ea1n c&oacute; th\\u1ec3 t&igrave;m \\u0111\\u01b0\\u1ee3c nh\\u1eefng chi\\u1ebfc \\u0111i\\u1ec7n tho\\u1ea1i ho&agrave;n h\\u1ea3o nh\\u1ea5t&rdquo;. Hay nh\\u01b0 Excited l&agrave; c\\u1ea3m th\\u1ea5y ph\\u1ea5n kh&iacute;ch, vui s\\u01b0\\u1edbng. C&ocirc; \\u0111\\u1ecdng t\\u1eeb nh\\u1eefng &yacute; ngh\\u0129a \\u0111&oacute;, ch&uacute;ng t&ocirc;i \\u0111&atilde; \\u0111\\u1eb7t slogan &ldquo; Ph\\u1ee5c v\\u1ee5 t\\u1eadn t&acirc;m, trao tay c\\u1ea3m x&uacute;c&rdquo;, \\u0111\\u1ebfn v\\u1edbi ExPhone b\\u1ea1n s\\u1ebd kh&ocirc;ng ch\\u1ec9 t&igrave;m th\\u1ea5y s\\u1ef1 h&agrave;i l&ograve;ng \\u1edf s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t v\\u1eddi m&agrave; s\\u1ebd c&ograve;n nh\\u1eadn \\u0111\\u01b0\\u1ee3c c\\u1ea3m gi&aacute;c vui v\\u1ebb, an t&acirc;m.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"440\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 660px) 100vw, 660px\\\" src=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38448980_1845532828826724_147515569518673920_o-1024x683.jpg\\\" srcset=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38448980_1845532828826724_147515569518673920_o-1024x683.jpg 1024w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38448980_1845532828826724_147515569518673920_o-300x200.jpg 300w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38448980_1845532828826724_147515569518673920_o-800x533.jpg 800w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38448980_1845532828826724_147515569518673920_o-768x512.jpg 768w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2018\\/08\\/38448980_1845532828826724_147515569518673920_o.jpg 2048w\\\" width=\\\"660\\\" \\/><\\/p>\"}},\"image\":null,\"alias\":\"about\",\"status\":\"on\",\"_token\":\"fAaBxBfN7OuSmMjGWBzqWdUrHPWsh6GwpCtXJEOA\"}', '2021-08-11 09:48:07', '2021-08-11 09:48:07'),
(581, 1, 'demo_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:48:08', '2021-08-11 09:48:08'),
(582, 1, 'demo_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:48:19', '2021-08-11 09:48:19'),
(583, 1, 'demo_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:49:01', '2021-08-11 09:49:01'),
(584, 1, 'demo_admin/api_connection', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:49:48', '2021-08-11 09:49:48'),
(585, 1, 'demo_admin/log', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:49:53', '2021-08-11 09:49:53'),
(586, 1, 'demo_admin/supplier', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:50:02', '2021-08-11 09:50:02'),
(587, 1, 'demo_admin/seo/config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:50:09', '2021-08-11 09:50:09'),
(588, 1, 'demo_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:50:16', '2021-08-11 09:50:16'),
(589, 1, 'demo_admin/template/online', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:50:22', '2021-08-11 09:50:22'),
(590, 1, 'demo_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 09:50:23', '2021-08-11 09:50:23'),
(591, 1, 'demo_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:50:33', '2021-08-11 12:50:33'),
(592, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:50:45', '2021-08-11 12:50:45'),
(593, 1, 'demo_admin/product/edit/14', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:50:50', '2021-08-11 12:50:50'),
(594, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 12:50:56', '2021-08-11 12:50:56'),
(595, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628686257161\"}', '2021-08-11 12:50:58', '2021-08-11 12:50:58'),
(596, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628686257160\"}', '2021-08-11 12:50:58', '2021-08-11 12:50:58'),
(597, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628686257162\"}', '2021-08-11 12:50:59', '2021-08-11 12:50:59'),
(598, 1, 'demo_admin/product/edit/14', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"New iPhone Xs CPO 64GB Original Seal not activated yet\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone Xs 64G New 100% International CPO version New 100% Original Seal, Unactivated. Accessories include: imei box, charger, cable, headset, manual, sim stick. ExPhone.vn is committed to brandnew standard products, genuine seals and genuine accessories, when activated, it will have a genuine 12-month warranty. Upgrade more ExGold | ExPro for a better comprehensive warranty.<\\/p>\"},\"vi\":{\"name\":\"iPhone Xs M\\u1edbi CPO 64GB Nguy\\u00ean Seal ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong><a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/iphone-xs-xs-max-xr\\/iphone-xs-max-64g-moi-chua-kich\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\">iPhone Xs 64G M\\u1edbi 100%<\\/a><\\/strong>&nbsp;phi&ecirc;n b\\u1ea3n CPO qu\\u1ed1c t\\u1ebf M\\u1edbi 100% Nguy&ecirc;n Seal, Ch\\u01b0a k&iacute;ch ho\\u1ea1t.<\\/p>\\r\\n\\r\\n<p>Ph\\u1ee5 ki\\u1ec7n g\\u1ed3m: h\\u1ed9p tr&ugrave;ng imei, s\\u1ea1c, cable, tai nghe, s&aacute;ch h\\u01b0\\u1edbng d\\u1eabn, que ch\\u1ecdc sim.<\\/p>\\r\\n\\r\\n<p><strong>ExPhone.vn<\\/strong>&nbsp;cam k\\u1ebft h&agrave;ng chu\\u1ea9n brandnew, nguy&ecirc;n seal x\\u1ecbn v&agrave; ph\\u1ee5 ki\\u1ec7n ch&iacute;nh h&atilde;ng, khi k&iacute;ch h\\u1ecdat l&ecirc;n s\\u1ebd \\u0111\\u1ee7 b\\u1ea3o h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng.&nbsp;<em>N&acirc;ng c\\u1ea5p th&ecirc;m<\\/em>&nbsp;<a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/chinh-sach-bao-hanh\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\"><strong>ExGold | ExPro<\\/strong><\\/a>&nbsp;<em>\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh to&agrave;n di\\u1ec7n t\\u1ed1t h\\u01a1n.&nbsp;<\\/em><\\/p>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/product-15.png\",\"sub_image\":[\"\\/data\\/product\\/product-14-1.png\",\"\\/data\\/product\\/product-14-2.png\"],\"sku\":\"LCD12864-3D\",\"alias\":\"demo-alias-name-product-14\",\"brand_id\":\"1\",\"supplier_id\":\"1\",\"cost\":\"13000000\",\"price\":\"13990000\",\"tax_id\":\"auto\",\"stock\":\"67\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 12:51:21', '2021-08-11 12:51:21'),
(599, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:51:22', '2021-08-11 12:51:22'),
(600, 1, 'demo_admin/product/edit/14', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:51:33', '2021-08-11 12:51:33'),
(601, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 12:51:54', '2021-08-11 12:51:54'),
(602, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628686314522\"}', '2021-08-11 12:51:55', '2021-08-11 12:51:55'),
(603, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628686314523\"}', '2021-08-11 12:51:56', '2021-08-11 12:51:56'),
(604, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628686314524\"}', '2021-08-11 12:51:57', '2021-08-11 12:51:57'),
(605, 1, 'demo_admin/product/edit/14', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"New iPhone Xs CPO 64GB Original Seal not activated yet\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone Xs 64G New 100% International CPO version New 100% Original Seal, Unactivated. Accessories include: imei box, charger, cable, headset, manual, sim stick. ExPhone.vn is committed to brandnew standard products, genuine seals and genuine accessories, when activated, it will have a genuine 12-month warranty. Upgrade more ExGold | ExPro for a better comprehensive warranty.<\\/p>\"},\"vi\":{\"name\":\"iPhone Xs M\\u1edbi CPO 64GB Nguy\\u00ean Seal ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong><a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/iphone-xs-xs-max-xr\\/iphone-xs-max-64g-moi-chua-kich\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\">iPhone Xs 64G M\\u1edbi 100%<\\/a><\\/strong>&nbsp;phi&ecirc;n b\\u1ea3n CPO qu\\u1ed1c t\\u1ebf M\\u1edbi 100% Nguy&ecirc;n Seal, Ch\\u01b0a k&iacute;ch ho\\u1ea1t.<\\/p>\\r\\n\\r\\n<p>Ph\\u1ee5 ki\\u1ec7n g\\u1ed3m: h\\u1ed9p tr&ugrave;ng imei, s\\u1ea1c, cable, tai nghe, s&aacute;ch h\\u01b0\\u1edbng d\\u1eabn, que ch\\u1ecdc sim.<\\/p>\\r\\n\\r\\n<p><strong>ExPhone.vn<\\/strong>&nbsp;cam k\\u1ebft h&agrave;ng chu\\u1ea9n brandnew, nguy&ecirc;n seal x\\u1ecbn v&agrave; ph\\u1ee5 ki\\u1ec7n ch&iacute;nh h&atilde;ng, khi k&iacute;ch h\\u1ecdat l&ecirc;n s\\u1ebd \\u0111\\u1ee7 b\\u1ea3o h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng.&nbsp;<em>N&acirc;ng c\\u1ea5p th&ecirc;m<\\/em>&nbsp;<a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/chinh-sach-bao-hanh\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\"><strong>ExGold | ExPro<\\/strong><\\/a>&nbsp;<em>\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh to&agrave;n di\\u1ec7n t\\u1ed1t h\\u01a1n.&nbsp;<\\/em><\\/p>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/product-11.png\",\"sub_image\":[\"\\/data\\/product\\/product-14-1.png\",\"\\/data\\/product\\/product-14-2.png\"],\"sku\":\"LCD12864-3D\",\"alias\":\"demo-alias-name-product-14\",\"brand_id\":\"1\",\"supplier_id\":\"1\",\"cost\":\"13000000\",\"price\":\"13990000\",\"tax_id\":\"auto\",\"stock\":\"67\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 12:52:05', '2021-08-11 12:52:05'),
(606, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:52:06', '2021-08-11 12:52:06'),
(607, 1, 'demo_admin/product/edit/14', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:55:21', '2021-08-11 12:55:21'),
(608, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 12:55:25', '2021-08-11 12:55:25'),
(609, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628686526159\"}', '2021-08-11 12:55:27', '2021-08-11 12:55:27'),
(610, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628686526160\"}', '2021-08-11 12:55:27', '2021-08-11 12:55:27'),
(611, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628686526161\"}', '2021-08-11 12:55:28', '2021-08-11 12:55:28'),
(612, 1, 'demo_admin/product/edit/14', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"New iPhone Xs CPO 64GB Original Seal not activated yet\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone Xs 64G New 100% International CPO version New 100% Original Seal, Unactivated. Accessories include: imei box, charger, cable, headset, manual, sim stick. ExPhone.vn is committed to brandnew standard products, genuine seals and genuine accessories, when activated, it will have a genuine 12-month warranty. Upgrade more ExGold | ExPro for a better comprehensive warranty.<\\/p>\"},\"vi\":{\"name\":\"iPhone Xs M\\u1edbi CPO 64GB Nguy\\u00ean Seal ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong><a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/iphone-xs-xs-max-xr\\/iphone-xs-max-64g-moi-chua-kich\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\">iPhone Xs 64G M\\u1edbi 100%<\\/a><\\/strong>&nbsp;phi&ecirc;n b\\u1ea3n CPO qu\\u1ed1c t\\u1ebf M\\u1edbi 100% Nguy&ecirc;n Seal, Ch\\u01b0a k&iacute;ch ho\\u1ea1t.<\\/p>\\r\\n\\r\\n<p>Ph\\u1ee5 ki\\u1ec7n g\\u1ed3m: h\\u1ed9p tr&ugrave;ng imei, s\\u1ea1c, cable, tai nghe, s&aacute;ch h\\u01b0\\u1edbng d\\u1eabn, que ch\\u1ecdc sim.<\\/p>\\r\\n\\r\\n<p><strong>ExPhone.vn<\\/strong>&nbsp;cam k\\u1ebft h&agrave;ng chu\\u1ea9n brandnew, nguy&ecirc;n seal x\\u1ecbn v&agrave; ph\\u1ee5 ki\\u1ec7n ch&iacute;nh h&atilde;ng, khi k&iacute;ch h\\u1ecdat l&ecirc;n s\\u1ebd \\u0111\\u1ee7 b\\u1ea3o h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng.&nbsp;<em>N&acirc;ng c\\u1ea5p th&ecirc;m<\\/em>&nbsp;<a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/chinh-sach-bao-hanh\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\"><strong>ExGold | ExPro<\\/strong><\\/a>&nbsp;<em>\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh to&agrave;n di\\u1ec7n t\\u1ed1t h\\u01a1n.&nbsp;<\\/em><\\/p>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/newproduct-14.png\",\"sub_image\":[\"\\/data\\/product\\/product-14-1.png\",\"\\/data\\/product\\/product-14-2.png\"],\"sku\":\"LCD12864-3D\",\"alias\":\"demo-alias-name-product-14\",\"brand_id\":\"1\",\"supplier_id\":\"1\",\"cost\":\"13000000\",\"price\":\"13990000\",\"tax_id\":\"auto\",\"stock\":\"67\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 12:55:35', '2021-08-11 12:55:35'),
(613, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:55:35', '2021-08-11 12:55:35'),
(614, 1, 'demo_admin/product/edit/13', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:56:59', '2021-08-11 12:56:59'),
(615, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 12:57:09', '2021-08-11 12:57:09'),
(616, 1, 'demo_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628686629698\"}', '2021-08-11 12:57:10', '2021-08-11 12:57:10'),
(617, 1, 'demo_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1628686629699\"}', '2021-08-11 12:57:10', '2021-08-11 12:57:10'),
(618, 1, 'demo_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1628686629700\"}', '2021-08-11 12:57:11', '2021-08-11 12:57:11'),
(619, 1, 'demo_admin/product/edit/13', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPhone 11 Pro Max 64GB International New Drift BH has not been activated\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone 11 Pro Max 64Gb Drift BH Not activated international version 100% of the US, Japanese, Korean, European markets. 100% new form. Not activated, after activation will no longer be full 12 months or the end of Apple&#39;s warranty. Products are warranted for 6 months at ExPhone. ExGold Upgrade | ExPro for a better extended warranty.<\\/p>\"},\"vi\":{\"name\":\"iPhone 11 Pro Max 64GB Qu\\u1ed1c t\\u1ebf M\\u1edbi Tr\\u00f4i BH ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>iPhone 11 Pro Max 64Gb Tr&ocirc;i BH Ch\\u01b0a k&iacute;ch ho\\u1ea1t<\\/strong>&nbsp;phi&ecirc;n b\\u1ea3n qu\\u1ed1c t\\u1ebf 100% th\\u1ecb tr\\u01b0\\u1eddng M\\u1ef9 , Nh\\u1eadt, H&agrave;n , khu v\\u1ef1c Ch&acirc;u &acirc;u.<br \\/>\\r\\nH&igrave;nh th\\u1ee9c m\\u1edbi 100%. Ch\\u01b0a k&iacute;ch ho\\u1ea1t, sau khi k&iacute;ch ho\\u1ea1t s\\u1ebd kh&ocirc;ng c&ograve;n \\u0111\\u1ee7 12 th&aacute;ng ho\\u1eb7c h\\u1ebft b\\u1ea3o h&agrave;nh c\\u1ee7a Apple.<br \\/>\\r\\nS\\u1ea3n ph\\u1ea9m \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh 6 Th&aacute;ng t\\u1ea1i&nbsp;<strong>ExPhone<\\/strong>. N&acirc;ng c\\u1ea5p&nbsp;<a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/chinh-sach-bao-hanh\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\"><strong>ExGold | ExPro<\\/strong><\\/a>&nbsp;\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh m\\u1edf r\\u1ed9ng t\\u1ed1t h\\u01a1n.<\\/p>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/newproduct-13.png\",\"sub_image\":[\"\\/data\\/product\\/product-13-2.png\",\"\\/data\\/product\\/product-13-1.png\"],\"sku\":\"3D-GOLD175\",\"alias\":\"demo-alias-name-product-13\",\"brand_id\":\"1\",\"supplier_id\":\"1\",\"cost\":\"20000000\",\"price\":\"21990000\",\"tax_id\":\"auto\",\"price_promotion\":\"20490000\",\"price_promotion_start\":\"2021-08-04 00:00:00\",\"price_promotion_end\":\"2021-08-15 00:00:00\",\"stock\":\"-1\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 12:57:33', '2021-08-11 12:57:33'),
(620, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:57:34', '2021-08-11 12:57:34'),
(621, 1, 'demo_admin/product/edit/12', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:57:44', '2021-08-11 12:57:44'),
(622, 1, 'demo_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"type\":\"product\"}', '2021-08-11 12:57:52', '2021-08-11 12:57:52'),
(623, 1, 'demo_admin/product/edit/12', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPhone X New 64GB Original Seal not activated yet\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone X 64GB New 100% international version New 100% Original Seal, Unactivated Accessories include: identical imei box, charger, cable, headset, manual, sim stick. ExPhone.vn is committed to brandnew standard products, genuine seals and genuine accessories, when activated, it will have a genuine 12-month warranty. Upgrade more ExGold | ExPro for a better comprehensive warranty.<\\/p>\"},\"vi\":{\"name\":\"iPhone X M\\u1edbi 64GB Nguy\\u00ean Seal ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone X 64GB M\\u1edbi 100% phi&ecirc;n b\\u1ea3n qu\\u1ed1c t\\u1ebf M\\u1edbi 100% Nguy&ecirc;n Seal, Ch\\u01b0a k&iacute;ch ho\\u1ea1t Ph\\u1ee5 ki\\u1ec7n g\\u1ed3m: h\\u1ed9p tr&ugrave;ng imei, s\\u1ea1c, cable, tai nghe, s&aacute;ch h\\u01b0\\u1edbng d\\u1eabn, que ch\\u1ecdc sim. ExPhone.vn cam k\\u1ebft h&agrave;ng chu\\u1ea9n brandnew, nguy&ecirc;n seal x\\u1ecbn v&agrave; ph\\u1ee5 ki\\u1ec7n ch&iacute;nh h&atilde;ng, khi k&iacute;ch h\\u1ecdat l&ecirc;n s\\u1ebd \\u0111\\u1ee7 b\\u1ea3o h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng. N&acirc;ng c\\u1ea5p th&ecirc;m ExGold | ExPro \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh to&agrave;n di\\u1ec7n t\\u1ed1t h\\u01a1n. &nbsp;<\\/p>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/newproduct-12.png\",\"sku\":\"3D-CARBON175\",\"alias\":\"demo-alias-name-product-12\",\"brand_id\":\"1\",\"supplier_id\":\"1\",\"cost\":\"13000000\",\"price\":\"13990000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 12:57:55', '2021-08-11 12:57:55'),
(624, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:57:56', '2021-08-11 12:57:56'),
(625, 1, 'demo_admin/product/edit/11', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:58:00', '2021-08-11 12:58:00'),
(626, 1, 'demo_admin/product/edit/11', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPhone X Lock Old 64Gb 99% as beautiful as new\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone X Lock network lock from the US, Japan. Currently, ExPhone comes with a sim card to fix errors and limitations, using it as normal as the international version. Especially the original committed machine. - Beautiful appearance 99% like new, beautiful body, no heavy scratches. Original according to manufacturer standards. Has not been replaced and repaired &ndash; The level of battery wear is over 90% ~ 95%. Free 1 time battery replacement when below 80% when upgrading ExGold comprehensive warranty package | ExPro<\\/p>\"},\"vi\":{\"name\":\"iPhone X Lock C\\u0169 64Gb 99% \\u0111\\u1eb9p nh\\u01b0 m\\u1edbi\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone X Lock kho&aacute; m\\u1ea1ng t\\u1eeb M\\u1ef9, Nh\\u1eadt. Hi\\u1ec7n t\\u1ea1i ExPhone t\\u1eb7ng k&egrave;m sim gh&eacute;p fix full l\\u1ed7i v&agrave; h\\u1ea1n ch\\u1ebf, s\\u1eed d\\u1ee5ng ho&agrave;n to&agrave;n b&igrave;nh th\\u01b0\\u1eddng nh\\u01b0 phi&ecirc;n b\\u1ea3n qu\\u1ed1c t\\u1ebf. \\u0110\\u1eb7c bi\\u1ec7t m&aacute;y cam k\\u1ebft nguy&ecirc;n b\\u1ea3n.<br \\/>\\r\\n&ndash; H&igrave;nh th\\u1ee9c \\u0111\\u1eb9p 99% nh\\u01b0 m\\u1edbi, th&acirc;n v\\u1ecf \\u0111\\u1eb9p, kh&ocirc;ng c\\u1ea5n m&oacute;p tr\\u1ea7y x\\u01b0\\u1edbc n\\u1eb7ng. Nguy&ecirc;n b\\u1ea3n theo ti&ecirc;u chu\\u1ea9n nh&agrave; s\\u1ea3n xu\\u1ea5t. Ch\\u01b0a qua thay th\\u1ebf v&agrave; s\\u1eeda ch\\u1eefa<br \\/>\\r\\n&ndash; M\\u1ee9c \\u0111\\u1ed9 hao m&ograve;n pin tr&ecirc;n 90% ~ 95%. Mi\\u1ec5n ph&iacute; 1 l\\u1ea7n thay pin khi d\\u01b0\\u1edbi 80% khi n&acirc;ng c\\u1ea5p g&oacute;i b\\u1ea3o h&agrave;nh to&agrave;n di\\u1ec7n ExGold | ExPro&nbsp;<\\/p>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/newproduct-11.png\",\"sub_image\":[\"\\/data\\/product\\/product-8.png\",\"\\/data\\/product\\/product-13.png\"],\"sku\":\"SS495A\",\"alias\":\"demo-alias-name-product-11\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"8000000\",\"price\":\"8990000\",\"tax_id\":\"auto\",\"price_promotion\":\"7990000\",\"price_promotion_start\":\"2021-08-04 00:00:00\",\"price_promotion_end\":\"2021-08-20 00:00:00\",\"stock\":\"45\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 12:58:08', '2021-08-11 12:58:08'),
(627, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:58:09', '2021-08-11 12:58:09'),
(628, 1, 'demo_admin/product/edit/10', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:58:12', '2021-08-11 12:58:12');
INSERT INTO `demo_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(629, 1, 'demo_admin/product/edit/10', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Phone Samsung Galaxy A52 (8GB\\/128GB)\",\"keyword\":null,\"description\":null,\"content\":\"<br \\/>\\r\\nSamsung Galaxy A52 distributed at ExPhone is a genuine product with warranty at SAMSUNG Vietnam Center.\\r\\n<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>B\\u1ed9 nh\\u1edb trong<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>128 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera sau<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Ch&iacute;nh 64 MP &amp; Ph\\u1ee5 12 MP, 5 MP, 5 MP<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera tr\\u01b0\\u1edbc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>32 MP<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Chip \\u0111\\u1ed3 h\\u1ecda (GPU)<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Adreno 618<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>CPU<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Snapdragon 720G<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Dung l\\u01b0\\u1ee3ng pin<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>4500 mAh<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;n h&igrave;nh<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Full HD+ (1080 x 2400 Pixels)<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;u s\\u1eafc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Black, Blue, Purple<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ram<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>8 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sim<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Dual Nano Sim<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Th\\u1ebb nh\\u1edb<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>MicroSD, h\\u1ed7 tr\\u1ee3 t\\u1ed1i \\u0111a 1 TB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\"},\"vi\":{\"name\":\"\\u0110i\\u1ec7n tho\\u1ea1i Samsung Galaxy A52 (8GB\\/128GB)\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>Samsung Galaxy A52<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c ph&acirc;n ph\\u1ed1i t\\u1ea1i ExPhone l&agrave; s\\u1ea3n ph\\u1ea9m ch&iacute;nh h&atilde;ng \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh t\\u1ea1i&nbsp;<strong>TTBH SAMSUNG Vi\\u1ec7t Nam<\\/strong>&nbsp;to&agrave;n qu\\u1ed1c .<\\/p>\\r\\n\\r\\n<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>B\\u1ed9 nh\\u1edb trong<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>128 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera sau<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Ch&iacute;nh 64 MP &amp; Ph\\u1ee5 12 MP, 5 MP, 5 MP<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera tr\\u01b0\\u1edbc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>32 MP<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Chip \\u0111\\u1ed3 h\\u1ecda (GPU)<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Adreno 618<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>CPU<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Snapdragon 720G<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Dung l\\u01b0\\u1ee3ng pin<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>4500 mAh<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;n h&igrave;nh<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Full HD+ (1080 x 2400 Pixels)<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;u s\\u1eafc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Black, Blue, Purple<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ram<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>8 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sim<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Dual Nano Sim<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Th\\u1ebb nh\\u1edb<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>MicroSD, h\\u1ed7 tr\\u1ee3 t\\u1ed1i \\u0111a 1 TB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/newproduct-10.png\",\"sku\":\"3DHLFD-P\",\"alias\":\"demo-alias-name-product-10\",\"brand_id\":\"4\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 12:58:22', '2021-08-11 12:58:22'),
(630, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:58:23', '2021-08-11 12:58:23'),
(631, 1, 'demo_admin/product/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:58:31', '2021-08-11 12:58:31'),
(632, 1, 'demo_admin/product/edit/9', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Samsung Galaxy Note 9 128GB old Korean 99% Beautiful like new\",\"keyword\":null,\"description\":null,\"content\":\"<p>Samsung Galaxy Note 9 (6GB - 128GB) 2 sim Korean imported version uses high-end Exynos chip, runs 2 convenient sims. The above price does not include warranty Power, Screen, Security sensor (Fingerprint, Eye Nail, Face). Upgrade to ExGold Comprehensive 12 Months for a better comprehensive warranty.<br \\/>\\r\\n&nbsp;<\\/p>\"},\"vi\":{\"name\":\"Samsung Galaxy Note 9 128GB H\\u00e0n c\\u0169 99% \\u0110\\u1eb9p nh\\u01b0 m\\u1edbi\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>Samsung Galaxy Note 9 (6GB &ndash; 128GB) 2 sim H&agrave;n Qu\\u1ed1c<\\/strong>&nbsp;phi&ecirc;n b\\u1ea3n nh\\u1eadp kh\\u1ea9u d&ugrave;ng chip Exynos cao c\\u1ea5p, ch\\u1ea1y 2 sim ti\\u1ec7n d\\u1ee5ng. Gi&aacute; tr&ecirc;n ch\\u01b0a bao g\\u1ed3m b\\u1ea3o h&agrave;nh Ngu\\u1ed3n , M&agrave;n h&igrave;nh , C\\u1ea3m bi\\u1ebfn b\\u1ea3o m\\u1eadt (<strong>V&acirc;n tay , M&oacute;ng M\\u1eaft , Khu&ocirc;n M\\u1eb7t<\\/strong>&nbsp;).&nbsp;<em>N&acirc;ng c\\u1ea5p th&ecirc;m<\\/em>&nbsp;<a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/chinh-sach-bao-hanh\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\"><strong>ExGold To&agrave;n Di\\u1ec7n 12 Th&aacute;ng<\\/strong><\\/a>&nbsp;<em>\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh to&agrave;n di\\u1ec7n t\\u1ed1t h\\u01a1n.&nbsp;<\\/em><br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;n h&igrave;nh<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>C&ocirc;ng ngh\\u1ec7 m&agrave;n h&igrave;nh: Super AMOLED, \\u0110\\u1ed9 ph&acirc;n gi\\u1ea3i: 1440 x 2960 pixels, M&agrave;n h&igrave;nh r\\u1ed9ng: 6.1 inches, M\\u1eb7t k&iacute;nh c\\u1ea3m \\u1ee9ng: Corning Gorilla Glass 5<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera sau<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>\\u0110\\u1ed9 ph&acirc;n gi\\u1ea3i: 12 MP, f\\/1.5-2.4 dual pixel PDAF, OIS v&agrave; 12 MP, f\\/2.4 OIS, 2x optical zoom, Quay phim: 2160p@60fps, 1080p@240fps, 720p@960fps, HDR, dual-video rec<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera tr\\u01b0\\u1edbc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>\\u0110\\u1ed9 ph&acirc;n gi\\u1ea3i: 8 MP<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>CPU<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Exynos 9810, 8 nh&acirc;n 64bit, T\\u1ed1c \\u0111\\u1ed9 CPU: Octa-core (4&times;2.7 GHz Mongoose M3 &amp; 4&times;1.8 GHz Cortex-A55)<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Chip \\u0111\\u1ed3 h\\u1ecda (GPU)<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Mali-G72 MP18<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>B\\u1ed9 nh\\u1edb trong<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>128 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ram<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>6 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Dung l\\u01b0\\u1ee3ng pin<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>4000 mAh<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sim<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>2 SIM Nano (SIM 2 chung khe th\\u1ebb nh\\u1edb), H\\u1ed7 tr\\u1ee3 4G<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;u s\\u1eafc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>copper, Black, Blue, Purple, White<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\"}},\"image\":\"\\/data\\/product\\/newproduct-9.png\",\"sub_image\":[\"\\/data\\/product\\/product-5.png\"],\"sku\":\"ANYCUBIC-P\",\"alias\":\"demo-alias-name-product-9\",\"brand_id\":\"5\",\"supplier_id\":\"1\",\"cost\":\"8000000\",\"price\":\"8990000\",\"tax_id\":\"auto\",\"price_promotion\":\"8490000\",\"price_promotion_start\":\"2021-08-05 00:00:00\",\"price_promotion_end\":\"2021-08-25 00:00:00\",\"stock\":\"86\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 12:58:40', '2021-08-11 12:58:40'),
(633, 1, 'demo_admin/product/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:58:41', '2021-08-11 12:58:41'),
(634, 1, 'demo_admin/product/edit/9', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Samsung Galaxy Note 9 128GB old Korean 99% Beautiful like new\",\"keyword\":null,\"description\":null,\"content\":\"<p>Samsung Galaxy Note 9 (6GB - 128GB) 2 sim Korean imported version uses high-end Exynos chip, runs 2 convenient sims. The above price does not include warranty Power, Screen, Security sensor (Fingerprint, Eye Nail, Face). Upgrade to ExGold Comprehensive 12 Months for a better comprehensive warranty.<br \\/>\\r\\n&nbsp;<\\/p>\"},\"vi\":{\"name\":\"Samsung Galaxy Note 9 128GB H\\u00e0n c\\u0169 99% \\u0110\\u1eb9p nh\\u01b0 m\\u1edbi\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>Samsung Galaxy Note 9 (6GB &ndash; 128GB) 2 sim H&agrave;n Qu\\u1ed1c<\\/strong>&nbsp;phi&ecirc;n b\\u1ea3n nh\\u1eadp kh\\u1ea9u d&ugrave;ng chip Exynos cao c\\u1ea5p, ch\\u1ea1y 2 sim ti\\u1ec7n d\\u1ee5ng. Gi&aacute; tr&ecirc;n ch\\u01b0a bao g\\u1ed3m b\\u1ea3o h&agrave;nh Ngu\\u1ed3n , M&agrave;n h&igrave;nh , C\\u1ea3m bi\\u1ebfn b\\u1ea3o m\\u1eadt (<strong>V&acirc;n tay , M&oacute;ng M\\u1eaft , Khu&ocirc;n M\\u1eb7t<\\/strong>&nbsp;).&nbsp;<em>N&acirc;ng c\\u1ea5p th&ecirc;m<\\/em>&nbsp;<a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/chinh-sach-bao-hanh\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\"><strong>ExGold To&agrave;n Di\\u1ec7n 12 Th&aacute;ng<\\/strong><\\/a>&nbsp;<em>\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh to&agrave;n di\\u1ec7n t\\u1ed1t h\\u01a1n.&nbsp;<\\/em><br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;n h&igrave;nh<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>C&ocirc;ng ngh\\u1ec7 m&agrave;n h&igrave;nh: Super AMOLED, \\u0110\\u1ed9 ph&acirc;n gi\\u1ea3i: 1440 x 2960 pixels, M&agrave;n h&igrave;nh r\\u1ed9ng: 6.1 inches, M\\u1eb7t k&iacute;nh c\\u1ea3m \\u1ee9ng: Corning Gorilla Glass 5<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera sau<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>\\u0110\\u1ed9 ph&acirc;n gi\\u1ea3i: 12 MP, f\\/1.5-2.4 dual pixel PDAF, OIS v&agrave; 12 MP, f\\/2.4 OIS, 2x optical zoom, Quay phim: 2160p@60fps, 1080p@240fps, 720p@960fps, HDR, dual-video rec<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera tr\\u01b0\\u1edbc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>\\u0110\\u1ed9 ph&acirc;n gi\\u1ea3i: 8 MP<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>CPU<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Exynos 9810, 8 nh&acirc;n 64bit, T\\u1ed1c \\u0111\\u1ed9 CPU: Octa-core (4&times;2.7 GHz Mongoose M3 &amp; 4&times;1.8 GHz Cortex-A55)<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Chip \\u0111\\u1ed3 h\\u1ecda (GPU)<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Mali-G72 MP18<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>B\\u1ed9 nh\\u1edb trong<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>128 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ram<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>6 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Dung l\\u01b0\\u1ee3ng pin<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>4000 mAh<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sim<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>2 SIM Nano (SIM 2 chung khe th\\u1ebb nh\\u1edb), H\\u1ed7 tr\\u1ee3 4G<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;u s\\u1eafc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>copper, Black, Blue, Purple, White<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/newproduct-9.png\",\"sku\":\"ANYCUBIC-P\",\"alias\":\"demo-alias-name-product-9\",\"brand_id\":\"5\",\"supplier_id\":\"1\",\"cost\":\"8000000\",\"price\":\"8990000\",\"tax_id\":\"auto\",\"price_promotion\":\"8490000\",\"price_promotion_start\":\"2021-08-05 00:00:00\",\"price_promotion_end\":\"2021-08-25 00:00:00\",\"stock\":\"86\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 12:58:57', '2021-08-11 12:58:57'),
(635, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:58:58', '2021-08-11 12:58:58'),
(636, 1, 'demo_admin/product/edit/8', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:59:04', '2021-08-11 12:59:04'),
(637, 1, 'demo_admin/product/edit/8', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Macbook Air M1 2020 8G 256GB\",\"keyword\":null,\"description\":null,\"content\":\"<p>Apple has just launched an impressive new version of the MacBook Air M1 2020 with a new M1 chip designed specifically for MacBooks that boosts CPU performance up to 3.5 times faster, longest battery life ever on the market. MacBook Air.<\\/p>\"},\"vi\":{\"name\":\"Macbook Air M1 2020 8G 256GB\",\"keyword\":null,\"description\":null,\"content\":\"<p>Apple v\\u1eeba cho ra m\\u1eaft phi&ecirc;n b\\u1ea3n&nbsp;<strong>MacBook Air M1 2020<\\/strong>&nbsp;m\\u1edbi c\\u1ef1c k&igrave; \\u1ea5n t\\u01b0\\u1ee3ng v\\u1edbi con chip M1 m\\u1edbi \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf d&agrave;nh ri&ecirc;ng cho MacBook t\\u0103ng hi\\u1ec7u su\\u1ea5t CPU nhanh h\\u01a1n t\\u1edbi 3.5 l\\u1ea7n, tu\\u1ed5i th\\u1ecd pin d&agrave;i nh\\u1ea5t t\\u1eeb \\u200b\\u200btr\\u01b0\\u1edbc \\u0111\\u1ebfn nay tr&ecirc;n MacBook Air.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h3>Sang tr\\u1ecdng, c\\u01a1 \\u0111\\u1ed9ng v&agrave; \\u0111\\u1eb3ng c\\u1ea5p<\\/h3>\\r\\n\\r\\n<p>\\u0110\\u01b0\\u1ee3c ch\\u1ebf t&aacute;c tinh x\\u1ea3o t\\u1eeb kim lo\\u1ea1i nguy&ecirc;n kh\\u1ed1i t&aacute;i ch\\u1ebf, Apple \\u0111em \\u0111\\u1ebfn m\\u1ed9t phi&ecirc;n b\\u1ea3n&nbsp;MacBook Air&nbsp;sang tr\\u1ecdng, \\u0111\\u1eb3ng c\\u1ea5p nh\\u01b0ng v\\u1eabn gi\\u1eef \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9 m\\u1ecfng nh\\u1eb9, th&acirc;n m&aacute;y ch\\u1ec9<strong>&nbsp;16.1 mm<\\/strong>, n\\u1eb7ng&nbsp;<strong>1.29 kg<\\/strong>&nbsp;\\u0111\\u1ec1 cao t&iacute;nh di \\u0111\\u1ed9ng, b\\u1eaft k\\u1ecbp xu h\\u01b0\\u1edbng hi\\u1ec7n nay.<\\/p>\\r\\n\\r\\n<p><a data-wpel-link=\\\"external\\\" href=\\\"https:\\/\\/www.thegioididong.com\\/images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-280420-100425.jpg\\\" rel=\\\"nofollow external noopener noreferrer\\\" target=\\\"_blank\\\"><img alt=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Thi\\u1ebft k\\u1ebf\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-280420-100425.jpg\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-280420-100425.jpg\\\" title=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Thi\\u1ebft k\\u1ebf\\\" \\/><\\/a><\\/p>\\r\\n\\r\\n<p><strong>Chip b\\u1ea3o m\\u1eadt T2<\\/strong>&nbsp;m&atilde; h&oacute;a m\\u1ecdi th&ocirc;ng tin tr&ecirc;n m&aacute;y \\u0111\\u1ea3m b\\u1ea3o th&ocirc;ng tin c&aacute; nh&acirc;n c\\u1ee7a b\\u1ea1n. \\u0110\\u0103ng nh\\u1eadp v&agrave;o m&aacute;y d\\u1ec5 d&agrave;ng b\\u1eb1ng<strong>&nbsp;b\\u1ea3o m\\u1eadt v&acirc;n tay<\\/strong>, h\\u1ed7 tr\\u1ee3 thanh to&aacute;n online c\\u1ef1c k&igrave; nhanh ch&oacute;ng v&agrave; ti\\u1ec7n l\\u1ee3i.<\\/p>\\r\\n\\r\\n<p><a data-wpel-link=\\\"external\\\" href=\\\"https:\\/\\/www.thegioididong.com\\/images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-073520-103521.jpg\\\" rel=\\\"nofollow external noopener noreferrer\\\" target=\\\"_blank\\\"><img alt=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Touch ID\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-073520-103521.jpg\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-073520-103521.jpg\\\" title=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Touch ID\\\" \\/><\\/a><\\/p>\"}},\"category\":[\"1\"],\"image\":\"\\/data\\/product\\/newproduct-8.png\",\"sub_image\":[\"\\/data\\/product\\/product-8.png\"],\"sku\":\"A4988\",\"alias\":\"demo-alias-name-product-8\",\"brand_id\":null,\"supplier_id\":\"1\",\"cost\":\"25000000\",\"price\":\"25490000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 12:59:10', '2021-08-11 12:59:10'),
(638, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:59:11', '2021-08-11 12:59:11'),
(639, 1, 'demo_admin/product/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:59:17', '2021-08-11 12:59:17'),
(640, 1, 'demo_admin/product/edit/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPad Pro M1 (2021) 11 256GB WI-FI new\",\"keyword\":null,\"description\":null,\"content\":\"<p>The 11-inch iPad Pro 2021 is a tablet product line that has just been launched by Apple at the last Apple Spring 2021 event along with the 12.9-inch iPad Pro 2021. Although the design is not too different from its predecessor iPad Pro 2020, Apple has still upgraded a lot in terms of screen, camera and Apple M1 chip that promises to bring users many great experiences in terms of performance and performance. daily entertainment.<\\/p>\"},\"vi\":{\"name\":\"iPad Pro M1 (2021) 11 256GB WI-FI M\\u1edbi\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPad Pro 2021 11inch l&agrave; d&ograve;ng s\\u1ea3n ph\\u1ea9m tablet v\\u1eeba \\u0111\\u01b0\\u1ee3c Apple ra m\\u1eaft v&agrave;o s\\u1ef1 ki\\u1ec7n Apple Spring 2021 v\\u1eeba qua c&ugrave;ng v\\u1edbi iPad Pro 2021 12.9inch. Tuy thi\\u1ebft k\\u1ebf kh&ocirc;ng qu&aacute; kh&aacute;c bi\\u1ec7t so v\\u1edbi ti\\u1ec1n nhi\\u1ec7m iPad Pro 2020 nh\\u01b0ng v\\u1eabn \\u0111\\u01b0\\u1ee3c Apple n&acirc;ng c\\u1ea5p r\\u1ea5t nhi\\u1ec1u v\\u1ec1 m&agrave;n h&igrave;nh, camera c&ugrave;ng con chip Apple M1 h\\u1ee9a h\\u1eb9n s\\u1ebd mang l\\u1ea1i cho ng\\u01b0\\u1eddi d&ugrave;ng nhi\\u1ec1u tr\\u1ea3i nghi\\u1ec7m tuy\\u1ec7t v\\u1eddi v\\u1ec1 hi\\u1ec7u n\\u0103ng c\\u0169ng nh\\u01b0 gi\\u1ea3i tr&iacute; h&agrave;ng ng&agrave;y.<\\/p>\"}},\"category\":[\"4\"],\"image\":\"\\/data\\/product\\/newproduct-7.png\",\"sub_image\":[\"\\/data\\/product\\/product-2.png\",\"\\/data\\/product\\/product-6.png\"],\"sku\":\"FILAMENT\",\"alias\":\"demo-alias-name-product-7\",\"brand_id\":null,\"supplier_id\":\"1\",\"cost\":\"23000000\",\"price\":\"23490000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 12:59:24', '2021-08-11 12:59:24'),
(641, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:59:25', '2021-08-11 12:59:25'),
(642, 1, 'demo_admin/product/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:59:29', '2021-08-11 12:59:29'),
(643, 1, 'demo_admin/product/edit/6', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Apple Watch SE 40mm Genuine GPS VN\\/A\",\"keyword\":null,\"description\":null,\"content\":\"<p>Apple Watch SE 40mm Genuine GPS VN\\/A . New machine with unactivated seal, genuine 12 months warranty at authorized Apple insurance centers in Vietnam<\\/p>\"},\"vi\":{\"name\":\"Apple Watch SE 40mm GPS ch\\u00ednh h\\u00e3ng VN\\/A\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>Apple Watch SE 40mm GPS ch&iacute;nh h&atilde;ng VN\\/A<\\/strong>&nbsp;. M&aacute;y m\\u1edbi nguy&ecirc;n seal ch\\u01b0a k&iacute;ch ho\\u1ea1t , \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh 12 th&aacute;ng ch&iacute;nh h&atilde;ng t\\u1ea1i c&aacute;c TTBH u\\u1ef7 quy\\u1ec1n c\\u1ee7a Apple t\\u1ea1i Vi\\u1ec7t Nam<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>Apple Watch SE 40mm GPS: R\\u1ebb c&oacute; n&ecirc;n n&acirc;ng c\\u1ea5p?<\\/strong><\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"420\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1.jpeg\\\" srcset=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1.jpeg 800w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1-300x158.jpeg 300w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1-768x403.jpeg 768w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1-24x13.jpeg 24w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1-36x19.jpeg 36w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-1-48x25.jpeg 48w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p><b>Phi&ecirc;n b\\u1ea3n&nbsp;<a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/apple-watch\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\" title=\\\"Apple Watch\\\">Apple Watch<\\/a>&nbsp;SE 40mm GPS<\\/b>&nbsp;\\u0111\\u01b0\\u1ee3c bi\\u1ebft \\u0111\\u1ebfn l&agrave; m\\u1eabu \\u0111\\u1ed3ng h\\u1ed3 th&ocirc;ng minh v&agrave; &ldquo;gi&aacute; r\\u1ebb&rdquo; \\u0111\\u1ec3 \\u0111&aacute;nh th\\u1eb3ng v&agrave;o ph&acirc;n kh&uacute;c t\\u1ea7m trung c\\u1ee7a nh&agrave; T&aacute;o. S\\u1ea3n ph\\u1ea9m tuy \\u0111\\u01b0\\u1ee3c coi l&agrave; m\\u1ed9t bi\\u1ebfn th\\u1ec3 lai gi\\u1eefa Series 4 &ndash; Series 5 v&agrave; Series 6 nh\\u01b0ng l\\u1ea1i mang trong m&igrave;nh chi\\u1ebfn l\\u01b0\\u1ee3c nh\\u1eb1m thu h&uacute;t ng\\u01b0\\u1eddi d&ugrave;ng tham gia v&agrave;o h\\u1ec7 sinh th&aacute;i&nbsp;<a data-wpel-link=\\\"external\\\" href=\\\"https:\\/\\/apple.com\\/\\\" rel=\\\"nofollow external noopener noreferrer\\\" target=\\\"_blank\\\">Apple<\\/a>. C&ugrave;ng Exphone.vn \\u0111&aacute;nh gi&aacute; \\u0111\\u1ec3 hi\\u1ec3u r&otilde; h\\u01a1n nh&eacute;!<\\/p>\\r\\n\\r\\n<h2><b>1. Phi&ecirc;n b\\u1ea3n Apple Watch SE 40mm GPS &ndash; r\\u1ebb nh\\u01b0ng v\\u1eabn r\\u1ea5t x\\u1ecbn<\\/b><\\/h2>\\r\\n\\r\\n<p>Apple Watch SE 40mm GPS s\\u1edf h\\u1eefu m&agrave;n h&igrave;nh c&oacute; di\\u1ec7n t&iacute;ch hi\\u1ec3n th\\u1ecb h\\u1eefu d\\u1ee5ng cao (b\\u1ea3n 44mm: 977 sq mm v&agrave; b\\u1ea3n 40mm: 759 sq mm) gi&uacute;p hi\\u1ec3n th\\u1ecb \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u n\\u1ed9i dung tr&ecirc;n m\\u1eb7t \\u0111\\u1ed3ng h\\u1ed3.<\\/p>\\r\\n\\r\\n<p>M\\u1eb7t \\u0111\\u1ed3ng h\\u1ed3 l\\u1edbn c\\u0169ng gi&uacute;p Apple Watch SE 40mm GPS hi\\u1ec3n th\\u1ecb c&aacute;c m\\u1eb7t \\u0111\\u1ed3ng h\\u1ed3 \\u0111\\u1eb9p v&agrave; h\\u1eefu d\\u1ee5ng. Ngo&agrave;i ra, Apple Watch SE 40mm GPS c&oacute; t\\u1ea5t c\\u1ea3 c&aacute;c m\\u1eb7t \\u0111\\u1ed3ng h\\u1ed3 m\\u1edbi c\\u1ee7a Apple, ch\\u1ec9 l&agrave; thi\\u1ebfu \\u0111i phi&ecirc;n b\\u1ea3n M&agrave;n h&igrave;nh lu&ocirc;n s&aacute;ng m&agrave; th&ocirc;i.<\\/p>\\r\\n\\r\\n<p>M\\u1eb7t \\u0111\\u1ed3ng h\\u1ed3 l\\u1edbn hi\\u1ec3n th\\u1ecb nhi\\u1ec1u tr\\u01b0\\u1eddng th&ocirc;ng tin ph\\u1ee5 gi&uacute;p ng\\u01b0\\u1eddi d&ugrave;ng t&ugrave;y bi\\u1ebfn \\u0111\\u1ec3 theo d&otilde;i \\u0111\\u01b0\\u1ee3c nh\\u1eefng th&ocirc;ng tin mang t&iacute;nh c&aacute; nh&acirc;n h&oacute;a cao h\\u01a1n.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"450\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2.jpg\\\" srcset=\\\"https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2.jpg 800w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2-300x169.jpg 300w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2-768x432.jpg 768w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2-24x14.jpg 24w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2-36x20.jpg 36w, https:\\/\\/jnslhxfsp2obj.vcdn.cloud\\/uploads\\/2020\\/10\\/apple-watch-se-2-48x27.jpg 48w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p>Phi&ecirc;n b\\u1ea3n Apple Watch SE 40mm GPS &ndash; r\\u1ebb nh\\u01b0ng v\\u1eabn r\\u1ea5t x\\u1ecbn<\\/p>\\r\\n\\r\\n<p>N&uacute;t xoay Digital Crown k\\u1ebft h\\u1ee3p c&ugrave;ng c\\u1ee5m rung Taptic Engine gi&uacute;p mang l\\u1ea1i tr\\u1ea3i nghi\\u1ec7m giao ti\\u1ebfp r\\u1ea5t \\u0111\\u1ed9c \\u0111&aacute;o m&agrave; kh&ocirc;ng m\\u1ed9t thi\\u1ebft b\\u1ecb \\u0111eo n&agrave;o c&oacute; \\u0111\\u01b0\\u1ee3c.<\\/p>\\r\\n\\r\\n<p>B&ecirc;n c\\u1ea1nh \\u0111&oacute;, c\\u1ee5m c\\u1ea3m bi\\u1ebfn nh\\u1ecbp tim \\u0111\\u01b0\\u1ee3c \\u0111\\u1eb7t trong m\\u1eb7t k&iacute;nh sapphire gi&uacute;p n&oacute; h\\u1ea7u nh\\u01b0 kh&ocirc;ng b\\u1ecb tr\\u1ea7y x\\u01b0\\u1edbc hay l&atilde;o h&oacute;a trong su\\u1ed1t v&ograve;ng \\u0111\\u1eddi s\\u1eed d\\u1ee5ng. \\u0110i\\u1ec1u n&agrave;y s\\u1ebd \\u0111\\u1ea3m b\\u1ea3o cho nh\\u1ecbp tim m&agrave; n&oacute; \\u0111o \\u0111\\u01b0\\u1ee3c c&oacute; \\u0111\\u1ed9 ch&iacute;nh x&aacute;c cao nh\\u1ea5t.<\\/p>\"}},\"category\":[\"3\"],\"image\":\"\\/data\\/product\\/newproduct-6.png\",\"sub_image\":[\"\\/data\\/product\\/product-6-1.png\"],\"sku\":\"TMC2208\",\"alias\":\"demo-alias-name-product-6\",\"brand_id\":null,\"supplier_id\":\"1\",\"cost\":\"8000000\",\"price\":\"8690000\",\"tax_id\":\"auto\",\"price_promotion\":\"7490000\",\"price_promotion_start\":\"2021-08-05 00:00:00\",\"price_promotion_end\":\"2021-08-26 00:00:00\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 12:59:39', '2021-08-11 12:59:39'),
(644, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:59:40', '2021-08-11 12:59:40'),
(645, 1, 'demo_admin/product/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:59:44', '2021-08-11 12:59:44'),
(646, 1, 'demo_admin/product/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Genuine Samsung Galaxy Buds Live Bluetooth Headset\",\"keyword\":null,\"description\":null,\"content\":\"<p>Outstanding Features<br \\/>\\r\\nErgonomic earphone design, fits snugly in the ear, comfortable to wear<br \\/>\\r\\nImpressive charging case design, with a glossy surface, fits comfortably in the hand<br \\/>\\r\\nTrendy colors, enhance your personal style<br \\/>\\r\\nBuilt-in microphone helps users answer calls easily<br \\/>\\r\\nNoise cancellation technology eliminates background noise<br \\/>\\r\\nAKG sound enjoy quality music with deep bass<br \\/>\\r\\nCharging box capacity up to 21 hours, comfortable experience<\\/p>\"},\"vi\":{\"name\":\"Tai nghe Bluetooth Samsung Galaxy Buds Live Ch\\u00ednh H\\u00e3ng\",\"keyword\":null,\"description\":null,\"content\":\"<h2>\\u0110\\u1eb7c \\u0111i\\u1ec3m n\\u1ed5i b\\u1eadt<\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Thi\\u1ebft k\\u1ebf&nbsp;tai nghe c&ocirc;ng th&aacute;i h\\u1ecdc, v\\u1eeba v\\u1eb7n &ocirc;m kh&iacute;t tai, &ecirc;m &aacute;i khi mang<\\/li>\\r\\n\\t<li>Thi\\u1ebft k\\u1ebf h\\u1ed9p s\\u1ea1c \\u1ea5n t\\u01b0\\u1ee3ng, v\\u1edbi b\\u1ec1 m\\u1eb7t b&oacute;ng b\\u1ea9y, v\\u1eeba v\\u1eb7n c\\u1ea7m n\\u1eafm<\\/li>\\r\\n\\t<li>M&agrave;u s\\u1eafc th\\u1eddi th\\u01b0\\u1ee3ng, n&acirc;ng t\\u1ea7m phong c&aacute;ch c&aacute; nh&acirc;n<\\/li>\\r\\n\\t<li>T&iacute;ch h\\u1ee3p micro gi&uacute;p ng\\u01b0\\u1eddi d&ugrave;ng tr\\u1ea3 l\\u1eddi cu\\u1ed9c g\\u1ecdi d\\u1ec5 d&agrave;ng<\\/li>\\r\\n\\t<li>C&ocirc;ng ngh\\u1ec7 kh\\u1eed ti\\u1ebfng \\u1ed3n gi&uacute;p lo\\u1ea1i b\\u1ecf t\\u1ea1p &acirc;m xung quanh<\\/li>\\r\\n\\t<li>&Acirc;m thanh AKG t\\u1eadn h\\u01b0\\u1edfng &acirc;m nh\\u1ea1c ch\\u1ea5t l\\u01b0\\u1ee3ng v\\u1edbi &acirc;m tr\\u1ea7m s&acirc;u<\\/li>\\r\\n\\t<li>Dung l\\u01b0\\u1ee3ng h\\u1ed9p s\\u1ea1c l&ecirc;n \\u0111\\u1ebfn 21 gi\\u1edd, tho\\u1ea3i m&aacute;i tr\\u1ea3i nghi\\u1ec7m<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"5\"],\"image\":\"\\/data\\/product\\/newproduct-5.png\",\"sub_image\":[\"\\/data\\/product\\/product-5-1.png\",\"\\/data\\/product\\/product-5-4.png\",\"\\/data\\/product\\/product-5-3.png\",\"\\/data\\/product\\/product-5-4.png\"],\"sku\":\"CLOCKFAN3\",\"alias\":\"demo-alias-name-product-5\",\"brand_id\":null,\"supplier_id\":\"1\",\"cost\":\"2500000\",\"price\":\"3090000\",\"tax_id\":\"auto\",\"price_promotion\":\"2790000\",\"price_promotion_start\":\"2021-08-05 00:00:00\",\"price_promotion_end\":\"2021-08-31 00:00:00\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 12:59:53', '2021-08-11 12:59:53'),
(647, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:59:54', '2021-08-11 12:59:54'),
(648, 1, 'demo_admin/product/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 12:59:57', '2021-08-11 12:59:57'),
(649, 1, 'demo_admin/product/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"IPhone XS glass replacement service\",\"keyword\":null,\"description\":null,\"content\":\"<p>&diams; 100% genuine glass.<br \\/>\\r\\n<br \\/>\\r\\n&diams; The replacement glass is transparent, beautiful as the original.<\\/p>\"},\"vi\":{\"name\":\"D\\u1ecbch v\\u1ee5 thay k\\u00ednh IPhone XS\",\"keyword\":null,\"description\":null,\"content\":\"<p>&diams; M\\u1eb7t k&iacute;nh ch&iacute;nh h&atilde;ng 100%.<\\/p>\\r\\n\\r\\n<p>&diams; K&iacute;nh thay c&oacute; \\u0111\\u1ed9 trong su\\u1ed1t, \\u0111\\u1eb9p chu\\u1ea9n nh\\u01b0 ban \\u0111\\u1ea7u.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/newproduct-4.png\",\"sku\":\"CLOCKFAN2\",\"alias\":\"demo-alias-name-product-4\",\"brand_id\":null,\"supplier_id\":\"1\",\"cost\":\"500000\",\"price\":\"1000000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"10\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 13:00:09', '2021-08-11 13:00:09'),
(650, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:00:10', '2021-08-11 13:00:10'),
(651, 1, 'demo_admin/product/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:00:14', '2021-08-11 13:00:14'),
(652, 1, 'demo_admin/product/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:00:19', '2021-08-11 13:00:19'),
(653, 1, 'demo_admin/product/edit/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPad Pro M1 (2021) 11 256GB WI-FI new\",\"keyword\":null,\"description\":null,\"content\":\"<p>The 11-inch iPad Pro 2021 is a tablet product line that has just been launched by Apple at the last Apple Spring 2021 event along with the 12.9-inch iPad Pro 2021. Although the design is not too different from its predecessor iPad Pro 2020, Apple has still upgraded a lot in terms of screen, camera and Apple M1 chip that promises to bring users many great experiences in terms of performance and performance. daily entertainment.<\\/p>\"},\"vi\":{\"name\":\"iPad Pro M1 (2021) 11 256GB WI-FI M\\u1edbi\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPad Pro 2021 11inch l&agrave; d&ograve;ng s\\u1ea3n ph\\u1ea9m tablet v\\u1eeba \\u0111\\u01b0\\u1ee3c Apple ra m\\u1eaft v&agrave;o s\\u1ef1 ki\\u1ec7n Apple Spring 2021 v\\u1eeba qua c&ugrave;ng v\\u1edbi iPad Pro 2021 12.9inch. Tuy thi\\u1ebft k\\u1ebf kh&ocirc;ng qu&aacute; kh&aacute;c bi\\u1ec7t so v\\u1edbi ti\\u1ec1n nhi\\u1ec7m iPad Pro 2020 nh\\u01b0ng v\\u1eabn \\u0111\\u01b0\\u1ee3c Apple n&acirc;ng c\\u1ea5p r\\u1ea5t nhi\\u1ec1u v\\u1ec1 m&agrave;n h&igrave;nh, camera c&ugrave;ng con chip Apple M1 h\\u1ee9a h\\u1eb9n s\\u1ebd mang l\\u1ea1i cho ng\\u01b0\\u1eddi d&ugrave;ng nhi\\u1ec1u tr\\u1ea3i nghi\\u1ec7m tuy\\u1ec7t v\\u1eddi v\\u1ec1 hi\\u1ec7u n\\u0103ng c\\u0169ng nh\\u01b0 gi\\u1ea3i tr&iacute; h&agrave;ng ng&agrave;y.<\\/p>\"}},\"category\":[\"4\"],\"image\":\"\\/data\\/product\\/newproduct-7.png\",\"sku\":\"FILAMENT\",\"alias\":\"demo-alias-name-product-7\",\"brand_id\":null,\"supplier_id\":\"1\",\"cost\":\"23000000\",\"price\":\"23490000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 13:00:27', '2021-08-11 13:00:27'),
(654, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:00:28', '2021-08-11 13:00:28'),
(655, 1, 'demo_admin/product/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:00:35', '2021-08-11 13:00:35'),
(656, 1, 'demo_admin/product/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:00:42', '2021-08-11 13:00:42'),
(657, 1, 'demo_admin/product/edit/8', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:00:48', '2021-08-11 13:00:48'),
(658, 1, 'demo_admin/product/edit/8', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Macbook Air M1 2020 8G 256GB\",\"keyword\":null,\"description\":null,\"content\":\"<p>Apple has just launched an impressive new version of the MacBook Air M1 2020 with a new M1 chip designed specifically for MacBooks that boosts CPU performance up to 3.5 times faster, longest battery life ever on the market. MacBook Air.<\\/p>\"},\"vi\":{\"name\":\"Macbook Air M1 2020 8G 256GB\",\"keyword\":null,\"description\":null,\"content\":\"<p>Apple v\\u1eeba cho ra m\\u1eaft phi&ecirc;n b\\u1ea3n&nbsp;<strong>MacBook Air M1 2020<\\/strong>&nbsp;m\\u1edbi c\\u1ef1c k&igrave; \\u1ea5n t\\u01b0\\u1ee3ng v\\u1edbi con chip M1 m\\u1edbi \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf d&agrave;nh ri&ecirc;ng cho MacBook t\\u0103ng hi\\u1ec7u su\\u1ea5t CPU nhanh h\\u01a1n t\\u1edbi 3.5 l\\u1ea7n, tu\\u1ed5i th\\u1ecd pin d&agrave;i nh\\u1ea5t t\\u1eeb \\u200b\\u200btr\\u01b0\\u1edbc \\u0111\\u1ebfn nay tr&ecirc;n MacBook Air.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h3>Sang tr\\u1ecdng, c\\u01a1 \\u0111\\u1ed9ng v&agrave; \\u0111\\u1eb3ng c\\u1ea5p<\\/h3>\\r\\n\\r\\n<p>\\u0110\\u01b0\\u1ee3c ch\\u1ebf t&aacute;c tinh x\\u1ea3o t\\u1eeb kim lo\\u1ea1i nguy&ecirc;n kh\\u1ed1i t&aacute;i ch\\u1ebf, Apple \\u0111em \\u0111\\u1ebfn m\\u1ed9t phi&ecirc;n b\\u1ea3n&nbsp;MacBook Air&nbsp;sang tr\\u1ecdng, \\u0111\\u1eb3ng c\\u1ea5p nh\\u01b0ng v\\u1eabn gi\\u1eef \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9 m\\u1ecfng nh\\u1eb9, th&acirc;n m&aacute;y ch\\u1ec9<strong>&nbsp;16.1 mm<\\/strong>, n\\u1eb7ng&nbsp;<strong>1.29 kg<\\/strong>&nbsp;\\u0111\\u1ec1 cao t&iacute;nh di \\u0111\\u1ed9ng, b\\u1eaft k\\u1ecbp xu h\\u01b0\\u1edbng hi\\u1ec7n nay.<\\/p>\\r\\n\\r\\n<p><a data-wpel-link=\\\"external\\\" href=\\\"https:\\/\\/www.thegioididong.com\\/images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-280420-100425.jpg\\\" rel=\\\"nofollow external noopener noreferrer\\\" target=\\\"_blank\\\"><img alt=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Thi\\u1ebft k\\u1ebf\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-280420-100425.jpg\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-280420-100425.jpg\\\" title=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Thi\\u1ebft k\\u1ebf\\\" \\/><\\/a><\\/p>\\r\\n\\r\\n<p><strong>Chip b\\u1ea3o m\\u1eadt T2<\\/strong>&nbsp;m&atilde; h&oacute;a m\\u1ecdi th&ocirc;ng tin tr&ecirc;n m&aacute;y \\u0111\\u1ea3m b\\u1ea3o th&ocirc;ng tin c&aacute; nh&acirc;n c\\u1ee7a b\\u1ea1n. \\u0110\\u0103ng nh\\u1eadp v&agrave;o m&aacute;y d\\u1ec5 d&agrave;ng b\\u1eb1ng<strong>&nbsp;b\\u1ea3o m\\u1eadt v&acirc;n tay<\\/strong>, h\\u1ed7 tr\\u1ee3 thanh to&aacute;n online c\\u1ef1c k&igrave; nhanh ch&oacute;ng v&agrave; ti\\u1ec7n l\\u1ee3i.<\\/p>\\r\\n\\r\\n<p><a data-wpel-link=\\\"external\\\" href=\\\"https:\\/\\/www.thegioididong.com\\/images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-073520-103521.jpg\\\" rel=\\\"nofollow external noopener noreferrer\\\" target=\\\"_blank\\\"><img alt=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Touch ID\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-073520-103521.jpg\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/231246\\/apple-macbook-air-2020-mgnd3saa-073520-103521.jpg\\\" title=\\\"Apple MacBook Air 2020 M1\\/8GB\\/256GB (MGND3SA\\/A) - Touch ID\\\" \\/><\\/a><\\/p>\"}},\"category\":[\"1\"],\"image\":\"\\/data\\/product\\/newproduct-8.png\",\"sku\":\"A4988\",\"alias\":\"demo-alias-name-product-8\",\"brand_id\":null,\"supplier_id\":\"1\",\"cost\":\"25000000\",\"price\":\"25490000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 13:00:53', '2021-08-11 13:00:53'),
(659, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:00:54', '2021-08-11 13:00:54'),
(660, 1, 'demo_admin/product/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:00:59', '2021-08-11 13:00:59'),
(661, 1, 'demo_admin/product/edit/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPad Pro M1 (2021) 11 256GB WI-FI new\",\"keyword\":null,\"description\":null,\"content\":\"<p>The 11-inch iPad Pro 2021 is a tablet product line that has just been launched by Apple at the last Apple Spring 2021 event along with the 12.9-inch iPad Pro 2021. Although the design is not too different from its predecessor iPad Pro 2020, Apple has still upgraded a lot in terms of screen, camera and Apple M1 chip that promises to bring users many great experiences in terms of performance and performance. daily entertainment.<\\/p>\"},\"vi\":{\"name\":\"iPad Pro M1 (2021) 11 256GB WI-FI M\\u1edbi\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPad Pro 2021 11inch l&agrave; d&ograve;ng s\\u1ea3n ph\\u1ea9m tablet v\\u1eeba \\u0111\\u01b0\\u1ee3c Apple ra m\\u1eaft v&agrave;o s\\u1ef1 ki\\u1ec7n Apple Spring 2021 v\\u1eeba qua c&ugrave;ng v\\u1edbi iPad Pro 2021 12.9inch. Tuy thi\\u1ebft k\\u1ebf kh&ocirc;ng qu&aacute; kh&aacute;c bi\\u1ec7t so v\\u1edbi ti\\u1ec1n nhi\\u1ec7m iPad Pro 2020 nh\\u01b0ng v\\u1eabn \\u0111\\u01b0\\u1ee3c Apple n&acirc;ng c\\u1ea5p r\\u1ea5t nhi\\u1ec1u v\\u1ec1 m&agrave;n h&igrave;nh, camera c&ugrave;ng con chip Apple M1 h\\u1ee9a h\\u1eb9n s\\u1ebd mang l\\u1ea1i cho ng\\u01b0\\u1eddi d&ugrave;ng nhi\\u1ec1u tr\\u1ea3i nghi\\u1ec7m tuy\\u1ec7t v\\u1eddi v\\u1ec1 hi\\u1ec7u n\\u0103ng c\\u0169ng nh\\u01b0 gi\\u1ea3i tr&iacute; h&agrave;ng ng&agrave;y.<\\/p>\"}},\"category\":[\"4\"],\"image\":\"\\/data\\/product\\/newproduct-7.png\",\"sku\":\"FILAMENT\",\"alias\":\"demo-alias-name-product-7\",\"brand_id\":null,\"supplier_id\":\"1\",\"cost\":\"23000000\",\"price\":\"23490000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 13:01:04', '2021-08-11 13:01:04'),
(662, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:01:05', '2021-08-11 13:01:05'),
(663, 1, 'demo_admin/product/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:01:09', '2021-08-11 13:01:09');
INSERT INTO `demo_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(664, 1, 'demo_admin/product/edit/9', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Samsung Galaxy Note 9 128GB old Korean 99% Beautiful like new\",\"keyword\":null,\"description\":null,\"content\":\"<p>Samsung Galaxy Note 9 (6GB - 128GB) 2 sim Korean imported version uses high-end Exynos chip, runs 2 convenient sims. The above price does not include warranty Power, Screen, Security sensor (Fingerprint, Eye Nail, Face). Upgrade to ExGold Comprehensive 12 Months for a better comprehensive warranty.<br \\/>\\r\\n&nbsp;<\\/p>\"},\"vi\":{\"name\":\"Samsung Galaxy Note 9 128GB H\\u00e0n c\\u0169 99% \\u0110\\u1eb9p nh\\u01b0 m\\u1edbi\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>Samsung Galaxy Note 9 (6GB &ndash; 128GB) 2 sim H&agrave;n Qu\\u1ed1c<\\/strong>&nbsp;phi&ecirc;n b\\u1ea3n nh\\u1eadp kh\\u1ea9u d&ugrave;ng chip Exynos cao c\\u1ea5p, ch\\u1ea1y 2 sim ti\\u1ec7n d\\u1ee5ng. Gi&aacute; tr&ecirc;n ch\\u01b0a bao g\\u1ed3m b\\u1ea3o h&agrave;nh Ngu\\u1ed3n , M&agrave;n h&igrave;nh , C\\u1ea3m bi\\u1ebfn b\\u1ea3o m\\u1eadt (<strong>V&acirc;n tay , M&oacute;ng M\\u1eaft , Khu&ocirc;n M\\u1eb7t<\\/strong>&nbsp;).&nbsp;<em>N&acirc;ng c\\u1ea5p th&ecirc;m<\\/em>&nbsp;<a data-wpel-link=\\\"internal\\\" href=\\\"https:\\/\\/exphone.vn\\/chinh-sach-bao-hanh\\\" rel=\\\"follow noopener noreferrer\\\" target=\\\"_self\\\"><strong>ExGold To&agrave;n Di\\u1ec7n 12 Th&aacute;ng<\\/strong><\\/a>&nbsp;<em>\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh to&agrave;n di\\u1ec7n t\\u1ed1t h\\u01a1n.&nbsp;<\\/em><br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;n h&igrave;nh<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>C&ocirc;ng ngh\\u1ec7 m&agrave;n h&igrave;nh: Super AMOLED, \\u0110\\u1ed9 ph&acirc;n gi\\u1ea3i: 1440 x 2960 pixels, M&agrave;n h&igrave;nh r\\u1ed9ng: 6.1 inches, M\\u1eb7t k&iacute;nh c\\u1ea3m \\u1ee9ng: Corning Gorilla Glass 5<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera sau<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>\\u0110\\u1ed9 ph&acirc;n gi\\u1ea3i: 12 MP, f\\/1.5-2.4 dual pixel PDAF, OIS v&agrave; 12 MP, f\\/2.4 OIS, 2x optical zoom, Quay phim: 2160p@60fps, 1080p@240fps, 720p@960fps, HDR, dual-video rec<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Camera tr\\u01b0\\u1edbc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>\\u0110\\u1ed9 ph&acirc;n gi\\u1ea3i: 8 MP<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>CPU<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Exynos 9810, 8 nh&acirc;n 64bit, T\\u1ed1c \\u0111\\u1ed9 CPU: Octa-core (4&times;2.7 GHz Mongoose M3 &amp; 4&times;1.8 GHz Cortex-A55)<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Chip \\u0111\\u1ed3 h\\u1ecda (GPU)<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>Mali-G72 MP18<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>B\\u1ed9 nh\\u1edb trong<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>128 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Ram<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>6 GB<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Dung l\\u01b0\\u1ee3ng pin<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>4000 mAh<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>Sim<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>2 SIM Nano (SIM 2 chung khe th\\u1ebb nh\\u1edb), H\\u1ed7 tr\\u1ee3 4G<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<th>M&agrave;u s\\u1eafc<\\/th>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p>copper, Black, Blue, Purple, White<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/newproduct-9.png\",\"sku\":\"ANYCUBIC-P\",\"alias\":\"demo-alias-name-product-9\",\"brand_id\":\"5\",\"supplier_id\":\"1\",\"cost\":\"8000000\",\"price\":\"8990000\",\"tax_id\":\"auto\",\"price_promotion\":\"8490000\",\"price_promotion_start\":\"2021-08-05 00:00:00\",\"price_promotion_end\":\"2021-08-25 00:00:00\",\"stock\":\"86\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 13:01:14', '2021-08-11 13:01:14'),
(665, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:01:15', '2021-08-11 13:01:15'),
(666, 1, 'demo_admin/product/edit/10', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:01:18', '2021-08-11 13:01:18'),
(667, 1, 'demo_admin/product/edit/11', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:01:24', '2021-08-11 13:01:24'),
(668, 1, 'demo_admin/product/edit/11', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"iPhone X Lock Old 64Gb 99% as beautiful as new\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone X Lock network lock from the US, Japan. Currently, ExPhone comes with a sim card to fix errors and limitations, using it as normal as the international version. Especially the original committed machine. - Beautiful appearance 99% like new, beautiful body, no heavy scratches. Original according to manufacturer standards. Has not been replaced and repaired &ndash; The level of battery wear is over 90% ~ 95%. Free 1 time battery replacement when below 80% when upgrading ExGold comprehensive warranty package | ExPro<\\/p>\"},\"vi\":{\"name\":\"iPhone X Lock C\\u0169 64Gb 99% \\u0111\\u1eb9p nh\\u01b0 m\\u1edbi\",\"keyword\":null,\"description\":null,\"content\":\"<p>iPhone X Lock kho&aacute; m\\u1ea1ng t\\u1eeb M\\u1ef9, Nh\\u1eadt. Hi\\u1ec7n t\\u1ea1i ExPhone t\\u1eb7ng k&egrave;m sim gh&eacute;p fix full l\\u1ed7i v&agrave; h\\u1ea1n ch\\u1ebf, s\\u1eed d\\u1ee5ng ho&agrave;n to&agrave;n b&igrave;nh th\\u01b0\\u1eddng nh\\u01b0 phi&ecirc;n b\\u1ea3n qu\\u1ed1c t\\u1ebf. \\u0110\\u1eb7c bi\\u1ec7t m&aacute;y cam k\\u1ebft nguy&ecirc;n b\\u1ea3n.<br \\/>\\r\\n&ndash; H&igrave;nh th\\u1ee9c \\u0111\\u1eb9p 99% nh\\u01b0 m\\u1edbi, th&acirc;n v\\u1ecf \\u0111\\u1eb9p, kh&ocirc;ng c\\u1ea5n m&oacute;p tr\\u1ea7y x\\u01b0\\u1edbc n\\u1eb7ng. Nguy&ecirc;n b\\u1ea3n theo ti&ecirc;u chu\\u1ea9n nh&agrave; s\\u1ea3n xu\\u1ea5t. Ch\\u01b0a qua thay th\\u1ebf v&agrave; s\\u1eeda ch\\u1eefa<br \\/>\\r\\n&ndash; M\\u1ee9c \\u0111\\u1ed9 hao m&ograve;n pin tr&ecirc;n 90% ~ 95%. Mi\\u1ec5n ph&iacute; 1 l\\u1ea7n thay pin khi d\\u01b0\\u1edbi 80% khi n&acirc;ng c\\u1ea5p g&oacute;i b\\u1ea3o h&agrave;nh to&agrave;n di\\u1ec7n ExGold | ExPro&nbsp;<\\/p>\"}},\"category\":[\"2\"],\"image\":\"\\/data\\/product\\/newproduct-11.png\",\"sku\":\"SS495A\",\"alias\":\"demo-alias-name-product-11\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"8000000\",\"price\":\"8990000\",\"tax_id\":\"auto\",\"price_promotion\":\"7990000\",\"price_promotion_start\":\"2021-08-04 00:00:00\",\"price_promotion_end\":\"2021-08-20 00:00:00\",\"stock\":\"45\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ExCnjnlmQT973uyMW9IwRAAPQLiJkaL6grIj709G\"}', '2021-08-11 13:01:29', '2021-08-11 13:01:29'),
(669, 1, 'demo_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:01:31', '2021-08-11 13:01:31'),
(670, 1, 'demo_admin/product/edit/12', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:01:35', '2021-08-11 13:01:35'),
(671, 1, 'demo_admin/product/edit/13', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:01:39', '2021-08-11 13:01:39'),
(672, 1, 'demo_admin/product/edit/14', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:01:44', '2021-08-11 13:01:44'),
(673, 1, 'demo_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:08:54', '2021-08-11 13:08:54'),
(674, 1, 'demo_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:08:57', '2021-08-11 13:08:57'),
(675, 1, 'demo_admin/news/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:09:03', '2021-08-11 13:09:03'),
(676, 1, 'demo_admin/news/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '[]', '2021-08-11 13:09:23', '2021-08-11 13:09:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_admin_menu`
--

CREATE TABLE `demo_admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `hidden` int(11) NOT NULL DEFAULT 0,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_admin_menu`
--

INSERT INTO `demo_admin_menu` (`id`, `parent_id`, `sort`, `title`, `icon`, `uri`, `type`, `hidden`, `key`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'lang::admin.menu_titles.order_manager', 'fas fa-cart-arrow-down', '', 0, 0, 'ORDER_MANAGER', NULL, NULL),
(2, 6, 2, 'lang::admin.menu_titles.catalog_mamager', 'fas fa-folder-open', '', 0, 0, 'CATALOG_MANAGER', NULL, NULL),
(3, 25, 3, 'lang::admin.menu_titles.customer_manager', 'fas fa-users', '', 0, 0, 'CUSTOMER_MANAGER', NULL, NULL),
(4, 8, 201, 'lang::admin.menu_titles.template_layout', 'fab fa-windows', '', 0, 0, 'TEMPLATE', NULL, NULL),
(5, 9, 2, 'lang::admin.menu_titles.admin_global', 'fab fa-whmcs', '', 0, 0, 'CONFIG_SYSTEM', NULL, NULL),
(6, 0, 10, 'lang::admin.menu_titles.ADMIN_SHOP', 'fab fa-shopify', '', 0, 0, 'ADMIN_SHOP', NULL, NULL),
(7, 0, 100, 'lang::admin.menu_titles.ADMIN_CONTENT', 'fas fa-file-signature', '', 0, 0, 'ADMIN_CONTENT', NULL, NULL),
(8, 0, 300, 'lang::admin.menu_titles.ADMIN_EXTENSION', 'fas fa-th', '', 0, 0, 'ADMIN_EXTENSION', NULL, NULL),
(9, 0, 400, 'lang::admin.menu_titles.ADMIN_SYSTEM', 'fas fa-cogs', '', 0, 0, 'ADMIN_SYSTEM', NULL, NULL),
(10, 7, 102, 'lang::page.admin.title', 'fas fa-clone', 'admin::page', 0, 0, NULL, NULL, NULL),
(11, 27, 2, 'lang::shipping_status.admin.title', 'fas fa-truck', 'admin::shipping_status', 0, 0, NULL, NULL, NULL),
(12, 1, 3, 'lang::order.admin.title', 'fas fa-shopping-cart', 'admin::order', 0, 0, NULL, NULL, NULL),
(13, 27, 1, 'lang::order_status.admin.title', 'fas fa-asterisk', 'admin::order_status', 0, 0, NULL, NULL, NULL),
(14, 27, 3, 'lang::payment_status.admin.title', 'fas fa-recycle', 'admin::payment_status', 0, 0, NULL, NULL, NULL),
(15, 2, 0, 'lang::product.admin.title', 'far fa-file-image', 'admin::product', 0, 0, NULL, NULL, NULL),
(16, 2, 0, 'lang::category.admin.title', 'fas fa-folder-open', 'admin::category', 0, 0, NULL, NULL, NULL),
(17, 27, 4, 'lang::supplier.admin.title', 'fas fa-user-secret', 'admin::supplier', 0, 0, NULL, NULL, NULL),
(18, 27, 5, 'lang::brand.admin.title', 'fas fa-university', 'admin::brand', 0, 0, NULL, NULL, NULL),
(19, 27, 8, 'lang::attribute_group.admin.title', 'fas fa-bars', 'admin::attribute_group', 0, 0, NULL, NULL, NULL),
(20, 3, 0, 'lang::customer.admin.title', 'fas fa-user', 'admin::customer', 0, 0, NULL, NULL, NULL),
(21, 3, 0, 'lang::subscribe.admin.title', 'fas fa-user-circle', 'admin::subscribe', 0, 0, NULL, NULL, NULL),
(22, 67, 1, 'lang::store_block.admin.title', 'far fa-newspaper', 'admin::store_block', 0, 0, NULL, NULL, NULL),
(23, 67, 2, 'lang::admin.menu_titles.block_link', 'fab fa-chrome', 'admin::store_link', 0, 0, NULL, NULL, NULL),
(24, 4, 0, 'lang::admin.menu_titles.template_manager', 'fas fa-columns', 'admin::template', 0, 0, NULL, NULL, NULL),
(25, 0, 200, 'lang::admin.menu_titles.ADMIN_MARKETING', 'fas fa-sort-amount-up', '', 0, 0, 'MARKETING', NULL, NULL),
(26, 65, 1, 'lang::store.admin.title', 'fas fa-h-square', 'admin::store_info', 0, 0, NULL, NULL, NULL),
(27, 9, 3, 'lang::admin.menu_titles.setting_system', 'fas fa-tools', '', 0, 0, 'SETTING_SYSTEM', NULL, NULL),
(28, 9, 4, 'lang::admin.menu_titles.error_log', 'far fa-clone', '', 0, 0, '', NULL, NULL),
(29, 25, 0, 'lang::email_template.admin.title', 'fas fa-bars', 'admin::email_template', 0, 0, NULL, NULL, NULL),
(30, 9, 5, 'lang::admin.menu_titles.localisation', 'fab fa-shirtsinbulk', '', 0, 0, NULL, NULL, NULL),
(31, 30, 0, 'lang::language.admin.title', 'fas fa-language', 'admin::language', 0, 0, NULL, NULL, NULL),
(32, 30, 0, 'lang::currency.admin.title', 'far fa-money-bill-alt', 'admin::currency', 0, 0, NULL, NULL, NULL),
(33, 7, 101, 'lang::banner.admin.title', 'fas fa-image', 'admin::banner', 0, 0, NULL, NULL, NULL),
(34, 5, 5, 'lang::backup.admin.title', 'fas fa-save', 'admin::backup', 0, 0, NULL, NULL, NULL),
(35, 8, 202, 'lang::admin.menu_titles.plugins', 'fas fa-puzzle-piece', '', 0, 0, 'PLUGIN', NULL, NULL),
(36, 28, 2, 'lang::admin.menu_titles.webhook', 'fab fa-diaspora', 'admin::config/webhook', 0, 0, NULL, NULL, NULL),
(37, 25, 5, 'lang::admin.menu_titles.report_manager', 'fas fa-chart-pie', '', 0, 0, 'REPORT_MANAGER', NULL, NULL),
(38, 9, 1, 'lang::admin.menu_titles.user_permission', 'fas fa-users-cog', '', 0, 0, 'ADMIN', NULL, NULL),
(39, 35, 0, 'plugin.Payment', 'far fa-money-bill-alt', 'admin::plugin/payment', 0, 0, NULL, NULL, NULL),
(40, 35, 0, 'plugin.Shipping', 'fas fa-ambulance', 'admin::plugin/shipping', 0, 0, NULL, NULL, NULL),
(41, 35, 0, 'plugin.Total', 'fas fa-cog', 'admin::plugin/total', 0, 0, NULL, NULL, NULL),
(42, 35, 100, 'plugin.Other', 'far fa-circle', 'admin::plugin/other', 0, 0, NULL, NULL, NULL),
(43, 35, 0, 'plugin.Cms', 'fab fa-modx', 'admin::plugin/cms', 0, 0, NULL, NULL, NULL),
(44, 67, 2, 'lang::admin.menu_titles.css', 'far fa-file-code', 'admin::store_css', 0, 0, NULL, NULL, NULL),
(45, 25, 4, 'lang::admin.menu_titles.seo_manager', 'fab fa-battle-net', '', 0, 0, 'SEO_MANAGER', NULL, NULL),
(46, 38, 0, 'lang::admin.menu_titles.users', 'fas fa-users', 'admin::user', 0, 0, NULL, NULL, NULL),
(47, 38, 0, 'lang::admin.menu_titles.roles', 'fas fa-user-tag', 'admin::role', 0, 0, NULL, NULL, NULL),
(48, 38, 0, 'lang::admin.menu_titles.permission', 'fas fa-ban', 'admin::permission', 0, 0, NULL, NULL, NULL),
(49, 5, 0, 'lang::admin.menu_titles.menu', 'fas fa-bars', 'admin::menu', 0, 0, NULL, NULL, NULL),
(50, 28, 0, 'lang::admin.menu_titles.operation_log', 'fas fa-history', 'admin::log', 0, 0, NULL, NULL, NULL),
(51, 45, 0, 'lang::admin.menu_titles.seo_config', 'fas fa-bars', 'admin::seo/config', 0, 0, NULL, NULL, NULL),
(52, 7, 103, 'lang::news.admin.title', 'far fa-file-powerpoint', 'admin::news', 0, 0, NULL, NULL, NULL),
(53, 5, 0, 'lang::admin.menu_titles.env_config', 'fas fa-tasks', 'admin::env/config', 0, 0, NULL, NULL, NULL),
(54, 37, 0, 'lang::admin.menu_titles.report_product', 'fas fa-bars', 'admin::report/product', 0, 0, NULL, NULL, NULL),
(57, 65, 2, 'lang::admin.menu_titles.store_config', 'fas fa-cog', 'admin::store_config', 0, 0, NULL, NULL, NULL),
(58, 5, 5, 'lang::admin.menu_titles.cache_manager', 'fab fa-tripadvisor', 'admin::cache_config', 0, 0, NULL, NULL, NULL),
(59, 9, 7, 'lang::admin.menu_titles.api_manager', 'fas fa-plug', '', 0, 0, 'API_MANAGER', NULL, NULL),
(60, 65, 3, 'lang::store_maintain.config_manager.title', 'fas fa-wrench', 'admin::store_maintain', 0, 0, NULL, NULL, NULL),
(61, 27, 9, 'lang::tax.admin.admin_title', 'far fa-calendar-minus', 'admin::tax', 0, 0, NULL, NULL, NULL),
(63, 27, 7, 'lang::length.admin.title', 'fas fa-minus', 'admin::length_unit', 0, 0, NULL, NULL, NULL),
(65, 0, 250, 'lang::admin.menu_titles.ADMIN_SHOP_SETTING', 'fas fa-store-alt', '', 0, 0, 'ADMIN_SHOP_SETTING', NULL, NULL),
(66, 59, 1, 'lang::admin.menu_titles.api_config', 'fas fa fa-cog', 'admin::api_connection', 0, 0, NULL, NULL, NULL),
(67, 65, 5, 'lang::admin.menu_titles.layout', 'far fa-object-group', '', 0, 0, NULL, NULL, NULL),
(627, 27, 6, 'lang::weight.admin.title', 'fas fa-balance-scale', 'admin::weight_unit', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_admin_permission`
--

CREATE TABLE `demo_admin_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_uri` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_admin_permission`
--

INSERT INTO `demo_admin_permission` (`id`, `name`, `slug`, `http_uri`, `created_at`, `updated_at`) VALUES
(1, 'Auth manager', 'auth.full', 'ANY::demo_admin/auth/*', '2021-08-09 13:51:17', NULL),
(2, 'Dashboard', 'dashboard', 'GET::demo_admin', '2021-08-09 13:51:17', NULL),
(3, 'Base setting', 'base.setting', 'ANY::demo_admin/order_status/*,ANY::demo_admin/shipping_status/*,ANY::demo_admin/payment_status/*,ANY::demo_admin/supplier/*,ANY::demo_admin/brand/*,ANY::demo_admin/weight_unit/*,ANY::demo_admin/length_unit/*,ANY::demo_admin/attribute_group/*,ANY::demo_admin/tax/*', '2021-08-09 13:51:17', NULL),
(4, 'Store manager', 'store.full', 'ANY::demo_admin/store_info/*,ANY::demo_admin/store_maintain/*,ANY::demo_admin/store_config/*,ANY::demo_admin/store_css/*,ANY::demo_admin/store_block/*,ANY::demo_admin/store_link/*', '2021-08-09 13:51:17', NULL),
(5, 'Product manager', 'product.full', 'ANY::demo_admin/product/*', '2021-08-09 13:51:17', NULL),
(6, 'Category manager', 'category.full', 'ANY::demo_admin/category/*', '2021-08-09 13:51:17', NULL),
(7, 'Order manager', 'order.full', 'ANY::demo_admin/order/*', '2021-08-09 13:51:17', NULL),
(8, 'Upload management', 'upload.full', 'ANY::demo_admin/uploads/*', '2021-08-09 13:51:17', NULL),
(9, 'Extension manager', 'extension.full', 'ANY::demo_admin/template/*,ANY::demo_admin/plugin/*', '2021-08-09 13:51:17', NULL),
(10, 'Marketing manager', 'marketing.full', 'ANY::demo_admin/shop_discount/*,ANY::demo_admin/email_template/*,ANY::demo_admin/customer/*,ANY::demo_admin/subscribe/*,ANY::demo_admin/seo/*', '2021-08-09 13:51:17', NULL),
(11, 'Report manager', 'report.full', 'ANY::demo_admin/report/*', '2021-08-09 13:51:17', NULL),
(12, 'CMS manager', 'cms.full', 'ANY::demo_admin/page/*,ANY::demo_admin/banner/*,ANY::demo_admin/cms_category/*,ANY::demo_admin/cms_content/*,ANY::demo_admin/news/*', '2021-08-09 13:51:17', NULL),
(13, 'Update config', 'change.config', 'POST::demo_admin/store_config/update', '2021-08-09 13:51:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_admin_role`
--

CREATE TABLE `demo_admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_admin_role`
--

INSERT INTO `demo_admin_role` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2021-08-09 13:51:17', NULL),
(2, 'Group only View', 'view.all', '2021-08-09 13:51:17', NULL),
(3, 'Manager', 'manager', '2021-08-09 13:51:17', NULL),
(4, 'CMS', 'cms', '2021-08-09 13:51:17', NULL),
(5, 'Accountant', 'accountant', '2021-08-09 13:51:17', NULL),
(6, 'Marketing', 'maketing', '2021-08-09 13:51:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_admin_role_permission`
--

CREATE TABLE `demo_admin_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_admin_role_permission`
--

INSERT INTO `demo_admin_role_permission` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(3, 1, '2021-08-09 13:51:17', NULL),
(3, 2, '2021-08-09 13:51:17', NULL),
(3, 3, '2021-08-09 13:51:17', NULL),
(3, 4, '2021-08-09 13:51:17', NULL),
(3, 5, '2021-08-09 13:51:17', NULL),
(3, 6, '2021-08-09 13:51:17', NULL),
(3, 7, '2021-08-09 13:51:17', NULL),
(3, 8, '2021-08-09 13:51:17', NULL),
(3, 9, '2021-08-09 13:51:17', NULL),
(3, 10, '2021-08-09 13:51:17', NULL),
(3, 11, '2021-08-09 13:51:17', NULL),
(3, 12, '2021-08-09 13:51:17', NULL),
(3, 13, '2021-08-09 13:51:17', NULL),
(4, 1, '2021-08-09 13:51:17', NULL),
(4, 12, '2021-08-09 13:51:17', NULL),
(5, 1, '2021-08-09 13:51:17', NULL),
(5, 2, '2021-08-09 13:51:17', NULL),
(5, 7, '2021-08-09 13:51:17', NULL),
(5, 11, '2021-08-09 13:51:17', NULL),
(6, 1, '2021-08-09 13:51:17', NULL),
(6, 2, '2021-08-09 13:51:17', NULL),
(6, 8, '2021-08-09 13:51:17', NULL),
(6, 10, '2021-08-09 13:51:17', NULL),
(6, 11, '2021-08-09 13:51:17', NULL),
(6, 12, '2021-08-09 13:51:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_admin_role_user`
--

CREATE TABLE `demo_admin_role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_admin_role_user`
--

INSERT INTO `demo_admin_role_user` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_admin_store`
--

CREATE TABLE `demo_admin_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_active` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0:Lock, 1: unlock',
  `active` int(11) NOT NULL DEFAULT 1 COMMENT '0:Maintain, 1: Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_admin_store`
--

INSERT INTO `demo_admin_store` (`id`, `logo`, `phone`, `long_phone`, `email`, `time_active`, `address`, `office`, `warehouse`, `template`, `domain`, `partner`, `code`, `language`, `timezone`, `currency`, `status`, `active`) VALUES
(1, '/data/logo/mau-logo-dien-thoai-dep-02.jpg', '0123456789', 'Support: 0987654321', 'demo@your-domain.com', '', '184 - Huỳnh Văn Nghệ  - Ngũ Hành Sơn - Đà Nẵng', NULL, NULL, 's-cart-light', 'localhost/s-cart/public', '0', 'root', 'vi', 'Asia/Ho_Chi_Minh', 'USD', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_admin_store_description`
--

CREATE TABLE `demo_admin_store_description` (
  `store_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_note` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_admin_store_description`
--

INSERT INTO `demo_admin_store_description` (`store_id`, `lang`, `title`, `description`, `keyword`, `maintain_content`, `maintain_note`) VALUES
(1, 'en', 'Shop HPTV: Shop selling reputable smartphones', 'Shop bán hàng uy tín Đà Nẵng', '', '<center><img src=\"/images/maintenance.png\" />\r\n    <h3><span style=\"color:#e74c3c;\"><strong>Sorry! We are currently doing site maintenance!</strong></span></h3>\r\n    </center>', 'Website is in maintenance mode!'),
(1, 'vi', 'Shop HPTV: Shop bán điện thoại thông minh uy tín', 'Prestigious shop in Da Nang', '', '<center><img src=\"/images/maintenance.png\" />\r\n    <h3><span style=\"color:#e74c3c;\"><strong>Xin lỗi! Hiện tại website đang bảo trì!</strong></span></h3>\r\n    </center>', 'Website đang trong chế độ bảo trì!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_admin_user`
--

CREATE TABLE `demo_admin_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_admin_user`
--

INSERT INTO `demo_admin_user` (`id`, `username`, `password`, `name`, `email`, `avatar`, `remember_token`, `theme`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$EOdNyEtEvn9lkuyjFI64AuLd9hjMk4/fuYPUz/FF.p5KWhslzoQ5q', 'Administrator', 'demo@your-domain.com', '/admin/avatar/user.jpg', NULL, 'lightblue', '2021-08-09 13:51:17', '2021-08-10 14:19:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_admin_user_permission`
--

CREATE TABLE `demo_admin_user_permission` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_admin_user_store`
--

CREATE TABLE `demo_admin_user_store` (
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_api_connection`
--

CREATE TABLE `demo_api_connection` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apiconnection` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apikey` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` date DEFAULT NULL,
  `last_active` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_api_connection`
--

INSERT INTO `demo_api_connection` (`id`, `description`, `apiconnection`, `apikey`, `expire`, `last_active`, `status`) VALUES
(1, 'Demo api connection', 'appmobile', '611132d64dadf', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_attribute_group`
--

CREATE TABLE `demo_shop_attribute_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'radio,select,checkbox'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_attribute_group`
--

INSERT INTO `demo_shop_attribute_group` (`id`, `name`, `status`, `sort`, `type`) VALUES
(1, 'Color', 1, 1, 'radio'),
(2, 'Size', 1, 2, 'select');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_banner`
--

CREATE TABLE `demo_shop_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `click` int(11) NOT NULL DEFAULT 0,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_banner`
--

INSERT INTO `demo_shop_banner` (`id`, `title`, `image`, `url`, `target`, `html`, `status`, `sort`, `click`, `type`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 'Banner 1', '/data/banner/Main-banner-1-1903x600.jpg', NULL, '_self', '<h1 class=\"swiper-title-1\" data-caption-animate=\"fadeScale\" data-caption-delay=\"100\">Top-notch Furniture</h1><p class=\"biggest text-white-70\" data-caption-animate=\"fadeScale\" data-caption-delay=\"200\">Sofa Store provides the best furniture and accessories for homes and offices.</p><div class=\"button-wrap\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"300\"> <span class=\"button button-zachem-tak-delat button-white button-zakaria\"> Shop now</span> </div>', 1, 0, 1, 'banner', 1, NULL, '2021-08-10 16:31:00'),
(2, 'Banner 2', '/data/banner/Main-banner-3-1903x600.jpg', NULL, '_self', '<h1 class=\"swiper-title-1\" data-caption-animate=\"fadeScale\" data-caption-delay=\"100\">Top-notch Furniture</h1><p class=\"biggest text-white-70\" data-caption-animate=\"fadeScale\" data-caption-delay=\"200\">Sofa Store provides the best furniture and accessories for homes and offices.</p><div class=\"button-wrap\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"300\"> <span class=\"button button-zachem-tak-delat button-white button-zakaria\"> Shop now</span> </div>', 1, 0, 0, 'banner', 1, NULL, '2021-08-10 16:26:58'),
(3, 'Banner 3', '/data/banner/store-1.jpg', NULL, '_self', NULL, 1, 0, 0, 'breadcrumb', 1, NULL, '2021-08-11 01:56:49'),
(4, 'Banner 4', '/data/banner/Main-banner-1-1903x6001 - Copy.jpg', NULL, '_self', NULL, 1, 0, 0, 'banner-store', 1, NULL, '2021-08-11 01:54:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_brand`
--

CREATE TABLE `demo_shop_brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_brand`
--

INSERT INTO `demo_shop_brand` (`id`, `name`, `alias`, `image`, `url`, `status`, `sort`) VALUES
(1, 'Apple iPhone', 'Apple iPhone', '/data/brand/01-181x52.png', '', 1, 0),
(2, 'Vsmart', 'Vsmart', '/data/brand/02-181x52.png', '', 1, 0),
(3, 'Iphone qua sử dụng', 'Iphone qua sử dụng', '/data/brand/03-181x52.png', '', 1, 0),
(4, 'Samsung', 'Samsung', '/data/brand/04-181x52.png', '', 1, 0),
(5, 'Samsung qua sử dụng', 'Samsung qua sử dụng', '/data/brand/05-181x52.png', '', 1, 0),
(6, 'Xiaomi', 'Xiaomi', '/data/brand/06-181x52.png', '', 1, 0),
(7, 'Sony', 'Sony', '/data/brand/07-181x52.png', '', 1, 0),
(8, 'Nokia', 'Nokia', '/data/brand/08-181x52.png', '', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_category`
--

CREATE TABLE `demo_shop_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `top` int(11) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_category`
--

INSERT INTO `demo_shop_category` (`id`, `image`, `alias`, `parent`, `top`, `status`, `sort`) VALUES
(1, '/data/category/img-iphone.jpg', 'macbook', 0, 1, 1, 0),
(2, '/data/category/img-samsung.jpg', 'dienthoai', 0, 1, 1, 0),
(3, '/data/category/img-oppo.jpg', 'applewatch', 0, 1, 1, 0),
(4, '/data/category/img-xiaomi.jpg', 'ipad', 0, 1, 1, 0),
(5, '/data/category/img-vivo.jpg', 'phukien', 0, 1, 1, 0),
(9, '/data/category/img-realme.jpg', 'suachua', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_category_description`
--

CREATE TABLE `demo_shop_category_description` (
  `category_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_category_description`
--

INSERT INTO `demo_shop_category_description` (`category_id`, `lang`, `title`, `keyword`, `description`) VALUES
(1, 'en', 'Macbook', NULL, NULL),
(1, 'vi', 'Macbook', NULL, NULL),
(2, 'en', 'Smartphone', NULL, NULL),
(2, 'vi', 'Điện thoại', NULL, NULL),
(3, 'en', 'Apple Watch', NULL, NULL),
(3, 'vi', 'Apple Watch', NULL, NULL),
(4, 'en', 'IPad', NULL, NULL),
(4, 'vi', 'iPad', NULL, NULL),
(5, 'en', 'Accessory', NULL, NULL),
(5, 'vi', 'Phụ kiện', NULL, NULL),
(9, 'en', 'Repair', NULL, NULL),
(9, 'vi', 'Sữa chữa', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_country`
--

CREATE TABLE `demo_shop_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_country`
--

INSERT INTO `demo_shop_country` (`id`, `code`, `name`) VALUES
(1, 'AL', 'Albania'),
(2, 'DZ', 'Algeria'),
(3, 'DS', 'American Samoa'),
(4, 'AD', 'Andorra'),
(5, 'AO', 'Angola'),
(6, 'AI', 'Anguilla'),
(7, 'AQ', 'Antarctica'),
(8, 'AG', 'Antigua and Barbuda'),
(9, 'AR', 'Argentina'),
(10, 'AM', 'Armenia'),
(11, 'AW', 'Aruba'),
(12, 'AU', 'Australia'),
(13, 'AT', 'Austria'),
(14, 'AZ', 'Azerbaijan'),
(15, 'BS', 'Bahamas'),
(16, 'BH', 'Bahrain'),
(17, 'BD', 'Bangladesh'),
(18, 'BB', 'Barbados'),
(19, 'BY', 'Belarus'),
(20, 'BE', 'Belgium'),
(21, 'BZ', 'Belize'),
(22, 'BJ', 'Benin'),
(23, 'BM', 'Bermuda'),
(24, 'BT', 'Bhutan'),
(25, 'BO', 'Bolivia'),
(26, 'BA', 'Bosnia and Herzegovina'),
(27, 'BW', 'Botswana'),
(28, 'BV', 'Bouvet Island'),
(29, 'BR', 'Brazil'),
(30, 'IO', 'British Indian Ocean Territory'),
(31, 'BN', 'Brunei Darussalam'),
(32, 'BG', 'Bulgaria'),
(33, 'BF', 'Burkina Faso'),
(34, 'BI', 'Burundi'),
(35, 'KH', 'Cambodia'),
(36, 'CM', 'Cameroon'),
(37, 'CA', 'Canada'),
(38, 'CV', 'Cape Verde'),
(39, 'KY', 'Cayman Islands'),
(40, 'CF', 'Central African Republic'),
(41, 'TD', 'Chad'),
(42, 'CL', 'Chile'),
(43, 'CN', 'China'),
(44, 'CX', 'Christmas Island'),
(45, 'CC', 'Cocos (Keeling) Islands'),
(46, 'CO', 'Colombia'),
(47, 'KM', 'Comoros'),
(48, 'CG', 'Congo'),
(49, 'CK', 'Cook Islands'),
(50, 'CR', 'Costa Rica'),
(51, 'HR', 'Croatia (Hrvatska)'),
(52, 'CU', 'Cuba'),
(53, 'CY', 'Cyprus'),
(54, 'CZ', 'Czech Republic'),
(55, 'DK', 'Denmark'),
(56, 'DJ', 'Djibouti'),
(57, 'DM', 'Dominica'),
(58, 'DO', 'Dominican Republic'),
(59, 'TP', 'East Timor'),
(60, 'EC', 'Ecuador'),
(61, 'EG', 'Egypt'),
(62, 'SV', 'El Salvador'),
(63, 'GQ', 'Equatorial Guinea'),
(64, 'ER', 'Eritrea'),
(65, 'EE', 'Estonia'),
(66, 'ET', 'Ethiopia'),
(67, 'FK', 'Falkland Islands (Malvinas)'),
(68, 'FO', 'Faroe Islands'),
(69, 'FJ', 'Fiji'),
(70, 'FI', 'Finland'),
(71, 'FR', 'France'),
(72, 'FX', 'France, Metropolitan'),
(73, 'GF', 'French Guiana'),
(74, 'PF', 'French Polynesia'),
(75, 'TF', 'French Southern Territories'),
(76, 'GA', 'Gabon'),
(77, 'GM', 'Gambia'),
(78, 'GE', 'Georgia'),
(79, 'DE', 'Germany'),
(80, 'GH', 'Ghana'),
(81, 'GI', 'Gibraltar'),
(82, 'GK', 'Guernsey'),
(83, 'GR', 'Greece'),
(84, 'GL', 'Greenland'),
(85, 'GD', 'Grenada'),
(86, 'GP', 'Guadeloupe'),
(87, 'GU', 'Guam'),
(88, 'GT', 'Guatemala'),
(89, 'GN', 'Guinea'),
(90, 'GW', 'Guinea-Bissau'),
(91, 'GY', 'Guyana'),
(92, 'HT', 'Haiti'),
(93, 'HM', 'Heard and Mc Donald Islands'),
(94, 'HN', 'Honduras'),
(95, 'HK', 'Hong Kong'),
(96, 'HU', 'Hungary'),
(97, 'IS', 'Iceland'),
(98, 'IN', 'India'),
(99, 'IM', 'Isle of Man'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JE', 'Jersey'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'JO', 'Jordan'),
(111, 'KZ', 'Kazakhstan'),
(112, 'KE', 'Kenya'),
(113, 'KI', 'Kiribati'),
(114, 'KP', 'Korea,Democratic People\'s Republic of'),
(115, 'KR', 'Korea, Republic of'),
(116, 'XK', 'Kosovo'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Lao People\'s Democratic Republic'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libyan Arab Jamahiriya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'MH', 'Marshall Islands'),
(137, 'MQ', 'Martinique'),
(138, 'MR', 'Mauritania'),
(139, 'MU', 'Mauritius'),
(140, 'TY', 'Mayotte'),
(141, 'MX', 'Mexico'),
(142, 'FM', 'Micronesia, Federated States of'),
(143, 'MD', 'Moldova, Republic of'),
(144, 'MC', 'Monaco'),
(145, 'MN', 'Mongolia'),
(146, 'ME', 'Montenegro'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'NL', 'Netherlands'),
(155, 'AN', 'Netherlands Antilles'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestine'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua New Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russian Federation'),
(182, 'RW', 'Rwanda'),
(183, 'KN', 'Saint Kitts and Nevis'),
(184, 'LC', 'Saint Lucia'),
(185, 'VC', 'Saint Vincent and the Grenadines'),
(186, 'WS', 'Samoa'),
(187, 'SM', 'San Marino'),
(188, 'ST', 'Sao Tome and Principe'),
(189, 'SA', 'Saudi Arabia'),
(190, 'SN', 'Senegal'),
(191, 'RS', 'Serbia'),
(192, 'SC', 'Seychelles'),
(193, 'SL', 'Sierra Leone'),
(194, 'SG', 'Singapore'),
(195, 'SK', 'Slovakia'),
(196, 'SI', 'Slovenia'),
(197, 'SB', 'Solomon Islands'),
(198, 'SO', 'Somalia'),
(199, 'ZA', 'South Africa'),
(200, 'GS', 'South Georgia South Sandwich Islands'),
(201, 'SS', 'South Sudan'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_currency`
--

CREATE TABLE `demo_shop_currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  `precision` tinyint(4) NOT NULL DEFAULT 2,
  `symbol_first` tinyint(4) NOT NULL DEFAULT 0,
  `thousands` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_currency`
--

INSERT INTO `demo_shop_currency` (`id`, `name`, `code`, `symbol`, `exchange_rate`, `precision`, `symbol_first`, `thousands`, `status`, `sort`) VALUES
(1, 'USD Dola', 'USD', '$', 1.00, 0, 1, ',', 1, 0),
(2, 'VietNam Dong', 'VND', '₫', 20.00, 0, 0, ',', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_customer`
--

CREATE TABLE `demo_shop_customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL COMMENT '0:women, 1:men',
  `birthday` date DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `group` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_customer`
--

INSERT INTO `demo_shop_customer` (`id`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `email`, `sex`, `birthday`, `password`, `address_id`, `postcode`, `address1`, `address2`, `address3`, `company`, `country`, `phone`, `store_id`, `remember_token`, `status`, `group`, `email_verified_at`, `created_at`, `updated_at`, `provider`, `provider_id`) VALUES
(1, 'Naruto', 'Kun', NULL, NULL, 'test@test.com', NULL, NULL, '$2y$10$iBk4soLprbIGs9.KP5ir3ehd16TkCa8uHmPOqbp4gIDt0DhEYFz6m', 0, '70000', 'HCM', 'HCM city', NULL, 'KTC', 'VN', '0667151172', 1, NULL, 1, 1, NULL, '2021-08-09 13:51:18', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_customer_address`
--

CREATE TABLE `demo_shop_customer_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_customer_address`
--

INSERT INTO `demo_shop_customer_address` (`id`, `customer_id`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `postcode`, `address1`, `address2`, `address3`, `country`, `phone`) VALUES
(1, 1, 'Naruto', 'Kun', NULL, NULL, '70000', 'HCM', 'HCM city', NULL, 'VN', '0667151172');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_email_template`
--

CREATE TABLE `demo_shop_email_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_email_template`
--

INSERT INTO `demo_shop_email_template` (`id`, `name`, `group`, `text`, `store_id`, `status`) VALUES
(1, 'Reset password', 'forgot_password', '\r\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\r\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\r\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\r\n<tbody><tr>\r\n  <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n      <tbody><tr>\r\n      <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n          <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n          <tbody><tr>\r\n              <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n              <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\r\n              </td>\r\n          </tr>\r\n          </tbody>\r\n      </table>\r\n      </td>\r\n      </tr>\r\n  </tbody>\r\n  </table>\r\n  </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\r\n{{$note_sendmail}}\r\n</p>\r\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\r\n<tbody><tr>\r\n<td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n  <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\r\n  </td>\r\n  </tr>\r\n</tbody>\r\n</table>', 1, 1),
(2, 'Customer verification', 'customer_verify', '\r\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\r\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\r\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\r\n<tbody><tr>\r\n  <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n      <tbody><tr>\r\n      <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n          <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n          <tbody><tr>\r\n              <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n              <a href=\"{{$url_verify}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$button}}</a>\r\n              </td>\r\n          </tr>\r\n          </tbody>\r\n      </table>\r\n      </td>\r\n      </tr>\r\n  </tbody>\r\n  </table>\r\n  </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\r\n{{$note_sendmail}}\r\n</p>\r\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\r\n<tbody><tr>\r\n<td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n  <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\r\n  </td>\r\n  </tr>\r\n</tbody>\r\n</table>', 1, 1),
(3, 'Welcome new customer', 'welcome_customer', '\r\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\r\n<p style=\"text-align:center;\">Welcome to my site!</p>', 1, 1),
(4, 'Send form contact to admin', 'contact_to_admin', '\r\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n<tr>\r\n<td>\r\n<b>Name</b>: {{$name}}<br>\r\n<b>Email</b>: {{$email}}<br>\r\n<b>Phone</b>: {{$phone}}<br>\r\n</td>\r\n</tr>\r\n</table>\r\n<hr>\r\n<p style=\"text-align: center;\">Content:<br>\r\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n<tr>\r\n<td>{{$content}}</td>\r\n</tr>\r\n</table>', 1, 1),
(5, 'New order to admin', 'order_success_to_admin', '\r\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n  <tr>\r\n      <td>\r\n          <b>Order ID</b>: {{$orderID}}<br>\r\n          <b>Customer name</b>: {{$toname}}<br>\r\n          <b>Email</b>: {{$email}}<br>\r\n          <b>Address</b>: {{$address}}<br>\r\n          <b>Phone</b>: {{$phone}}<br>\r\n          <b>Order note</b>: {{$comment}}\r\n      </td>\r\n  </tr>\r\n</table>\r\n<hr>\r\n<p style=\"text-align: center;\">Order detail:<br>\r\n===================================<br></p>\r\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\r\n  {{$orderDetail}}\r\n  <tr>\r\n      <td colspan=\"2\"></td>\r\n      <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\r\n      <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\r\n  </tr>\r\n  <tr>\r\n      <td colspan=\"2\"></td>\r\n      <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\r\n      <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\r\n  </tr>\r\n  <tr>\r\n      <td colspan=\"2\"></td>\r\n      <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\r\n      <td colspan=\"2\" align=\"right\">{{$discount}}</td>\r\n  </tr>\r\n  <tr>\r\n      <td colspan=\"2\"></td>\r\n      <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\r\n      <td colspan=\"2\" align=\"right\">{{$total}}</td>\r\n  </tr>\r\n</table>', 1, 1),
(6, 'New order to customr', 'order_success_to_customer', '\r\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n<tr>\r\n  <td>\r\n      <b>Order ID</b>: {{$orderID}}<br>\r\n      <b>Customer name</b>: {{$toname}}<br>\r\n      <b>Address</b>: {{$address}}<br>\r\n      <b>Phone</b>: {{$phone}}<br>\r\n      <b>Order note</b>: {{$comment}}\r\n  </td>\r\n</tr>\r\n</table>\r\n<hr>\r\n<p style=\"text-align: center;\">Order detail:<br>\r\n===================================<br></p>\r\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\r\n{{$orderDetail}}\r\n<tr>\r\n  <td colspan=\"2\"></td>\r\n  <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\r\n  <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\r\n</tr>\r\n<tr>\r\n  <td colspan=\"2\"></td>\r\n  <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\r\n  <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\r\n</tr>\r\n<tr>\r\n  <td colspan=\"2\"></td>\r\n  <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\r\n  <td colspan=\"2\" align=\"right\">{{$discount}}</td>\r\n</tr>\r\n<tr>\r\n  <td colspan=\"2\"></td>\r\n  <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\r\n  <td colspan=\"2\" align=\"right\">{{$total}}</td>\r\n</tr>\r\n</table>', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_language`
--

CREATE TABLE `demo_shop_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) DEFAULT 0 COMMENT 'Layout RTL',
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_language`
--

INSERT INTO `demo_shop_language` (`id`, `name`, `code`, `icon`, `status`, `rtl`, `sort`) VALUES
(1, 'English', 'en', '/data/language/flag_uk.png', 1, 0, 1),
(2, 'Tiếng Việt', 'vi', '/data/language/flag_vn.png', 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_layout_page`
--

CREATE TABLE `demo_shop_layout_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_layout_page`
--

INSERT INTO `demo_shop_layout_page` (`id`, `key`, `name`) VALUES
(1, 'home', 'lang::layout.page_position.home'),
(2, 'shop_home', 'lang::layout.page_position.shop_home'),
(3, 'product_list', 'lang::layout.page_position.product_list'),
(4, 'product_detail', 'lang::layout.page_position.product_detail'),
(5, 'shop_cart', 'lang::layout.page_position.shop_cart'),
(6, 'item_list', 'lang::layout.page_position.item_list'),
(7, 'item_detail', 'lang::layout.page_position.item_detail'),
(8, 'news_list', 'lang::layout.page_position.news_list'),
(9, 'news_detail', 'lang::layout.page_position.news_detail'),
(10, 'shop_auth', 'lang::layout.page_position.shop_auth'),
(11, 'shop_profile', 'lang::layout.page_position.shop_profile'),
(12, 'shop_page', 'lang::layout.page_position.shop_page'),
(13, 'shop_contact', 'lang::layout.page_position.shop_contact'),
(14, 'content_list', 'lang::layout.page_position.content_list'),
(15, 'content_detail', 'lang::layout.page_position.content_detail'),
(16, 'store_home', 'lang::layout.page_position.store_home'),
(17, 'store_product_list', 'lang::layout.page_position.store_product_list');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_layout_position`
--

CREATE TABLE `demo_shop_layout_position` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_layout_position`
--

INSERT INTO `demo_shop_layout_position` (`id`, `key`, `name`) VALUES
(1, 'meta', 'lang::layout.page_block.meta'),
(2, 'header', 'lang::layout.page_block.header'),
(3, 'top', 'lang::layout.page_block.top'),
(4, 'bottom', 'lang::layout.page_block.bottom'),
(5, 'left', 'lang::layout.page_block.left'),
(6, 'right', 'lang::layout.page_block.right'),
(7, 'banner_top', 'lang::layout.page_block.banner_top');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_length`
--

CREATE TABLE `demo_shop_length` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_length`
--

INSERT INTO `demo_shop_length` (`id`, `name`, `description`) VALUES
(1, 'mm', 'Millimeter'),
(2, 'cm', 'Centimeter'),
(3, 'm', 'Meter'),
(4, 'in', 'Inch');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_link`
--

CREATE TABLE `demo_shop_link` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_link`
--

INSERT INTO `demo_shop_link` (`id`, `name`, `url`, `target`, `group`, `module`, `status`, `sort`, `store_id`) VALUES
(1, 'lang::front.contact', 'route::contact', '_self', 'menu', '', 1, 3, 1),
(2, 'lang::front.about', 'route::page.detail::about', '_self', 'menu', '', 1, 4, 1),
(3, 'lang::front.my_profile', 'route::login', '_self', 'footer', '', 1, 5, 1),
(4, 'lang::front.compare_page', 'route::compare', '_self', 'footer', '', 1, 4, 1),
(5, 'lang::front.wishlist_page', 'route::wishlist', '_self', 'footer', '', 1, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_news`
--

CREATE TABLE `demo_shop_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_news`
--

INSERT INTO `demo_shop_news` (`id`, `image`, `alias`, `sort`, `status`, `store_id`, `created_at`, `updated_at`) VALUES
(1, '/data/content/blog-1.jpg', 'demo-alias-blog-1', 0, 1, 1, '2021-08-08 17:00:00', NULL),
(2, '/data/content/blog-2.jpg', 'demo-alias-blog-2', 0, 1, 1, '2021-08-08 17:00:00', NULL),
(3, '/data/content/blog-3.jpg', 'demo-alias-blog-3', 0, 1, 1, '2021-08-08 17:00:00', NULL),
(4, '/data/content/blog-4.jpg', 'demo-alias-blog-4', 0, 1, 1, '2021-08-08 17:00:00', NULL),
(5, '/data/content/blog-5.jpg', 'demo-alias-blog-5', 0, 1, 1, '2021-08-08 17:00:00', NULL),
(6, '/data/content/blog-6.jpg', 'demo-alias-blog-6', 0, 1, 1, '2021-08-08 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_news_description`
--

CREATE TABLE `demo_shop_news_description` (
  `news_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_news_description`
--

INSERT INTO `demo_shop_news_description` (`news_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(1, 'en', 'Easy Polo Black Edition 1', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(1, 'vi', 'Easy Polo Black Edition 1', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'en', 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'vi', 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(3, 'en', 'Easy Polo Black Edition 3', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(3, 'vi', 'Easy Polo Black Edition 3', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(4, 'en', 'Easy Polo Black Edition 4', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(4, 'vi', 'Easy Polo Black Edition 4', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(5, 'en', 'Easy Polo Black Edition 5', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(5, 'vi', 'Easy Polo Black Edition 5', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(6, 'en', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(6, 'vi', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_order`
--

CREATE TABLE `demo_shop_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` int(11) DEFAULT 0,
  `shipping` int(11) DEFAULT 0,
  `discount` int(11) DEFAULT 0,
  `payment_status` int(11) NOT NULL DEFAULT 1,
  `shipping_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) DEFAULT 0,
  `total` int(11) DEFAULT 0,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `received` int(11) DEFAULT 0,
  `balance` int(11) DEFAULT 0,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_order`
--

INSERT INTO `demo_shop_order` (`id`, `customer_id`, `domain`, `subtotal`, `shipping`, `discount`, `payment_status`, `shipping_status`, `status`, `tax`, `total`, `currency`, `exchange_rate`, `received`, `balance`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `address1`, `address2`, `address3`, `country`, `company`, `postcode`, `phone`, `email`, `comment`, `payment_method`, `shipping_method`, `user_agent`, `ip`, `transaction`, `created_at`, `updated_at`) VALUES
(1, 0, 'http://localhost/s-cart/public', 34495070, 0, 0, 1, 1, 1, 3449507, 37944577, 'USD', 1.00, 0, 37944577, 'Tu', 'Tran', NULL, NULL, 'Vinh', 'Vinh', NULL, 'VN', NULL, NULL, '(+84) 386297753', 'dat@gmail.com', NULL, 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36', '::1', NULL, '2021-08-11 09:36:47', '2021-08-11 09:36:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_order_detail`
--

CREATE TABLE `demo_shop_order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `total_price` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) NOT NULL DEFAULT 0,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_order_detail`
--

INSERT INTO `demo_shop_order_detail` (`id`, `order_id`, `product_id`, `name`, `price`, `qty`, `store_id`, `total_price`, `tax`, `sku`, `currency`, `exchange_rate`, `attribute`, `created_at`, `updated_at`) VALUES
(1, 1, 17, 'iPhone 12 Pro Max 512GB', 15070, 1, 1, 15070, 1507, 'ALOKK1-AY', 'USD', 1.00, '{&quot;1&quot;:&quot;Blue__50&quot;,&quot;2&quot;:&quot;S__20&quot;}', '2021-08-11 09:36:47', '2021-08-11 09:36:47'),
(2, 1, 14, 'iPhone Xs Mới CPO 64GB Nguyên Seal chưa kích hoạt', 13990000, 1, 1, 13990000, 1399000, 'LCD12864-3D', 'USD', 1.00, '[]', '2021-08-11 09:36:47', '2021-08-11 09:36:47'),
(3, 1, 13, 'iPhone 11 Pro Max 64GB Quốc tế Mới Trôi BH chưa kích hoạt', 20490000, 1, 1, 20490000, 2049000, '3D-GOLD175', 'USD', 1.00, '[]', '2021-08-11 09:36:47', '2021-08-11 09:36:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_order_history`
--

CREATE TABLE `demo_shop_order_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `add_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_order_history`
--

INSERT INTO `demo_shop_order_history` (`id`, `order_id`, `content`, `admin_id`, `customer_id`, `order_status_id`, `add_date`) VALUES
(1, 1, 'New order', 1, 0, 1, '2021-08-11 16:36:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_order_status`
--

CREATE TABLE `demo_shop_order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_order_status`
--

INSERT INTO `demo_shop_order_status` (`id`, `name`) VALUES
(1, 'New'),
(2, 'Processing'),
(3, 'Hold'),
(4, 'Canceled'),
(5, 'Done'),
(6, 'Failed');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_order_total`
--

CREATE TABLE `demo_shop_order_total` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `text` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_order_total`
--

INSERT INTO `demo_shop_order_total` (`id`, `order_id`, `title`, `code`, `value`, `text`, `sort`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tiền hàng', 'subtotal', 34495070, '$34,495,070', 1, '2021-08-11 09:36:47', NULL),
(2, 1, 'Thuế', 'tax', 3449507, '$3,449,507', 2, '2021-08-11 09:36:47', NULL),
(3, 1, 'Vận chuyển cơ bản', 'shipping', 0, '$0', 10, '2021-08-11 09:36:47', NULL),
(4, 1, 'Giảm giá', 'discount', 0, '0', 20, '2021-08-11 09:36:47', NULL),
(5, 1, 'Tổng tiền', 'total', 37944577, '$37,944,577', 100, '2021-08-11 09:36:47', NULL),
(6, 1, 'Đã nhận', 'received', 0, '0', 200, '2021-08-11 09:36:47', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_page`
--

CREATE TABLE `demo_shop_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_page`
--

INSERT INTO `demo_shop_page` (`id`, `image`, `alias`, `status`, `store_id`) VALUES
(1, NULL, 'about', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_page_description`
--

CREATE TABLE `demo_shop_page_description` (
  `page_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_page_description`
--

INSERT INTO `demo_shop_page_description` (`page_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(1, 'en', 'About', NULL, NULL, '<p><strong>I. Th&ocirc;ng tin chung</strong></p>\r\n\r\n<p>Th&ocirc;ng tin chung về cửa h&agrave;ng</p>\r\n\r\n<p>&ndash; Địa chỉ: 27 H&agrave;m Nghi &ndash; Quận Thanh Kh&ecirc; &ndash; TP.Đ&agrave; Nẵng<br />\r\n&ndash; Thời gian th&agrave;nh lập th&aacute;ng 7/2018<br />\r\n&ndash; Địa chỉ website:&nbsp;<a data-lynx-mode=\"origin\" data-wpel-link=\"external\" href=\"https://l.facebook.com/l.php?u=http%3A%2F%2Fwww.exphone.vn%2F&amp;h=AT2Fl2Z_mYWtUBJe8klqxk0GsW_7ctMAqbiPQuNsds4db0oVGw1U3U_Fi_lgKUpeLBBJBRGSvbONKFUW0WOEliw1giOgJTeOuu7sbBJ01-7BZNwkdpHvaXgAwZnYuzOuWUPsMKb4gXI\" rel=\"noopener nofollow external noreferrer\" target=\"_blank\">www.exphone.vn</a>&nbsp;&ndash; Hotline: 0918.503.543<br />\r\n&ndash; Giấy chứng nhận đăng k&iacute; hộ kinh doanh: Số 32B8017064<br />\r\n&ndash; Đăng k&iacute; lần đầu: 21/7/2018<br />\r\n&ndash; Nơi cấp: Uỷ Ban Nh&acirc;n D&acirc;n Quận Thanh Kh&ecirc;, Ph&ograve;ng T&agrave;i Ch&iacute;nh &amp; Kế Hoạch</p>\r\n\r\n<p><strong>II. Giới thiệu về cửa h&agrave;ng</strong></p>\r\n\r\n<p>Được th&agrave;nh lập v&agrave;o giữa năm 2018, cửa h&agrave;ng điện thoại ExPhone ch&uacute;ng t&ocirc;i chuy&ecirc;n cung cấp sản phẩm smartphone, tablet Apple v&agrave; Android đi k&egrave;m đ&oacute; l&agrave; sản phẩm phụ kiện, đồ chơi c&ocirc;ng nghệ , dịch vụ sửa chữa chuy&ecirc;n nghiệp. Tuy l&agrave; một thương hiệu mới nhưng ch&uacute;ng t&ocirc;i rất tự tin với đội ngũ nh&acirc;n sự l&agrave; những nh&acirc;n vi&ecirc;n ưu t&uacute; đ&atilde; c&oacute; nhiều năm kinh nghiệm hoạt động v&agrave; giữ nhiều vị tr&iacute; quan trọng trong c&aacute;c hệ thống b&aacute;n lẻ lớn tại Việt Nam.</p>\r\n\r\n<p><img alt=\"\" height=\"440\" loading=\"lazy\" sizes=\"(max-width: 660px) 100vw, 660px\" src=\"https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38284425_286620045437958_2251146020878548992_o-1024x683.jpg\" srcset=\"https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38284425_286620045437958_2251146020878548992_o-1024x683.jpg 1024w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38284425_286620045437958_2251146020878548992_o-300x200.jpg 300w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38284425_286620045437958_2251146020878548992_o-800x533.jpg 800w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38284425_286620045437958_2251146020878548992_o-768x512.jpg 768w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38284425_286620045437958_2251146020878548992_o.jpg 2048w\" width=\"660\" /></p>\r\n\r\n<p>C&aacute;i t&ecirc;n ExPhone ẩn chưa nhiều &yacute; nghĩa v&agrave; th&ocirc;ng điệp m&agrave; ch&uacute;ng t&ocirc;i muốn gửi đến cho qu&yacute; kh&aacute;ch h&agrave;ng, đơn cử như Ex của Excellent c&oacute; nghĩa l&agrave; &ldquo;đến với ch&uacute;ng t&ocirc;i bạn c&oacute; thể t&igrave;m được những chiếc điện thoại ho&agrave;n hảo nhất&rdquo;. Hay như Excited l&agrave; cảm thấy phấn kh&iacute;ch, vui sướng. C&ocirc; đọng từ những &yacute; nghĩa đ&oacute;, ch&uacute;ng t&ocirc;i đ&atilde; đặt slogan &ldquo; Phục vụ tận t&acirc;m, trao tay cảm x&uacute;c&rdquo;, đến với ExPhone bạn sẽ kh&ocirc;ng chỉ t&igrave;m thấy sự h&agrave;i l&ograve;ng ở sản phẩm tuyệt vời m&agrave; sẽ c&ograve;n nhận được cảm gi&aacute;c vui vẻ, an t&acirc;m.</p>\r\n\r\n<p><img alt=\"\" height=\"440\" loading=\"lazy\" sizes=\"(max-width: 660px) 100vw, 660px\" src=\"https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38448980_1845532828826724_147515569518673920_o-1024x683.jpg\" srcset=\"https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38448980_1845532828826724_147515569518673920_o-1024x683.jpg 1024w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38448980_1845532828826724_147515569518673920_o-300x200.jpg 300w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38448980_1845532828826724_147515569518673920_o-800x533.jpg 800w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38448980_1845532828826724_147515569518673920_o-768x512.jpg 768w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38448980_1845532828826724_147515569518673920_o.jpg 2048w\" width=\"660\" /></p>'),
(1, 'vi', 'Giới thiệu', NULL, NULL, '<p><strong>I. Th&ocirc;ng tin chung</strong></p>\r\n\r\n<p>Th&ocirc;ng tin chung về cửa h&agrave;ng</p>\r\n\r\n<p>&ndash; Địa chỉ: 27 H&agrave;m Nghi &ndash; Quận Thanh Kh&ecirc; &ndash; TP.Đ&agrave; Nẵng<br />\r\n&ndash; Thời gian th&agrave;nh lập th&aacute;ng 7/2018<br />\r\n&ndash; Địa chỉ website:&nbsp;<a data-lynx-mode=\"origin\" data-wpel-link=\"external\" href=\"https://l.facebook.com/l.php?u=http%3A%2F%2Fwww.exphone.vn%2F&amp;h=AT2Fl2Z_mYWtUBJe8klqxk0GsW_7ctMAqbiPQuNsds4db0oVGw1U3U_Fi_lgKUpeLBBJBRGSvbONKFUW0WOEliw1giOgJTeOuu7sbBJ01-7BZNwkdpHvaXgAwZnYuzOuWUPsMKb4gXI\" rel=\"noopener nofollow external noreferrer\" target=\"_blank\">www.exphone.vn</a>&nbsp;&ndash; Hotline: 0918.503.543<br />\r\n&ndash; Giấy chứng nhận đăng k&iacute; hộ kinh doanh: Số 32B8017064<br />\r\n&ndash; Đăng k&iacute; lần đầu: 21/7/2018<br />\r\n&ndash; Nơi cấp: Uỷ Ban Nh&acirc;n D&acirc;n Quận Thanh Kh&ecirc;, Ph&ograve;ng T&agrave;i Ch&iacute;nh &amp; Kế Hoạch</p>\r\n\r\n<p><strong>II. Giới thiệu về cửa h&agrave;ng</strong></p>\r\n\r\n<p>Được th&agrave;nh lập v&agrave;o giữa năm 2018, cửa h&agrave;ng điện thoại ExPhone ch&uacute;ng t&ocirc;i chuy&ecirc;n cung cấp sản phẩm smartphone, tablet Apple v&agrave; Android đi k&egrave;m đ&oacute; l&agrave; sản phẩm phụ kiện, đồ chơi c&ocirc;ng nghệ , dịch vụ sửa chữa chuy&ecirc;n nghiệp. Tuy l&agrave; một thương hiệu mới nhưng ch&uacute;ng t&ocirc;i rất tự tin với đội ngũ nh&acirc;n sự l&agrave; những nh&acirc;n vi&ecirc;n ưu t&uacute; đ&atilde; c&oacute; nhiều năm kinh nghiệm hoạt động v&agrave; giữ nhiều vị tr&iacute; quan trọng trong c&aacute;c hệ thống b&aacute;n lẻ lớn tại Việt Nam.</p>\r\n\r\n<p><img alt=\"\" height=\"440\" loading=\"lazy\" sizes=\"(max-width: 660px) 100vw, 660px\" src=\"https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38284425_286620045437958_2251146020878548992_o-1024x683.jpg\" srcset=\"https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38284425_286620045437958_2251146020878548992_o-1024x683.jpg 1024w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38284425_286620045437958_2251146020878548992_o-300x200.jpg 300w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38284425_286620045437958_2251146020878548992_o-800x533.jpg 800w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38284425_286620045437958_2251146020878548992_o-768x512.jpg 768w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38284425_286620045437958_2251146020878548992_o.jpg 2048w\" width=\"660\" /></p>\r\n\r\n<p>C&aacute;i t&ecirc;n ExPhone ẩn chưa nhiều &yacute; nghĩa v&agrave; th&ocirc;ng điệp m&agrave; ch&uacute;ng t&ocirc;i muốn gửi đến cho qu&yacute; kh&aacute;ch h&agrave;ng, đơn cử như Ex của Excellent c&oacute; nghĩa l&agrave; &ldquo;đến với ch&uacute;ng t&ocirc;i bạn c&oacute; thể t&igrave;m được những chiếc điện thoại ho&agrave;n hảo nhất&rdquo;. Hay như Excited l&agrave; cảm thấy phấn kh&iacute;ch, vui sướng. C&ocirc; đọng từ những &yacute; nghĩa đ&oacute;, ch&uacute;ng t&ocirc;i đ&atilde; đặt slogan &ldquo; Phục vụ tận t&acirc;m, trao tay cảm x&uacute;c&rdquo;, đến với ExPhone bạn sẽ kh&ocirc;ng chỉ t&igrave;m thấy sự h&agrave;i l&ograve;ng ở sản phẩm tuyệt vời m&agrave; sẽ c&ograve;n nhận được cảm gi&aacute;c vui vẻ, an t&acirc;m.</p>\r\n\r\n<p><img alt=\"\" height=\"440\" loading=\"lazy\" sizes=\"(max-width: 660px) 100vw, 660px\" src=\"https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38448980_1845532828826724_147515569518673920_o-1024x683.jpg\" srcset=\"https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38448980_1845532828826724_147515569518673920_o-1024x683.jpg 1024w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38448980_1845532828826724_147515569518673920_o-300x200.jpg 300w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38448980_1845532828826724_147515569518673920_o-800x533.jpg 800w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38448980_1845532828826724_147515569518673920_o-768x512.jpg 768w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2018/08/38448980_1845532828826724_147515569518673920_o.jpg 2048w\" width=\"660\" /></p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_password_resets`
--

CREATE TABLE `demo_shop_password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_payment_status`
--

CREATE TABLE `demo_shop_payment_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_payment_status`
--

INSERT INTO `demo_shop_payment_status` (`id`, `name`) VALUES
(1, 'Unpaid'),
(2, 'Partial payment'),
(3, 'Paid'),
(4, 'Refurn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_product`
--

CREATE TABLE `demo_shop_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'upc code',
  `ean` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ean code',
  `jan` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'jan code',
  `isbn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'isbn code',
  `mpn` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mpn code',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT 0,
  `supplier_id` int(11) DEFAULT 0,
  `price` int(11) DEFAULT 0,
  `cost` int(11) DEFAULT 0,
  `stock` int(11) DEFAULT 0,
  `sold` int(11) DEFAULT 0,
  `minimum` int(11) DEFAULT 0,
  `weight_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT 0,
  `length_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` int(11) DEFAULT 0,
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  `kind` tinyint(4) DEFAULT 0 COMMENT '0:single, 1:bundle, 2:group',
  `property` tinyint(4) DEFAULT 0 COMMENT '0:physical, 1:download, 2:only view, 3: Service',
  `tax_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '0:No-tax, auto: Use tax default',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_store_id` int(11) DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `date_lastview` datetime DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_product`
--

INSERT INTO `demo_shop_product` (`id`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `image`, `brand_id`, `supplier_id`, `price`, `cost`, `stock`, `sold`, `minimum`, `weight_class`, `weight`, `length_class`, `length`, `width`, `height`, `kind`, `property`, `tax_id`, `status`, `sort`, `view`, `alias`, `category_store_id`, `store_id`, `date_lastview`, `date_available`, `created_at`, `updated_at`) VALUES
(1, 'ABCZZ', NULL, NULL, NULL, NULL, NULL, '/data/product/product-1.png', 1, 1, 15000, 10000, 99, 1, 0, '', 0, '', 0, 0, 0, 0, 0, 'auto', 0, 0, 2, 'demo-alias-name-product-1', 0, 1, '2021-08-11 08:58:07', '2021-09-09', NULL, '2021-08-11 09:32:31'),
(2, 'LEDFAN1', NULL, NULL, NULL, NULL, NULL, '/data/product/product-2.png', 1, 1, 15000, 10000, 100, 0, 0, '', 0, '', 0, 0, 0, 0, 0, 'auto', 0, 0, 0, 'demo-alias-name-product-2', 0, 1, NULL, NULL, NULL, '2021-08-11 09:32:25'),
(3, 'CLOCKFAN1', NULL, NULL, NULL, NULL, NULL, '/data/product/product-3.png', 2, 1, 15000, 10000, 100, 0, 0, '', 0, '', 0, 0, 0, 0, 0, 'auto', 0, 0, 0, 'demo-alias-name-product-3', 0, 1, NULL, NULL, NULL, '2021-08-11 09:32:19'),
(4, 'CLOCKFAN2', NULL, NULL, NULL, NULL, NULL, '/data/product/newproduct-4.png', 0, 1, 1000000, 500000, 100, 0, 10, '', 0, '', 0, 0, 0, 0, 0, 'auto', 1, 0, 0, 'demo-alias-name-product-4', 0, 1, NULL, NULL, NULL, '2021-08-11 13:00:09'),
(5, 'CLOCKFAN3', NULL, NULL, NULL, NULL, NULL, '/data/product/newproduct-5.png', 0, 1, 3090000, 2500000, 100, 0, 0, '', 0, '', 0, 0, 0, 0, 0, 'auto', 1, 0, 0, 'demo-alias-name-product-5', 0, 1, NULL, NULL, NULL, '2021-08-11 12:59:53'),
(6, 'TMC2208', NULL, NULL, NULL, NULL, NULL, '/data/product/newproduct-6.png', 0, 1, 8690000, 8000000, 100, 0, 0, '', 0, '', 0, 0, 0, 0, 0, 'auto', 1, 0, 0, 'demo-alias-name-product-6', 0, 1, NULL, NULL, NULL, '2021-08-11 12:59:39'),
(7, 'FILAMENT', NULL, NULL, NULL, NULL, NULL, '/data/product/newproduct-7.png', 0, 1, 23490000, 23000000, 100, 0, 0, '', 0, '', 0, 0, 0, 0, 0, 'auto', 1, 0, 0, 'demo-alias-name-product-7', 0, 1, NULL, NULL, NULL, '2021-08-11 12:59:24'),
(8, 'A4988', NULL, NULL, NULL, NULL, NULL, '/data/product/newproduct-8.png', 0, 1, 25490000, 25000000, 100, 0, 0, '', 0, '', 0, 0, 0, 0, 0, 'auto', 1, 0, 0, 'demo-alias-name-product-8', 0, 1, NULL, NULL, NULL, '2021-08-11 12:59:10'),
(9, 'ANYCUBIC-P', NULL, NULL, NULL, NULL, NULL, '/data/product/newproduct-9.png', 5, 1, 8990000, 8000000, 86, 0, 0, '', 0, '', 0, 0, 0, 0, 0, 'auto', 1, 0, 2, 'demo-alias-name-product-9', 0, 1, '2021-08-11 09:16:28', NULL, NULL, '2021-08-11 12:58:57'),
(10, '3DHLFD-P', NULL, NULL, NULL, NULL, NULL, '/data/product/newproduct-10.png', 4, 1, 15000, 10000, 100, 0, 0, '', 0, '', 0, 0, 0, 0, 0, 'auto', 1, 0, 1, 'demo-alias-name-product-10', 0, 1, '2021-08-11 19:50:00', NULL, NULL, '2021-08-11 12:58:22'),
(11, 'SS495A', NULL, NULL, NULL, NULL, NULL, '/data/product/newproduct-11.png', 3, 1, 8990000, 8000000, 45, 0, 0, '', 0, '', 0, 0, 0, 0, 0, 'auto', 1, 0, 0, 'demo-alias-name-product-11', 0, 1, NULL, NULL, NULL, '2021-08-11 12:58:08'),
(12, '3D-CARBON175', NULL, NULL, NULL, NULL, NULL, '/data/product/newproduct-12.png', 1, 1, 13990000, 13000000, 100, 0, 5, '', 0, '', 0, 0, 0, 0, 0, 'auto', 1, 0, 2, 'demo-alias-name-product-12', 0, 1, '2021-08-09 22:47:56', NULL, NULL, '2021-08-11 12:57:55'),
(13, '3D-GOLD175', NULL, NULL, NULL, NULL, NULL, '/data/product/newproduct-13.png', 1, 1, 21990000, 20000000, -1, 1, 0, '', 0, '', 0, 0, 0, 0, 0, 'auto', 1, 0, 3, 'demo-alias-name-product-13', 0, 1, '2021-08-11 16:35:32', NULL, NULL, '2021-08-11 12:57:33'),
(14, 'LCD12864-3D', NULL, NULL, NULL, NULL, NULL, '/data/product/newproduct-14.png', 1, 1, 13990000, 13000000, 67, 1, 0, '', 0, '', 0, 0, 0, 0, 0, 'auto', 1, 0, 4, 'demo-alias-name-product-14', 0, 1, '2021-08-11 19:50:07', NULL, NULL, '2021-08-11 12:55:35'),
(15, 'LCD2004-3D', NULL, NULL, NULL, NULL, NULL, '/data/product/product-15.png', 3, 1, 15000, 0, 100, 0, 10, '', 0, '', 0, 0, 0, 1, 0, 'auto', 0, 0, 1, 'demo-alias-name-product-15', 0, 1, '2021-08-11 08:57:36', NULL, NULL, '2021-08-11 08:48:14'),
(16, 'RAMPS15-3D', NULL, NULL, NULL, NULL, NULL, '/data/product/product-16.png', 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 0, 0, 2, 0, '0', 0, 0, 7, 'demo-alias-name-product-16', 0, 1, '2021-08-11 08:57:54', NULL, NULL, '2021-08-11 08:48:09'),
(17, 'ALOKK1-AY', NULL, NULL, NULL, NULL, NULL, '/data/product/product-17.png', 1, 1, 11290000, 10000000, 64, 1, 1, '', 0, '', 0, 0, 0, 0, 0, 'auto', 1, 0, 16, 'demo-alias-name-product-17', 0, 1, '2021-08-11 19:49:48', NULL, NULL, '2021-08-11 12:49:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_product_attribute`
--

CREATE TABLE `demo_shop_product_attribute` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `add_price` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_product_build`
--

CREATE TABLE `demo_shop_product_build` (
  `build_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_product_build`
--

INSERT INTO `demo_shop_product_build` (`build_id`, `product_id`, `quantity`) VALUES
(15, 6, 1),
(15, 7, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_product_category`
--

CREATE TABLE `demo_shop_product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_product_category`
--

INSERT INTO `demo_shop_product_category` (`product_id`, `category_id`) VALUES
(4, 9),
(5, 5),
(6, 3),
(7, 4),
(8, 1),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(16, 9),
(17, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_product_description`
--

CREATE TABLE `demo_shop_product_description` (
  `product_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_product_description`
--

INSERT INTO `demo_shop_product_description` (`product_id`, `lang`, `name`, `keyword`, `description`, `content`) VALUES
(1, 'en', 'Easy Polo Black Edition 1', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(1, 'vi', 'Easy Polo Black Edition 1', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'en', 'Easy Polo Black Edition 2', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'vi', 'Easy Polo Black Edition 2', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(3, 'en', 'Easy Polo Black Edition 3', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(3, 'vi', 'Easy Polo Black Edition 3', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(4, 'en', 'IPhone XS glass replacement service', NULL, NULL, '<p>&diams; 100% genuine glass.<br />\r\n<br />\r\n&diams; The replacement glass is transparent, beautiful as the original.</p>'),
(4, 'vi', 'Dịch vụ thay kính IPhone XS', NULL, NULL, '<p>&diams; Mặt k&iacute;nh ch&iacute;nh h&atilde;ng 100%.</p>\r\n\r\n<p>&diams; K&iacute;nh thay c&oacute; độ trong suốt, đẹp chuẩn như ban đầu.</p>'),
(5, 'en', 'Genuine Samsung Galaxy Buds Live Bluetooth Headset', NULL, NULL, '<p>Outstanding Features<br />\r\nErgonomic earphone design, fits snugly in the ear, comfortable to wear<br />\r\nImpressive charging case design, with a glossy surface, fits comfortably in the hand<br />\r\nTrendy colors, enhance your personal style<br />\r\nBuilt-in microphone helps users answer calls easily<br />\r\nNoise cancellation technology eliminates background noise<br />\r\nAKG sound enjoy quality music with deep bass<br />\r\nCharging box capacity up to 21 hours, comfortable experience</p>'),
(5, 'vi', 'Tai nghe Bluetooth Samsung Galaxy Buds Live Chính Hãng', NULL, NULL, '<h2>Đặc điểm nổi bật</h2>\r\n\r\n<ul>\r\n	<li>Thiết kế&nbsp;tai nghe c&ocirc;ng th&aacute;i học, vừa vặn &ocirc;m kh&iacute;t tai, &ecirc;m &aacute;i khi mang</li>\r\n	<li>Thiết kế hộp sạc ấn tượng, với bề mặt b&oacute;ng bẩy, vừa vặn cầm nắm</li>\r\n	<li>M&agrave;u sắc thời thượng, n&acirc;ng tầm phong c&aacute;ch c&aacute; nh&acirc;n</li>\r\n	<li>T&iacute;ch hợp micro gi&uacute;p người d&ugrave;ng trả lời cuộc gọi dễ d&agrave;ng</li>\r\n	<li>C&ocirc;ng nghệ khử tiếng ồn gi&uacute;p loại bỏ tạp &acirc;m xung quanh</li>\r\n	<li>&Acirc;m thanh AKG tận hưởng &acirc;m nhạc chất lượng với &acirc;m trầm s&acirc;u</li>\r\n	<li>Dung lượng hộp sạc l&ecirc;n đến 21 giờ, thoải m&aacute;i trải nghiệm</li>\r\n</ul>'),
(6, 'en', 'Apple Watch SE 40mm Genuine GPS VN/A', NULL, NULL, '<p>Apple Watch SE 40mm Genuine GPS VN/A . New machine with unactivated seal, genuine 12 months warranty at authorized Apple insurance centers in Vietnam</p>'),
(6, 'vi', 'Apple Watch SE 40mm GPS chính hãng VN/A', NULL, NULL, '<p><strong>Apple Watch SE 40mm GPS ch&iacute;nh h&atilde;ng VN/A</strong>&nbsp;. M&aacute;y mới nguy&ecirc;n seal chưa k&iacute;ch hoạt , được bảo h&agrave;nh 12 th&aacute;ng ch&iacute;nh h&atilde;ng tại c&aacute;c TTBH uỷ quyền của Apple tại Việt Nam<br />\r\n&nbsp;</p>\r\n\r\n<h2><strong>Apple Watch SE 40mm GPS: Rẻ c&oacute; n&ecirc;n n&acirc;ng cấp?</strong></h2>\r\n\r\n<p><img alt=\"\" height=\"420\" loading=\"lazy\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://jnslhxfsp2obj.vcdn.cloud/uploads/2020/10/apple-watch-se-1.jpeg\" srcset=\"https://jnslhxfsp2obj.vcdn.cloud/uploads/2020/10/apple-watch-se-1.jpeg 800w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2020/10/apple-watch-se-1-300x158.jpeg 300w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2020/10/apple-watch-se-1-768x403.jpeg 768w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2020/10/apple-watch-se-1-24x13.jpeg 24w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2020/10/apple-watch-se-1-36x19.jpeg 36w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2020/10/apple-watch-se-1-48x25.jpeg 48w\" width=\"800\" /></p>\r\n\r\n<p><b>Phi&ecirc;n bản&nbsp;<a data-wpel-link=\"internal\" href=\"https://exphone.vn/apple-watch\" rel=\"follow noopener noreferrer\" target=\"_self\" title=\"Apple Watch\">Apple Watch</a>&nbsp;SE 40mm GPS</b>&nbsp;được biết đến l&agrave; mẫu đồng hồ th&ocirc;ng minh v&agrave; &ldquo;gi&aacute; rẻ&rdquo; để đ&aacute;nh thẳng v&agrave;o ph&acirc;n kh&uacute;c tầm trung của nh&agrave; T&aacute;o. Sản phẩm tuy được coi l&agrave; một biến thể lai giữa Series 4 &ndash; Series 5 v&agrave; Series 6 nhưng lại mang trong m&igrave;nh chiến lược nhằm thu h&uacute;t người d&ugrave;ng tham gia v&agrave;o hệ sinh th&aacute;i&nbsp;<a data-wpel-link=\"external\" href=\"https://apple.com/\" rel=\"nofollow external noopener noreferrer\" target=\"_blank\">Apple</a>. C&ugrave;ng Exphone.vn đ&aacute;nh gi&aacute; để hiểu r&otilde; hơn nh&eacute;!</p>\r\n\r\n<h2><b>1. Phi&ecirc;n bản Apple Watch SE 40mm GPS &ndash; rẻ nhưng vẫn rất xịn</b></h2>\r\n\r\n<p>Apple Watch SE 40mm GPS sở hữu m&agrave;n h&igrave;nh c&oacute; diện t&iacute;ch hiển thị hữu dụng cao (bản 44mm: 977 sq mm v&agrave; bản 40mm: 759 sq mm) gi&uacute;p hiển thị được rất nhiều nội dung tr&ecirc;n mặt đồng hồ.</p>\r\n\r\n<p>Mặt đồng hồ lớn cũng gi&uacute;p Apple Watch SE 40mm GPS hiển thị c&aacute;c mặt đồng hồ đẹp v&agrave; hữu dụng. Ngo&agrave;i ra, Apple Watch SE 40mm GPS c&oacute; tất cả c&aacute;c mặt đồng hồ mới của Apple, chỉ l&agrave; thiếu đi phi&ecirc;n bản M&agrave;n h&igrave;nh lu&ocirc;n s&aacute;ng m&agrave; th&ocirc;i.</p>\r\n\r\n<p>Mặt đồng hồ lớn hiển thị nhiều trường th&ocirc;ng tin phụ gi&uacute;p người d&ugrave;ng t&ugrave;y biến để theo d&otilde;i được những th&ocirc;ng tin mang t&iacute;nh c&aacute; nh&acirc;n h&oacute;a cao hơn.</p>\r\n\r\n<p><img alt=\"\" height=\"450\" loading=\"lazy\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://jnslhxfsp2obj.vcdn.cloud/uploads/2020/10/apple-watch-se-2.jpg\" srcset=\"https://jnslhxfsp2obj.vcdn.cloud/uploads/2020/10/apple-watch-se-2.jpg 800w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2020/10/apple-watch-se-2-300x169.jpg 300w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2020/10/apple-watch-se-2-768x432.jpg 768w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2020/10/apple-watch-se-2-24x14.jpg 24w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2020/10/apple-watch-se-2-36x20.jpg 36w, https://jnslhxfsp2obj.vcdn.cloud/uploads/2020/10/apple-watch-se-2-48x27.jpg 48w\" width=\"800\" /></p>\r\n\r\n<p>Phi&ecirc;n bản Apple Watch SE 40mm GPS &ndash; rẻ nhưng vẫn rất xịn</p>\r\n\r\n<p>N&uacute;t xoay Digital Crown kết hợp c&ugrave;ng cụm rung Taptic Engine gi&uacute;p mang lại trải nghiệm giao tiếp rất độc đ&aacute;o m&agrave; kh&ocirc;ng một thiết bị đeo n&agrave;o c&oacute; được.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, cụm cảm biến nhịp tim được đặt trong mặt k&iacute;nh sapphire gi&uacute;p n&oacute; hầu như kh&ocirc;ng bị trầy xước hay l&atilde;o h&oacute;a trong suốt v&ograve;ng đời sử dụng. Điều n&agrave;y sẽ đảm bảo cho nhịp tim m&agrave; n&oacute; đo được c&oacute; độ ch&iacute;nh x&aacute;c cao nhất.</p>'),
(7, 'en', 'iPad Pro M1 (2021) 11 256GB WI-FI new', NULL, NULL, '<p>The 11-inch iPad Pro 2021 is a tablet product line that has just been launched by Apple at the last Apple Spring 2021 event along with the 12.9-inch iPad Pro 2021. Although the design is not too different from its predecessor iPad Pro 2020, Apple has still upgraded a lot in terms of screen, camera and Apple M1 chip that promises to bring users many great experiences in terms of performance and performance. daily entertainment.</p>'),
(7, 'vi', 'iPad Pro M1 (2021) 11 256GB WI-FI Mới', NULL, NULL, '<p>iPad Pro 2021 11inch l&agrave; d&ograve;ng sản phẩm tablet vừa được Apple ra mắt v&agrave;o sự kiện Apple Spring 2021 vừa qua c&ugrave;ng với iPad Pro 2021 12.9inch. Tuy thiết kế kh&ocirc;ng qu&aacute; kh&aacute;c biệt so với tiền nhiệm iPad Pro 2020 nhưng vẫn được Apple n&acirc;ng cấp rất nhiều về m&agrave;n h&igrave;nh, camera c&ugrave;ng con chip Apple M1 hứa hẹn sẽ mang lại cho người d&ugrave;ng nhiều trải nghiệm tuyệt vời về hiệu năng cũng như giải tr&iacute; h&agrave;ng ng&agrave;y.</p>'),
(8, 'en', 'Macbook Air M1 2020 8G 256GB', NULL, NULL, '<p>Apple has just launched an impressive new version of the MacBook Air M1 2020 with a new M1 chip designed specifically for MacBooks that boosts CPU performance up to 3.5 times faster, longest battery life ever on the market. MacBook Air.</p>'),
(8, 'vi', 'Macbook Air M1 2020 8G 256GB', NULL, NULL, '<p>Apple vừa cho ra mắt phi&ecirc;n bản&nbsp;<strong>MacBook Air M1 2020</strong>&nbsp;mới cực k&igrave; ấn tượng với con chip M1 mới được thiết kế d&agrave;nh ri&ecirc;ng cho MacBook tăng hiệu suất CPU nhanh hơn tới 3.5 lần, tuổi thọ pin d&agrave;i nhất từ ​​trước đến nay tr&ecirc;n MacBook Air.<br />\r\n&nbsp;</p>\r\n\r\n<h3>Sang trọng, cơ động v&agrave; đẳng cấp</h3>\r\n\r\n<p>Được chế t&aacute;c tinh xảo từ kim loại nguy&ecirc;n khối t&aacute;i chế, Apple đem đến một phi&ecirc;n bản&nbsp;MacBook Air&nbsp;sang trọng, đẳng cấp nhưng vẫn giữ được độ mỏng nhẹ, th&acirc;n m&aacute;y chỉ<strong>&nbsp;16.1 mm</strong>, nặng&nbsp;<strong>1.29 kg</strong>&nbsp;đề cao t&iacute;nh di động, bắt kịp xu hướng hiện nay.</p>\r\n\r\n<p><a data-wpel-link=\"external\" href=\"https://www.thegioididong.com/images/44/231246/apple-macbook-air-2020-mgnd3saa-280420-100425.jpg\" rel=\"nofollow external noopener noreferrer\" target=\"_blank\"><img alt=\"Apple MacBook Air 2020 M1/8GB/256GB (MGND3SA/A) - Thiết kế\" data-src=\"https://cdn.tgdd.vn/Products/Images/44/231246/apple-macbook-air-2020-mgnd3saa-280420-100425.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/44/231246/apple-macbook-air-2020-mgnd3saa-280420-100425.jpg\" title=\"Apple MacBook Air 2020 M1/8GB/256GB (MGND3SA/A) - Thiết kế\" /></a></p>\r\n\r\n<p><strong>Chip bảo mật T2</strong>&nbsp;m&atilde; h&oacute;a mọi th&ocirc;ng tin tr&ecirc;n m&aacute;y đảm bảo th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Đăng nhập v&agrave;o m&aacute;y dễ d&agrave;ng bằng<strong>&nbsp;bảo mật v&acirc;n tay</strong>, hỗ trợ thanh to&aacute;n online cực k&igrave; nhanh ch&oacute;ng v&agrave; tiện lợi.</p>\r\n\r\n<p><a data-wpel-link=\"external\" href=\"https://www.thegioididong.com/images/44/231246/apple-macbook-air-2020-mgnd3saa-073520-103521.jpg\" rel=\"nofollow external noopener noreferrer\" target=\"_blank\"><img alt=\"Apple MacBook Air 2020 M1/8GB/256GB (MGND3SA/A) - Touch ID\" data-src=\"https://cdn.tgdd.vn/Products/Images/44/231246/apple-macbook-air-2020-mgnd3saa-073520-103521.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/44/231246/apple-macbook-air-2020-mgnd3saa-073520-103521.jpg\" title=\"Apple MacBook Air 2020 M1/8GB/256GB (MGND3SA/A) - Touch ID\" /></a></p>'),
(9, 'en', 'Samsung Galaxy Note 9 128GB old Korean 99% Beautiful like new', NULL, NULL, '<p>Samsung Galaxy Note 9 (6GB - 128GB) 2 sim Korean imported version uses high-end Exynos chip, runs 2 convenient sims. The above price does not include warranty Power, Screen, Security sensor (Fingerprint, Eye Nail, Face). Upgrade to ExGold Comprehensive 12 Months for a better comprehensive warranty.<br />\r\n&nbsp;</p>'),
(9, 'vi', 'Samsung Galaxy Note 9 128GB Hàn cũ 99% Đẹp như mới', NULL, NULL, '<p><strong>Samsung Galaxy Note 9 (6GB &ndash; 128GB) 2 sim H&agrave;n Quốc</strong>&nbsp;phi&ecirc;n bản nhập khẩu d&ugrave;ng chip Exynos cao cấp, chạy 2 sim tiện dụng. Gi&aacute; tr&ecirc;n chưa bao gồm bảo h&agrave;nh Nguồn , M&agrave;n h&igrave;nh , Cảm biến bảo mật (<strong>V&acirc;n tay , M&oacute;ng Mắt , Khu&ocirc;n Mặt</strong>&nbsp;).&nbsp;<em>N&acirc;ng cấp th&ecirc;m</em>&nbsp;<a data-wpel-link=\"internal\" href=\"https://exphone.vn/chinh-sach-bao-hanh\" rel=\"follow noopener noreferrer\" target=\"_self\"><strong>ExGold To&agrave;n Diện 12 Th&aacute;ng</strong></a>&nbsp;<em>để được bảo h&agrave;nh to&agrave;n diện tốt hơn.&nbsp;</em><br />\r\n&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&agrave;n h&igrave;nh</th>\r\n			<td>\r\n			<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh: Super AMOLED, Độ ph&acirc;n giải: 1440 x 2960 pixels, M&agrave;n h&igrave;nh rộng: 6.1 inches, Mặt k&iacute;nh cảm ứng: Corning Gorilla Glass 5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera sau</th>\r\n			<td>\r\n			<p>Độ ph&acirc;n giải: 12 MP, f/1.5-2.4 dual pixel PDAF, OIS v&agrave; 12 MP, f/2.4 OIS, 2x optical zoom, Quay phim: 2160p@60fps, 1080p@240fps, 720p@960fps, HDR, dual-video rec</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera trước</th>\r\n			<td>\r\n			<p>Độ ph&acirc;n giải: 8 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>Exynos 9810, 8 nh&acirc;n 64bit, Tốc độ CPU: Octa-core (4&times;2.7 GHz Mongoose M3 &amp; 4&times;1.8 GHz Cortex-A55)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Chip đồ họa (GPU)</th>\r\n			<td>\r\n			<p>Mali-G72 MP18</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Bộ nhớ trong</th>\r\n			<td>\r\n			<p>128 GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ram</th>\r\n			<td>\r\n			<p>6 GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Dung lượng pin</th>\r\n			<td>\r\n			<p>4000 mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sim</th>\r\n			<td>\r\n			<p>2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;u sắc</th>\r\n			<td>\r\n			<p>copper, Black, Blue, Purple, White</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(10, 'en', 'Phone Samsung Galaxy A52 (8GB/128GB)', NULL, NULL, '<br />\r\nSamsung Galaxy A52 distributed at ExPhone is a genuine product with warranty at SAMSUNG Vietnam Center.\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Bộ nhớ trong</th>\r\n			<td>\r\n			<p>128 GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera sau</th>\r\n			<td>\r\n			<p>Ch&iacute;nh 64 MP &amp; Phụ 12 MP, 5 MP, 5 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera trước</th>\r\n			<td>\r\n			<p>32 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Chip đồ họa (GPU)</th>\r\n			<td>\r\n			<p>Adreno 618</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>Snapdragon 720G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Dung lượng pin</th>\r\n			<td>\r\n			<p>4500 mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;n h&igrave;nh</th>\r\n			<td>\r\n			<p>Full HD+ (1080 x 2400 Pixels)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;u sắc</th>\r\n			<td>\r\n			<p>Black, Blue, Purple</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ram</th>\r\n			<td>\r\n			<p>8 GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sim</th>\r\n			<td>\r\n			<p>Dual Nano Sim</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Thẻ nhớ</th>\r\n			<td>\r\n			<p>MicroSD, hỗ trợ tối đa 1 TB</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(10, 'vi', 'Điện thoại Samsung Galaxy A52 (8GB/128GB)', NULL, NULL, '<p><strong>Samsung Galaxy A52</strong>&nbsp;được ph&acirc;n phối tại ExPhone l&agrave; sản phẩm ch&iacute;nh h&atilde;ng được bảo h&agrave;nh tại&nbsp;<strong>TTBH SAMSUNG Việt Nam</strong>&nbsp;to&agrave;n quốc .</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Bộ nhớ trong</th>\r\n			<td>\r\n			<p>128 GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera sau</th>\r\n			<td>\r\n			<p>Ch&iacute;nh 64 MP &amp; Phụ 12 MP, 5 MP, 5 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera trước</th>\r\n			<td>\r\n			<p>32 MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Chip đồ họa (GPU)</th>\r\n			<td>\r\n			<p>Adreno 618</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p>Snapdragon 720G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Dung lượng pin</th>\r\n			<td>\r\n			<p>4500 mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;n h&igrave;nh</th>\r\n			<td>\r\n			<p>Full HD+ (1080 x 2400 Pixels)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;u sắc</th>\r\n			<td>\r\n			<p>Black, Blue, Purple</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ram</th>\r\n			<td>\r\n			<p>8 GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sim</th>\r\n			<td>\r\n			<p>Dual Nano Sim</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Thẻ nhớ</th>\r\n			<td>\r\n			<p>MicroSD, hỗ trợ tối đa 1 TB</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(11, 'en', 'iPhone X Lock Old 64Gb 99% as beautiful as new', NULL, NULL, '<p>iPhone X Lock network lock from the US, Japan. Currently, ExPhone comes with a sim card to fix errors and limitations, using it as normal as the international version. Especially the original committed machine. - Beautiful appearance 99% like new, beautiful body, no heavy scratches. Original according to manufacturer standards. Has not been replaced and repaired &ndash; The level of battery wear is over 90% ~ 95%. Free 1 time battery replacement when below 80% when upgrading ExGold comprehensive warranty package | ExPro</p>'),
(11, 'vi', 'iPhone X Lock Cũ 64Gb 99% đẹp như mới', NULL, NULL, '<p>iPhone X Lock kho&aacute; mạng từ Mỹ, Nhật. Hiện tại ExPhone tặng k&egrave;m sim gh&eacute;p fix full lỗi v&agrave; hạn chế, sử dụng ho&agrave;n to&agrave;n b&igrave;nh thường như phi&ecirc;n bản quốc tế. Đặc biệt m&aacute;y cam kết nguy&ecirc;n bản.<br />\r\n&ndash; H&igrave;nh thức đẹp 99% như mới, th&acirc;n vỏ đẹp, kh&ocirc;ng cấn m&oacute;p trầy xước nặng. Nguy&ecirc;n bản theo ti&ecirc;u chuẩn nh&agrave; sản xuất. Chưa qua thay thế v&agrave; sửa chữa<br />\r\n&ndash; Mức độ hao m&ograve;n pin tr&ecirc;n 90% ~ 95%. Miễn ph&iacute; 1 lần thay pin khi dưới 80% khi n&acirc;ng cấp g&oacute;i bảo h&agrave;nh to&agrave;n diện ExGold | ExPro&nbsp;</p>'),
(12, 'en', 'iPhone X New 64GB Original Seal not activated yet', NULL, NULL, '<p>iPhone X 64GB New 100% international version New 100% Original Seal, Unactivated Accessories include: identical imei box, charger, cable, headset, manual, sim stick. ExPhone.vn is committed to brandnew standard products, genuine seals and genuine accessories, when activated, it will have a genuine 12-month warranty. Upgrade more ExGold | ExPro for a better comprehensive warranty.</p>'),
(12, 'vi', 'iPhone X Mới 64GB Nguyên Seal chưa kích hoạt', NULL, NULL, '<p>iPhone X 64GB Mới 100% phi&ecirc;n bản quốc tế Mới 100% Nguy&ecirc;n Seal, Chưa k&iacute;ch hoạt Phụ kiện gồm: hộp tr&ugrave;ng imei, sạc, cable, tai nghe, s&aacute;ch hướng dẫn, que chọc sim. ExPhone.vn cam kết h&agrave;ng chuẩn brandnew, nguy&ecirc;n seal xịn v&agrave; phụ kiện ch&iacute;nh h&atilde;ng, khi k&iacute;ch họat l&ecirc;n sẽ đủ bảo h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng. N&acirc;ng cấp th&ecirc;m ExGold | ExPro để được bảo h&agrave;nh to&agrave;n diện tốt hơn. &nbsp;</p>'),
(13, 'en', 'iPhone 11 Pro Max 64GB International New Drift BH has not been activated', NULL, NULL, '<p>iPhone 11 Pro Max 64Gb Drift BH Not activated international version 100% of the US, Japanese, Korean, European markets. 100% new form. Not activated, after activation will no longer be full 12 months or the end of Apple&#39;s warranty. Products are warranted for 6 months at ExPhone. ExGold Upgrade | ExPro for a better extended warranty.</p>'),
(13, 'vi', 'iPhone 11 Pro Max 64GB Quốc tế Mới Trôi BH chưa kích hoạt', NULL, NULL, '<p><strong>iPhone 11 Pro Max 64Gb Tr&ocirc;i BH Chưa k&iacute;ch hoạt</strong>&nbsp;phi&ecirc;n bản quốc tế 100% thị trường Mỹ , Nhật, H&agrave;n , khu vực Ch&acirc;u &acirc;u.<br />\r\nH&igrave;nh thức mới 100%. Chưa k&iacute;ch hoạt, sau khi k&iacute;ch hoạt sẽ kh&ocirc;ng c&ograve;n đủ 12 th&aacute;ng hoặc hết bảo h&agrave;nh của Apple.<br />\r\nSản phẩm được bảo h&agrave;nh 6 Th&aacute;ng tại&nbsp;<strong>ExPhone</strong>. N&acirc;ng cấp&nbsp;<a data-wpel-link=\"internal\" href=\"https://exphone.vn/chinh-sach-bao-hanh\" rel=\"follow noopener noreferrer\" target=\"_self\"><strong>ExGold | ExPro</strong></a>&nbsp;để được bảo h&agrave;nh mở rộng tốt hơn.</p>'),
(14, 'en', 'New iPhone Xs CPO 64GB Original Seal not activated yet', NULL, NULL, '<p>iPhone Xs 64G New 100% International CPO version New 100% Original Seal, Unactivated. Accessories include: imei box, charger, cable, headset, manual, sim stick. ExPhone.vn is committed to brandnew standard products, genuine seals and genuine accessories, when activated, it will have a genuine 12-month warranty. Upgrade more ExGold | ExPro for a better comprehensive warranty.</p>'),
(14, 'vi', 'iPhone Xs Mới CPO 64GB Nguyên Seal chưa kích hoạt', NULL, NULL, '<p><strong><a data-wpel-link=\"internal\" href=\"https://exphone.vn/iphone-xs-xs-max-xr/iphone-xs-max-64g-moi-chua-kich\" rel=\"follow noopener noreferrer\" target=\"_self\">iPhone Xs 64G Mới 100%</a></strong>&nbsp;phi&ecirc;n bản CPO quốc tế Mới 100% Nguy&ecirc;n Seal, Chưa k&iacute;ch hoạt.</p>\r\n\r\n<p>Phụ kiện gồm: hộp tr&ugrave;ng imei, sạc, cable, tai nghe, s&aacute;ch hướng dẫn, que chọc sim.</p>\r\n\r\n<p><strong>ExPhone.vn</strong>&nbsp;cam kết h&agrave;ng chuẩn brandnew, nguy&ecirc;n seal xịn v&agrave; phụ kiện ch&iacute;nh h&atilde;ng, khi k&iacute;ch họat l&ecirc;n sẽ đủ bảo h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng.&nbsp;<em>N&acirc;ng cấp th&ecirc;m</em>&nbsp;<a data-wpel-link=\"internal\" href=\"https://exphone.vn/chinh-sach-bao-hanh\" rel=\"follow noopener noreferrer\" target=\"_self\"><strong>ExGold | ExPro</strong></a>&nbsp;<em>để được bảo h&agrave;nh to&agrave;n diện tốt hơn.&nbsp;</em></p>'),
(15, 'en', 'Easy Polo Black Edition 15', NULL, NULL, ''),
(15, 'vi', 'Easy Polo Black Edition 15', NULL, NULL, ''),
(16, 'en', 'Easy Polo Black Edition 16', NULL, NULL, ''),
(16, 'vi', 'Easy Polo Black Edition 16', NULL, NULL, ''),
(17, 'en', 'iPhone Xs 64GB International New Drift BH has not been activated', NULL, NULL, '<p>The phone&nbsp;iPhone XS 64GB&nbsp;is 100% new, unused, unactivated, full of genuine accessories. And when activated, the user will be delayed for a few months instead of the full 12-month warranty.</p>'),
(17, 'vi', 'iPhone Xs 64GB Quốc Tế Mới Trôi BH chưa kích hoạt', NULL, NULL, '<p>Chiếc điện thoại&nbsp;<strong>iPhone XS 64GB</strong>&nbsp;l&agrave; h&agrave;ng mới 100%, chưa qua sử dụng, chưa k&iacute;ch hoạt, đầy đủ phụ kiện ch&iacute;nh h&atilde;ng. V&agrave; khi k&iacute;ch hoạt l&ecirc;n người d&ugrave;ng sẽ bị tr&ocirc;i thời gian bảo h&agrave;nh v&agrave;i th&aacute;ng thay v&igrave; đủ bảo h&agrave;nh 12 th&aacute;ng.<br />\r\n<br />\r\n<strong>GIỚI THIỆU SẢN PHẨM</strong></p>\r\n\r\n<p><strong>iPhone Xs cũ 64GB</strong>&nbsp;vẫn &aacute;p dụng nguy&ecirc;n tắc thiết kế quen thuộc với phần khung được l&agrave;m từ th&eacute;p kh&ocirc;ng gỉ. Hai mặt trước sau được ốp k&iacute;nh cường lực thế hệ mới nhằm gi&uacute;p giảm thiểu tối đa thiệt hại khi va đập. C&aacute;c chi tiết nhỏ đạt độ ho&agrave;n thiện cao, được thiết kế tỉ mỉ.</p>\r\n\r\n<p><img alt=\"\" height=\"520\" loading=\"lazy\" sizes=\"(max-width: 780px) 100vw, 780px\" src=\"https://exphone.vn/uploads/2018/10/thiet-ke-iphone-xs-ex.jpg\" srcset=\"https://exphone.vn/uploads/2018/10/thiet-ke-iphone-xs-ex.jpg 780w, https://exphone.vn/uploads/2018/10/thiet-ke-iphone-xs-ex-300x200.jpg 300w, https://exphone.vn/uploads/2018/10/thiet-ke-iphone-xs-ex-768x512.jpg 768w, https://exphone.vn/uploads/2018/10/thiet-ke-iphone-xs-ex-24x16.jpg 24w, https://exphone.vn/uploads/2018/10/thiet-ke-iphone-xs-ex-36x24.jpg 36w, https://exphone.vn/uploads/2018/10/thiet-ke-iphone-xs-ex-48x32.jpg 48w\" width=\"780\" /></p>\r\n\r\n<p>Thiết kế lần n&agrave;y của m&aacute;y vẫn chịu nhiều ảnh hưởng từ iPhone X. K&iacute;ch thước m&agrave;n h&igrave;nh kh&ocirc;ng qu&aacute; lớn của Xs gi&uacute;p người d&ugrave;ng dễ d&agrave;ng thao t&aacute;c hơn. Trọng lượng của m&aacute;y chỉ 177gr cũng g&oacute;p phần hạn chế t&igrave;nh trạng mỏi tay khi cầm m&aacute;y l&acirc;u.</p>\r\n\r\n<p>Mặt lưng vẫn giữ phong c&aacute;ch sắp xếp quen thuộc. Cụm camera ch&iacute;nh được đặt dọc th&acirc;n m&aacute;y c&ugrave;ng với đ&oacute; l&agrave; logo quả t&aacute;o cắn dở quen thuộc. iPhone Xs cũ 64GB c&ograve;n được Apple trang bị t&iacute;nh năng chống nước bụi IP68.</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_product_download`
--

CREATE TABLE `demo_shop_product_download` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_product_group`
--

CREATE TABLE `demo_shop_product_group` (
  `group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_product_group`
--

INSERT INTO `demo_shop_product_group` (`group_id`, `product_id`) VALUES
(16, 1),
(16, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_product_image`
--

CREATE TABLE `demo_shop_product_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_product_image`
--

INSERT INTO `demo_shop_product_image` (`id`, `image`, `product_id`) VALUES
(10, '/data/product/product-5.png', 9),
(30, '/data/product/product-17-1.png', 17),
(31, '/data/product/product-17-2.png', 17),
(32, '/data/product/product-13.png', 15),
(33, '/data/product/product-6.png', 15),
(46, '/data/product/product-13.png', 4),
(47, '/data/product/product-6.png', 2),
(48, '/data/product/product-1.png', 2),
(49, '/data/product/product-15.png', 2),
(50, '/data/product/product-2.png', 1),
(51, '/data/product/product-11.png', 1),
(57, '/data/product/product-14-1.png', 14),
(58, '/data/product/product-14-2.png', 14),
(59, '/data/product/product-13-2.png', 13),
(60, '/data/product/product-13-1.png', 13),
(61, '/data/product/product-8.png', 11),
(62, '/data/product/product-13.png', 11),
(63, '/data/product/product-8.png', 8),
(64, '/data/product/product-2.png', 7),
(65, '/data/product/product-6.png', 7),
(66, '/data/product/product-6-1.png', 6),
(67, '/data/product/product-5-1.png', 5),
(68, '/data/product/product-5-4.png', 5),
(69, '/data/product/product-5-3.png', 5),
(70, '/data/product/product-5-4.png', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_product_promotion`
--

CREATE TABLE `demo_shop_product_promotion` (
  `product_id` int(11) NOT NULL,
  `price_promotion` int(11) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `status_promotion` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_product_promotion`
--

INSERT INTO `demo_shop_product_promotion` (`product_id`, `price_promotion`, `date_start`, `date_end`, `status_promotion`, `created_at`, `updated_at`) VALUES
(1, 5000, NULL, NULL, 1, '2021-08-11 09:32:31', '2021-08-11 09:32:31'),
(2, 3000, NULL, NULL, 1, '2021-08-11 09:32:25', '2021-08-11 09:32:25'),
(5, 2790000, '2021-08-05 00:00:00', '2021-08-31 00:00:00', 1, '2021-08-11 12:59:53', '2021-08-11 12:59:53'),
(6, 7490000, '2021-08-05 00:00:00', '2021-08-26 00:00:00', 1, '2021-08-11 12:59:39', '2021-08-11 12:59:39'),
(9, 8490000, '2021-08-05 00:00:00', '2021-08-25 00:00:00', 1, '2021-08-11 13:01:14', '2021-08-11 13:01:14'),
(11, 7990000, '2021-08-04 00:00:00', '2021-08-20 00:00:00', 1, '2021-08-11 13:01:29', '2021-08-11 13:01:29'),
(13, 20490000, '2021-08-04 00:00:00', '2021-08-15 00:00:00', 1, '2021-08-11 12:57:33', '2021-08-11 12:57:33'),
(17, 10790000, '2021-08-11 00:00:00', '2021-08-31 00:00:00', 1, '2021-08-11 08:47:35', '2021-08-11 08:47:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_sessions`
--

CREATE TABLE `demo_shop_sessions` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_shipping_standard`
--

CREATE TABLE `demo_shop_shipping_standard` (
  `id` int(10) UNSIGNED NOT NULL,
  `fee` int(11) NOT NULL,
  `shipping_free` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_shipping_standard`
--

INSERT INTO `demo_shop_shipping_standard` (`id`, `fee`, `shipping_free`) VALUES
(1, 20, 10000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_shipping_status`
--

CREATE TABLE `demo_shop_shipping_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_shipping_status`
--

INSERT INTO `demo_shop_shipping_status` (`id`, `name`) VALUES
(1, 'Not sent'),
(2, 'Sending'),
(3, 'Shipping done');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_shoppingcart`
--

CREATE TABLE `demo_shop_shoppingcart` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_store_block`
--

CREATE TABLE `demo_shop_store_block` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_store_block`
--

INSERT INTO `demo_shop_store_block` (`id`, `name`, `position`, `page`, `type`, `text`, `status`, `sort`, `store_id`) VALUES
(1, 'Facebook code', 'top', '*', 'html', '\r\n  <div id=\"fb-root\"></div>\r\n  <script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=934208239994473\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n  }(document, \'script\', \'facebook-jssdk\'));\r\n  </script>', 1, 0, 1),
(2, 'Google Analytics', 'header', '*', 'html', '\r\n  <!-- Global site tag (gtag.js) - Google Analytics -->\r\n  <script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-128658138-1\"></script>\r\n  <script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n  gtag(\'config\', \'UA-128658138-1\');\r\n  </script>', 1, 0, 1),
(3, 'Product special', 'left', '*', 'view', 'product_special', 1, 1, 1),
(4, 'Brands', 'left', '*', 'view', 'brands_left', 1, 3, 1),
(5, 'Banner home', 'banner_top', 'home', 'view', 'banner_image', 1, 0, 1),
(6, 'Categories', 'left', 'home,shop_home', 'view', 'categories', 1, 4, 1),
(7, 'Product last view', 'left', '*', 'view', 'product_lastview', 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_store_css`
--

CREATE TABLE `demo_shop_store_css` (
  `css` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_store_css`
--

INSERT INTO `demo_shop_store_css` (`css`, `store_id`) VALUES
('\r\n.sc-overlay {\r\n  position: fixed;\r\n  top: 50%;\r\n  left: 50%;\r\n  transform: translate(-50%, -50%);\r\n  transform: -webkit-translate(-50%, -50%);\r\n  transform: -moz-translate(-50%, -50%);\r\n  transform: -ms-translate(-50%, -50%);\r\n  color:#1f222b;\r\n  z-index: 9999;\r\n  background: rgba(255,255,255,0.7);\r\n}\r\n  \r\n#sc-loading{\r\n  display: none;\r\n  position: absolute;\r\n  top: 0;\r\n  left: 0;\r\n  width: 100%;\r\n  height: 100%;\r\n  z-index: 50;\r\n  background: rgba(255,255,255,0.7);\r\n}\r\n/*end loading */\r\n  \r\n/*price*/\r\n.sc-new-price{\r\n  color:#FE980F;\r\n  font-size: 14px;\r\n  padding: 10px 5px;\r\n  font-weight:bold;\r\n  }\r\n  .sc-old-price {\r\n  text-decoration: line-through;\r\n  color: #a95d5d;\r\n  font-size: 13px;\r\n  padding: 10px;\r\n  }\r\n  /*end price*/\r\n.sc-product-build{\r\n  font-size: 20px;\r\n  font-weight: bold;\r\n}\r\n.sc-product-build img{\r\n  width: 50px;\r\n}\r\n.sc-product-group  img{\r\n  width: 100px;\r\n  cursor: pointer;\r\n  }\r\n.sc-product-group:hover{\r\n  box-shadow: 0px 0px 2px #999;\r\n}\r\n.sc-product-group:active{\r\n  box-shadow: 0px 0px 2px #ff00ff;\r\n}\r\n.sc-product-group.active{\r\n  box-shadow: 0px 0px 2px #ff00ff;\r\n}\r\n\r\n.sc-shipping-address td{\r\n  padding: 3px !important;\r\n}\r\n.sc-shipping-address textarea,\r\n.sc-shipping-address input[type=\"text\"],\r\n.sc-shipping-address option{\r\n  width: 100%;\r\n  padding: 7px !important;\r\n}\r\n.row_cart>td{\r\n  vertical-align: middle !important;\r\n}\r\ninput[type=\"number\"]{\r\n  text-align: center;\r\n  padding:2px;\r\n}\r\n.sc-notice{\r\n  clear: both;\r\n  clear: both;\r\n  font-size: 20px;\r\n  background: #f3f3f3;\r\n  width: 100%;\r\n}\r\nimg.new {\r\n  position: absolute;\r\n  right: 0px;\r\n  top: 0px;\r\n  padding: 0px !important;\r\n}\r\n.pointer {\r\n  cursor: pointer: \r\n}\r\n.add-to-cart-list {\r\n  padding: 5px 10px !important;\r\n  margin: 2px !important;\r\n  letter-spacing: 0px !important;\r\n  font-size: 12px !important;\r\n  border-radius: 5px;\r\n}\r\n.help-block {\r\n  font-size: 12px;\r\n  color: red;\r\n  font-style: italic;\r\n}\r\n                  ', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_subscribe`
--

CREATE TABLE `demo_shop_subscribe` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_supplier`
--

CREATE TABLE `demo_shop_supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_supplier`
--

INSERT INTO `demo_shop_supplier` (`id`, `name`, `alias`, `email`, `phone`, `image`, `address`, `url`, `status`, `store_id`, `sort`) VALUES
(1, 'ABC distributor', 'abc-distributor', 'abc@abc.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 1, 0),
(2, 'XYZ distributor', 'xyz-distributor', 'xyz@xyz.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_tax`
--

CREATE TABLE `demo_shop_tax` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_tax`
--

INSERT INTO `demo_shop_tax` (`id`, `name`, `value`) VALUES
(1, 'Tax default (10%)', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo_shop_weight`
--

CREATE TABLE `demo_shop_weight` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `demo_shop_weight`
--

INSERT INTO `demo_shop_weight` (`id`, `name`, `description`) VALUES
(1, 'g', 'Gram'),
(2, 'kg', 'Kilogram'),
(3, 'lb', 'Pound '),
(4, 'oz', 'Ounce ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_00_00_step1_create_tables_admin', 1),
(2, '2020_00_00_step2_create_tables_shop', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'SCart Personal Access Client', 'oeQZhrKfoemN0zIQJh11A0hmNnJ5WTT1u6V70oCa', NULL, 'http://localhost', 1, 0, 0, '2021-08-09 13:51:20', '2021-08-09 13:51:20'),
(2, NULL, 'SCart Password Grant Client', 'QvtM5ERiYsoMOQzRmFSIHQGugZl49B7qlbjBzdM3', 'users', 'http://localhost', 0, 1, 0, '2021-08-09 13:51:20', '2021-08-09 13:51:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-08-09 13:51:20', '2021-08-09 13:51:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `demo_admin_config`
--
ALTER TABLE `demo_admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_admin_config_key_store_id_unique` (`key`,`store_id`),
  ADD KEY `demo_admin_config_code_index` (`code`);

--
-- Chỉ mục cho bảng `demo_admin_log`
--
ALTER TABLE `demo_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_admin_log_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `demo_admin_menu`
--
ALTER TABLE `demo_admin_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_admin_menu_key_unique` (`key`);

--
-- Chỉ mục cho bảng `demo_admin_permission`
--
ALTER TABLE `demo_admin_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_admin_permission_name_unique` (`name`),
  ADD UNIQUE KEY `demo_admin_permission_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `demo_admin_role`
--
ALTER TABLE `demo_admin_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_admin_role_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `demo_admin_role_permission`
--
ALTER TABLE `demo_admin_role_permission`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `demo_admin_role_permission_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Chỉ mục cho bảng `demo_admin_role_user`
--
ALTER TABLE `demo_admin_role_user`
  ADD KEY `demo_admin_role_user_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Chỉ mục cho bảng `demo_admin_store`
--
ALTER TABLE `demo_admin_store`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_admin_store_code_unique` (`code`),
  ADD KEY `demo_admin_store_domain_index` (`domain`),
  ADD KEY `demo_admin_store_partner_index` (`partner`);

--
-- Chỉ mục cho bảng `demo_admin_store_description`
--
ALTER TABLE `demo_admin_store_description`
  ADD PRIMARY KEY (`store_id`,`lang`),
  ADD KEY `demo_admin_store_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `demo_admin_user`
--
ALTER TABLE `demo_admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_admin_user_username_unique` (`username`),
  ADD UNIQUE KEY `demo_admin_user_email_unique` (`email`);

--
-- Chỉ mục cho bảng `demo_admin_user_permission`
--
ALTER TABLE `demo_admin_user_permission`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `demo_admin_user_permission_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Chỉ mục cho bảng `demo_admin_user_store`
--
ALTER TABLE `demo_admin_user_store`
  ADD PRIMARY KEY (`user_id`,`store_id`);

--
-- Chỉ mục cho bảng `demo_api_connection`
--
ALTER TABLE `demo_api_connection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_api_connection_apiconnection_unique` (`apiconnection`);

--
-- Chỉ mục cho bảng `demo_shop_attribute_group`
--
ALTER TABLE `demo_shop_attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `demo_shop_banner`
--
ALTER TABLE `demo_shop_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_shop_banner_type_index` (`type`),
  ADD KEY `demo_shop_banner_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `demo_shop_brand`
--
ALTER TABLE `demo_shop_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_shop_brand_alias_index` (`alias`);

--
-- Chỉ mục cho bảng `demo_shop_category`
--
ALTER TABLE `demo_shop_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_shop_category_alias_index` (`alias`);

--
-- Chỉ mục cho bảng `demo_shop_category_description`
--
ALTER TABLE `demo_shop_category_description`
  ADD UNIQUE KEY `demo_shop_category_description_category_id_lang_unique` (`category_id`,`lang`),
  ADD KEY `demo_shop_category_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `demo_shop_country`
--
ALTER TABLE `demo_shop_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_shop_country_code_unique` (`code`);

--
-- Chỉ mục cho bảng `demo_shop_currency`
--
ALTER TABLE `demo_shop_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_shop_currency_code_unique` (`code`);

--
-- Chỉ mục cho bảng `demo_shop_customer`
--
ALTER TABLE `demo_shop_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_shop_customer_email_provider_provider_id_unique` (`email`,`provider`,`provider_id`),
  ADD KEY `demo_shop_customer_address_id_index` (`address_id`),
  ADD KEY `demo_shop_customer_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `demo_shop_customer_address`
--
ALTER TABLE `demo_shop_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_shop_customer_address_customer_id_index` (`customer_id`);

--
-- Chỉ mục cho bảng `demo_shop_email_template`
--
ALTER TABLE `demo_shop_email_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_shop_email_template_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `demo_shop_language`
--
ALTER TABLE `demo_shop_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_shop_language_code_unique` (`code`);

--
-- Chỉ mục cho bảng `demo_shop_layout_page`
--
ALTER TABLE `demo_shop_layout_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_shop_layout_page_key_unique` (`key`);

--
-- Chỉ mục cho bảng `demo_shop_layout_position`
--
ALTER TABLE `demo_shop_layout_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_shop_layout_position_key_unique` (`key`);

--
-- Chỉ mục cho bảng `demo_shop_length`
--
ALTER TABLE `demo_shop_length`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_shop_length_name_unique` (`name`);

--
-- Chỉ mục cho bảng `demo_shop_link`
--
ALTER TABLE `demo_shop_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_shop_link_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `demo_shop_news`
--
ALTER TABLE `demo_shop_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_shop_news_alias_index` (`alias`),
  ADD KEY `demo_shop_news_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `demo_shop_news_description`
--
ALTER TABLE `demo_shop_news_description`
  ADD UNIQUE KEY `demo_shop_news_description_news_id_lang_unique` (`news_id`,`lang`);

--
-- Chỉ mục cho bảng `demo_shop_order`
--
ALTER TABLE `demo_shop_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_shop_order_customer_id_index` (`customer_id`);

--
-- Chỉ mục cho bảng `demo_shop_order_detail`
--
ALTER TABLE `demo_shop_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `demo_shop_order_history`
--
ALTER TABLE `demo_shop_order_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `demo_shop_order_status`
--
ALTER TABLE `demo_shop_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `demo_shop_order_total`
--
ALTER TABLE `demo_shop_order_total`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `demo_shop_page`
--
ALTER TABLE `demo_shop_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_shop_page_alias_index` (`alias`),
  ADD KEY `demo_shop_page_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `demo_shop_page_description`
--
ALTER TABLE `demo_shop_page_description`
  ADD UNIQUE KEY `demo_shop_page_description_page_id_lang_unique` (`page_id`,`lang`),
  ADD KEY `demo_shop_page_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `demo_shop_password_resets`
--
ALTER TABLE `demo_shop_password_resets`
  ADD KEY `demo_shop_password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `demo_shop_payment_status`
--
ALTER TABLE `demo_shop_payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `demo_shop_product`
--
ALTER TABLE `demo_shop_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_shop_product_sku_index` (`sku`),
  ADD KEY `demo_shop_product_brand_id_index` (`brand_id`),
  ADD KEY `demo_shop_product_supplier_id_index` (`supplier_id`),
  ADD KEY `demo_shop_product_kind_index` (`kind`),
  ADD KEY `demo_shop_product_property_index` (`property`),
  ADD KEY `demo_shop_product_tax_id_index` (`tax_id`),
  ADD KEY `demo_shop_product_status_index` (`status`),
  ADD KEY `demo_shop_product_alias_index` (`alias`),
  ADD KEY `demo_shop_product_category_store_id_index` (`category_store_id`),
  ADD KEY `demo_shop_product_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `demo_shop_product_attribute`
--
ALTER TABLE `demo_shop_product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_shop_product_attribute_product_id_attribute_group_id_index` (`product_id`,`attribute_group_id`);

--
-- Chỉ mục cho bảng `demo_shop_product_build`
--
ALTER TABLE `demo_shop_product_build`
  ADD PRIMARY KEY (`build_id`,`product_id`);

--
-- Chỉ mục cho bảng `demo_shop_product_category`
--
ALTER TABLE `demo_shop_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Chỉ mục cho bảng `demo_shop_product_description`
--
ALTER TABLE `demo_shop_product_description`
  ADD UNIQUE KEY `demo_shop_product_description_product_id_lang_unique` (`product_id`,`lang`),
  ADD KEY `demo_shop_product_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `demo_shop_product_download`
--
ALTER TABLE `demo_shop_product_download`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `demo_shop_product_group`
--
ALTER TABLE `demo_shop_product_group`
  ADD PRIMARY KEY (`group_id`,`product_id`);

--
-- Chỉ mục cho bảng `demo_shop_product_image`
--
ALTER TABLE `demo_shop_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_shop_product_image_product_id_index` (`product_id`);

--
-- Chỉ mục cho bảng `demo_shop_product_promotion`
--
ALTER TABLE `demo_shop_product_promotion`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `demo_shop_sessions`
--
ALTER TABLE `demo_shop_sessions`
  ADD UNIQUE KEY `demo_shop_sessions_id_unique` (`id`);

--
-- Chỉ mục cho bảng `demo_shop_shipping_standard`
--
ALTER TABLE `demo_shop_shipping_standard`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `demo_shop_shipping_status`
--
ALTER TABLE `demo_shop_shipping_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `demo_shop_shoppingcart`
--
ALTER TABLE `demo_shop_shoppingcart`
  ADD KEY `demo_shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`),
  ADD KEY `demo_shop_shoppingcart_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `demo_shop_store_block`
--
ALTER TABLE `demo_shop_store_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_shop_store_block_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `demo_shop_store_css`
--
ALTER TABLE `demo_shop_store_css`
  ADD UNIQUE KEY `demo_shop_store_css_store_id_unique` (`store_id`);

--
-- Chỉ mục cho bảng `demo_shop_subscribe`
--
ALTER TABLE `demo_shop_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_shop_subscribe_email_index` (`email`),
  ADD KEY `demo_shop_subscribe_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `demo_shop_supplier`
--
ALTER TABLE `demo_shop_supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_shop_supplier_alias_index` (`alias`),
  ADD KEY `demo_shop_supplier_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `demo_shop_tax`
--
ALTER TABLE `demo_shop_tax`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `demo_shop_weight`
--
ALTER TABLE `demo_shop_weight`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_shop_weight_name_unique` (`name`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `demo_admin_config`
--
ALTER TABLE `demo_admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `demo_admin_log`
--
ALTER TABLE `demo_admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=677;

--
-- AUTO_INCREMENT cho bảng `demo_admin_menu`
--
ALTER TABLE `demo_admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=628;

--
-- AUTO_INCREMENT cho bảng `demo_admin_permission`
--
ALTER TABLE `demo_admin_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `demo_admin_role`
--
ALTER TABLE `demo_admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `demo_admin_store`
--
ALTER TABLE `demo_admin_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `demo_admin_user`
--
ALTER TABLE `demo_admin_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `demo_api_connection`
--
ALTER TABLE `demo_api_connection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `demo_shop_attribute_group`
--
ALTER TABLE `demo_shop_attribute_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `demo_shop_banner`
--
ALTER TABLE `demo_shop_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `demo_shop_brand`
--
ALTER TABLE `demo_shop_brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `demo_shop_category`
--
ALTER TABLE `demo_shop_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `demo_shop_country`
--
ALTER TABLE `demo_shop_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT cho bảng `demo_shop_currency`
--
ALTER TABLE `demo_shop_currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `demo_shop_customer`
--
ALTER TABLE `demo_shop_customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `demo_shop_customer_address`
--
ALTER TABLE `demo_shop_customer_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `demo_shop_email_template`
--
ALTER TABLE `demo_shop_email_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `demo_shop_language`
--
ALTER TABLE `demo_shop_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `demo_shop_layout_page`
--
ALTER TABLE `demo_shop_layout_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `demo_shop_layout_position`
--
ALTER TABLE `demo_shop_layout_position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `demo_shop_length`
--
ALTER TABLE `demo_shop_length`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `demo_shop_link`
--
ALTER TABLE `demo_shop_link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `demo_shop_news`
--
ALTER TABLE `demo_shop_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `demo_shop_order`
--
ALTER TABLE `demo_shop_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `demo_shop_order_detail`
--
ALTER TABLE `demo_shop_order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `demo_shop_order_history`
--
ALTER TABLE `demo_shop_order_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `demo_shop_order_status`
--
ALTER TABLE `demo_shop_order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `demo_shop_order_total`
--
ALTER TABLE `demo_shop_order_total`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `demo_shop_page`
--
ALTER TABLE `demo_shop_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `demo_shop_payment_status`
--
ALTER TABLE `demo_shop_payment_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `demo_shop_product`
--
ALTER TABLE `demo_shop_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `demo_shop_product_attribute`
--
ALTER TABLE `demo_shop_product_attribute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `demo_shop_product_download`
--
ALTER TABLE `demo_shop_product_download`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `demo_shop_product_image`
--
ALTER TABLE `demo_shop_product_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `demo_shop_shipping_standard`
--
ALTER TABLE `demo_shop_shipping_standard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `demo_shop_shipping_status`
--
ALTER TABLE `demo_shop_shipping_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `demo_shop_store_block`
--
ALTER TABLE `demo_shop_store_block`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `demo_shop_subscribe`
--
ALTER TABLE `demo_shop_subscribe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `demo_shop_supplier`
--
ALTER TABLE `demo_shop_supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `demo_shop_tax`
--
ALTER TABLE `demo_shop_tax`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `demo_shop_weight`
--
ALTER TABLE `demo_shop_weight`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
