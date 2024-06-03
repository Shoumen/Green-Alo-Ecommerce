-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 01:35 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greenalo`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `publish_date` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_slug` varchar(255) NOT NULL,
  `brand_logo` varchar(255) DEFAULT NULL,
  `front_page` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_logo`, `front_page`, `created_at`, `updated_at`) VALUES
(22, 'Goodtop', 'goodtop', 'files/brand/6648529231275.png', 1, NULL, NULL),
(23, 'Super Star', 'super-star', 'files/brand/664852ac211f3.jpeg', 1, NULL, NULL),
(24, 'Walton', 'walton', 'files/brand/664852cbd0258.png', 1, NULL, NULL),
(25, 'Wener', 'wener', 'files/brand/664852dfdfff6.jpeg', 1, NULL, NULL),
(26, 'HEE', 'hee', 'files/brand/664852eeeb1d5.jpeg', 1, NULL, NULL),
(27, 'CLICK', 'click', 'files/brand/6648531c56600.jpeg', 1, NULL, NULL),
(28, 'RFL', 'rfl', 'files/brand/6648532d95d7e.webp', 1, NULL, NULL),
(29, 'SQ', 'sq', 'files/brand/66485344404c3.jpeg', 1, NULL, NULL),
(30, 'Niico', 'niico', 'files/brand/6648535fe3d83.jpeg', 1, NULL, NULL),
(31, 'Innovate', 'innovate', 'files/brand/664853d24c1f0.JPG', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `start_date`, `end_date`, `image`, `status`, `discount`, `month`, `year`, `created_at`, `updated_at`) VALUES
(1, 'EID 2024', '2024-05-19', '2024-05-22', 'files/campaign/eid-2024.png', '1', '25', 'March', '2024', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `home_page` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `icon`, `category_slug`, `home_page`, `created_at`, `updated_at`) VALUES
(8, 'Switch', 'files/category/switch.JPG', 'switch', '1', NULL, NULL),
(9, 'Socket', 'files/category/socket.JPG', 'socket', '1', NULL, NULL),
(10, 'Plug', 'files/category/plug.JPG', 'plug', '1', NULL, NULL),
(11, 'Cable', 'files/category/cable.JPG', 'cable', '1', NULL, NULL),
(12, 'Holder', 'files/category/holder.JPG', 'holder', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_slug` varchar(255) NOT NULL,
  `childcategory_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `category_id`, `subcategory_id`, `childcategory_slug`, `childcategory_name`, `created_at`, `updated_at`) VALUES
(33, 8, 31, 'piano-switch', 'Piano Switch', NULL, NULL),
(34, 8, 31, 'main-switch', 'Main Switch', NULL, NULL),
(35, 8, 31, 'clling-bell', 'Clling Bell', NULL, NULL),
(36, 9, 30, 'switch-board', 'Switch Board', NULL, NULL),
(37, 9, 30, 'power-socket', 'Power Socket', NULL, NULL),
(38, 9, 30, 'change-over-socket', 'Change Over Socket', NULL, NULL),
(39, 10, 27, 'two-plug', 'Two Plug', NULL, NULL),
(40, 10, 27, 'three-plug', 'Three Plug', NULL, NULL),
(41, 10, 27, 'power-plug', 'Power Plug', NULL, NULL),
(42, 11, 29, 'power-wire', 'Power Wire', NULL, NULL),
(43, 11, 29, 'usb', 'Usb', NULL, NULL),
(44, 11, 29, 'electrice-wire', 'electrice Wire', NULL, NULL),
(45, 12, 28, 'table-lump', 'Table Lump', NULL, NULL),
(46, 12, 28, 'e27-e14', 'E27-E14', NULL, NULL),
(47, 12, 28, 'e27-g9', 'E27-g9', NULL, NULL),
(48, 12, 28, 'e-10-14', 'E 10 -14', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `valid_date` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `coupon_amount` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `valid_date`, `type`, `coupon_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Eid2014', '2024-04-13', 2, 15, 'Active', NULL, NULL),
(2, 'Customer24', '2024-04-10', 1, 500, 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_12_26_152451_create_categories_table', 1),
(7, '2023_12_29_092218_create_subcategories_table', 1),
(8, '2023_12_30_120542_create_childcategories_table', 1),
(9, '2023_12_30_154745_create_brands_table', 1),
(10, '2024_01_02_094527_create_seos_table', 1),
(11, '2024_01_02_102827_create_smtps_table', 1),
(12, '2024_01_02_103855_create_pages_table', 1),
(13, '2024_01_04_094939_create_products_table', 1),
(14, '2024_01_04_102702_create_warehouses_table', 1),
(15, '2024_01_04_104716_create_settings_table', 1),
(16, '2024_01_06_043049_create_coupons_table', 1),
(17, '2024_01_06_052323_create_pickup_point_table', 1),
(18, '2024_02_09_104111_create_reviews_table', 1),
(19, '2024_02_20_072331_create_wishlists_table', 1),
(20, '2024_02_22_081901_create_campaigns_table', 1),
(21, '2024_03_03_160724_create_webreviews_table', 1),
(22, '2024_03_04_090415_create_shippings_table', 1),
(23, '2024_03_04_102416_create_newsletters_table', 1),
(24, '2024_03_04_110829_create_orders_table', 1),
(25, '2024_03_04_111047_create_order_details_table', 1),
(26, '2024_03_05_141526_create_tickets_table', 1),
(27, '2024_03_05_143402_create_replies_table', 1),
(28, '2024_03_06_075620_create_payment_gateway_bd_table', 1),
(29, '2024_03_20_095730_create_blog_category_table', 1),
(30, '2024_03_20_095759_create_blogs_table', 1),
(31, '2024_03_22_084157_create__childcategories_table', 2),
(32, '2024_03_22_084428_create_childcategories_table', 3),
(33, '2024_03_22_085712_create_brands_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'sangita@gmail.com', NULL, NULL),
(2, 'himadrita@gmail.com', NULL, NULL),
(3, 'admin@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `c_phone` varchar(255) DEFAULT NULL,
  `c_email` varchar(255) DEFAULT NULL,
  `c_country` varchar(255) DEFAULT NULL,
  `c_zipcode` varchar(255) DEFAULT NULL,
  `c_address` varchar(255) DEFAULT NULL,
  `c_extra_phone` varchar(255) DEFAULT NULL,
  `c_city` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_discount` varchar(255) DEFAULT NULL,
  `after_discount` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `shipping_charge` varchar(5) DEFAULT NULL,
  `order_id` varchar(25) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `c_name`, `c_phone`, `c_email`, `c_country`, `c_zipcode`, `c_address`, `c_extra_phone`, `c_city`, `subtotal`, `total`, `coupon_code`, `coupon_discount`, `after_discount`, `payment_type`, `tax`, `shipping_charge`, `order_id`, `status`, `date`, `month`, `year`, `created_at`, `updated_at`) VALUES
(1, 3, 'Customer', '019xxxxxxx', 'shoumen853@gmail.com', 'Bangladesh', NULL, 'Bijayrampur,Manirampur,jashore', NULL, 'Manirampur', '0.00', '0.00', NULL, NULL, NULL, 'Aamarpay', '0', '0', '597038', 3, '23-04-2024', 'April', '2024', NULL, NULL),
(2, 3, 'Customer', '019xxxxxxx', 'shoumen853@gmail.com', 'Bangladesh', NULL, 'Bijayrampur,Manirampur,jashore', NULL, 'Manirampur', '0.00', '0.00', NULL, NULL, NULL, 'Aamarpay', '0', '0', '712713', 3, '23-04-2024', 'April', '2024', NULL, NULL),
(3, 3, 'Customer', '019xxxxxxx', 'shoumen853@gmail.com', 'Bangladesh', NULL, 'Bijayrampur,Manirampur,jashore', NULL, 'Manirampur', '0.00', '0.00', NULL, NULL, NULL, 'Aamarpay', '0', '0', '744659', 2, '23-04-2024', 'April', '2024', NULL, NULL),
(4, 5, 'customer2', '019xxxxxxx', 'customer23@gmail.com', 'Bangladesh', NULL, 'Bijayrampur,Manirampur,jashore', NULL, 'Manirampur', '0.00', '0.00', NULL, NULL, NULL, 'Aamarpay', '0', '0', '699819', 1, '04-05-2024', 'May', '2024', NULL, NULL),
(5, 5, 'customer2', '019xxxxxxx', 'customer23@gmail.com', 'Bangladesh', NULL, 'Bijayrampur,Manirampur,jashore', NULL, 'Manirampur', '0.00', '0.00', NULL, NULL, NULL, 'Aamarpay', '0', '0', '101215', 3, '04-05-2024', 'May', '2024', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `single_price` varchar(255) DEFAULT NULL,
  `subtotal_price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_position` int(11) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `page_slug` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway_bd`
--

CREATE TABLE `payment_gateway_bd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gateway_name` varchar(255) DEFAULT NULL,
  `store_id` varchar(255) DEFAULT NULL,
  `signature_key` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateway_bd`
--

INSERT INTO `payment_gateway_bd` (`id`, `gateway_name`, `store_id`, `signature_key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aamarpay', 'aamarpaytest', 'dbb74894e82415a2f7ff0ec3a97e4183', NULL, NULL, NULL),
(2, 'Surjopay', '1', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUz', 0, NULL, NULL),
(3, 'SSL Commerz', NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_point`
--

CREATE TABLE `pickup_point` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pickup_point_name` varchar(255) NOT NULL,
  `pickup_point_address` varchar(255) NOT NULL,
  `pickup_point_phone` varchar(255) NOT NULL,
  `pickup_point_phone_two` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickup_point`
--

INSERT INTO `pickup_point` (`id`, `pickup_point_name`, `pickup_point_address`, `pickup_point_phone`, `pickup_point_phone_two`, `created_at`, `updated_at`) VALUES
(2, 'Dhanmondi Dhaka', 'Dhanmondi Road 1', '016xxxxxxxx', '012xxxxxxxx', NULL, NULL),
(3, 'Banani', 'Banani Road 11', '015xxxxxxxx', '014xxxxxxxx', NULL, NULL),
(4, 'Jashore', 'Maniranmpur Bazar', '017xxxxxxxx', '017xxxxxxxx', NULL, NULL),
(5, 'Khulna', 'Sibbari mor', '019xxxxxxxx', '013xxxxxxxx', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `purchase_price` varchar(255) DEFAULT NULL,
  `selling_price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `stock_quantity` varchar(255) DEFAULT NULL,
  `warehouse` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `today_deal` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `product_slider` varchar(255) DEFAULT NULL,
  `product_views` int(25) DEFAULT NULL,
  `flash_deal_id` int(11) DEFAULT NULL,
  `cash_on_delivery` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `trendy` varchar(255) DEFAULT NULL,
  `date` varchar(25) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `pickup_point_id`, `name`, `slug`, `code`, `unit`, `tags`, `color`, `size`, `video`, `purchase_price`, `selling_price`, `discount_price`, `stock_quantity`, `warehouse`, `description`, `thumbnail`, `images`, `featured`, `today_deal`, `status`, `product_slider`, `product_views`, `flash_deal_id`, `cash_on_delivery`, `admin_id`, `trendy`, `date`, `month`, `created_at`, `updated_at`) VALUES
(8, 8, 31, 33, 24, 2, 'Switch', 'switch', '111', '12', 'switch,piano switch', 'Black,Red,white', NULL, '18251331', '20', '30', NULL, '12', 1, 'switch ........................kuy8w..........', 'switch.png', '[\"1799380849679780.jpg\",\"1799380849942110.webp\"]', 1, 1, 1, '1', 54, NULL, NULL, 1, '1', '18-05-2024', 'May', NULL, '2024-05-20 01:44:58'),
(9, 8, 31, 34, 24, 2, 'Board Switch', 'board-switch', '22', '13', 'switch,main Switch,]', 'black,red,White', 'Small,midium,large', '1354912', '200', '300', NULL, '5', 1, 'switch ...................sdnmguytg  /////', 'board-switch.jpg', '[\"1799381204703704.jpg\",\"1799381204922100.jpeg\"]', 1, 1, 1, '1', 4, NULL, NULL, 1, '1', '18-05-2024', 'May', NULL, '2024-05-18 03:36:50'),
(10, 8, 31, 35, 23, 2, 'calling bell Switch', 'calling-bell-switch', '14', '100', 'calling bel,flat switch,super star switch', 'white,black,red', 'small,Medium,large', '13+7321', '200', '300', NULL, '15', 1, 'callling bell ..........mnhtyd/............st87v', 'switch.webp', '[\"1799382371170046.jpg\",\"1799382371300858.jpeg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, NULL, '18-05-2024', 'May', NULL, '2024-05-18 03:39:56'),
(11, 11, 29, 42, 22, 2, 'Dacey Cash', 'dacey-cash', 'Dolore aliquam volup', 'Soluta nulla qui ame', 'Aliquam consequatur', 'Veritatis recusandae', 'Et commodi consectet', 'Dolore ipsa hic est', '297', '266', '151', '16', 1, 'Dolore pariatur Non', 'dacey-cash.jpeg', NULL, 1, 1, 1, '1', NULL, NULL, NULL, 1, NULL, '19-05-2024', 'May', NULL, NULL),
(12, 10, 27, 39, 22, 2, 'Maia Jennings', 'maia-jennings', 'Rem cupiditate quisq', 'Sit dolor ea libero', 'Exercitationem accus', 'Eligendi duis ut lab', 'Voluptate et hic ist', 'Qui illo voluptas in', '425', '162', '147', '897', 1, 'Consequuntur sed dol', 'maia-jennings.JPG', NULL, 1, 1, 1, '1', NULL, NULL, NULL, 1, NULL, '19-05-2024', 'May', NULL, NULL),
(13, 10, 27, 39, 22, 2, 'Walter Cruz', 'walter-cruz', 'Aliquip ab nisi qui', 'Itaque nisi consecte', 'Dolore qui molestias', 'Magni dolorem numqua', 'In natus assumenda q', 'Et anim totam except', '628', '743', '622', '312', 1, 'Suscipit rem sapient', 'walter-cruz.jpg', NULL, 1, 1, 1, '1', NULL, NULL, NULL, 1, NULL, '19-05-2024', 'May', NULL, NULL),
(14, 12, 28, 45, 27, 2, 'Thomas Workman', 'thomas-workman', 'Culpa ut accusantiu', 'Id sed qui sed sequi', 'Et deserunt exercita', 'Sint nostrum cupida', 'Adipisicing rerum te', 'Et tempore nobis su', '192', '15', '940', '161', 1, 'Odio do consequatur', 'thomas-workman.JPG', NULL, 1, 1, 1, '1', NULL, NULL, NULL, 1, NULL, '19-05-2024', 'May', NULL, NULL),
(15, 10, 27, 39, 26, 2, 'Wang Santana', 'wang-santana', 'Qui fugit dolorem n', 'Irure quas vitae aut', 'In officia voluptati', 'Nisi qui voluptatem', 'Iste aut sit aut ali', 'Nemo lorem est velit', '948', '477', '679', '716', 1, 'Deserunt molestiae s', 'wang-santana.png', NULL, 1, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, '19-05-2024', 'May', NULL, NULL),
(16, 10, 27, 39, 22, 2, 'Uriah Wilkinson', 'uriah-wilkinson', 'Qui excepturi et a u', 'Quaerat ipsa placea', 'Quo perferendis aute', 'Et irure eius dolore', 'Veniam adipisicing', 'Corporis tempora inv', '693', '28', '268', '459', 1, 'Voluptatem Quia qui', 'uriah-wilkinson.jpg', NULL, 1, 1, 1, NULL, NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(17, 12, 28, 45, 30, 3, 'Allen Wagner', 'allen-wagner', 'Magnam laborum neque', 'Reprehenderit molest', 'Vel ipsum deserunt n,Et iusto in quia max', 'Dolores sed temporib,Ab eos est rerum nos', 'Maiores non beatae r,Et aliqua Architect', 'Assumenda autem offi', '704', '763', '509', '80', 1, 'Ut eum facilis conse', 'allen-wagner.JPG', NULL, 1, 1, 1, '1', NULL, NULL, NULL, 1, NULL, '19-05-2024', 'May', NULL, NULL),
(18, 8, 31, 33, 22, 2, 'Julian Acevedo', 'julian-acevedo', 'Omnis ullam unde com', 'Perspiciatis velit', 'Enim ut fuga Facili', 'Nulla consectetur ad', 'Nulla et perspiciati', 'Aut dolor aut dolore', '497', '253', '682', '213', 1, 'Ut dolorem qui et qu', 'julian-acevedo.JPG', NULL, 1, 1, 1, '1', NULL, NULL, NULL, 1, NULL, '19-05-2024', 'May', NULL, NULL),
(19, 9, 30, 36, 22, 2, 'Stacey Mann', 'stacey-mann', 'Ipsa libero dolore', 'Commodi dolore deser', 'Ullam aliquip ex dol', 'Velit velit ut veni', 'Est consequatur nobi', 'Ex earum velit sint', '724', '234', '109', '608', 1, 'Non voluptates in ul', 'stacey-mann.png', NULL, 1, 1, 1, '1', NULL, NULL, NULL, 1, NULL, '19-05-2024', 'May', NULL, '2024-05-19 00:59:57'),
(20, 11, 29, 42, 22, 2, 'Giselle Guthrie', 'giselle-guthrie', 'Libero occaecat reic', 'Velit eos reprehend', 'Sunt autem vel eius', 'Iste aliqua Exercit', 'Omnis sapiente et cu', 'Ea quidem quae est u', '759', '824', '7', '381', 1, 'Iste sapiente quia e', 'giselle-guthrie.jpg', NULL, 1, 1, 1, '1', NULL, NULL, NULL, 1, NULL, '19-05-2024', 'May', NULL, NULL),
(21, 11, 29, 42, 22, 2, 'Idola Soto', 'idola-soto', 'Provident voluptate', 'Quis nisi necessitat', 'Et aut quo ullamco c', 'Et in commodi nulla', 'Quis laboriosam cil', 'Quam perferendis des', '120', '23', '797', '171', 1, 'Nihil in iste sint e', 'idola-soto.jpg', '[\"1799463581527990.jpeg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, NULL, '19-05-2024', 'May', NULL, NULL),
(22, 11, 29, 42, 22, 2, 'Isadora Bass', 'isadora-bass', 'Molestiae molestias', 'Illum sunt consecte', 'Rerum fugit eiusmod', 'Ipsum molestiae ass', 'Commodo iste numquam', 'Et rerum cillum accu', '582', '365', '34', '270', 1, 'Quos dolores volupta', 'isadora-bass.jpeg', '[\"1799463610817276.webp\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, NULL, '19-05-2024', 'May', NULL, NULL),
(23, 11, 29, 42, 22, 2, 'Orla Chase', 'orla-chase', 'Elit beatae nesciun', 'Ipsum culpa duis ut', 'Commodi rerum volupt', 'Maiores pariatur Ne', 'Aut optio qui odio', 'Non ad vel consequat', '580', '796', '98', '492', 1, 'Laudantium voluptat', 'orla-chase.png', '[\"1799463633655951.webp\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, NULL, '19-05-2024', 'May', NULL, NULL),
(24, 11, 29, 42, 22, 2, 'Aphrodite Pugh', 'aphrodite-pugh', 'Sed quod dolorem Nam', 'Labore ea nesciunt', 'Et delectus volupta', 'Ipsam fugiat optio', 'Ut illo ea quibusdam', 'Sequi unde aut porro', '169', '807', '862', '974', 1, 'Autem duis et quidem', 'aphrodite-pugh.jpeg', '[\"1799463817597101.jpeg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, '2024-05-19 03:10:03'),
(25, 8, 31, 33, 22, 2, 'Jamal Kim', 'jamal-kim', 'Amet ipsum adipisci', 'Molestiae dolor dict', 'Voluptas adipisci si', 'Sed sequi consectetu', 'Eu neque elit vero', 'Excepteur repudianda', '955', '44', '649', '394', 1, 'Ut earum commodi dol', 'jamal-kim.jpeg', '[\"1799463840308508.webp\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(26, 11, 29, 42, 22, 2, 'Shoshana Middleton', 'shoshana-middleton', 'Voluptatibus maxime', 'Non ad accusamus et', 'Fugiat dolore enim', 'Consectetur dolor v', 'Do voluptatem nostr', 'Doloremque dolore ne', '410', '790', '886', '25', 1, 'Nemo sed animi aute', 'shoshana-middleton.jpeg', '[\"1799463862923862.jpeg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(27, 11, 29, 42, 22, 2, 'Claire Castro', 'claire-castro', 'Eos optio aut moll', 'Voluptatem Tenetur', 'Eaque doloremque mol', 'Aperiam quis laborum', 'Molestias non sit ip', 'Voluptatem vero quib', '735', '653', '330', '566', 1, 'Exercitationem vel q', 'claire-castro.webp', '[\"1799463892946024.webp\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(28, 11, 29, 42, 22, 2, 'Kasimir Hughes', 'kasimir-hughes', 'Et ut recusandae Vo', 'Rerum aliquip totam', 'Enim modi exercitati', 'Corrupti reprehende', 'Dolores nobis expedi', 'Est et eiusmod in v', '688', '149', '166', '877', 1, 'Mollitia quis ipsum', 'kasimir-hughes.jpg', '[\"1799463913771357.jpg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(29, 11, 29, 42, 22, 2, 'Dai Cleveland', 'dai-cleveland', 'Ut sed quaerat dicta', 'Quia qui vero illo e', 'Enim aperiam incidun', 'Ipsum nisi vel dolor', 'Est sint sequi moles', 'Esse laborum Ut con', '919', '203', '923', '127', 1, 'Libero consequuntur', 'dai-cleveland.jpeg', '[\"1799463961412919.jpeg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, '2024-05-19 02:49:53'),
(30, 12, 28, 45, 22, 2, 'Kessie Morton', 'kessie-morton', 'Cupidatat aliquip la', 'Blanditiis et et dol', 'Quisquam ad praesent', 'Dolore eum nisi unde', 'Et et neque a cillum', 'Debitis voluptates i', '228', '183', '751', '730', 1, 'Necessitatibus exerc', 'kessie-morton.jpeg', '[\"1799464280562399.jpeg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(31, 12, 28, 45, 22, 2, 'Cade Hall', 'cade-hall', 'Velit ducimus et nu', 'Quia veniam qui eve', 'Enim inventore exerc', 'Inventore sunt ea qu', 'Id voluptatem et ci', 'Aut doloremque inven', '812', '229', '868', '710', 1, 'Sit culpa sed et mod', 'cade-hall.png', '[\"1799464310994550.webp\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(32, 12, 28, 45, 22, 2, 'Zena Mcpherson', 'zena-mcpherson', 'Sed quis illo volupt', 'Ea ipsam voluptate u', 'Enim inventore exerc,Dignissimos laudanti,Voluptatem voluptat', 'Inventore sunt ea qu,Animi dolor in cons,Dolore ut optio qui', 'Id voluptatem et ci,Praesentium adipisci,Culpa consequatur do', 'Iste earum error eu', '94', '97', '171', '724', 1, 'Ullamco consequat O', 'zena-mcpherson.webp', '[\"1799464342371437.jpg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(33, 12, 28, 45, 22, 2, 'Nomlanga Frost', 'nomlanga-frost', 'Voluptatem nihil al', 'Consequat Dicta exe', 'Amet qui lorem quis', 'Est quia deserunt ul', 'Voluptate itaque eni', 'Dolorem amet molest', '897', '599', '679', '331', 1, 'Et velit ducimus i', 'nomlanga-frost.jpeg', '[\"1799464364205260.jpg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(34, 12, 28, 45, 22, 2, 'Zia Conrad', 'zia-conrad', 'Ratione ipsam totam', 'Sunt doloribus corp', 'Sit suscipit et cupi,Est fugiat veniam', 'Ut laudantium conse,Eum mollit consequat', 'Molestias eos adipi,Adipisicing illo ips', 'Eaque perspiciatis', '390', '135', '662', '615', 1, 'Ipsam veniam est qu', 'zia-conrad.webp', '[\"1799464413169416.jpeg\"]', 1, 1, 1, NULL, NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(35, 12, 28, 45, 22, 4, 'Stephanie Harrell', 'stephanie-harrell', 'Nam quis qui ipsam i', 'Rerum est consequun', 'Voluptatem fuga Vel,Consequuntur sint ma,Saepe provident non,Culpa ad accusamus n,Consectetur quia qui,Aliqua Et commodi f', 'Necessitatibus inven,Minus elit consequa,Molestiae ex pariatu,Incididunt rerum inv,Cupidatat atque ut r,Est enim quam quis', 'Occaecat hic archite,Eu minus iste ducimu,Dolore dolore rerum ,Aut ipsum recusanda,Ex sed accusamus qui,In id odit aut dolor', 'Sed sed distinctio', '507', '179', '541', '144', 2, 'Ut velit aliquam con', 'stephanie-harrell.jpeg', '[\"1799464438848038.jpg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(36, 12, 28, 45, 22, 2, 'Quentin Newton', 'quentin-newton', 'Ipsam harum obcaecat', 'Aut omnis saepe inve', 'Tenetur quia aut aut,Consequatur asperio,Aliquid laborum exce,Expedita deleniti fu,Eos et accusantium ,Assumenda incidunt ,Aut fugiat corrupti,In quo et iste ipsam', 'Sed est voluptatem i,Quia provident repr,Quos quis id in fug,Magni sit quasi sunt,Laborum eum exceptur,Consequatur at volu,In perferendis sit p,Asperiores culpa te', 'Voluptate qui in eum,In aliqua Non et do,Ea sed duis facere a,Voluptas aute unde c,Ut velit in quia omn,Do magni repellendus,Rerum quo voluptatum,Quia et corporis ex', 'Ipsam itaque nisi ei', '945', '764', '790', '35', 1, 'In qui anim et ut ne', 'quentin-newton.jpg', '[\"1799464468481366.jpeg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(37, 12, 28, 45, 28, 5, 'Velma Sanchez', 'velma-sanchez', 'Eos ea voluptatibus', 'Ut laborum Sed quae', 'Rerum voluptatem Ev,Officia sapiente aut', 'Minima et at quibusd,Tempore quidem et a', 'Aute itaque enim nem,Ea harum est nisi la', 'Cupidatat porro dolo', '918', '521', '454', '181', 4, 'Velit consequatur A', 'velma-sanchez.jpg', '[\"1799464523902553.png\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(38, 10, 27, 39, 29, 3, 'Ulric Pitts', 'ulric-pitts', 'Autem quis consequat', 'Ullamco aute in volu', 'Molestias eligendi n,Corrupti quas qui i', 'Consequatur officia,Reprehenderit sit', 'Rem atque perspiciat,Incididunt dolorem a', 'Officia perferendis', '374', '839', '839', '602', 2, 'Ea dolore nobis inci', 'ulric-pitts.jpeg', '[\"1799464731094554.png\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(39, 10, 27, 39, 22, 2, 'Kay Valdez', 'kay-valdez', 'Numquam ut doloremqu', 'Voluptate sed autem', 'Facilis voluptatum e', 'Animi autem asperio', 'Quaerat aut ut cumqu', 'Esse do amet nulla', '580', '826', '161', '721', 1, 'Saepe elit dolor vo', 'kay-valdez.jpeg', '[\"1799464757409791.jpeg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(40, 10, 27, 39, 22, 2, 'Clementine Black', 'clementine-black', 'Expedita rem officia', 'Qui reprehenderit e', 'Natus atque commodi', 'Nisi consequatur qu', 'Id tempor rerum eiu', 'Ut eiusmod velit in', '646', '918', '623', '321', 1, 'Officiis qui culpa', 'clementine-black.jpg', '[\"1799464789549957.png\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(41, 10, 27, 39, 25, 3, 'Sybill Beasley', 'sybill-beasley', 'Sed sint ullamco vol', 'Magnam voluptatem se', 'Ex debitis officiis', 'Quia ut dolor ducimu', 'Aut aut autem volupt', 'Dolores aut recusand', '295', '44', '707', '722', 3, 'Tempore qui dolore', 'sybill-beasley.jpeg', '[\"1799464821072215.jpeg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(42, 10, 27, 39, 22, 2, 'Harlan Guthrie', 'harlan-guthrie', 'Illum excepteur ips', 'Ea rerum libero dese', 'Sed enim impedit au', 'Consequatur elit o', 'Molestiae recusandae', 'Id unde omnis id con', '733', '265', '79', '673', 1, 'Id quis nihil est i', 'harlan-guthrie.jpeg', '[\"1799464861041785.jpeg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(43, 10, 27, 39, 22, 2, 'Marcia Mcfadden', 'marcia-mcfadden', 'Sed vero officiis cu', 'Consectetur quisquam', 'Saepe quisquam id la', 'Consectetur exercit', 'Ipsam adipisicing li', 'Illo quidem animi p', '394', '623', '671', '301', 1, 'Magni Nam dolor libe', 'marcia-mcfadden.jpg', '[\"1799464896165039.jpg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(44, 9, 30, 36, 22, 2, 'Ora Mclean', 'ora-mclean', 'Error sunt sint et', 'Quia beatae a unde n', 'Ut exercitation qui', 'Distinctio Voluptat', 'Ut pariatur Libero', 'Dolor sed fugiat mol', '573', '660', '620', '260', 1, 'Sed sunt suscipit q', 'ora-mclean.jpeg', '[\"1799465005581439.jpeg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, '2024-05-19 01:33:10'),
(45, 9, 30, 36, 22, 2, 'May Koch', 'may-koch', 'Dolore ea incidunt', 'Facere reprehenderit', 'Architecto et deseru', 'Officia aliquam in v', 'Debitis quam ipsum', 'Reprehenderit anim n', '459', '361', '613', '159', 1, 'Quasi debitis illo m', 'may-koch.jpeg', '[\"1799465037052896.jpeg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, NULL),
(46, 9, 30, 36, 22, 2, 'Quintessa Langley', 'quintessa-langley', 'Magnam id sed optio', 'Deserunt numquam ut', 'Fuga Perspiciatis', 'Consectetur voluptat', 'Non irure ullam quis', 'Ipsum perferendis a', '73', '470', '289', '472', 1, 'Et et qui sint praes', 'quintessa-langley.webp', '[\"1799465068823467.jpg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, '2024-05-19 03:31:57'),
(47, 9, 30, 36, 22, 2, 'Rebekah Ingram', 'rebekah-ingram', 'Debitis exercitation', 'Possimus ullamco ad', 'Mollit ipsum ad acc', 'Molestiae quis labor', 'Id labore id repud', 'Id enim exercitatio', '889', '857', '159', '231', 1, 'Harum facilis consec', 'rebekah-ingram.jpg', '[\"1799465168364139.webp\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, '2024-05-19 03:31:51'),
(48, 9, 30, 36, 22, 2, 'Maia Moran', 'maia-moran', 'Quia ut minus volupt', 'Magna rerum ducimus', 'Officia qui maiores', 'Quia animi irure ut', 'Minim deleniti sunt', 'Asperiores cupidatat', '386', '16', '182', '627', 1, 'Architecto esse mole', 'maia-moran.jpg', '[\"1799465207136983.webp\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, '2024-05-19 02:22:30'),
(49, 9, 30, 36, 22, 2, 'Lucius Hatfield', 'lucius-hatfield', 'Sint quos voluptatum', 'Incidunt non sit d', 'Dolor nemo sequi exe', 'Totam aut voluptatem', 'In magnam omnis sapi', 'Sed fugit asperiore', '580', '866', '262', '498', 1, 'Dolores in ut incidi', 'lucius-hatfield.jpeg', '[\"1799465235812807.jpeg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, '2024-05-19 03:03:40'),
(50, 8, 31, 33, 22, 2, 'New Product', 'new-product', 'Eu consequatur itaqu', 'In quis ut qui et qu', 'Hic nobis modi id s', 'Aut repellendus Dol', 'Ad quis tempor alias', 'ptdpux0rSgY', '912', '650', '829', '875', 1, 'Omnis voluptas dolor', 'new-product.png', '[\"1799471765507846.jpeg\",\"1799471765582101.jpeg\",\"1799471765667215.jpeg\",\"1799471765705105.jpeg\"]', 1, 1, 1, '1', NULL, NULL, NULL, 1, '1', '19-05-2024', 'May', NULL, '2024-05-19 03:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `reply_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `review` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review_date` varchar(255) DEFAULT NULL,
  `review_month` varchar(255) DEFAULT NULL,
  `review_year` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_author` varchar(255) DEFAULT NULL,
  `meta_tag` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `google_verification` varchar(255) DEFAULT NULL,
  `google_analytics` varchar(255) DEFAULT NULL,
  `alexa_verification` varchar(255) DEFAULT NULL,
  `google_adsense` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `meta_keyword`, `google_verification`, `google_analytics`, `alexa_verification`, `google_adsense`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `phone_one` varchar(255) DEFAULT NULL,
  `phone_two` varchar(255) DEFAULT NULL,
  `main_email` varchar(255) DEFAULT NULL,
  `support_email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `currency`, `phone_one`, `phone_two`, `main_email`, `support_email`, `logo`, `favicon`, `address`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, '৳', '01711578333', '01711578333', 'marazzak@gmail.com', NULL, 'files/setting/6644682a2cf09.jpg', 'files/setting/6644682a2d471.png', 'Mohammadpur Dhaka bangladesh', 'facebook.com', 'Incidunt eius tenet', 'instagram.com', 'linkdin.com', 'youtube.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) DEFAULT NULL,
  `shipping_phone` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `shipping_country` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_zipcode` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smtps`
--

CREATE TABLE `smtps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mailer` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcat_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcat_slug`, `created_at`, `updated_at`) VALUES
(27, 10, 'Switch plug', 'switch-plug', NULL, NULL),
(28, 12, 'lump Holder', 'lump-holder', NULL, NULL),
(29, 11, 'Wire', 'wire', NULL, NULL),
(30, 9, 'Board Socket', 'board-socket', NULL, NULL),
(31, 8, 'Board Switch', 'board-switch', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `provider` varchar(20) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT 0,
  `product` int(11) DEFAULT 0,
  `offer` int(11) DEFAULT 0,
  `order` int(11) DEFAULT 0,
  `blog` int(11) DEFAULT 0,
  `pickup` int(11) DEFAULT 0,
  `ticket` int(11) DEFAULT 0,
  `contact` int(11) DEFAULT 0,
  `report` int(11) DEFAULT 0,
  `setting` int(11) DEFAULT 0,
  `userrole` int(11) DEFAULT 0,
  `role_admin` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `is_admin`, `avatar`, `provider`, `provider_id`, `access_token`, `category`, `product`, `offer`, `order`, `blog`, `pickup`, `ticket`, `contact`, `report`, `setting`, `userrole`, `role_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$8vdPXCdVIDOhpWmoAWL.Wumt9tGdkGTFNrFEX8yPS.6n7KCZQ7zPu', NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1', NULL, NULL, NULL),
(2, 'Shoumen Mondal', 'shoumen@gmail.com', NULL, '$2y$12$JWNuxxhlU.c5r9DrOkGPvesXdfRHjwiJJQCiUk0NozSbKRyqxQJKO', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, '1', NULL, NULL, NULL),
(3, 'Customer', 'customer@gmail.com', NULL, '$2y$12$jZ8.j0wl8FXqJNWzAT7xPukoV30GiIbJIy4t3G0Zti3H97NOno57G', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2024-03-30 08:26:21', '2024-03-30 08:26:21'),
(4, 'Sangita Biswas', 'sangita@gmail.com', NULL, '$2y$12$ntcZmy9w/dlXS9fduQsTmOZLIR7Z097j.hcGFARVlPVxdWNyKndRu', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2024-03-30 08:26:58', '2024-03-30 08:26:58'),
(5, 'customer2', 'customer23@gmail.com', NULL, '$2y$12$LwIGL3GRJseOBB3UFjswxOa0MGlw3HZpBzAL5nQrVnWcb32UVlLby', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2024-04-24 03:50:17', '2024-04-24 03:50:17'),
(6, 'Shoumen', 'shoumen123@gmail.com', NULL, '$2y$12$Tn7aJUm1a3uhxHxbAPMZc.mJqR3rNfhhjwLU9sUmpDMtTOIutNBcu', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_name` varchar(255) DEFAULT NULL,
  `warehouse_address` varchar(255) DEFAULT NULL,
  `warehouse_phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `warehouse_name`, `warehouse_address`, `warehouse_phone`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka 1', 'Dhanmondi road 1 Dhaka', '019xxxxxxxxx', NULL, NULL),
(2, 'Dhaka 2', 'Bonani road number 11', '018xxxxxxxx', NULL, NULL),
(3, 'Khulna 1', 'Shibbari mor', '019xxxxxxxxx', NULL, NULL),
(4, 'Khulna 2', 'Manirampur Jashore', '018xxxxxxxx', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webreviews`
--

CREATE TABLE `webreviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `review` text DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `review_date` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `video`, `date`, `created_at`, `updated_at`) VALUES
(6, 3, 50, NULL, '20 , May 2024', NULL, NULL),
(7, 3, 48, NULL, '20 , May 2024', NULL, NULL),
(8, 3, 43, NULL, '20 , May 2024', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_blog_category_id_foreign` (`blog_category_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `childcategories_category_id_foreign` (`category_id`),
  ADD KEY `childcategories_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_gateway_bd`
--
ALTER TABLE `payment_gateway_bd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pickup_point`
--
ALTER TABLE `pickup_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_user_id_foreign` (`user_id`);

--
-- Indexes for table `smtps`
--
ALTER TABLE `smtps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webreviews`
--
ALTER TABLE `webreviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webreviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateway_bd`
--
ALTER TABLE `payment_gateway_bd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_point`
--
ALTER TABLE `pickup_point`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smtps`
--
ALTER TABLE `smtps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `webreviews`
--
ALTER TABLE `webreviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD CONSTRAINT `childcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `childcategories_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webreviews`
--
ALTER TABLE `webreviews`
  ADD CONSTRAINT `webreviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
