-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2019 at 08:29 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ventor`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-03-18 05:36:11', '2019-03-18 05:36:11', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_layerslider`
--

CREATE TABLE `wp_layerslider` (
  `id` int(10) NOT NULL,
  `author` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_c` int(10) NOT NULL,
  `date_m` int(10) NOT NULL,
  `schedule_start` int(10) NOT NULL DEFAULT '0',
  `schedule_end` int(10) NOT NULL DEFAULT '0',
  `flag_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `flag_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `flag_popup` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_layerslider_revisions`
--

CREATE TABLE `wp_layerslider_revisions` (
  `id` int(10) NOT NULL,
  `slider_id` int(10) NOT NULL,
  `author` int(10) NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_c` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8015/Final', 'yes'),
(2, 'home', 'http://localhost:8015/Final', 'yes'),
(3, 'blogname', 'Basel &amp; Co.', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'neilventor@yahoo.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:182:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:16:\"shop__trashed/?$\";s:27:\"index.php?post_type=product\";s:46:\"shop__trashed/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:41:\"shop__trashed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:33:\"shop__trashed/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"portfolio-item/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"portfolio-item/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"portfolio-item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"portfolio-item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"portfolio-item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"portfolio-item/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"portfolio-item/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:35:\"portfolio-item/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:43:\"portfolio-item/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:50:\"portfolio-item/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:40:\"portfolio-item/([^/]+)/wc-api(/(.*))?/?$\";s:50:\"index.php?portfolio=$matches[1]&wc-api=$matches[3]\";s:46:\"portfolio-item/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:57:\"portfolio-item/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:39:\"portfolio-item/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:31:\"portfolio-item/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"portfolio-item/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"portfolio-item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"portfolio-item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"portfolio-item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"portfolio-item/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:58:\"portfolio_entries/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?portfolio_entries=$matches[1]&feed=$matches[2]\";s:53:\"portfolio_entries/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?portfolio_entries=$matches[1]&feed=$matches[2]\";s:34:\"portfolio_entries/([^/]+)/embed/?$\";s:50:\"index.php?portfolio_entries=$matches[1]&embed=true\";s:46:\"portfolio_entries/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?portfolio_entries=$matches[1]&paged=$matches[2]\";s:28:\"portfolio_entries/([^/]+)/?$\";s:39:\"index.php?portfolio_entries=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=43&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:56:\"D:\\xampp\\htdocs\\Final/wp-content/themes/enfold/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'enfold', 'yes'),
(41, 'stylesheet', 'enfold', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '80', 'yes'),
(59, 'thumbnail_size_h', '80', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1030', 'yes'),
(65, 'large_size_h', '1030', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:93:\"D:/xampp/htdocs/Final/wp-content/themes/enfold/config-layerslider/LayerSlider/layerslider.php\";s:29:\"layerslider_uninstall_scripts\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '43', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:11:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"av_everywhere\";a:0:{}s:7:\"av_blog\";a:0:{}s:8:\"av_pages\";a:0:{}s:16:\"av_shop_overview\";a:0:{}s:14:\"av_shop_single\";a:0:{}s:11:\"av_footer_1\";a:0:{}s:11:\"av_footer_2\";a:0:{}s:11:\"av_footer_3\";a:0:{}s:11:\"av_footer_4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:14:{i:1552894163;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1552894572;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1552894777;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1552894924;a:1:{s:32:\"av_instagram_scheduled_filecheck\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1552898362;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1552909162;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1552930572;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1552953600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1552973786;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1552973787;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1552973962;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1552973972;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1554163200;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552887600;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"5.1.1\";s:12:\"last_checked\";i:1552887381;}', 'no'),
(118, '_site_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1552888515;}', 'no'),
(122, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1552930590', 'no'),
(123, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(125, '_transient_timeout_plugin_slugs', '1552973964', 'no'),
(126, '_transient_plugin_slugs', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:27:\"woocommerce/woocommerce.php\";}', 'no'),
(127, 'recently_activated', 'a:0:{}', 'yes'),
(130, 'woocommerce_store_address', 'Bonifacio St.', 'yes'),
(131, 'woocommerce_store_address_2', '', 'yes'),
(132, 'woocommerce_store_city', 'Bago City', 'yes'),
(133, 'woocommerce_default_country', 'PH:NEC', 'yes'),
(134, 'woocommerce_store_postcode', '6101', 'yes'),
(135, 'woocommerce_allowed_countries', 'all', 'yes'),
(136, 'woocommerce_all_except_countries', '', 'yes'),
(137, 'woocommerce_specific_allowed_countries', '', 'yes'),
(138, 'woocommerce_ship_to_countries', '', 'yes'),
(139, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(140, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(141, 'woocommerce_calc_taxes', 'no', 'yes'),
(142, 'woocommerce_enable_coupons', 'yes', 'yes'),
(143, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(144, 'woocommerce_currency', 'PHP', 'yes'),
(145, 'woocommerce_currency_pos', 'left', 'yes'),
(146, 'woocommerce_price_thousand_sep', ',', 'yes'),
(147, 'woocommerce_price_decimal_sep', '.', 'yes'),
(148, 'woocommerce_price_num_decimals', '2', 'yes'),
(149, 'woocommerce_shop_page_id', '16', 'yes'),
(150, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(151, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(152, 'woocommerce_placeholder_image', '', 'yes'),
(153, 'woocommerce_weight_unit', 'kg', 'yes'),
(154, 'woocommerce_dimension_unit', 'cm', 'yes'),
(155, 'woocommerce_enable_reviews', 'yes', 'yes'),
(156, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(157, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(158, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(159, 'woocommerce_review_rating_required', 'yes', 'no'),
(160, 'woocommerce_manage_stock', 'yes', 'yes'),
(161, 'woocommerce_hold_stock_minutes', '60', 'no'),
(162, 'woocommerce_notify_low_stock', 'yes', 'no'),
(163, 'woocommerce_notify_no_stock', 'yes', 'no'),
(164, 'woocommerce_stock_email_recipient', 'neilventor@yahoo.com', 'no'),
(165, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(166, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(167, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(168, 'woocommerce_stock_format', '', 'yes'),
(169, 'woocommerce_file_download_method', 'force', 'no'),
(170, 'woocommerce_downloads_require_login', 'no', 'no'),
(171, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(172, 'woocommerce_prices_include_tax', 'no', 'yes'),
(173, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(174, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(175, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(176, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(177, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(178, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(179, 'woocommerce_price_display_suffix', '', 'yes'),
(180, 'woocommerce_tax_total_display', 'itemized', 'no'),
(181, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(182, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(183, 'woocommerce_ship_to_destination', 'billing', 'no'),
(184, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(185, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(186, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(187, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(188, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(189, 'woocommerce_registration_generate_username', 'yes', 'no'),
(190, 'woocommerce_registration_generate_password', 'yes', 'no'),
(191, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(192, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(193, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(194, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(195, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(196, 'woocommerce_trash_pending_orders', '', 'no'),
(197, 'woocommerce_trash_failed_orders', '', 'no'),
(198, 'woocommerce_trash_cancelled_orders', '', 'no'),
(199, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(200, 'woocommerce_email_from_name', 'Basel &amp; Co.', 'no'),
(201, 'woocommerce_email_from_address', 'neilventor@yahoo.com', 'no'),
(202, 'woocommerce_email_header_image', '', 'no'),
(203, 'woocommerce_email_footer_text', '{site_title}<br/>Built with <a href=\"https://woocommerce.com/\">WooCommerce</a>', 'no'),
(204, 'woocommerce_email_base_color', '#96588a', 'no'),
(205, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(206, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(207, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(208, 'woocommerce_cart_page_id', '17', 'yes'),
(209, 'woocommerce_checkout_page_id', '18', 'yes'),
(210, 'woocommerce_myaccount_page_id', '19', 'yes'),
(211, 'woocommerce_terms_page_id', '', 'no'),
(212, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(213, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(214, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(215, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(216, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(217, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(218, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(219, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(220, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(221, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(222, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(223, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(224, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(225, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(226, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(227, 'woocommerce_api_enabled', 'no', 'yes'),
(228, 'woocommerce_single_image_width', '600', 'yes'),
(229, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(230, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(231, 'woocommerce_demo_store', 'no', 'no'),
(232, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(233, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(234, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(235, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(236, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(237, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(238, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(239, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(240, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(243, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(245, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(247, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(249, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(251, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(252, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(254, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(255, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(258, 'product_cat_children', 'a:0:{}', 'yes'),
(259, 'default_product_cat', '15', 'yes'),
(260, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(263, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(274, '_transient_timeout__woocommerce_helper_updates', '1552930762', 'no'),
(275, 'woocommerce_version', '3.5.6', 'yes'),
(278, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1552887562;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(281, 'woocommerce_db_version', '3.5.6', 'yes'),
(282, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(283, 'woocommerce_admin_notices', 'a:3:{i:1;s:20:\"no_secure_connection\";i:2;s:10:\"wootenberg\";i:3;s:21:\"jetpack_install_error\";}', 'yes'),
(289, '_transient_timeout_external_ip_address_::1', '1553492364', 'no'),
(290, '_transient_external_ip_address_::1', '0.0.0.0', 'no'),
(295, 'current_theme', 'Enfold', 'yes'),
(296, 'theme_mods_enfold', 'a:4:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552887725;s:4:\"data\";a:10:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"av_everywhere\";a:0:{}s:7:\"av_blog\";a:0:{}s:8:\"av_pages\";a:0:{}s:16:\"av_shop_overview\";a:0:{}s:14:\"av_shop_single\";a:0:{}s:11:\"av_footer_1\";a:0:{}s:11:\"av_footer_2\";a:0:{}s:11:\"av_footer_3\";a:0:{}s:11:\"av_footer_4\";a:0:{}}}s:18:\"nav_menu_locations\";a:1:{s:4:\"avia\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(297, 'theme_switched', '', 'yes'),
(298, 'widget_newsbox', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(299, 'widget_portfoliobox', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(300, 'widget_avia_socialcount', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(301, 'widget_avia_partner_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(302, 'widget_avia_google_maps', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(303, 'widget_avia_fb_likebox', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(304, 'widget_avia-instagram-feed', 'a:2:{i:1;a:1:{s:8:\"avia_key\";s:2:\"1-\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(305, 'widget_avia_combo_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(306, 'widget_avia_auto_toc', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(307, 'widget_avia_mailchimp_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(308, 'ls-plugin-version', '6.7.6', 'yes'),
(309, 'ls-db-version', '6.5.5', 'yes'),
(310, 'ls-installed', '1', 'yes'),
(311, 'ls-google-fonts', 'a:0:{}', 'yes'),
(312, 'enfold_layerslider_state', 'activated', 'yes'),
(313, 'ls-date-installed', '1552887665', 'yes'),
(314, 'enfold_layerslider_activated', '1', 'yes'),
(315, 'enfold_layerslider_data_erased', 'no', 'yes'),
(316, 'ls-show-support-notice', '0', 'yes'),
(318, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(319, 'ls_include_at_footer', '1', 'yes'),
(320, 'ls_conditional_script_loading', '1', 'yes'),
(321, 'Enfold_version', '4.5.2', 'yes'),
(324, 'avia_permalink_settings', 'a:0:{}', 'yes'),
(325, 'enfold_woo_settings_enabled', '1', 'yes'),
(326, 'av_alb_usage_av_player', 'a:0:{}', 'yes'),
(327, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";i:450;s:6:\"height\";i:450;s:4:\"crop\";b:1;}', 'yes'),
(328, 'av_alb_usage_av_blog', 'a:0:{}', 'yes'),
(329, 'shop_single_image_size', 'a:3:{s:5:\"width\";i:450;s:6:\"height\";i:999;s:4:\"crop\";b:0;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(330, 'av_alb_usage_av_buttonrow', 'a:0:{}', 'yes'),
(331, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"crop\";b:1;}', 'yes'),
(332, 'av_alb_usage_av_button', 'a:0:{}', 'yes'),
(333, 'avia_woocommerce_column_count', '3', 'yes'),
(334, 'av_alb_usage_av_button_big', 'a:0:{}', 'yes'),
(335, 'avia_woocommerce_product_count', '15', 'yes'),
(336, 'av_alb_usage_av_catalogue', 'a:0:{}', 'yes'),
(337, 'woocommerce_single_image_crop', 'no', 'yes'),
(338, 'av_alb_usage_av_comments_list', 'a:0:{}', 'yes'),
(339, 'av_alb_usage_av_contact', 'a:0:{}', 'yes'),
(340, 'av_alb_usage_av_content_slider', 'a:0:{}', 'yes'),
(341, 'av_alb_usage_av_countdown', 'a:0:{}', 'yes'),
(342, 'av_alb_usage_av_gallery', 'a:0:{}', 'yes'),
(343, 'av_alb_usage_av_horizontal_gallery', 'a:0:{}', 'yes'),
(344, 'av_alb_usage_av_google_map', 'a:0:{}', 'yes'),
(345, 'av_alb_usage_av_cell_one_full', 'a:0:{}', 'yes'),
(347, 'av_alb_usage_av_cell_one_half', 'a:0:{}', 'yes'),
(348, 'av_alb_usage_av_cell_one_third', 'a:0:{}', 'yes'),
(349, 'av_alb_usage_av_cell_two_third', 'a:0:{}', 'yes'),
(350, 'av_alb_usage_av_cell_one_fourth', 'a:0:{}', 'yes'),
(351, 'av_alb_usage_av_cell_three_fourth', 'a:0:{}', 'yes'),
(352, 'av_alb_usage_av_cell_one_fifth', 'a:0:{}', 'yes'),
(353, 'av_alb_usage_av_cell_two_fifth', 'a:0:{}', 'yes'),
(354, 'av_alb_usage_av_cell_three_fifth', 'a:0:{}', 'yes'),
(355, 'av_alb_usage_av_cell_four_fifth', 'a:0:{}', 'yes'),
(356, 'av_alb_usage_av_layout_row', 'a:0:{}', 'yes'),
(357, 'av_alb_usage_av_heading', 'a:0:{}', 'yes'),
(358, 'av_alb_usage_av_headline_rotator', 'a:0:{}', 'yes'),
(359, 'av_alb_usage_av_hr', 'a:0:{}', 'yes'),
(360, 'av_alb_usage_av_font_icon', 'a:0:{}', 'yes'),
(361, 'av_alb_usage_av_icon_box', 'a:0:{}', 'yes'),
(362, 'av_alb_usage_av_icongrid', 'a:0:{}', 'yes'),
(363, 'av_alb_usage_av_iconlist', 'a:0:{}', 'yes'),
(364, 'av_alb_usage_av_image', 'a:0:{}', 'yes'),
(365, 'av_alb_usage_av_image_hotspot', 'a:0:{}', 'yes'),
(366, 'av_alb_usage_av_partner', 'a:0:{}', 'yes'),
(367, 'av_alb_usage_av_magazine', 'a:0:{}', 'yes'),
(368, 'av_alb_usage_av_mailchimp', 'a:0:{}', 'yes'),
(369, 'av_alb_usage_av_masonry_entries', 'a:0:{}', 'yes'),
(370, 'av_alb_usage_av_masonry_gallery', 'a:0:{}', 'yes'),
(371, 'av_alb_usage_av_submenu', 'a:0:{}', 'yes'),
(372, 'av_alb_usage_av_notification', 'a:0:{}', 'yes'),
(373, 'av_alb_usage_av_animated_numbers', 'a:0:{}', 'yes'),
(374, 'av_alb_usage_av_portfolio', 'a:0:{}', 'yes'),
(375, 'av_alb_usage_av_postslider', 'a:0:{}', 'yes'),
(376, 'av_alb_usage_av_product_button', 'a:0:{}', 'yes'),
(377, 'av_alb_usage_av_product_info', 'a:0:{}', 'yes'),
(378, 'av_alb_usage_av_product_review', 'a:0:{}', 'yes'),
(379, 'av_alb_usage_av_product_tabs', 'a:0:{}', 'yes'),
(380, 'av_alb_usage_av_product_upsells', 'a:0:{}', 'yes'),
(381, 'av_alb_usage_av_product_meta', 'a:0:{}', 'yes'),
(382, 'av_alb_usage_av_product_price', 'a:0:{}', 'yes'),
(383, 'av_alb_usage_av_productslider', 'a:0:{}', 'yes'),
(384, 'av_alb_usage_av_progress', 'a:0:{}', 'yes'),
(385, 'av_alb_usage_av_promobox', 'a:0:{}', 'yes'),
(386, 'av_alb_usage_avia_sc_search', 'a:0:{}', 'yes'),
(387, 'av_alb_usage_av_slideshow', 'a:1:{i:64;a:2:{s:7:\"version\";s:3:\"1.0\";s:5:\"count\";i:1;}}', 'yes'),
(388, 'av_alb_usage_av_slideshow_accordion', 'a:0:{}', 'yes'),
(389, 'av_alb_usage_av_feature_image_slider', 'a:0:{}', 'yes'),
(390, 'av_alb_usage_av_fullscreen', 'a:1:{i:43;a:2:{s:7:\"version\";s:3:\"1.0\";s:5:\"count\";i:1;}}', 'yes'),
(391, 'av_alb_usage_av_slideshow_full', 'a:0:{}', 'yes'),
(392, 'av_alb_usage_av_layerslider', 'a:0:{}', 'yes'),
(393, 'av_alb_usage_av_social_share', 'a:0:{}', 'yes'),
(394, 'av_alb_usage_av_tab_sub_section', 'a:0:{}', 'yes'),
(395, 'av_alb_usage_av_tab_section', 'a:0:{}', 'yes'),
(396, 'av_alb_usage_av_table', 'a:0:{}', 'yes'),
(397, 'av_alb_usage_av_tab_container', 'a:0:{}', 'yes'),
(398, 'av_alb_usage_av_team_member', 'a:0:{}', 'yes'),
(399, 'av_alb_usage_av_testimonials', 'a:0:{}', 'yes'),
(400, 'av_alb_usage_av_timeline', 'a:0:{}', 'yes'),
(401, 'av_alb_usage_av_toggle_container', 'a:0:{}', 'yes'),
(402, 'av_alb_usage_av_video', 'a:0:{}', 'yes'),
(403, 'av_alb_usage_av_codeblock', 'a:0:{}', 'yes'),
(404, 'av_alb_usage_av_one_full', 'a:1:{i:39;a:2:{s:7:\"version\";s:3:\"1.0\";s:5:\"count\";i:1;}}', 'yes'),
(405, 'av_alb_usage_av_one_half', 'a:0:{}', 'yes'),
(406, 'av_alb_usage_av_one_third', 'a:1:{i:64;a:2:{s:7:\"version\";s:3:\"1.0\";s:5:\"count\";i:3;}}', 'yes'),
(407, 'av_alb_usage_av_two_third', 'a:0:{}', 'yes'),
(408, 'av_alb_usage_av_one_fourth', 'a:0:{}', 'yes'),
(409, 'av_alb_usage_av_three_fourth', 'a:0:{}', 'yes'),
(410, 'av_alb_usage_av_one_fifth', 'a:0:{}', 'yes'),
(411, 'av_alb_usage_av_two_fifth', 'a:0:{}', 'yes'),
(412, 'av_alb_usage_av_three_fifth', 'a:0:{}', 'yes'),
(413, 'av_alb_usage_av_four_fifth', 'a:0:{}', 'yes'),
(414, 'av_alb_usage_av_postcontent', 'a:1:{i:43;a:2:{s:7:\"version\";s:3:\"1.0\";s:5:\"count\";i:2;}}', 'yes'),
(415, 'av_alb_usage_av_productgrid', 'a:0:{}', 'yes'),
(416, 'av_alb_usage_av_productlist', 'a:0:{}', 'yes'),
(417, 'av_alb_usage_av_section', 'a:0:{}', 'yes'),
(418, 'av_alb_usage_av_textblock', 'a:1:{i:64;a:2:{s:7:\"version\";s:3:\"1.0\";s:5:\"count\";i:2;}}', 'yes'),
(419, 'av_alb_usage_av_sidebar', 'a:0:{}', 'yes'),
(420, 'av_alb_usage_av_playlist_element', 'a:0:{}', 'yes'),
(421, 'av_alb_usage_av_buttonrow_item', 'a:0:{}', 'yes'),
(422, 'av_alb_usage_av_catalogue_item', 'a:0:{}', 'yes'),
(423, 'av_alb_usage_av_contact_field', 'a:0:{}', 'yes'),
(424, 'av_alb_usage_av_content_slide', 'a:0:{}', 'yes'),
(425, 'av_alb_usage_av_gmap_location', 'a:0:{}', 'yes'),
(426, 'av_alb_usage_av_rotator_item', 'a:0:{}', 'yes'),
(427, 'av_alb_usage_av_icongrid_item', 'a:0:{}', 'yes'),
(428, 'av_alb_usage_av_iconlist_item', 'a:0:{}', 'yes'),
(429, 'av_alb_usage_av_image_spot', 'a:0:{}', 'yes'),
(430, 'av_alb_usage_av_partner_logo', 'a:0:{}', 'yes'),
(431, 'av_alb_usage_av_mailchimp_field', 'a:0:{}', 'yes'),
(432, 'av_alb_usage_av_submenu_item', 'a:0:{}', 'yes'),
(433, 'av_alb_usage_av_progress_bar', 'a:0:{}', 'yes'),
(434, 'av_alb_usage_av_slide', 'a:1:{i:64;a:2:{s:7:\"version\";s:3:\"1.0\";s:5:\"count\";i:1;}}', 'yes'),
(435, 'av_alb_usage_av_slide_accordion', 'a:0:{}', 'yes'),
(436, 'av_alb_usage_av_fullscreen_slide', 'a:1:{i:43;a:2:{s:7:\"version\";s:3:\"1.0\";s:5:\"count\";i:1;}}', 'yes'),
(437, 'av_alb_usage_av_slide_full', 'a:0:{}', 'yes'),
(438, 'av_alb_usage_av_row', 'a:0:{}', 'yes'),
(439, 'av_alb_usage_av_cell', 'a:0:{}', 'yes'),
(440, 'av_alb_usage_av_tab', 'a:0:{}', 'yes'),
(441, 'av_alb_usage_av_team_icon', 'a:0:{}', 'yes'),
(442, 'av_alb_usage_av_testimonial_single', 'a:0:{}', 'yes'),
(443, 'av_alb_usage_av_timeline_item', 'a:0:{}', 'yes'),
(444, 'av_alb_usage_av_toggle', 'a:0:{}', 'yes'),
(445, 'av_alb_blog_elements_state', 'a:112:{s:9:\"av_player\";b:0;s:7:\"av_blog\";b:0;s:12:\"av_buttonrow\";b:0;s:9:\"av_button\";b:0;s:13:\"av_button_big\";b:0;s:12:\"av_catalogue\";b:0;s:16:\"av_comments_list\";b:0;s:10:\"av_contact\";b:0;s:17:\"av_content_slider\";b:0;s:12:\"av_countdown\";b:0;s:10:\"av_gallery\";b:0;s:21:\"av_horizontal_gallery\";b:0;s:13:\"av_google_map\";b:0;s:16:\"av_cell_one_full\";b:0;s:16:\"av_cell_one_half\";b:0;s:17:\"av_cell_one_third\";b:0;s:17:\"av_cell_two_third\";b:0;s:18:\"av_cell_one_fourth\";b:0;s:20:\"av_cell_three_fourth\";b:0;s:17:\"av_cell_one_fifth\";b:0;s:17:\"av_cell_two_fifth\";b:0;s:19:\"av_cell_three_fifth\";b:0;s:18:\"av_cell_four_fifth\";b:0;s:13:\"av_layout_row\";b:0;s:10:\"av_heading\";b:0;s:19:\"av_headline_rotator\";b:0;s:5:\"av_hr\";b:0;s:12:\"av_font_icon\";b:0;s:11:\"av_icon_box\";b:0;s:11:\"av_icongrid\";b:0;s:11:\"av_iconlist\";b:0;s:8:\"av_image\";b:0;s:16:\"av_image_hotspot\";b:0;s:10:\"av_partner\";b:0;s:11:\"av_magazine\";b:0;s:12:\"av_mailchimp\";b:0;s:18:\"av_masonry_entries\";b:0;s:18:\"av_masonry_gallery\";b:0;s:10:\"av_submenu\";b:0;s:15:\"av_notification\";b:0;s:19:\"av_animated_numbers\";b:0;s:12:\"av_portfolio\";b:0;s:13:\"av_postslider\";b:0;s:17:\"av_product_button\";b:0;s:15:\"av_product_info\";b:0;s:17:\"av_product_review\";b:0;s:15:\"av_product_tabs\";b:0;s:18:\"av_product_upsells\";b:0;s:15:\"av_product_meta\";b:0;s:16:\"av_product_price\";b:0;s:16:\"av_productslider\";b:0;s:11:\"av_progress\";b:0;s:11:\"av_promobox\";b:0;s:14:\"avia_sc_search\";b:0;s:12:\"av_slideshow\";b:1;s:22:\"av_slideshow_accordion\";b:0;s:23:\"av_feature_image_slider\";b:0;s:13:\"av_fullscreen\";b:1;s:17:\"av_slideshow_full\";b:0;s:14:\"av_layerslider\";b:0;s:15:\"av_social_share\";b:0;s:18:\"av_tab_sub_section\";b:0;s:14:\"av_tab_section\";b:0;s:8:\"av_table\";b:0;s:16:\"av_tab_container\";b:0;s:14:\"av_team_member\";b:0;s:15:\"av_testimonials\";b:0;s:11:\"av_timeline\";b:0;s:19:\"av_toggle_container\";b:0;s:8:\"av_video\";b:0;s:12:\"av_codeblock\";b:0;s:11:\"av_one_full\";b:1;s:11:\"av_one_half\";b:0;s:12:\"av_one_third\";b:1;s:12:\"av_two_third\";b:0;s:13:\"av_one_fourth\";b:0;s:15:\"av_three_fourth\";b:0;s:12:\"av_one_fifth\";b:0;s:12:\"av_two_fifth\";b:0;s:14:\"av_three_fifth\";b:0;s:13:\"av_four_fifth\";b:0;s:14:\"av_postcontent\";b:1;s:14:\"av_productgrid\";b:0;s:14:\"av_productlist\";b:0;s:10:\"av_section\";b:0;s:12:\"av_textblock\";b:1;s:10:\"av_sidebar\";b:0;s:19:\"av_playlist_element\";b:0;s:17:\"av_buttonrow_item\";b:0;s:17:\"av_catalogue_item\";b:0;s:16:\"av_contact_field\";b:0;s:16:\"av_content_slide\";b:0;s:16:\"av_gmap_location\";b:0;s:15:\"av_rotator_item\";b:0;s:16:\"av_icongrid_item\";b:0;s:16:\"av_iconlist_item\";b:0;s:13:\"av_image_spot\";b:0;s:15:\"av_partner_logo\";b:0;s:18:\"av_mailchimp_field\";b:0;s:15:\"av_submenu_item\";b:0;s:15:\"av_progress_bar\";b:0;s:8:\"av_slide\";b:1;s:18:\"av_slide_accordion\";b:0;s:19:\"av_fullscreen_slide\";b:1;s:13:\"av_slide_full\";b:0;s:6:\"av_row\";b:0;s:7:\"av_cell\";b:0;s:6:\"av_tab\";b:0;s:12:\"av_team_icon\";b:0;s:21:\"av_testimonial_single\";b:0;s:16:\"av_timeline_item\";b:0;s:9:\"av_toggle\";b:0;}', 'yes'),
(446, 'av_alb_element_mgr_update', '', 'yes'),
(448, 'av_alb_element_check_stat', 'a:112:{s:9:\"av_player\";s:7:\"checked\";s:7:\"av_blog\";s:7:\"checked\";s:12:\"av_buttonrow\";s:7:\"checked\";s:9:\"av_button\";s:7:\"checked\";s:13:\"av_button_big\";s:7:\"checked\";s:12:\"av_catalogue\";s:7:\"checked\";s:16:\"av_comments_list\";s:7:\"checked\";s:10:\"av_contact\";s:7:\"checked\";s:17:\"av_content_slider\";s:7:\"checked\";s:12:\"av_countdown\";s:7:\"checked\";s:10:\"av_gallery\";s:7:\"checked\";s:21:\"av_horizontal_gallery\";s:7:\"checked\";s:13:\"av_google_map\";s:7:\"checked\";s:16:\"av_cell_one_full\";s:7:\"checked\";s:16:\"av_cell_one_half\";s:7:\"checked\";s:17:\"av_cell_one_third\";s:7:\"checked\";s:17:\"av_cell_two_third\";s:7:\"checked\";s:18:\"av_cell_one_fourth\";s:7:\"checked\";s:20:\"av_cell_three_fourth\";s:7:\"checked\";s:17:\"av_cell_one_fifth\";s:7:\"checked\";s:17:\"av_cell_two_fifth\";s:7:\"checked\";s:19:\"av_cell_three_fifth\";s:7:\"checked\";s:18:\"av_cell_four_fifth\";s:7:\"checked\";s:13:\"av_layout_row\";s:7:\"checked\";s:10:\"av_heading\";s:7:\"checked\";s:19:\"av_headline_rotator\";s:7:\"checked\";s:5:\"av_hr\";s:7:\"checked\";s:12:\"av_font_icon\";s:7:\"checked\";s:11:\"av_icon_box\";s:7:\"checked\";s:11:\"av_icongrid\";s:7:\"checked\";s:11:\"av_iconlist\";s:7:\"checked\";s:8:\"av_image\";s:7:\"checked\";s:16:\"av_image_hotspot\";s:7:\"checked\";s:10:\"av_partner\";s:7:\"checked\";s:11:\"av_magazine\";s:7:\"checked\";s:12:\"av_mailchimp\";s:7:\"checked\";s:18:\"av_masonry_entries\";s:7:\"checked\";s:18:\"av_masonry_gallery\";s:7:\"checked\";s:10:\"av_submenu\";s:7:\"checked\";s:15:\"av_notification\";s:7:\"checked\";s:19:\"av_animated_numbers\";s:7:\"checked\";s:12:\"av_portfolio\";s:7:\"checked\";s:13:\"av_postslider\";s:7:\"checked\";s:17:\"av_product_button\";s:7:\"checked\";s:15:\"av_product_info\";s:7:\"checked\";s:17:\"av_product_review\";s:7:\"checked\";s:15:\"av_product_tabs\";s:7:\"checked\";s:18:\"av_product_upsells\";s:7:\"checked\";s:15:\"av_product_meta\";s:7:\"checked\";s:16:\"av_product_price\";s:7:\"checked\";s:16:\"av_productslider\";s:7:\"checked\";s:11:\"av_progress\";s:7:\"checked\";s:11:\"av_promobox\";s:7:\"checked\";s:14:\"avia_sc_search\";s:7:\"checked\";s:12:\"av_slideshow\";s:7:\"checked\";s:22:\"av_slideshow_accordion\";s:7:\"checked\";s:23:\"av_feature_image_slider\";s:7:\"checked\";s:13:\"av_fullscreen\";s:7:\"checked\";s:17:\"av_slideshow_full\";s:7:\"checked\";s:14:\"av_layerslider\";s:7:\"checked\";s:15:\"av_social_share\";s:7:\"checked\";s:18:\"av_tab_sub_section\";s:7:\"checked\";s:14:\"av_tab_section\";s:7:\"checked\";s:8:\"av_table\";s:7:\"checked\";s:16:\"av_tab_container\";s:7:\"checked\";s:14:\"av_team_member\";s:7:\"checked\";s:15:\"av_testimonials\";s:7:\"checked\";s:11:\"av_timeline\";s:7:\"checked\";s:19:\"av_toggle_container\";s:7:\"checked\";s:8:\"av_video\";s:7:\"checked\";s:12:\"av_codeblock\";s:7:\"checked\";s:11:\"av_one_full\";s:7:\"checked\";s:11:\"av_one_half\";s:7:\"checked\";s:12:\"av_one_third\";s:7:\"checked\";s:12:\"av_two_third\";s:7:\"checked\";s:13:\"av_one_fourth\";s:7:\"checked\";s:15:\"av_three_fourth\";s:7:\"checked\";s:12:\"av_one_fifth\";s:7:\"checked\";s:12:\"av_two_fifth\";s:7:\"checked\";s:14:\"av_three_fifth\";s:7:\"checked\";s:13:\"av_four_fifth\";s:7:\"checked\";s:14:\"av_postcontent\";s:7:\"checked\";s:14:\"av_productgrid\";s:7:\"checked\";s:14:\"av_productlist\";s:7:\"checked\";s:10:\"av_section\";s:7:\"checked\";s:12:\"av_textblock\";s:7:\"checked\";s:10:\"av_sidebar\";s:7:\"checked\";s:19:\"av_playlist_element\";s:7:\"checked\";s:17:\"av_buttonrow_item\";s:7:\"checked\";s:17:\"av_catalogue_item\";s:7:\"checked\";s:16:\"av_contact_field\";s:7:\"checked\";s:16:\"av_content_slide\";s:7:\"checked\";s:16:\"av_gmap_location\";s:7:\"checked\";s:15:\"av_rotator_item\";s:7:\"checked\";s:16:\"av_icongrid_item\";s:7:\"checked\";s:16:\"av_iconlist_item\";s:7:\"checked\";s:13:\"av_image_spot\";s:7:\"checked\";s:15:\"av_partner_logo\";s:7:\"checked\";s:18:\"av_mailchimp_field\";s:7:\"checked\";s:15:\"av_submenu_item\";s:7:\"checked\";s:15:\"av_progress_bar\";s:7:\"checked\";s:8:\"av_slide\";s:7:\"checked\";s:18:\"av_slide_accordion\";s:7:\"checked\";s:19:\"av_fullscreen_slide\";s:7:\"checked\";s:13:\"av_slide_full\";s:7:\"checked\";s:6:\"av_row\";s:7:\"checked\";s:7:\"av_cell\";s:7:\"checked\";s:6:\"av_tab\";s:7:\"checked\";s:12:\"av_team_icon\";s:7:\"checked\";s:21:\"av_testimonial_single\";s:7:\"checked\";s:16:\"av_timeline_item\";s:7:\"checked\";s:9:\"av_toggle\";s:7:\"checked\";}', 'yes'),
(451, 'av_alb_element_mgr', '1.0.1', 'yes'),
(456, 'enfold_initial_version', '4.5.2', 'yes'),
(457, 'enfold_fixed_random', '1', 'yes'),
(458, 'avia_options_enfold', 'a:1:{s:4:\"avia\";a:263:{s:9:\"frontpage\";s:2:\"43\";s:9:\"undefined\";s:44:\"shop_banner::{contains}av-active-shop-banner\";s:8:\"blogpage\";s:0:\"\";s:4:\"logo\";s:76:\"http://localhost:8015/Final/wp-content/uploads/2019/03/Untitled-2-300x54.png\";s:7:\"favicon\";s:60:\"http://localhost:8015/Final/wp-content/uploads/2019/03/2.png\";s:9:\"preloader\";s:8:\"disabled\";s:21:\"preloader_transitions\";s:21:\"preloader_transitions\";s:14:\"preloader_logo\";s:0:\"\";s:15:\"lightbox_active\";s:15:\"lightbox_active\";s:15:\"error404_custom\";s:8:\"disabled\";s:13:\"error404_page\";s:0:\"\";s:16:\"maintenance_mode\";s:8:\"disabled\";s:16:\"maintenance_page\";s:0:\"\";s:24:\"enable_wp_classic_editor\";s:0:\"\";s:16:\"color-body_style\";s:9:\"stretched\";s:17:\"color-frame_width\";s:2:\"20\";s:15:\"header_position\";s:10:\"header_top\";s:20:\"layout_align_content\";s:20:\"content_align_center\";s:18:\"sidebarmenu_sticky\";s:18:\"conditional_sticky\";s:19:\"sidebarmenu_widgets\";s:0:\"\";s:18:\"sidebarmenu_social\";s:8:\"disabled\";s:17:\"responsive_active\";s:17:\"responsive_active\";s:15:\"responsive_size\";s:6:\"1310px\";s:13:\"content_width\";s:2:\"73\";s:14:\"combined_width\";s:3:\"100\";s:12:\"color_scheme\";s:5:\"Black\";s:24:\"colorset-header_color-bg\";s:7:\"#191919\";s:25:\"colorset-header_color-bg2\";s:7:\"#222222\";s:29:\"colorset-header_color-primary\";s:7:\"#ffee38\";s:31:\"colorset-header_color-secondary\";s:7:\"#eb8a22\";s:27:\"colorset-header_color-color\";s:7:\"#ffffff\";s:26:\"colorset-header_color-meta\";s:7:\"#8c8c8c\";s:29:\"colorset-header_color-heading\";s:7:\"#ffffff\";s:28:\"colorset-header_color-border\";s:7:\"#444444\";s:25:\"colorset-header_color-img\";s:0:\"\";s:33:\"colorset-header_color-customimage\";s:0:\"\";s:25:\"colorset-header_color-pos\";s:13:\"center center\";s:28:\"colorset-header_color-repeat\";s:6:\"repeat\";s:28:\"colorset-header_color-attach\";s:6:\"scroll\";s:22:\"colorset-main_color-bg\";s:7:\"#191919\";s:23:\"colorset-main_color-bg2\";s:7:\"#111111\";s:27:\"colorset-main_color-primary\";s:7:\"#ffee38\";s:29:\"colorset-main_color-secondary\";s:7:\"#eb8a22\";s:25:\"colorset-main_color-color\";s:7:\"#ffffff\";s:24:\"colorset-main_color-meta\";s:7:\"#8c8c8c\";s:27:\"colorset-main_color-heading\";s:7:\"#ffffff\";s:26:\"colorset-main_color-border\";s:7:\"#444444\";s:23:\"colorset-main_color-img\";s:0:\"\";s:31:\"colorset-main_color-customimage\";s:0:\"\";s:23:\"colorset-main_color-pos\";s:13:\"center center\";s:26:\"colorset-main_color-repeat\";s:6:\"repeat\";s:26:\"colorset-main_color-attach\";s:6:\"scroll\";s:27:\"colorset-alternate_color-bg\";s:7:\"#111111\";s:28:\"colorset-alternate_color-bg2\";s:7:\"#333333\";s:32:\"colorset-alternate_color-primary\";s:7:\"#ffee38\";s:34:\"colorset-alternate_color-secondary\";s:7:\"#eb8a22\";s:30:\"colorset-alternate_color-color\";s:7:\"#ffffff\";s:29:\"colorset-alternate_color-meta\";s:7:\"#888888\";s:32:\"colorset-alternate_color-heading\";s:7:\"#ffffff\";s:31:\"colorset-alternate_color-border\";s:7:\"#444444\";s:28:\"colorset-alternate_color-img\";s:0:\"\";s:36:\"colorset-alternate_color-customimage\";s:0:\"\";s:28:\"colorset-alternate_color-pos\";s:13:\"center center\";s:31:\"colorset-alternate_color-repeat\";s:6:\"repeat\";s:31:\"colorset-alternate_color-attach\";s:6:\"scroll\";s:24:\"colorset-footer_color-bg\";s:7:\"#111111\";s:25:\"colorset-footer_color-bg2\";s:7:\"#111111\";s:29:\"colorset-footer_color-primary\";s:7:\"#ffffff\";s:31:\"colorset-footer_color-secondary\";s:7:\"#eeeeee\";s:27:\"colorset-footer_color-color\";s:7:\"#aaaaaa\";s:26:\"colorset-footer_color-meta\";s:7:\"#808080\";s:29:\"colorset-footer_color-heading\";s:7:\"#808080\";s:28:\"colorset-footer_color-border\";s:7:\"#555555\";s:25:\"colorset-footer_color-img\";s:0:\"\";s:33:\"colorset-footer_color-customimage\";s:0:\"\";s:25:\"colorset-footer_color-pos\";s:13:\"center center\";s:28:\"colorset-footer_color-repeat\";s:6:\"repeat\";s:28:\"colorset-footer_color-attach\";s:6:\"scroll\";s:24:\"colorset-socket_color-bg\";s:7:\"#191919\";s:25:\"colorset-socket_color-bg2\";s:7:\"#000000\";s:29:\"colorset-socket_color-primary\";s:7:\"#ffffff\";s:31:\"colorset-socket_color-secondary\";s:7:\"#eeeeee\";s:27:\"colorset-socket_color-color\";s:7:\"#eeeeee\";s:26:\"colorset-socket_color-meta\";s:7:\"#8c8c8c\";s:29:\"colorset-socket_color-heading\";s:7:\"#ffffff\";s:28:\"colorset-socket_color-border\";s:7:\"#333333\";s:25:\"colorset-socket_color-img\";s:0:\"\";s:33:\"colorset-socket_color-customimage\";s:0:\"\";s:25:\"colorset-socket_color-pos\";s:13:\"center center\";s:28:\"colorset-socket_color-repeat\";s:6:\"repeat\";s:28:\"colorset-socket_color-attach\";s:6:\"scroll\";s:16:\"color-body_color\";s:7:\"#191919\";s:14:\"color-body_img\";s:0:\"\";s:22:\"color-body_customimage\";s:0:\"\";s:14:\"color-body_pos\";s:13:\"center center\";s:17:\"color-body_repeat\";s:6:\"repeat\";s:17:\"color-body_attach\";s:6:\"scroll\";s:14:\"google_webfont\";s:11:\"Metrophobic\";s:12:\"default_font\";s:13:\"Arial-websave\";s:23:\"color-default_font_size\";s:0:\"\";s:9:\"quick_css\";s:0:\"\";s:16:\"advanced_styling\";a:1:{i:0;a:11:{s:2:\"id\";s:12:\"headings_all\";s:5:\"color\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:11:\"font_family\";s:0:\"\";s:11:\"font_weight\";s:0:\"\";s:14:\"text_transform\";s:0:\"\";s:12:\"header_color\";s:4:\"true\";s:10:\"main_color\";s:4:\"true\";s:15:\"alternate_color\";s:4:\"true\";s:12:\"footer_color\";s:4:\"true\";s:12:\"socket_color\";s:4:\"true\";}}s:12:\"menu_display\";s:0:\"\";s:14:\"alternate_menu\";s:0:\"\";s:24:\"header_mobile_activation\";s:17:\"mobile_menu_phone\";s:18:\"header_menu_border\";s:0:\"\";s:17:\"header_searchicon\";s:17:\"header_searchicon\";s:18:\"submenu_visibility\";s:0:\"\";s:13:\"submenu_clone\";s:18:\"av-submenu-noclone\";s:11:\"burger_size\";s:0:\"\";s:13:\"overlay_style\";s:39:\"av-overlay-side av-overlay-side-classic\";s:12:\"burger_color\";s:0:\"\";s:19:\"burger_flyout_width\";s:5:\"350px\";s:13:\"header_layout\";s:36:\"logo_left main_nav_header menu_right\";s:11:\"header_size\";s:4:\"slim\";s:18:\"header_custom_size\";s:3:\"150\";s:12:\"header_style\";s:36:\"minimal_header minimal_header_shadow\";s:16:\"header_title_bar\";s:16:\"hidden_title_bar\";s:13:\"header_sticky\";s:13:\"header_sticky\";s:16:\"header_shrinking\";s:16:\"header_shrinking\";s:18:\"header_unstick_top\";s:8:\"disabled\";s:14:\"header_stretch\";s:8:\"disabled\";s:13:\"header_social\";s:0:\"\";s:21:\"header_secondary_menu\";s:0:\"\";s:19:\"header_phone_active\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:23:\"header_replacement_logo\";s:0:\"\";s:23:\"header_replacement_menu\";s:0:\"\";s:14:\"archive_layout\";s:8:\"fullsize\";s:11:\"blog_layout\";s:8:\"fullsize\";s:13:\"single_layout\";s:8:\"fullsize\";s:11:\"page_layout\";s:8:\"fullsize\";s:15:\"archive_sidebar\";s:24:\"archive_sidebar_separate\";s:19:\"smartphones_sidebar\";s:8:\"disabled\";s:16:\"page_nesting_nav\";s:16:\"page_nesting_nav\";s:15:\"sidebar_styling\";s:17:\"no_sidebar_border\";s:22:\"sidebar_left_textalign\";s:0:\"\";s:22:\"display_widgets_socket\";s:3:\"all\";s:11:\"footer_page\";s:0:\"\";s:14:\"footer_columns\";s:1:\"4\";s:9:\"copyright\";s:0:\"\";s:13:\"footer_social\";s:8:\"disabled\";s:15:\"preview_disable\";s:8:\"disabled\";s:17:\"developer_options\";s:8:\"disabled\";s:8:\"lock_alb\";s:8:\"disabled\";s:19:\"lock_alb_for_admins\";s:8:\"disabled\";s:6:\"markup\";s:0:\"\";s:17:\"layerslider_activ\";s:0:\"\";s:17:\"blog_global_style\";s:0:\"\";s:10:\"blog_style\";s:12:\"single-small\";s:16:\"disable_post_nav\";s:8:\"disabled\";s:17:\"single_post_style\";s:10:\"single-big\";s:27:\"single_post_related_entries\";s:24:\"av-related-style-tooltip\";s:16:\"blog-meta-author\";s:16:\"blog-meta-author\";s:18:\"blog-meta-comments\";s:18:\"blog-meta-comments\";s:18:\"blog-meta-category\";s:18:\"blog-meta-category\";s:14:\"blog-meta-date\";s:14:\"blog-meta-date\";s:19:\"blog-meta-html-info\";s:19:\"blog-meta-html-info\";s:13:\"blog-meta-tag\";s:13:\"blog-meta-tag\";s:14:\"share_facebook\";s:14:\"share_facebook\";s:13:\"share_twitter\";s:13:\"share_twitter\";s:15:\"share_pinterest\";s:15:\"share_pinterest\";s:11:\"share_gplus\";s:11:\"share_gplus\";s:12:\"share_reddit\";s:12:\"share_reddit\";s:14:\"share_linkedin\";s:14:\"share_linkedin\";s:12:\"share_tumblr\";s:12:\"share_tumblr\";s:8:\"share_vk\";s:8:\"share_vk\";s:10:\"share_mail\";s:10:\"share_mail\";s:12:\"social_icons\";a:2:{i:0;a:2:{s:11:\"social_icon\";s:7:\"twitter\";s:16:\"social_icon_link\";s:25:\"http://twitter.com/kriesi\";}i:1;a:2:{s:11:\"social_icon\";s:8:\"dribbble\";s:16:\"social_icon_link\";s:26:\"http://dribbble.com/kriesi\";}}s:9:\"merge_css\";s:4:\"avia\";s:8:\"merge_js\";s:4:\"avia\";s:20:\"disable_alb_elements\";s:4:\"auto\";s:34:\"av_alb_disable_av_toggle_container\";s:8:\"disabled\";s:37:\"av_alb_disable_av_slideshow_accordion\";s:8:\"disabled\";s:27:\"av_alb_disable_av_countdown\";s:8:\"disabled\";s:34:\"av_alb_disable_av_animated_numbers\";s:8:\"disabled\";s:24:\"av_alb_disable_av_player\";s:8:\"disabled\";s:27:\"av_alb_disable_av_buttonrow\";s:8:\"disabled\";s:27:\"av_alb_disable_av_catalogue\";s:8:\"disabled\";s:25:\"av_alb_disable_av_contact\";s:8:\"disabled\";s:32:\"av_alb_disable_av_content_slider\";s:8:\"disabled\";s:27:\"av_alb_disable_av_slideshow\";s:8:\"disabled\";s:38:\"av_alb_disable_av_feature_image_slider\";s:8:\"disabled\";s:28:\"av_alb_disable_av_fullscreen\";s:8:\"disabled\";s:28:\"av_alb_disable_av_button_big\";s:8:\"disabled\";s:32:\"av_alb_disable_av_slideshow_full\";s:8:\"disabled\";s:25:\"av_alb_disable_av_submenu\";s:8:\"disabled\";s:28:\"av_alb_disable_av_google_map\";s:8:\"disabled\";s:34:\"av_alb_disable_av_headline_rotator\";s:8:\"disabled\";s:36:\"av_alb_disable_av_horizontal_gallery\";s:8:\"disabled\";s:27:\"av_alb_disable_av_font_icon\";s:8:\"disabled\";s:26:\"av_alb_disable_av_icon_box\";s:8:\"disabled\";s:26:\"av_alb_disable_av_icongrid\";s:8:\"disabled\";s:26:\"av_alb_disable_av_iconlist\";s:8:\"disabled\";s:23:\"av_alb_disable_av_image\";s:8:\"disabled\";s:31:\"av_alb_disable_av_image_hotspot\";s:8:\"disabled\";s:26:\"av_alb_disable_av_magazine\";s:8:\"disabled\";s:27:\"av_alb_disable_av_mailchimp\";s:8:\"disabled\";s:33:\"av_alb_disable_av_masonry_entries\";s:8:\"disabled\";s:33:\"av_alb_disable_av_masonry_gallery\";s:8:\"disabled\";s:30:\"av_alb_disable_av_notification\";s:8:\"disabled\";s:25:\"av_alb_disable_av_partner\";s:8:\"disabled\";s:27:\"av_alb_disable_av_portfolio\";s:8:\"disabled\";s:28:\"av_alb_disable_av_postslider\";s:8:\"disabled\";s:31:\"av_alb_disable_av_productslider\";s:8:\"disabled\";s:26:\"av_alb_disable_av_progress\";s:8:\"disabled\";s:26:\"av_alb_disable_av_promobox\";s:8:\"disabled\";s:29:\"av_alb_disable_avia_sc_search\";s:8:\"disabled\";s:20:\"av_alb_disable_av_hr\";s:8:\"disabled\";s:25:\"av_alb_disable_av_heading\";s:8:\"disabled\";s:29:\"av_alb_disable_av_tab_section\";s:8:\"disabled\";s:23:\"av_alb_disable_av_table\";s:8:\"disabled\";s:31:\"av_alb_disable_av_tab_container\";s:8:\"disabled\";s:29:\"av_alb_disable_av_team_member\";s:8:\"disabled\";s:30:\"av_alb_disable_av_testimonials\";s:8:\"disabled\";s:26:\"av_alb_disable_av_timeline\";s:8:\"disabled\";s:20:\"disable_mediaelement\";s:0:\"\";s:13:\"disable_video\";s:8:\"disabled\";s:12:\"disable_blog\";s:8:\"disabled\";s:13:\"disable_emoji\";s:8:\"disabled\";s:18:\"disable_jq_migrate\";s:8:\"disabled\";s:16:\"jquery_in_footer\";s:8:\"disabled\";s:16:\"gfonts_in_footer\";s:8:\"disabled\";s:24:\"delete_assets_after_save\";s:8:\"disabled\";s:34:\"privacy_message_commentform_active\";s:8:\"disabled\";s:15:\"privacy_message\";s:0:\"\";s:34:\"privacy_message_contactform_active\";s:8:\"disabled\";s:23:\"privacy_message_contact\";s:0:\"\";s:32:\"privacy_message_mailchimp_active\";s:8:\"disabled\";s:25:\"privacy_message_mailchimp\";s:0:\"\";s:28:\"privacy_message_login_active\";s:8:\"disabled\";s:21:\"privacy_message_login\";s:0:\"\";s:35:\"privacy_message_registration_active\";s:8:\"disabled\";s:28:\"privacy_message_registration\";s:0:\"\";s:14:\"cookie_consent\";s:8:\"disabled\";s:14:\"cookie_content\";s:97:\"This site uses cookies. By continuing to browse the site, you are agreeing to our use of cookies.\";s:15:\"cookie_position\";s:6:\"bottom\";s:15:\"msg_bar_buttons\";a:2:{i:0;a:3:{s:20:\"msg_bar_button_label\";s:2:\"OK\";s:21:\"msg_bar_button_action\";s:0:\"\";s:19:\"msg_bar_button_link\";s:0:\"\";}i:1;a:3:{s:20:\"msg_bar_button_label\";s:10:\"Learn more\";s:21:\"msg_bar_button_action\";s:10:\"info_modal\";s:19:\"msg_bar_button_link\";s:0:\"\";}}s:26:\"cookie_info_custom_content\";s:8:\"disabled\";s:27:\"cookie_info_content_heading\";s:27:\"Cookie and Privacy Settings\";s:19:\"cookie_info_content\";a:5:{i:0;a:2:{s:5:\"label\";s:18:\"How we use cookies\";s:7:\"content\";s:466:\"We may request cookies to be set on your device. We use cookies to let us know when you visit our websites, how you interact with us, to enrich your user experience, and to customize your relationship with our website. &lt;br&gt;&lt;br&gt;Click on the different category headings to find out more. You can also change some of your preferences. Note that blocking some types of cookies may impact your experience on our websites and the services we are able to offer.\";}i:1;a:2:{s:5:\"label\";s:25:\"Essential Website Cookies\";s:7:\"content\";s:393:\"These cookies are strictly necessary to provide you with services available through our website and to use some of its features. &lt;br&gt;&lt;br&gt;Because these cookies are strictly necessary to deliver the website, you cannot refuse them without impacting how our site functions. You can block or delete them by changing your browser settings and force blocking all cookies on this website.\";}i:2;a:2:{s:5:\"label\";s:24:\"Google Analytics Cookies\";s:7:\"content\";s:419:\"These cookies collect information that is used either in aggregate form to help us understand how our website is being used or how effective our marketing campaigns are, or to help us customize our website and application for you in order to enhance your experience. &lt;br&gt;&lt;br&gt;If you do not want that we track your visist to our site you can disable tracking in your browser here: [av_privacy_google_tracking]\";}i:3;a:2:{s:5:\"label\";s:23:\"Other external services\";s:7:\"content\";s:535:\"We also use different external services like Google Webfonts, Google Maps and external Video providers. Since these providers may collect personal data like your IP address we allow you to block them here. Please be aware that this might heavily reduce the functionality and appearance of our site. Changes will take effect once you reload the page.&lt;br&gt;&lt;br&gt;\n\nGoogle Webfont Settings:					\n[av_privacy_google_webfonts]\n\nGoogle Map Settings:\n[av_privacy_google_maps]\n\nVimeo and Youtube video embeds:\n[av_privacy_video_embeds]\";}i:4;a:2:{s:5:\"label\";s:14:\"Privacy Policy\";s:7:\"content\";s:128:\"You can read about our cookies and privacy settings in detail on our Privacy Policy Page. &lt;br&gt;&lt;br&gt; [av_privacy_link]\";}}s:13:\"mailchimp_api\";s:0:\"\";s:9:\"analytics\";s:0:\"\";s:8:\"gmap_api\";s:0:\"\";s:9:\"cart_icon\";s:0:\"\";s:14:\"product_layout\";s:0:\"\";s:15:\"product_gallery\";s:0:\"\";s:11:\"shop_banner\";s:0:\"\";s:17:\"shop_banner_image\";s:0:\"\";s:25:\"shop_banner_overlay_color\";s:7:\"#000000\";s:27:\"shop_banner_overlay_opacity\";s:3:\"0.5\";s:19:\"shop_banner_message\";s:0:\"\";s:25:\"shop_banner_message_color\";s:7:\"#ffffff\";s:18:\"shop_banner_global\";s:8:\"disabled\";s:17:\"avia-nonce-import\";s:10:\"e161834e41\";s:18:\"config_file_upload\";s:0:\"\";s:15:\"iconfont_upload\";s:0:\"\";s:15:\"typefont_upload\";s:0:\"\";s:20:\"updates_envato_token\";s:0:\"\";s:26:\"updates_envato_token_state\";s:0:\"\";s:16:\"updates_username\";s:0:\"\";s:15:\"updates_api_key\";s:0:\"\";s:19:\"updates_envato_info\";s:0:\"\";}}', 'yes'),
(459, 'avia_rewrite_flush', '1', 'yes'),
(460, 'avia_stylesheet_dir_writableenfold', 'true', 'yes'),
(461, 'avia_stylesheet_existsenfold', 'true', 'yes'),
(462, 'avia_stylesheet_dynamic_versionenfold', '5c8f4863143e0', 'yes'),
(472, 'avia_instagram_widgets_cache', 'a:2:{s:12:\"last_updated\";i:1552888004;s:9:\"instances\";a:1:{s:2:\"1-\";a:0:{}}}', 'yes'),
(477, 'woocommerce_product_type', 'both', 'yes'),
(478, 'woocommerce_sell_in_person', '1', 'yes'),
(479, 'woocommerce_allow_tracking', 'yes', 'yes'),
(483, 'woocommerce_ppec_paypal_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:16:\"reroute_requests\";s:3:\"yes\";s:5:\"email\";s:20:\"neilventor@yahoo.com\";}', 'yes'),
(484, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(485, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(486, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(487, 'layerslider_update_info', 'O:8:\"stdClass\":1:{s:7:\"checked\";i:1552888152;}', 'yes'),
(488, 'woocommerce_admin_notice_jetpack_install_error', 'Jetpack could not be installed (An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href=\"https://wordpress.org/support/\">support forums</a>.). <a href=\"http://localhost:8015/Final/wp-admin/index.php?wc-install-plugin-redirect=jetpack\">Please install it manually by clicking here.</a>', 'yes'),
(489, 'woocommerce_admin_notice_woocommerce-services_install_error', 'WooCommerce Services could not be installed (An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href=\"https://wordpress.org/support/\">support forums</a>.). <a href=\"http://localhost:8015/Final/wp-admin/index.php?wc-install-plugin-redirect=woocommerce-services\">Please install it manually by clicking here.</a>', 'yes'),
(490, 'woocommerce_admin_notice_ppec_paypal_install_error', 'WooCommerce PayPal Checkout Gateway could not be installed (An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href=\"https://wordpress.org/support/\">support forums</a>.). <a href=\"http://localhost:8015/Final/wp-admin/index.php?wc-install-plugin-redirect=woocommerce-gateway-paypal-express-checkout\">Please install it manually by clicking here.</a>', 'yes'),
(493, 'woocommerce_tracker_last_send', '1552888177', 'yes'),
(494, '_transient_shipping-transient-version', '1552888178', 'yes'),
(495, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:3:\"500\";}', 'yes'),
(496, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:4:\"1000\";}', 'yes'),
(498, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(500, 'woocommerce_admin_notice_mailchimp-for-woocommerce_install_error', 'Mailchimp for WooCommerce could not be installed (An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href=\"https://wordpress.org/support/\">support forums</a>.). <a href=\"http://localhost:8015/Final/wp-admin/index.php?wc-install-plugin-redirect=mailchimp-for-woocommerce\">Please install it manually by clicking here.</a>', 'yes'),
(502, '_transient_timeout_wc_setup_activated', '1552888790', 'no'),
(503, '_transient_wc_setup_activated', 'yes', 'no'),
(504, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(505, '_site_transient_update_plugins', 'O:8:\"stdClass\":2:{s:12:\"last_checked\";i:1552888191;s:8:\"response\";a:0:{}}', 'no'),
(506, '_transient_product_query-transient-version', '1552888208', 'yes'),
(508, '_transient_timeout_wc_report_sales_by_date', '1552976084', 'no'),
(509, '_transient_wc_report_sales_by_date', 'a:72:{s:32:\"c9c7ae76f7690e46834693a65bbdc0cf\";a:0:{}s:32:\"a0cd892d0f7b78ce2559ff00a2cbf718\";a:0:{}s:32:\"4ca3a946667c470226a2bfade0d82497\";a:0:{}s:32:\"4223577e47035fd7d8a768ccebfa3600\";N;s:32:\"29b862f8573c9dde2c42518803ae5742\";a:0:{}s:32:\"43db45382a2fbcfeab6b1ef411efde1d\";a:0:{}s:32:\"13db4d9623324d0016baef86d771e142\";a:0:{}s:32:\"6a2ab757e078cbeae3be30aa2d0b95d5\";a:0:{}s:32:\"109ae9555c0324a76230bd216280de9e\";a:0:{}s:32:\"1db2d93669a828d4b8f16bcb2a8eca64\";a:0:{}s:32:\"b7c4213610be851bfc6ca6d9a8a0d8cd\";a:0:{}s:32:\"faac6b3d627e68e1030f48770f9a4df1\";N;s:32:\"a488e5b547846ab19bc3d1eac37970ce\";a:0:{}s:32:\"2fc9998897415fe880c1a59b83d473e7\";a:0:{}s:32:\"d9599e35f802ead9513519de8745502b\";a:0:{}s:32:\"c9366a37fba8811dda84673a1f3fffad\";a:0:{}s:32:\"fefa2bc372944f0a04963f404865817a\";a:0:{}s:32:\"9e8ed397ffd562fe5323463a9b137aa8\";a:0:{}s:32:\"56e9f1cc8b34da49760b0f88c588d239\";a:0:{}s:32:\"0eb78c9d9cc2535fcf3ea0d34e42d508\";N;s:32:\"3f76ee647a887a519c116005552e3ed3\";a:0:{}s:32:\"9f78e657623d01238d58b9a672dfb999\";a:0:{}s:32:\"13ea0d60cf2bff55c26b203ee112a92d\";a:0:{}s:32:\"092087b034902cca4e88280f8434d50a\";a:0:{}s:32:\"486b885a345fa089eef0186d9614108b\";a:0:{}s:32:\"ff0ff0b5e1465ee6272e992d507e1f42\";a:0:{}s:32:\"5d173750f46d2930b00ceeb929171890\";a:0:{}s:32:\"b6e57531d66545269c95e91d9b02ed94\";N;s:32:\"924e208bbffe5615a87a7e01e415de87\";a:0:{}s:32:\"c0ef3beb1a9469d65948e3838e9fdea1\";a:0:{}s:32:\"d792230a8f323822f846e6ac6be8acad\";a:0:{}s:32:\"ebfe20397ad0661673f6cc1fa139c5ee\";a:0:{}s:32:\"9c1f33855ff93d53b280c96f493c2db1\";a:0:{}s:32:\"a94191182616ec5f75d6780b96cd9f8b\";a:0:{}s:32:\"863faa6097c848d0ae20929e2a21a58d\";a:0:{}s:32:\"1e9bd534c6167ad09c85453eae8febad\";N;s:32:\"90d27b5e46ba45b0802ce1468ddd646f\";a:0:{}s:32:\"b0eecf2f166136d37f2ffc2f6b878abb\";a:0:{}s:32:\"666a29ec6c84ca9dead540174aee5d42\";a:0:{}s:32:\"2c14d6cb1955b6e981abed5b85e92510\";a:0:{}s:32:\"9325a1e80759733ce013445d430180ae\";a:0:{}s:32:\"703db2ef08ad7b5827bdeb338adc17ca\";a:0:{}s:32:\"c1251884daa955aa51247e65d153aacf\";a:0:{}s:32:\"a47691b46d1eb17d2c38945bdb0d8d0e\";N;s:32:\"5c886c845cd81f6e8500aa149246ec65\";a:0:{}s:32:\"b2fb601e8ef8d570040c6af72b17d571\";a:0:{}s:32:\"3e44b533e00ef6947d862e9483b550c2\";a:0:{}s:32:\"12e91fc6de272d47b21fab990e42efd1\";a:0:{}s:32:\"44e349d405f2fc21215f33e81c1b8ea7\";a:0:{}s:32:\"f3ddabe5e7e5960462951ea28c22a119\";a:0:{}s:32:\"c8bf1c4d3019de24077d03956cfc89ef\";a:0:{}s:32:\"e5d677375edd500b1fa654b5c7896674\";N;s:32:\"bcf0c5c19aa07a78c101084fbc678341\";a:0:{}s:32:\"e87870669c4110ba24199840732d93ab\";a:0:{}s:32:\"7b18cb9bc7dd42e3077a8dbb22015b52\";a:0:{}s:32:\"4dc4b0514872df21f99d61b422422117\";a:0:{}s:32:\"b1a7e34ccc55f1748066b2ec23eb276a\";a:0:{}s:32:\"b4fcb3d750e526ab36f667e76d232b7b\";a:0:{}s:32:\"f422d82eda5cb548ecd3910ca43db19c\";a:0:{}s:32:\"5a38f2f0c8b01c7f5c5d9685bec9af8c\";N;s:32:\"7ab73ee1587ba946dcd8bde3130fa479\";a:0:{}s:32:\"1a784ec07e8e3b6611b2ca0c2d05a694\";a:0:{}s:32:\"9b1655830f622055ec7ae5330d85143c\";a:0:{}s:32:\"4bb90b263ae39d6093dba759f475f86e\";a:0:{}s:32:\"086929823d9e301329217dbe3ff2982c\";a:0:{}s:32:\"793bb628200ef61486b1a4d28765e718\";a:0:{}s:32:\"a00a3264492c20e11422a882da566795\";a:0:{}s:32:\"ca8dc72290695ae8d807f7532e1b0f81\";N;s:32:\"7aa833cb59680b9fc52ba9ca9d543331\";a:0:{}s:32:\"469ecd4bfd7808f2099a853fa1cb100c\";a:0:{}s:32:\"885779d0d659dd43473a3fdea72a981c\";a:0:{}s:32:\"5dac26e30a9af905187aa70bb43e7712\";a:0:{}}', 'no'),
(510, '_transient_timeout_wc_admin_report', '1552974637', 'no'),
(511, '_transient_wc_admin_report', 'a:1:{s:32:\"7e7e1a5e01dfb9145297bbe698143340\";a:0:{}}', 'no'),
(512, '_transient_timeout_wc_low_stock_count', '1555480237', 'no'),
(513, '_transient_wc_low_stock_count', '0', 'no'),
(514, '_transient_timeout_wc_outofstock_count', '1555480237', 'no'),
(515, '_transient_wc_outofstock_count', '0', 'no'),
(517, '_transient_timeout_wc_shipping_method_count_1_1552888178', '1555480293', 'no'),
(518, '_transient_wc_shipping_method_count_1_1552888178', '2', 'no'),
(519, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(553, 'ls-store-last-updated', '1552889455', 'yes'),
(554, 'ls-store-data', 'a:0:{}', 'no'),
(555, 'layerslider-gdpr-consent', '1', 'yes'),
(556, 'layerslider-google-fonts-enabled', '1', 'yes'),
(557, 'layerslider-aviary-enabled', '1', 'yes'),
(559, 'category_children', 'a:0:{}', 'yes'),
(605, '_site_transient_timeout_theme_roots', '1552893368', 'no'),
(606, '_site_transient_theme_roots', 'a:4:{s:6:\"enfold\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_av_alb_posts_elements_state', 'a:0:{}'),
(4, 1, '_av_alb_posts_elements_state', 'a:0:{}'),
(5, 1, '_av_el_mgr_version', '1.0'),
(6, 1, '_av_alb_element_mgr_version', '1.0.1'),
(7, 2, '_av_alb_posts_elements_state', 'a:0:{}'),
(8, 2, '_av_el_mgr_version', '1.0'),
(9, 2, '_av_alb_element_mgr_version', '1.0.1'),
(10, 3, '_av_alb_posts_elements_state', 'a:0:{}'),
(11, 3, '_av_el_mgr_version', '1.0'),
(12, 3, '_av_alb_element_mgr_version', '1.0.1'),
(13, 11, '_wp_attached_file', '2019/03/Untitled.png'),
(14, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:332;s:6:\"height\";i:66;s:4:\"file\";s:20:\"2019/03/Untitled.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Untitled-80x66.png\";s:5:\"width\";i:80;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Untitled-300x60.png\";s:5:\"width\";i:300;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"widget\";a:4:{s:4:\"file\";s:18:\"Untitled-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"square\";a:4:{s:4:\"file\";s:19:\"Untitled-180x66.png\";s:5:\"width\";i:180;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"portfolio_small\";a:4:{s:4:\"file\";s:19:\"Untitled-260x66.png\";s:5:\"width\";i:260;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"Untitled-100x66.png\";s:5:\"width\";i:100;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"Untitled-300x66.png\";s:5:\"width\";i:300;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"Untitled-300x66.png\";s:5:\"width\";i:300;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"Untitled-100x66.png\";s:5:\"width\";i:100;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 12, '_wp_attached_file', '2019/03/2.png'),
(16, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:230;s:6:\"height\";i:190;s:4:\"file\";s:13:\"2019/03/2.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:11:\"2-80x80.png\";s:5:\"width\";i:80;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"widget\";a:4:{s:4:\"file\";s:11:\"2-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"square\";a:4:{s:4:\"file\";s:13:\"2-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"portfolio_small\";a:4:{s:4:\"file\";s:13:\"2-230x185.png\";s:5:\"width\";i:230;s:6:\"height\";i:185;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 20, '_wc_review_count', '0'),
(18, 20, '_wc_rating_count', 'a:0:{}'),
(19, 20, '_wc_average_rating', '0'),
(20, 22, '_edit_lock', '1552888486:1'),
(93, 22, '_wp_trash_meta_status', 'publish'),
(94, 22, '_wp_trash_meta_time', '1552888499'),
(95, 1, '_wp_trash_meta_status', 'publish'),
(96, 1, '_wp_trash_meta_time', '1552888534'),
(97, 1, '_wp_desired_post_slug', 'hello-world'),
(98, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(99, 30, '_wp_attached_file', '2019/03/Untitled-1.png'),
(100, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:332;s:6:\"height\";i:66;s:4:\"file\";s:22:\"2019/03/Untitled-1.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Untitled-1-80x66.png\";s:5:\"width\";i:80;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Untitled-1-300x60.png\";s:5:\"width\";i:300;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"widget\";a:4:{s:4:\"file\";s:20:\"Untitled-1-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"square\";a:4:{s:4:\"file\";s:21:\"Untitled-1-180x66.png\";s:5:\"width\";i:180;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"portfolio_small\";a:4:{s:4:\"file\";s:21:\"Untitled-1-260x66.png\";s:5:\"width\";i:260;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"Untitled-1-100x66.png\";s:5:\"width\";i:100;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"Untitled-1-300x66.png\";s:5:\"width\";i:300;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"Untitled-1-300x66.png\";s:5:\"width\";i:300;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Untitled-1-100x66.png\";s:5:\"width\";i:100;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 31, '_wp_attached_file', '2019/03/Untitled-2.png'),
(102, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:310;s:6:\"height\";i:56;s:4:\"file\";s:22:\"2019/03/Untitled-2.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Untitled-2-80x56.png\";s:5:\"width\";i:80;s:6:\"height\";i:56;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Untitled-2-300x54.png\";s:5:\"width\";i:300;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"widget\";a:4:{s:4:\"file\";s:20:\"Untitled-2-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"square\";a:4:{s:4:\"file\";s:21:\"Untitled-2-180x56.png\";s:5:\"width\";i:180;s:6:\"height\";i:56;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"portfolio_small\";a:4:{s:4:\"file\";s:21:\"Untitled-2-260x56.png\";s:5:\"width\";i:260;s:6:\"height\";i:56;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"Untitled-2-100x56.png\";s:5:\"width\";i:100;s:6:\"height\";i:56;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"Untitled-2-300x56.png\";s:5:\"width\";i:300;s:6:\"height\";i:56;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"Untitled-2-300x56.png\";s:5:\"width\";i:300;s:6:\"height\";i:56;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Untitled-2-100x56.png\";s:5:\"width\";i:100;s:6:\"height\";i:56;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 2, '_wp_trash_meta_status', 'publish'),
(104, 2, '_wp_trash_meta_time', '1552888893'),
(105, 2, '_wp_desired_post_slug', 'sample-page'),
(106, 17, '_edit_lock', '1552888829:1'),
(107, 17, '_wp_trash_meta_status', 'publish'),
(108, 17, '_wp_trash_meta_time', '1552888982'),
(109, 17, '_wp_desired_post_slug', 'cart'),
(110, 18, '_wp_trash_meta_status', 'publish'),
(111, 18, '_wp_trash_meta_time', '1552888982'),
(112, 18, '_wp_desired_post_slug', 'checkout'),
(113, 19, '_wp_trash_meta_status', 'publish'),
(114, 19, '_wp_trash_meta_time', '1552888982'),
(115, 19, '_wp_desired_post_slug', 'my-account'),
(116, 3, '_wp_trash_meta_status', 'draft'),
(117, 3, '_wp_trash_meta_time', '1552888983'),
(118, 3, '_wp_desired_post_slug', 'privacy-policy'),
(119, 16, '_wp_trash_meta_status', 'publish'),
(120, 16, '_wp_trash_meta_time', '1552888983'),
(121, 16, '_wp_desired_post_slug', 'shop'),
(122, 38, '_edit_lock', '1552888907:1'),
(123, 39, '_edit_lock', '1552889129:1'),
(124, 39, '_edit_last', '1'),
(125, 39, '_aviaLayoutBuilder_active', 'active'),
(126, 39, '_avia_sc_parser_state', 'check_only'),
(127, 39, '_aviaLayoutBuilderCleanData', '[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'av-14yev\'][/av_one_full]\r\n\r\n'),
(128, 39, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:11:\"av_one_full\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(129, 39, '_av_el_mgr_version', '1.0'),
(130, 39, '_av_alb_posts_elements_state', 'a:1:{s:11:\"av_one_full\";b:1;}'),
(131, 40, '_aviaLayoutBuilder_active', 'active'),
(132, 40, '_aviaLayoutBuilderCleanData', '[av_one_full first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'av-14yev\'][/av_one_full]\r\n\r\n'),
(133, 40, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:11:\"av_one_full\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(134, 40, '_avia_sc_parser_state', 'check_only'),
(135, 40, '_av_alb_posts_elements_state', 'a:1:{s:11:\"av_one_full\";b:1;}'),
(136, 40, '_av_el_mgr_version', '1.0'),
(137, 39, 'layout', ''),
(138, 39, 'sidebar', ''),
(139, 39, 'footer', ''),
(140, 39, 'header_title_bar', ''),
(141, 39, 'header_transparency', ''),
(142, 39, '_avia_hide_featured_image', '0'),
(143, 39, '_wp_trash_meta_status', 'publish'),
(144, 39, '_wp_trash_meta_time', '1552889273'),
(145, 39, '_wp_desired_post_slug', '39-2'),
(146, 41, '_edit_lock', '1552889253:1'),
(147, 42, '_edit_lock', '1552889496:1'),
(148, 43, '_edit_lock', '1552894012:1'),
(149, 43, '_aviaLayoutBuilder_active', 'active'),
(150, 43, '_avia_sc_parser_state', 'check_only'),
(151, 43, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'44\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'lightbox\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'manually,http://\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'manually,http://\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-nq1n\'][/av_fullscreen_slide]\r\n\r\n\r\n[/av_fullscreen]\r\n\r\n[av_postcontent link=\'page,64\' av_uid=\'av-sgq3\']\r\n\r\n[av_postcontent link=\'page,78\' av_uid=\'av-jtdzuibz\']\r\n\r\n'),
(152, 43, '_avia_builder_shortcode_tree', 'a:3:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:14:\"av_postcontent\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}i:2;a:3:{s:3:\"tag\";s:14:\"av_postcontent\";s:7:\"content\";a:0:{}s:5:\"index\";i:2;}}'),
(153, 44, '_wp_attached_file', '2019/03/pro60.png'),
(154, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:710;s:4:\"file\";s:17:\"2019/03/pro60.png\";s:5:\"sizes\";a:21:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"pro60-80x80.png\";s:5:\"width\";i:80;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"pro60-300x178.png\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"pro60-768x454.png\";s:5:\"width\";i:768;s:6:\"height\";i:454;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"pro60-1030x609.png\";s:5:\"width\";i:1030;s:6:\"height\";i:609;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"widget\";a:4:{s:4:\"file\";s:15:\"pro60-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"square\";a:4:{s:4:\"file\";s:17:\"pro60-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:18:\"pro60-1200x430.png\";s:5:\"width\";i:1200;s:6:\"height\";i:430;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"featured_large\";a:4:{s:4:\"file\";s:18:\"pro60-1200x630.png\";s:5:\"width\";i:1200;s:6:\"height\";i:630;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:17:\"pro60-495x400.png\";s:5:\"width\";i:495;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"portfolio_small\";a:4:{s:4:\"file\";s:17:\"pro60-260x185.png\";s:5:\"width\";i:260;s:6:\"height\";i:185;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"gallery\";a:4:{s:4:\"file\";s:17:\"pro60-845x684.png\";s:5:\"width\";i:845;s:6:\"height\";i:684;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"magazine\";a:4:{s:4:\"file\";s:17:\"pro60-710x375.png\";s:5:\"width\";i:710;s:6:\"height\";i:375;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"masonry\";a:4:{s:4:\"file\";s:17:\"pro60-705x417.png\";s:5:\"width\";i:705;s:6:\"height\";i:417;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"entry_with_sidebar\";a:4:{s:4:\"file\";s:17:\"pro60-845x321.png\";s:5:\"width\";i:845;s:6:\"height\";i:321;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"entry_without_sidebar\";a:4:{s:4:\"file\";s:18:\"pro60-1200x423.png\";s:5:\"width\";i:1200;s:6:\"height\";i:423;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"pro60-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"pro60-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"pro60-600x355.png\";s:5:\"width\";i:600;s:6:\"height\";i:355;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"pro60-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"pro60-600x355.png\";s:5:\"width\";i:600;s:6:\"height\";i:355;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"pro60-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 43, '_edit_last', '1'),
(156, 43, '_av_el_mgr_version', '1.0'),
(157, 43, '_av_alb_posts_elements_state', 'a:3:{s:13:\"av_fullscreen\";b:1;s:14:\"av_postcontent\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(158, 45, '_aviaLayoutBuilder_active', 'active'),
(159, 45, '_aviaLayoutBuilderCleanData', '[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/pro60-300x178.png\' attachment=\'44\' attachment_size=\'medium\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'\' font_size=\'\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jtdye7oq\' admin_preview_bg=\'\'][/av_image]\r\n\r\n'),
(160, 45, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:8:\"av_image\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(161, 45, '_avia_sc_parser_state', 'check_only'),
(162, 45, '_av_alb_posts_elements_state', 'a:1:{s:8:\"av_image\";b:1;}'),
(163, 45, '_av_el_mgr_version', '1.0'),
(164, 43, 'layout', 'fullsize'),
(165, 43, 'sidebar', ''),
(166, 43, 'footer', ''),
(167, 43, 'header_title_bar', 'hidden_title_bar'),
(168, 43, 'header_transparency', 'header_transparent'),
(169, 43, '_avia_hide_featured_image', '0'),
(170, 46, '_aviaLayoutBuilder_active', 'active'),
(171, 46, '_aviaLayoutBuilderCleanData', '[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/pro60-300x178.png\' attachment=\'44\' attachment_size=\'medium\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'\' font_size=\'\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jtdye7oq\' admin_preview_bg=\'\'][/av_image]\r\n\r\n'),
(172, 46, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:8:\"av_image\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(173, 46, '_avia_sc_parser_state', 'check_only'),
(174, 46, '_av_alb_posts_elements_state', 'a:1:{s:8:\"av_image\";b:1;}'),
(175, 46, '_av_el_mgr_version', '1.0'),
(177, 47, '_aviaLayoutBuilder_active', 'active'),
(178, 47, '_avia_sc_parser_state', 'check_only'),
(179, 47, '_av_el_mgr_version', '1.0'),
(180, 48, '_wp_trash_meta_status', 'publish'),
(181, 48, '_wp_trash_meta_time', '1552889872'),
(182, 49, '_aviaLayoutBuilder_active', 'active'),
(183, 49, '_aviaLayoutBuilderCleanData', '<!-- wp:paragraph -->\r\n\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:shortcode /-->'),
(184, 49, '_avia_sc_parser_state', 'check_only'),
(185, 49, '_av_el_mgr_version', '1.0'),
(186, 50, '_aviaLayoutBuilder_active', 'active'),
(187, 50, '_aviaLayoutBuilderCleanData', '[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/pro60.png\' attachment=\'44\' attachment_size=\'full\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'\' font_size=\'\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jtdym1i1\' admin_preview_bg=\'\'][/av_image]\r\n\r\n'),
(188, 50, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:8:\"av_image\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(189, 50, '_avia_sc_parser_state', 'check_only'),
(190, 50, '_av_alb_posts_elements_state', 'a:1:{s:8:\"av_image\";b:1;}'),
(191, 50, '_av_el_mgr_version', '1.0'),
(192, 51, '_aviaLayoutBuilder_active', 'active'),
(193, 51, '_aviaLayoutBuilderCleanData', '[av_partner columns=\'3\' heading=\'\' size=\'no scaling\' img_size_behave=\'\' border=\'\' type=\'slider\' animation=\'slide\' navigation=\'arrows\' autoplay=\'false\' interval=\'5\' av_uid=\'av-jtdyn3pl\']\r\n[av_partner_logo id=\'31\' hover=\'\' link=\'\' linktitle=\'\' link_target=\'\' av_uid=\'av-3er63\']\r\n\r\n\r\n[/av_partner]\r\n\r\n[av_buttonrow alignment=\'center\' button_spacing=\'5\' button_spacing_unit=\'px\' av-desktop-hide=\'\' av-medium-hide=\'\' av-small-hide=\'\' av-mini-hide=\'\' av_uid=\'av-2hoi7\']\r\n[av_buttonrow_item label=\'Click me\' icon=\'4\' av_uid=\'av-2187z\'][/av_buttonrow_item]\r\n[av_buttonrow_item label=\'Call to Action\' icon=\'5\' av_uid=\'av-1pcr3\'][/av_buttonrow_item]\r\n[av_buttonrow_item label=\'Click me\' icon=\'6\' av_uid=\'av-13hk7\'][/av_buttonrow_item]\r\n[/av_buttonrow]\r\n\r\n[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/pro60.png\' attachment=\'44\' attachment_size=\'full\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'\' font_size=\'\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jtdym1i1\' admin_preview_bg=\'\'][/av_image]\r\n\r\n'),
(194, 51, '_avia_builder_shortcode_tree', 'a:3:{i:0;a:3:{s:3:\"tag\";s:10:\"av_partner\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:12:\"av_buttonrow\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}i:2;a:3:{s:3:\"tag\";s:8:\"av_image\";s:7:\"content\";a:0:{}s:5:\"index\";i:2;}}'),
(195, 51, '_avia_sc_parser_state', 'check_only'),
(196, 51, '_av_alb_posts_elements_state', 'a:5:{s:12:\"av_buttonrow\";b:1;s:8:\"av_image\";b:1;s:10:\"av_partner\";b:1;s:17:\"av_buttonrow_item\";b:1;s:15:\"av_partner_logo\";b:1;}'),
(197, 51, '_av_el_mgr_version', '1.0'),
(198, 52, '_aviaLayoutBuilder_active', 'active'),
(199, 52, '_aviaLayoutBuilderCleanData', '[av_buttonrow alignment=\'center\' button_spacing=\'5\' button_spacing_unit=\'px\' av-desktop-hide=\'\' av-medium-hide=\'\' av-small-hide=\'\' av-mini-hide=\'\' av_uid=\'av-2ipp3\']\r\n[av_buttonrow_item label=\'Click me\' icon=\'4\' av_uid=\'av-21zaz\'][/av_buttonrow_item]\r\n[av_buttonrow_item label=\'Call to Action\' icon=\'5\' av_uid=\'av-1emy7\'][/av_buttonrow_item]\r\n[av_buttonrow_item label=\'Click me\' icon=\'6\' av_uid=\'av-uvdj\'][/av_buttonrow_item]\r\n[/av_buttonrow]\r\n\r\n[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/pro60.png\' attachment=\'44\' attachment_size=\'full\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'\' font_size=\'\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jtdym1i1\' admin_preview_bg=\'\'][/av_image]\r\n\r\n'),
(200, 52, '_avia_builder_shortcode_tree', 'a:2:{i:0;a:3:{s:3:\"tag\";s:12:\"av_buttonrow\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:8:\"av_image\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}}'),
(201, 52, '_avia_sc_parser_state', 'check_only'),
(202, 52, '_av_alb_posts_elements_state', 'a:3:{s:12:\"av_buttonrow\";b:1;s:8:\"av_image\";b:1;s:17:\"av_buttonrow_item\";b:1;}'),
(203, 52, '_av_el_mgr_version', '1.0'),
(204, 53, '_aviaLayoutBuilder_active', 'active'),
(205, 53, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide\' conditional_play=\'\' autoplay=\'false\' autoplay_stopper=\'\' interval=\'5\' control_layout=\'\' scroll_down=\'\' perma_caption=\'\' av-desktop-hide=\'\' av-medium-hide=\'\' av-small-hide=\'\' av-mini-hide=\'\' av_uid=\'av-z8xr\'][/av_fullscreen]\r\n\r\n'),
(206, 53, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(207, 53, '_avia_sc_parser_state', 'check_only'),
(208, 53, '_av_alb_posts_elements_state', 'a:1:{s:13:\"av_fullscreen\";b:1;}'),
(209, 53, '_av_el_mgr_version', '1.0'),
(210, 54, '_aviaLayoutBuilder_active', 'active'),
(211, 54, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\r\n[av_fullscreen_slide id=\'44\' av_uid=\'av-ya4z\'][/av_fullscreen_slide]\r\n\r\n\r\n[/av_fullscreen]\r\n\r\n'),
(212, 54, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(213, 54, '_avia_sc_parser_state', 'check_only'),
(214, 54, '_av_alb_posts_elements_state', 'a:2:{s:13:\"av_fullscreen\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(215, 54, '_av_el_mgr_version', '1.0'),
(222, 56, '_aviaLayoutBuilder_active', 'active'),
(223, 56, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\r\n[av_fullscreen_slide id=\'44\' av_uid=\'av-ya4z\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\r\n\r\n\r\n[/av_fullscreen]\r\n\r\n'),
(224, 56, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(225, 56, '_avia_sc_parser_state', 'check_only'),
(226, 56, '_av_alb_posts_elements_state', 'a:2:{s:13:\"av_fullscreen\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(227, 56, '_av_el_mgr_version', '1.0'),
(228, 57, '_wp_trash_meta_status', 'publish'),
(229, 57, '_wp_trash_meta_time', '1552890521'),
(230, 58, '_aviaLayoutBuilder_active', 'active'),
(231, 58, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\r\n[av_fullscreen_slide id=\'44\' av_uid=\'av-ya4z\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\r\n\r\n\r\n[/av_fullscreen]\r\n\r\n'),
(232, 58, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(233, 58, '_avia_sc_parser_state', 'check_only'),
(234, 58, '_av_alb_posts_elements_state', 'a:2:{s:13:\"av_fullscreen\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(235, 58, '_av_el_mgr_version', '1.0'),
(236, 59, '_edit_lock', '1552890606:1'),
(237, 60, '_wp_attached_file', '2019/03/phonenature.png'),
(238, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1397;s:6:\"height\";i:788;s:4:\"file\";s:23:\"2019/03/phonenature.png\";s:5:\"sizes\";a:21:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"phonenature-80x80.png\";s:5:\"width\";i:80;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"phonenature-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"phonenature-768x433.png\";s:5:\"width\";i:768;s:6:\"height\";i:433;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"phonenature-1030x581.png\";s:5:\"width\";i:1030;s:6:\"height\";i:581;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"widget\";a:4:{s:4:\"file\";s:21:\"phonenature-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"square\";a:4:{s:4:\"file\";s:23:\"phonenature-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:24:\"phonenature-1397x430.png\";s:5:\"width\";i:1397;s:6:\"height\";i:430;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"featured_large\";a:4:{s:4:\"file\";s:24:\"phonenature-1397x630.png\";s:5:\"width\";i:1397;s:6:\"height\";i:630;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:23:\"phonenature-495x400.png\";s:5:\"width\";i:495;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"portfolio_small\";a:4:{s:4:\"file\";s:23:\"phonenature-260x185.png\";s:5:\"width\";i:260;s:6:\"height\";i:185;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"gallery\";a:4:{s:4:\"file\";s:23:\"phonenature-845x684.png\";s:5:\"width\";i:845;s:6:\"height\";i:684;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"magazine\";a:4:{s:4:\"file\";s:23:\"phonenature-710x375.png\";s:5:\"width\";i:710;s:6:\"height\";i:375;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"masonry\";a:4:{s:4:\"file\";s:23:\"phonenature-705x398.png\";s:5:\"width\";i:705;s:6:\"height\";i:398;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"entry_with_sidebar\";a:4:{s:4:\"file\";s:23:\"phonenature-845x321.png\";s:5:\"width\";i:845;s:6:\"height\";i:321;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"entry_without_sidebar\";a:4:{s:4:\"file\";s:24:\"phonenature-1210x423.png\";s:5:\"width\";i:1210;s:6:\"height\";i:423;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"phonenature-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"phonenature-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"phonenature-600x338.png\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"phonenature-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"phonenature-600x338.png\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"phonenature-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(239, 61, '_aviaLayoutBuilder_active', 'active'),
(240, 61, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\r\n[av_fullscreen_slide id=\'44\' av_uid=\'av-ya4z\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_fullscreen size=\'extra_large\' image_attachment=\'scroll\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'60\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'lightbox\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'manually,http://\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'manually,http://\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-t3sn\'][/av_fullscreen_slide]\r\n\r\n\r\n[/av_fullscreen]\r\n\r\n'),
(241, 61, '_avia_builder_shortcode_tree', 'a:2:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}}'),
(242, 61, '_avia_sc_parser_state', 'check_only'),
(243, 61, '_av_alb_posts_elements_state', 'a:2:{s:13:\"av_fullscreen\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(244, 61, '_av_el_mgr_version', '1.0'),
(245, 62, '_edit_lock', '1552890714:1'),
(246, 63, '_aviaLayoutBuilder_active', 'active'),
(247, 63, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\r\n[av_fullscreen_slide id=\'44\' av_uid=\'av-ya4z\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_postcontent link=\'page\' av_uid=\'av-sgq3\']\r\n\r\n'),
(248, 63, '_avia_builder_shortcode_tree', 'a:2:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:14:\"av_postcontent\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}}'),
(249, 63, '_avia_sc_parser_state', 'check_only'),
(250, 63, '_av_alb_posts_elements_state', 'a:3:{s:13:\"av_fullscreen\";b:1;s:14:\"av_postcontent\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(251, 63, '_av_el_mgr_version', '1.0'),
(252, 64, '_edit_lock', '1552894121:1'),
(253, 65, '_wp_attached_file', '2019/03/paralax-meizu-4.jpg'),
(254, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:332;s:6:\"height\";i:539;s:4:\"file\";s:27:\"2019/03/paralax-meizu-4.jpg\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"paralax-meizu-4-80x80.jpg\";s:5:\"width\";i:80;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"paralax-meizu-4-185x300.jpg\";s:5:\"width\";i:185;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:25:\"paralax-meizu-4-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:27:\"paralax-meizu-4-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:27:\"paralax-meizu-4-332x430.jpg\";s:5:\"width\";i:332;s:6:\"height\";i:430;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:27:\"paralax-meizu-4-332x400.jpg\";s:5:\"width\";i:332;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portfolio_small\";a:4:{s:4:\"file\";s:27:\"paralax-meizu-4-260x185.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"magazine\";a:4:{s:4:\"file\";s:27:\"paralax-meizu-4-332x375.jpg\";s:5:\"width\";i:332;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"entry_with_sidebar\";a:4:{s:4:\"file\";s:27:\"paralax-meizu-4-332x321.jpg\";s:5:\"width\";i:332;s:6:\"height\";i:321;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"entry_without_sidebar\";a:4:{s:4:\"file\";s:27:\"paralax-meizu-4-332x423.jpg\";s:5:\"width\";i:332;s:6:\"height\";i:423;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"paralax-meizu-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"paralax-meizu-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"paralax-meizu-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"paralax-meizu-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(255, 64, '_edit_last', '1'),
(256, 64, '_aviaLayoutBuilder_active', 'active'),
(257, 64, '_avia_sc_parser_state', 'check_only'),
(258, 64, '_aviaLayoutBuilderCleanData', '[av_one_third first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'av-2wwo4\']\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-jte0pxik\' admin_preview_bg=\'rgb(34, 34, 34)\']\r\n<h2 class=\"vc_custom_heading vc_custom_1473085551571\">Slim and Beautiful</h2>\r\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\r\n<div class=\" basel-info-box2 text-left icon-alignment-top box-style-base color-scheme-dark with-animation vc_custom_1483652611221\">\r\n<div class=\"info-box-content\">\r\n<div class=\"info-box-inner\">\r\n\r\nThe PRO 6 is a flagship phone equipped\r\nwith a space saving 5.2 inch screen.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"basel-button-wrapper text-left\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div class=\"vc_empty_space\"></div>\r\n<h2 class=\"vc_custom_heading vc_custom_1473085938391\">What a Smart Cut</h2>\r\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\r\n<div class=\" basel-info-box2 text-left icon-alignment-top box-style-base color-scheme-dark with-animation vc_custom_1483652616155\">\r\n<div class=\"info-box-content\">\r\n<div class=\"info-box-inner\">\r\n\r\nThanks to a breakthrough in antenna technology,\r\nthe signal problem by cutting the body.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"basel-button-wrapper text-left\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\r\n[/av_textblock]\r\n\r\n[/av_one_third][av_one_third min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'av-250fc\']\r\n[av_slideshow size=\'large\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jte0qobf\']\r\n[av_slide id=\'103\' av_uid=\'av-vkus\'][/av_slide]\r\n\r\n\r\n[/av_slideshow]\r\n[/av_one_third]\r\n\r\n[av_one_third min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'av-13qg8\']\r\n[av_textblock size=\'\' font_color=\'\' color=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-jte0q4kr\' admin_preview_bg=\'\']\r\n<h2 class=\"vc_custom_heading vc_custom_1473085804042\">Symmetric Beauty</h2>\r\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\r\n<div class=\" basel-info-box2 text-right icon-alignment-top box-style-base color-scheme-dark  with-animation vc_custom_1483652621110\">\r\n<div class=\"info-box-content\">\r\n<div class=\"info-box-inner\">\r\n\r\nWe redesigned the dimensions and position of the\r\nupper camera and sensor on the front cover.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"basel-button-wrapper text-right\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\r\n<div class=\"vc_empty_space\"></div>\r\n<h2 class=\"vc_custom_heading vc_custom_1473086415062\">Fantastic Self-Breaking</h2>\r\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\r\n<div class=\" basel-info-box2 text-right icon-alignment-top box-style-base color-scheme-dark  with-animation vc_custom_1483652628283\">\r\n<div class=\"info-box-content\">\r\n<div class=\"info-box-inner\">\r\n\r\nPRO means proactive and brave. Features a new ID style,\r\nembodied by beautiful curves and arcs.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"basel-button-wrapper text-right\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\r\n[/av_textblock]\r\n[/av_one_third]\r\n\r\n'),
(259, 64, '_avia_builder_shortcode_tree', 'a:3:{i:0;a:3:{s:3:\"tag\";s:12:\"av_one_third\";s:7:\"content\";a:1:{i:0;a:3:{s:3:\"tag\";s:12:\"av_textblock\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:12:\"av_one_third\";s:7:\"content\";a:1:{i:0;a:3:{s:3:\"tag\";s:12:\"av_slideshow\";s:7:\"content\";a:0:{}s:5:\"index\";i:3;}}s:5:\"index\";i:2;}i:2;a:3:{s:3:\"tag\";s:12:\"av_one_third\";s:7:\"content\";a:1:{i:0;a:3:{s:3:\"tag\";s:12:\"av_textblock\";s:7:\"content\";a:0:{}s:5:\"index\";i:5;}}s:5:\"index\";i:4;}}'),
(260, 64, '_av_el_mgr_version', '1.0'),
(261, 64, '_av_alb_posts_elements_state', 'a:4:{s:12:\"av_slideshow\";b:1;s:12:\"av_one_third\";b:1;s:12:\"av_textblock\";b:1;s:8:\"av_slide\";b:1;}'),
(262, 66, '_aviaLayoutBuilder_active', 'active'),
(263, 66, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'large\' image_attachment=\'scroll\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdz6oo1\']\r\n[av_fullscreen_slide id=\'65\' av_uid=\'av-x9t8\'][/av_fullscreen_slide]\r\n\r\n\r\n[/av_fullscreen]\r\n\r\n'),
(264, 66, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(265, 66, '_avia_sc_parser_state', 'check_only'),
(266, 66, '_av_alb_posts_elements_state', 'a:2:{s:13:\"av_fullscreen\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(267, 66, '_av_el_mgr_version', '1.0'),
(268, 64, 'layout', 'fullsize'),
(269, 64, 'sidebar', ''),
(270, 64, 'footer', ''),
(271, 64, 'header_title_bar', 'hidden_title_bar'),
(272, 64, 'header_transparency', 'header_transparent header_glassy '),
(273, 64, '_avia_hide_featured_image', '0'),
(274, 67, '_aviaLayoutBuilder_active', 'active'),
(275, 67, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\r\n[av_fullscreen_slide id=\'44\' av_uid=\'av-ya4z\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_postcontent link=\'page,64\' av_uid=\'av-sgq3\']\r\n\r\n'),
(276, 67, '_avia_builder_shortcode_tree', 'a:2:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:14:\"av_postcontent\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}}'),
(277, 67, '_avia_sc_parser_state', 'check_only'),
(278, 67, '_av_alb_posts_elements_state', 'a:3:{s:13:\"av_fullscreen\";b:1;s:14:\"av_postcontent\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(279, 67, '_av_el_mgr_version', '1.0'),
(280, 68, '_aviaLayoutBuilder_active', 'active');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(281, 68, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'no scaling\' image_attachment=\'scroll\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdz6oo1\']\r\n[av_fullscreen_slide id=\'65\' av_uid=\'av-x9t8\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\r\n\r\n\r\n[/av_fullscreen]\r\n\r\n'),
(282, 68, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(283, 68, '_avia_sc_parser_state', 'check_only'),
(284, 68, '_av_alb_posts_elements_state', 'a:2:{s:13:\"av_fullscreen\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(285, 68, '_av_el_mgr_version', '1.0'),
(286, 69, '_aviaLayoutBuilder_active', 'active'),
(287, 69, '_aviaLayoutBuilderCleanData', '[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/paralax-meizu-4-185x300.jpg\' attachment=\'65\' attachment_size=\'medium\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'\' font_size=\'\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jtdz97w8\' admin_preview_bg=\'\'][/av_image]\r\n\r\n'),
(288, 69, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:8:\"av_image\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(289, 69, '_avia_sc_parser_state', 'check_only'),
(290, 69, '_av_alb_posts_elements_state', 'a:1:{s:8:\"av_image\";b:1;}'),
(291, 69, '_av_el_mgr_version', '1.0'),
(292, 70, '_aviaLayoutBuilder_active', 'active'),
(293, 70, '_aviaLayoutBuilderCleanData', '[av_horizontal_gallery ids=\'65\' height=\'25\' size=\'masonry\' links=\'active\' lightbox_text=\'\' link_dest=\'\' gap=\'large\' active=\'\' initial=\'\' control_layout=\'av-control-default\' id=\'\' av_uid=\'av-jtdzanyn\'][/av_horizontal_gallery]\r\n\r\n'),
(294, 70, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:21:\"av_horizontal_gallery\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(295, 70, '_avia_sc_parser_state', 'check_only'),
(296, 70, '_av_alb_posts_elements_state', 'a:1:{s:21:\"av_horizontal_gallery\";b:1;}'),
(297, 70, '_av_el_mgr_version', '1.0'),
(298, 71, '_aviaLayoutBuilder_active', 'active'),
(299, 71, '_aviaLayoutBuilderCleanData', '[av_slideshow size=\'gallery\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdzbw0n\']\r\n[av_slide id=\'65\' av_uid=\'av-t5nw\'][/av_slide]\r\n\r\n\r\n[/av_slideshow]\r\n\r\n'),
(300, 71, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:12:\"av_slideshow\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(301, 71, '_avia_sc_parser_state', 'check_only'),
(302, 71, '_av_alb_posts_elements_state', 'a:2:{s:12:\"av_slideshow\";b:1;s:8:\"av_slide\";b:1;}'),
(303, 71, '_av_el_mgr_version', '1.0'),
(304, 72, '_aviaLayoutBuilder_active', 'active'),
(305, 72, '_aviaLayoutBuilderCleanData', '[av_slideshow size=\'portfolio\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdzbw0n\']\r\n[av_slide id=\'65\' slide_type=\'\' video=\'https://\' mobile_image=\'\' fallback_link=\'http://\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' link_apply=\'\' link=\'\' link_target=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-u4p0\'][/av_slide]\r\n\r\n\r\n[/av_slideshow]\r\n\r\n'),
(306, 72, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:12:\"av_slideshow\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(307, 72, '_avia_sc_parser_state', 'check_only'),
(308, 72, '_av_alb_posts_elements_state', 'a:2:{s:12:\"av_slideshow\";b:1;s:8:\"av_slide\";b:1;}'),
(309, 72, '_av_el_mgr_version', '1.0'),
(310, 73, '_aviaLayoutBuilder_active', 'active'),
(311, 73, '_aviaLayoutBuilderCleanData', '[av_horizontal_gallery ids=\'65\' height=\'25\' size=\'large\' links=\'active\' lightbox_text=\'\' link_dest=\'\' gap=\'large\' active=\'\' initial=\'\' control_layout=\'av-control-default\' id=\'\' av_uid=\'av-jtdzg7tc\'][/av_horizontal_gallery]\r\n\r\n'),
(312, 73, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:21:\"av_horizontal_gallery\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(313, 73, '_avia_sc_parser_state', 'check_only'),
(314, 73, '_av_alb_posts_elements_state', 'a:1:{s:21:\"av_horizontal_gallery\";b:1;}'),
(315, 73, '_av_el_mgr_version', '1.0'),
(316, 74, '_aviaLayoutBuilder_active', 'active'),
(317, 74, '_aviaLayoutBuilderCleanData', '[av_slideshow_full size=\'large\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jtdzh7t2\']\r\n[av_slide_full id=\'65\' av_uid=\'av-3mls\'][/av_slide_full]\r\n\r\n\r\n[/av_slideshow_full]\r\n\r\n'),
(318, 74, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:17:\"av_slideshow_full\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(319, 74, '_avia_sc_parser_state', 'check_only'),
(320, 74, '_av_alb_posts_elements_state', 'a:2:{s:17:\"av_slideshow_full\";b:1;s:13:\"av_slide_full\";b:1;}'),
(321, 74, '_av_el_mgr_version', '1.0'),
(322, 75, '_aviaLayoutBuilder_active', 'active'),
(323, 75, '_aviaLayoutBuilderCleanData', '[av_slideshow_full size=\'large\' min_height=\'0px\' stretch=\'\' animation=\'slide\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jtdzh7t2\']\r\n[av_slide_full id=\'65\' av_uid=\'av-3mls\' slide_type=\'\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_format=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_slide_full]\r\n\r\n\r\n[/av_slideshow_full]\r\n\r\n'),
(324, 75, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:17:\"av_slideshow_full\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(325, 75, '_avia_sc_parser_state', 'check_only'),
(326, 75, '_av_alb_posts_elements_state', 'a:2:{s:17:\"av_slideshow_full\";b:1;s:13:\"av_slide_full\";b:1;}'),
(327, 75, '_av_el_mgr_version', '1.0'),
(328, 77, '_aviaLayoutBuilder_active', 'active'),
(329, 77, '_aviaLayoutBuilderCleanData', '[av_slideshow size=\'no scaling\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdzqj6v\']\r\n[av_slide id=\'65\' av_uid=\'av-p7j8\'][/av_slide]\r\n\r\n\r\n[/av_slideshow]\r\n\r\n'),
(330, 77, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:12:\"av_slideshow\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(331, 77, '_avia_sc_parser_state', 'check_only'),
(332, 77, '_av_alb_posts_elements_state', 'a:2:{s:12:\"av_slideshow\";b:1;s:8:\"av_slide\";b:1;}'),
(333, 77, '_av_el_mgr_version', '1.0'),
(351, 80, '_aviaLayoutBuilder_active', 'active'),
(352, 80, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\r\n[av_fullscreen_slide id=\'44\' av_uid=\'av-ya4z\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_postcontent link=\'page,64\' av_uid=\'av-sgq3\']\r\n\r\n[av_postcontent link=\'page,78\' av_uid=\'av-jtdzuibz\']\r\n\r\n'),
(353, 80, '_avia_builder_shortcode_tree', 'a:3:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:14:\"av_postcontent\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}i:2;a:3:{s:3:\"tag\";s:14:\"av_postcontent\";s:7:\"content\";a:0:{}s:5:\"index\";i:2;}}'),
(354, 80, '_avia_sc_parser_state', 'check_only'),
(355, 80, '_av_alb_posts_elements_state', 'a:3:{s:13:\"av_fullscreen\";b:1;s:14:\"av_postcontent\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(356, 80, '_av_el_mgr_version', '1.0'),
(357, 82, '_wp_attached_file', '2019/03/blured.jpg'),
(358, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:18:\"2019/03/blured.jpg\";s:5:\"sizes\";a:22:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"blured-80x80.jpg\";s:5:\"width\";i:80;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blured-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blured-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"blured-1030x686.jpg\";s:5:\"width\";i:1030;s:6:\"height\";i:686;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:16:\"blured-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"blured-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:19:\"blured-1500x430.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:430;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"featured_large\";a:4:{s:4:\"file\";s:19:\"blured-1500x630.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:630;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"extra_large\";a:4:{s:4:\"file\";s:20:\"blured-1500x1000.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:1000;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:18:\"blured-495x400.jpg\";s:5:\"width\";i:495;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portfolio_small\";a:4:{s:4:\"file\";s:18:\"blured-260x185.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"gallery\";a:4:{s:4:\"file\";s:18:\"blured-845x684.jpg\";s:5:\"width\";i:845;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"magazine\";a:4:{s:4:\"file\";s:18:\"blured-710x375.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"masonry\";a:4:{s:4:\"file\";s:18:\"blured-705x470.jpg\";s:5:\"width\";i:705;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"entry_with_sidebar\";a:4:{s:4:\"file\";s:18:\"blured-845x321.jpg\";s:5:\"width\";i:845;s:6:\"height\";i:321;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"entry_without_sidebar\";a:4:{s:4:\"file\";s:19:\"blured-1210x423.jpg\";s:5:\"width\";i:1210;s:6:\"height\";i:423;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"blured-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"blured-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"blured-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"blured-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"blured-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"blured-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(359, 82, '_wp_attachment_image_alt', ''),
(374, 85, '_aviaLayoutBuilder_active', 'active'),
(375, 85, '_aviaLayoutBuilderCleanData', '[av_slideshow size=\'featured\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdzqj6v\']\r\n[av_slide id=\'65\' av_uid=\'av-p7j8\' slide_type=\'\' video=\'https://\' mobile_image=\'\' fallback_link=\'http://\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' link_apply=\'\' link=\'\' link_target=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_slide]\r\n\r\n\r\n[/av_slideshow]\r\n\r\n'),
(376, 85, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:12:\"av_slideshow\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(377, 85, '_avia_sc_parser_state', 'check_only'),
(378, 85, '_av_alb_posts_elements_state', 'a:2:{s:12:\"av_slideshow\";b:1;s:8:\"av_slide\";b:1;}'),
(379, 85, '_av_el_mgr_version', '1.0'),
(380, 86, '_aviaLayoutBuilder_active', 'active'),
(381, 86, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'large\' image_attachment=\'scroll\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jte08fbp\']\r\n[av_fullscreen_slide id=\'65\' av_uid=\'av-rzrk\'][/av_fullscreen_slide]\r\n\r\n\r\n[/av_fullscreen]\r\n\r\n'),
(382, 86, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(383, 86, '_avia_sc_parser_state', 'check_only'),
(384, 86, '_av_alb_posts_elements_state', 'a:2:{s:13:\"av_fullscreen\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(385, 86, '_av_el_mgr_version', '1.0'),
(386, 87, '_aviaLayoutBuilder_active', 'active'),
(387, 87, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'no scaling\' image_attachment=\'scroll\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jte08fbp\']\r\n[av_fullscreen_slide id=\'65\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-16tvc\'][/av_fullscreen_slide]\r\n\r\n\r\n[/av_fullscreen]\r\n\r\n'),
(388, 87, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(389, 87, '_avia_sc_parser_state', 'check_only'),
(390, 87, '_av_alb_posts_elements_state', 'a:2:{s:13:\"av_fullscreen\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(391, 87, '_av_el_mgr_version', '1.0'),
(392, 88, '_aviaLayoutBuilder_active', 'active'),
(393, 88, '_aviaLayoutBuilderCleanData', '[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte09d99\']\r\n[av_slide_full id=\'65\' av_uid=\'av-11f70\'][/av_slide_full]\r\n\r\n\r\n[/av_slideshow_full]\r\n\r\n'),
(394, 88, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:17:\"av_slideshow_full\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(395, 88, '_avia_sc_parser_state', 'check_only'),
(396, 88, '_av_alb_posts_elements_state', 'a:2:{s:17:\"av_slideshow_full\";b:1;s:13:\"av_slide_full\";b:1;}'),
(397, 88, '_av_el_mgr_version', '1.0'),
(399, 89, '_aviaLayoutBuilder_active', 'active'),
(400, 89, '_avia_sc_parser_state', 'check_only'),
(401, 89, '_av_el_mgr_version', '1.0'),
(402, 90, '_aviaLayoutBuilder_active', 'active'),
(403, 90, '_aviaLayoutBuilderCleanData', '[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte0bhjp\']\r\n[av_slide_full id=\'65\' av_uid=\'av-nu88\'][/av_slide_full]\r\n\r\n\r\n[/av_slideshow_full]\r\n\r\n'),
(404, 90, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:17:\"av_slideshow_full\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(405, 90, '_avia_sc_parser_state', 'check_only'),
(406, 90, '_av_alb_posts_elements_state', 'a:2:{s:17:\"av_slideshow_full\";b:1;s:13:\"av_slide_full\";b:1;}'),
(407, 90, '_av_el_mgr_version', '1.0'),
(414, 91, '_aviaLayoutBuilder_active', 'active'),
(415, 91, '_aviaLayoutBuilderCleanData', '[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte0bhjp\']\r\n[av_slide_full id=\'65\' slide_type=\'\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_format=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-1w0co\'][/av_slide_full]\r\n[av_slide_full id=\'82\' av_uid=\'av-1cpzg\'][/av_slide_full]\r\n[av_slide_full id=\'60\' av_uid=\'av-t0c8\'][/av_slide_full]\r\n[/av_slideshow_full]\r\n\r\n'),
(416, 91, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:17:\"av_slideshow_full\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(417, 91, '_avia_sc_parser_state', 'check_only'),
(418, 91, '_av_alb_posts_elements_state', 'a:2:{s:17:\"av_slideshow_full\";b:1;s:13:\"av_slide_full\";b:1;}'),
(419, 91, '_av_el_mgr_version', '1.0'),
(426, 93, '_aviaLayoutBuilder_active', 'active'),
(427, 93, '_aviaLayoutBuilderCleanData', '[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte0bhjp\']\r\n[av_slide_full id=\'65\' slide_type=\'\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_format=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-41ag8\'][/av_slide_full]\r\n[av_slide_full id=\'82\' av_uid=\'av-3i9t0\'][/av_slide_full]\r\n[av_slide_full id=\'60\' av_uid=\'av-2voj8\'][/av_slide_full]\r\n[/av_slideshow_full]\r\n\r\n[av_slideshow size=\'featured\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jte0fjel\']\r\n[av_slide id=\'65\' av_uid=\'av-242v0\'][/av_slide]\r\n[av_slide id=\'82\' av_uid=\'av-1g7u0\'][/av_slide]\r\n[av_slide id=\'60\' av_uid=\'av-2t4o\'][/av_slide]\r\n[/av_slideshow]\r\n\r\n'),
(428, 93, '_avia_builder_shortcode_tree', 'a:2:{i:0;a:3:{s:3:\"tag\";s:17:\"av_slideshow_full\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:12:\"av_slideshow\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}}'),
(429, 93, '_avia_sc_parser_state', 'check_only'),
(430, 93, '_av_alb_posts_elements_state', 'a:4:{s:12:\"av_slideshow\";b:1;s:17:\"av_slideshow_full\";b:1;s:8:\"av_slide\";b:1;s:13:\"av_slide_full\";b:1;}'),
(431, 93, '_av_el_mgr_version', '1.0'),
(432, 94, '_aviaLayoutBuilder_active', 'active'),
(433, 94, '_aviaLayoutBuilderCleanData', '[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte0bhjp\']\r\n[av_slide_full id=\'65\' slide_type=\'\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_format=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-uv5s\'][/av_slide_full]\r\n\r\n\r\n[/av_slideshow_full]\r\n\r\n'),
(434, 94, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:17:\"av_slideshow_full\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(435, 94, '_avia_sc_parser_state', 'check_only'),
(436, 94, '_av_alb_posts_elements_state', 'a:2:{s:17:\"av_slideshow_full\";b:1;s:13:\"av_slide_full\";b:1;}'),
(437, 94, '_av_el_mgr_version', '1.0'),
(444, 95, '_aviaLayoutBuilder_active', 'active'),
(445, 95, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\r\n[av_fullscreen_slide id=\'44\' av_uid=\'av-ya4z\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\r\n[/av_fullscreen]\r\n\r\n[av_postcontent link=\'page,64\' av_uid=\'av-sgq3\']\r\n\r\n[av_postcontent link=\'page,78\' av_uid=\'av-jtdzuibz\']\r\n\r\n'),
(446, 95, '_avia_builder_shortcode_tree', 'a:3:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:14:\"av_postcontent\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}i:2;a:3:{s:3:\"tag\";s:14:\"av_postcontent\";s:7:\"content\";a:0:{}s:5:\"index\";i:2;}}'),
(447, 95, '_avia_sc_parser_state', 'check_only'),
(448, 95, '_av_alb_posts_elements_state', 'a:3:{s:13:\"av_fullscreen\";b:1;s:14:\"av_postcontent\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(449, 95, '_av_el_mgr_version', '1.0'),
(462, 98, '_aviaLayoutBuilder_active', 'active'),
(463, 98, '_aviaLayoutBuilderCleanData', '[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte0bhjp\']\r\n[av_slide_full id=\'65\' slide_type=\'\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_format=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-otn8\'][/av_slide_full]\r\n\r\n\r\n[/av_slideshow_full]\r\n\r\n[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/blured-1500x1000.jpg\' attachment=\'82\' attachment_size=\'extra_large\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'yes\' font_size=\'14\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jte0khp0\' admin_preview_bg=\'\']\r\nHIGH PERFORMANCE\r\nINNOVATION IN EVERY INCH\r\nUt ridiculus a egestas accumsan commodo suspendisse himenaeos vestibulum orci facilisi quis leo luctus vestibulum suspendisse massa fusce ullamcorper dapibus eu a vel a metus nam dui nunc a.Suspendisse tempus vestibulum cras habitant accumsan vestibulum fames lectus.\r\n[/av_image]\r\n\r\n'),
(464, 98, '_avia_builder_shortcode_tree', 'a:2:{i:0;a:3:{s:3:\"tag\";s:17:\"av_slideshow_full\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:8:\"av_image\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}}'),
(465, 98, '_avia_sc_parser_state', 'check_only'),
(466, 98, '_av_alb_posts_elements_state', 'a:3:{s:8:\"av_image\";b:1;s:17:\"av_slideshow_full\";b:1;s:13:\"av_slide_full\";b:1;}'),
(467, 98, '_av_el_mgr_version', '1.0'),
(468, 99, '_aviaLayoutBuilder_active', 'active'),
(469, 99, '_aviaLayoutBuilderCleanData', '[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte0bhjp\']\r\n[av_slide_full id=\'65\' slide_type=\'\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_format=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-xu6k\'][/av_slide_full]\r\n\r\n\r\n[/av_slideshow_full]\r\n\r\n[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/blured-1500x1000.jpg\' attachment=\'82\' attachment_size=\'extra_large\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'yes\' font_size=\'21\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jte0khp0\' admin_preview_bg=\'\']\r\nHIGH PERFORMANCE\r\nINNOVATION IN EVERY INCH\r\nUt ridiculus a egestas accumsan commodo suspendisse himenaeos vestibulum orci facilisi quis leo luctus vestibulum suspendisse massa fusce ullamcorper dapibus eu a vel a metus nam dui nunc a.Suspendisse tempus vestibulum cras habitant accumsan vestibulum fames lectus.\r\n[/av_image]\r\n\r\n'),
(470, 99, '_avia_builder_shortcode_tree', 'a:2:{i:0;a:3:{s:3:\"tag\";s:17:\"av_slideshow_full\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:8:\"av_image\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}}'),
(471, 99, '_avia_sc_parser_state', 'check_only'),
(472, 99, '_av_alb_posts_elements_state', 'a:3:{s:8:\"av_image\";b:1;s:17:\"av_slideshow_full\";b:1;s:13:\"av_slide_full\";b:1;}'),
(473, 99, '_av_el_mgr_version', '1.0'),
(480, 101, '_aviaLayoutBuilder_active', 'active'),
(481, 101, '_aviaLayoutBuilderCleanData', '[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte0bhjp\']\r\n[av_slide_full id=\'65\' slide_type=\'\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_format=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-ovko\'][/av_slide_full]\r\n\r\n\r\n[/av_slideshow_full]\r\n\r\n'),
(482, 101, '_avia_builder_shortcode_tree', 'a:1:{i:0;a:3:{s:3:\"tag\";s:17:\"av_slideshow_full\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}}'),
(483, 101, '_avia_sc_parser_state', 'check_only'),
(484, 101, '_av_alb_posts_elements_state', 'a:2:{s:17:\"av_slideshow_full\";b:1;s:13:\"av_slide_full\";b:1;}'),
(485, 101, '_av_el_mgr_version', '1.0'),
(486, 64, '_wp_page_template', 'default'),
(487, 100, '_aviaLayoutBuilder_active', 'active'),
(488, 100, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\r\n[av_fullscreen_slide id=\'44\' av_uid=\'av-ya4z\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\r\n\r\n\r\n[/av_fullscreen]\r\n\r\n[av_postcontent link=\'page,64\' av_uid=\'av-sgq3\']\r\n\r\n[av_postcontent link=\'page,78\' av_uid=\'av-jtdzuibz\']\r\n\r\n'),
(489, 100, '_avia_builder_shortcode_tree', 'a:3:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:14:\"av_postcontent\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}i:2;a:3:{s:3:\"tag\";s:14:\"av_postcontent\";s:7:\"content\";a:0:{}s:5:\"index\";i:2;}}'),
(490, 100, '_avia_sc_parser_state', 'check_only'),
(491, 100, '_av_alb_posts_elements_state', 'a:3:{s:13:\"av_fullscreen\";b:1;s:14:\"av_postcontent\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(492, 100, '_av_el_mgr_version', '1.0'),
(493, 102, '_aviaLayoutBuilder_active', 'active'),
(494, 102, '_aviaLayoutBuilderCleanData', '[av_one_third first min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'av-2wwo4\']\r\n\r\n[av_textblock size=\'\' font_color=\'\' color=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-jte0pxik\' admin_preview_bg=\'rgb(34, 34, 34)\']\r\n<h2 class=\"vc_custom_heading vc_custom_1473085551571\">Slim and Beautiful</h2>\r\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\r\n<div class=\" basel-info-box2 text-left icon-alignment-top box-style-base color-scheme-dark with-animation vc_custom_1483652611221\">\r\n<div class=\"info-box-content\">\r\n<div class=\"info-box-inner\">\r\n\r\nThe PRO 6 is a flagship phone equipped\r\nwith a space saving 5.2 inch screen.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"basel-button-wrapper text-left\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div></div>\r\n<div class=\"vc_empty_space\"></div>\r\n<h2 class=\"vc_custom_heading vc_custom_1473085938391\">What a Smart Cut</h2>\r\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\r\n<div class=\" basel-info-box2 text-left icon-alignment-top box-style-base color-scheme-dark with-animation vc_custom_1483652616155\">\r\n<div class=\"info-box-content\">\r\n<div class=\"info-box-inner\">\r\n\r\nThanks to a breakthrough in antenna technology,\r\nthe signal problem by cutting the body.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"basel-button-wrapper text-left\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\r\n[/av_textblock]\r\n\r\n[/av_one_third][av_one_third min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'av-250fc\']\r\n[av_slideshow size=\'large\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jte0qobf\']\r\n[av_slide id=\'103\' av_uid=\'av-vkus\'][/av_slide]\r\n\r\n\r\n[/av_slideshow]\r\n[/av_one_third]\r\n\r\n[av_one_third min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'av-13qg8\']\r\n[av_textblock size=\'\' font_color=\'\' color=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-jte0q4kr\' admin_preview_bg=\'\']\r\n<h2 class=\"vc_custom_heading vc_custom_1473085804042\">Symmetric Beauty</h2>\r\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\r\n<div class=\" basel-info-box2 text-right icon-alignment-top box-style-base color-scheme-dark  with-animation vc_custom_1483652621110\">\r\n<div class=\"info-box-content\">\r\n<div class=\"info-box-inner\">\r\n\r\nWe redesigned the dimensions and position of the\r\nupper camera and sensor on the front cover.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"basel-button-wrapper text-right\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\r\n<div class=\"vc_empty_space\"></div>\r\n<h2 class=\"vc_custom_heading vc_custom_1473086415062\">Fantastic Self-Breaking</h2>\r\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\r\n<div class=\" basel-info-box2 text-right icon-alignment-top box-style-base color-scheme-dark  with-animation vc_custom_1483652628283\">\r\n<div class=\"info-box-content\">\r\n<div class=\"info-box-inner\">\r\n\r\nPRO means proactive and brave. Features a new ID style,\r\nembodied by beautiful curves and arcs.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"basel-button-wrapper text-right\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\r\n[/av_textblock]\r\n[/av_one_third]\r\n\r\n'),
(495, 102, '_avia_builder_shortcode_tree', 'a:3:{i:0;a:3:{s:3:\"tag\";s:12:\"av_one_third\";s:7:\"content\";a:1:{i:0;a:3:{s:3:\"tag\";s:12:\"av_textblock\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:12:\"av_one_third\";s:7:\"content\";a:1:{i:0;a:3:{s:3:\"tag\";s:12:\"av_slideshow\";s:7:\"content\";a:0:{}s:5:\"index\";i:3;}}s:5:\"index\";i:2;}i:2;a:3:{s:3:\"tag\";s:12:\"av_one_third\";s:7:\"content\";a:1:{i:0;a:3:{s:3:\"tag\";s:12:\"av_textblock\";s:7:\"content\";a:0:{}s:5:\"index\";i:5;}}s:5:\"index\";i:4;}}'),
(496, 102, '_avia_sc_parser_state', 'check_only'),
(497, 102, '_av_alb_posts_elements_state', 'a:4:{s:12:\"av_slideshow\";b:1;s:12:\"av_one_third\";b:1;s:12:\"av_textblock\";b:1;s:8:\"av_slide\";b:1;}'),
(498, 102, '_av_el_mgr_version', '1.0'),
(499, 103, '_wp_attached_file', '2019/03/paralax-meizu-4-1.jpg'),
(500, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:332;s:6:\"height\";i:539;s:4:\"file\";s:29:\"2019/03/paralax-meizu-4-1.jpg\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"paralax-meizu-4-1-80x80.jpg\";s:5:\"width\";i:80;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"paralax-meizu-4-1-185x300.jpg\";s:5:\"width\";i:185;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:27:\"paralax-meizu-4-1-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:29:\"paralax-meizu-4-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:29:\"paralax-meizu-4-1-332x430.jpg\";s:5:\"width\";i:332;s:6:\"height\";i:430;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:29:\"paralax-meizu-4-1-332x400.jpg\";s:5:\"width\";i:332;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portfolio_small\";a:4:{s:4:\"file\";s:29:\"paralax-meizu-4-1-260x185.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"magazine\";a:4:{s:4:\"file\";s:29:\"paralax-meizu-4-1-332x375.jpg\";s:5:\"width\";i:332;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"entry_with_sidebar\";a:4:{s:4:\"file\";s:29:\"paralax-meizu-4-1-332x321.jpg\";s:5:\"width\";i:332;s:6:\"height\";i:321;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"entry_without_sidebar\";a:4:{s:4:\"file\";s:29:\"paralax-meizu-4-1-332x423.jpg\";s:5:\"width\";i:332;s:6:\"height\";i:423;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"paralax-meizu-4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"paralax-meizu-4-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"paralax-meizu-4-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"paralax-meizu-4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(501, 104, '_wp_trash_meta_status', 'publish'),
(502, 104, '_wp_trash_meta_time', '1552893776'),
(503, 105, '_wp_attached_file', '2019/03/pro60-1.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(504, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:710;s:4:\"file\";s:19:\"2019/03/pro60-1.png\";s:5:\"sizes\";a:21:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"pro60-1-80x80.png\";s:5:\"width\";i:80;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"pro60-1-300x178.png\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"pro60-1-768x454.png\";s:5:\"width\";i:768;s:6:\"height\";i:454;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"pro60-1-1030x609.png\";s:5:\"width\";i:1030;s:6:\"height\";i:609;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"widget\";a:4:{s:4:\"file\";s:17:\"pro60-1-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"square\";a:4:{s:4:\"file\";s:19:\"pro60-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:20:\"pro60-1-1200x430.png\";s:5:\"width\";i:1200;s:6:\"height\";i:430;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"featured_large\";a:4:{s:4:\"file\";s:20:\"pro60-1-1200x630.png\";s:5:\"width\";i:1200;s:6:\"height\";i:630;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"portfolio\";a:4:{s:4:\"file\";s:19:\"pro60-1-495x400.png\";s:5:\"width\";i:495;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"portfolio_small\";a:4:{s:4:\"file\";s:19:\"pro60-1-260x185.png\";s:5:\"width\";i:260;s:6:\"height\";i:185;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"gallery\";a:4:{s:4:\"file\";s:19:\"pro60-1-845x684.png\";s:5:\"width\";i:845;s:6:\"height\";i:684;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"magazine\";a:4:{s:4:\"file\";s:19:\"pro60-1-710x375.png\";s:5:\"width\";i:710;s:6:\"height\";i:375;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"masonry\";a:4:{s:4:\"file\";s:19:\"pro60-1-705x417.png\";s:5:\"width\";i:705;s:6:\"height\";i:417;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"entry_with_sidebar\";a:4:{s:4:\"file\";s:19:\"pro60-1-845x321.png\";s:5:\"width\";i:845;s:6:\"height\";i:321;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"entry_without_sidebar\";a:4:{s:4:\"file\";s:20:\"pro60-1-1200x423.png\";s:5:\"width\";i:1200;s:6:\"height\";i:423;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"pro60-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"pro60-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"pro60-1-600x355.png\";s:5:\"width\";i:600;s:6:\"height\";i:355;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"pro60-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"pro60-1-600x355.png\";s:5:\"width\";i:600;s:6:\"height\";i:355;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"pro60-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(505, 106, '_aviaLayoutBuilder_active', 'active'),
(506, 106, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'105\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'lightbox\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'manually,http://\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'manually,http://\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-pv4n\'][/av_fullscreen_slide]\r\n\r\n\r\n[/av_fullscreen]\r\n\r\n[av_postcontent link=\'page,64\' av_uid=\'av-sgq3\']\r\n\r\n[av_postcontent link=\'page,78\' av_uid=\'av-jtdzuibz\']\r\n\r\n'),
(507, 106, '_avia_builder_shortcode_tree', 'a:3:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:14:\"av_postcontent\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}i:2;a:3:{s:3:\"tag\";s:14:\"av_postcontent\";s:7:\"content\";a:0:{}s:5:\"index\";i:2;}}'),
(508, 106, '_avia_sc_parser_state', 'check_only'),
(509, 106, '_av_alb_posts_elements_state', 'a:3:{s:13:\"av_fullscreen\";b:1;s:14:\"av_postcontent\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(510, 106, '_av_el_mgr_version', '1.0'),
(511, 108, '_aviaLayoutBuilder_active', 'active'),
(512, 108, '_aviaLayoutBuilderCleanData', '[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\r\n[av_fullscreen_slide slide_type=\'image\' id=\'44\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'lightbox\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'manually,http://\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'manually,http://\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-nq1n\'][/av_fullscreen_slide]\r\n\r\n\r\n[/av_fullscreen]\r\n\r\n[av_postcontent link=\'page,64\' av_uid=\'av-sgq3\']\r\n\r\n[av_postcontent link=\'page,78\' av_uid=\'av-jtdzuibz\']\r\n\r\n'),
(513, 108, '_avia_builder_shortcode_tree', 'a:3:{i:0;a:3:{s:3:\"tag\";s:13:\"av_fullscreen\";s:7:\"content\";a:0:{}s:5:\"index\";i:0;}i:1;a:3:{s:3:\"tag\";s:14:\"av_postcontent\";s:7:\"content\";a:0:{}s:5:\"index\";i:1;}i:2;a:3:{s:3:\"tag\";s:14:\"av_postcontent\";s:7:\"content\";a:0:{}s:5:\"index\";i:2;}}'),
(514, 108, '_avia_sc_parser_state', 'check_only'),
(515, 108, '_av_alb_posts_elements_state', 'a:3:{s:13:\"av_fullscreen\";b:1;s:14:\"av_postcontent\";b:1;s:19:\"av_fullscreen_slide\";b:1;}'),
(516, 108, '_av_el_mgr_version', '1.0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-03-18 05:36:11', '2019-03-18 05:36:11', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-03-18 05:55:34', '2019-03-18 05:55:34', '', 0, 'http://localhost:8015/Final/?p=1', 0, 'post', '', 1),
(2, 1, '2019-03-18 05:36:11', '2019-03-18 05:36:11', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8015/Final/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2019-03-18 06:01:33', '2019-03-18 06:01:33', '', 0, 'http://localhost:8015/Final/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-03-18 05:36:11', '2019-03-18 05:36:11', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8015/Final.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-03-18 06:03:03', '2019-03-18 06:03:03', '', 0, 'http://localhost:8015/Final/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-03-18 05:36:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-18 05:36:27', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?p=4', 0, 'post', '', 0),
(5, 1, '2019-03-18 05:42:07', '0000-00-00 00:00:00', '', 'avia_logo', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-18 05:42:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?post_type=avia_framework_post&p=5', 0, 'avia_framework_post', '', 0),
(6, 1, '2019-03-18 05:42:07', '0000-00-00 00:00:00', '', 'avia_favicon', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-18 05:42:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?post_type=avia_framework_post&p=6', 0, 'avia_framework_post', '', 0),
(7, 1, '2019-03-18 05:42:07', '0000-00-00 00:00:00', '', 'avia_custom_logo_for_preloader', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-18 05:42:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?post_type=avia_framework_post&p=7', 0, 'avia_framework_post', '', 0),
(8, 1, '2019-03-18 05:42:07', '0000-00-00 00:00:00', '', 'avia_custom_background_image', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-18 05:42:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?post_type=avia_framework_post&p=8', 0, 'avia_framework_post', '', 0),
(9, 1, '2019-03-18 05:42:08', '0000-00-00 00:00:00', '', 'avia_transparency_logo', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-18 05:42:08', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?post_type=avia_framework_post&p=9', 0, 'avia_framework_post', '', 0),
(10, 1, '2019-03-18 05:42:08', '0000-00-00 00:00:00', '', 'avia_shop_banner_image', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-18 05:42:08', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?post_type=avia_framework_post&p=10', 0, 'avia_framework_post', '', 0),
(11, 1, '2019-03-18 05:44:40', '2019-03-18 05:44:40', '', 'Untitled', '', 'inherit', 'open', 'closed', '', 'untitled', '', '', '2019-03-18 05:44:40', '2019-03-18 05:44:40', '', 0, 'http://localhost:8015/Final/wp-content/uploads/2019/03/Untitled.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2019-03-18 05:46:21', '2019-03-18 05:46:21', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2019-03-18 05:46:21', '2019-03-18 05:46:21', '', 0, 'http://localhost:8015/Final/wp-content/uploads/2019/03/2.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2019-03-18 05:46:44', '0000-00-00 00:00:00', '', 'avia_banner_image', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-18 05:46:44', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?post_type=avia_framework_post&p=13', 0, 'avia_framework_post', '', 0),
(14, 1, '2019-03-18 05:46:44', '0000-00-00 00:00:00', '', 'avia_custom_marker_icon', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-18 05:46:44', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?post_type=avia_framework_post&p=14', 0, 'avia_framework_post', '', 0),
(15, 1, '2019-03-18 05:46:44', '0000-00-00 00:00:00', '', 'avia_fallback_image_to_replace_google_maps', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-18 05:46:44', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?post_type=avia_framework_post&p=15', 0, 'avia_framework_post', '', 0),
(16, 1, '2019-03-18 05:49:08', '2019-03-18 05:49:08', '', 'Shop', '', 'trash', 'closed', 'closed', '', 'shop__trashed', '', '', '2019-03-18 06:03:03', '2019-03-18 06:03:03', '', 0, 'http://localhost:8015/Final/shop/', 0, 'page', '', 0),
(17, 1, '2019-03-18 05:49:08', '2019-03-18 05:49:08', '[woocommerce_cart]', 'Cart', '', 'trash', 'closed', 'closed', '', 'cart__trashed', '', '', '2019-03-18 06:03:02', '2019-03-18 06:03:02', '', 0, 'http://localhost:8015/Final/cart/', 0, 'page', '', 0),
(18, 1, '2019-03-18 05:49:08', '2019-03-18 05:49:08', '[woocommerce_checkout]', 'Checkout', '', 'trash', 'closed', 'closed', '', 'checkout__trashed', '', '', '2019-03-18 06:03:02', '2019-03-18 06:03:02', '', 0, 'http://localhost:8015/Final/checkout/', 0, 'page', '', 0),
(19, 1, '2019-03-18 05:49:08', '2019-03-18 05:49:08', '[woocommerce_my_account]', 'My account', '', 'trash', 'closed', 'closed', '', 'my-account__trashed', '', '', '2019-03-18 06:03:02', '2019-03-18 06:03:02', '', 0, 'http://localhost:8015/Final/my-account/', 0, 'page', '', 0),
(20, 1, '2019-03-18 05:50:06', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-03-18 05:50:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?post_type=product&p=20', 0, 'product', '', 0),
(21, 1, '2019-03-18 05:50:08', '0000-00-00 00:00:00', '', 'avia_template_builder_snippets', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-18 05:50:08', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?post_type=avia_framework_post&p=21', 0, 'avia_framework_post', '', 0),
(22, 1, '2019-03-18 05:54:54', '2019-03-18 05:54:54', '{\n    \"enfold::nav_menu_locations[avia]\": {\n        \"value\": -1257803678,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 05:52:13\"\n    },\n    \"nav_menu[-1257803678]\": {\n        \"value\": {\n            \"name\": \"Navigation\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 05:52:13\"\n    },\n    \"nav_menu_item[-401262166]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 05:52:32\"\n    },\n    \"nav_menu_item[-2040978648]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 05:52:32\"\n    },\n    \"nav_menu_item[-1627713566]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost:8015/Final\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1257803678,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 05:52:32\"\n    },\n    \"nav_menu_item[-1940828118]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Design\",\n            \"url\": \"http://localhost:8015/Final\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1257803678,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 05:52:47\"\n    },\n    \"nav_menu_item[-504522672]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Features\",\n            \"url\": \"http://localhost:8015/Final\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1257803678,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 05:53:53\"\n    },\n    \"nav_menu_item[-40757855]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Video\",\n            \"url\": \"http://localhost:8015/Final\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1257803678,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 05:54:32\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 05:53:53\"\n    },\n    \"nav_menu_item[-577549545]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"custom\",\n            \"title\": \"Price\",\n            \"url\": \"http://localhost:8015/Final\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1257803678,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 05:54:32\"\n    },\n    \"nav_menu_item[-1354969739]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 05:54:46\"\n    },\n    \"nav_menu_item[-860907081]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"custom\",\n            \"title\": \"Contact us\",\n            \"url\": \"http://localhost:8015/Final\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1257803678,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 05:54:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '14df2912-8732-422a-bdc4-1386f3fce4aa', '', '', '2019-03-18 05:54:54', '2019-03-18 05:54:54', '', 0, 'http://localhost:8015/Final/?p=22', 0, 'customize_changeset', '', 0),
(29, 1, '2019-03-18 05:55:34', '2019-03-18 05:55:34', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-03-18 05:55:34', '2019-03-18 05:55:34', '', 1, 'http://localhost:8015/Final/2019/03/18/1-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-03-18 05:59:59', '2019-03-18 05:59:59', '', 'Untitled', '', 'inherit', 'open', 'closed', '', 'untitled-2', '', '', '2019-03-18 05:59:59', '2019-03-18 05:59:59', '', 0, 'http://localhost:8015/Final/wp-content/uploads/2019/03/Untitled-1.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2019-03-18 06:01:06', '2019-03-18 06:01:06', '', 'Untitled', '', 'inherit', 'open', 'closed', '', 'untitled-3', '', '', '2019-03-18 06:01:06', '2019-03-18 06:01:06', '', 0, 'http://localhost:8015/Final/wp-content/uploads/2019/03/Untitled-2.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2019-03-18 06:01:33', '2019-03-18 06:01:33', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8015/Final/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-03-18 06:01:33', '2019-03-18 06:01:33', '', 2, 'http://localhost:8015/Final/2019/03/18/2-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-03-18 06:03:02', '2019-03-18 06:03:02', '[woocommerce_cart]', 'Cart', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-03-18 06:03:02', '2019-03-18 06:03:02', '', 17, 'http://localhost:8015/Final/2019/03/18/17-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-03-18 06:03:02', '2019-03-18 06:03:02', '[woocommerce_checkout]', 'Checkout', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-03-18 06:03:02', '2019-03-18 06:03:02', '', 18, 'http://localhost:8015/Final/2019/03/18/18-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-03-18 06:03:02', '2019-03-18 06:03:02', '[woocommerce_my_account]', 'My account', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-03-18 06:03:02', '2019-03-18 06:03:02', '', 19, 'http://localhost:8015/Final/2019/03/18/19-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-03-18 06:03:03', '2019-03-18 06:03:03', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8015/Final.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-03-18 06:03:03', '2019-03-18 06:03:03', '', 3, 'http://localhost:8015/Final/2019/03/18/3-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-03-18 06:03:03', '2019-03-18 06:03:03', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-03-18 06:03:03', '2019-03-18 06:03:03', '', 16, 'http://localhost:8015/Final/2019/03/18/16-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-03-18 06:03:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-03-18 06:03:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?page_id=38', 0, 'page', '', 0),
(39, 1, '2019-03-18 06:05:16', '2019-03-18 06:05:16', '<!-- wp:shortcode -->\n[av_one_full first  min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'\'][/av_one_full]\n<!-- /wp:shortcode -->', '', '', 'trash', 'closed', 'closed', '', '39-2__trashed', '', '', '2019-03-18 06:07:53', '2019-03-18 06:07:53', '', 0, 'http://localhost:8015/Final/?page_id=39', 0, 'page', '', 0),
(40, 1, '2019-03-18 06:05:16', '2019-03-18 06:05:16', '<!-- wp:shortcode -->\n[av_one_full first  min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'\'][/av_one_full]\n<!-- /wp:shortcode -->', '', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-03-18 06:05:16', '2019-03-18 06:05:16', '', 39, 'http://localhost:8015/Final/2019/03/18/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-03-18 06:07:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-03-18 06:07:59', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?page_id=41', 0, 'page', '', 0),
(42, 1, '2019-03-18 06:11:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-03-18 06:11:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?page_id=42', 0, 'page', '', 0),
(43, 1, '2019-03-18 06:14:32', '2019-03-18 06:14:32', '<!-- wp:shortcode -->\n[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\n[av_fullscreen_slide slide_type=\'image\' id=\'44\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'lightbox\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'manually,http://\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'manually,http://\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\n\n\n[/av_fullscreen]\n\n[av_postcontent link=\'page,64\' av_uid=\'av-sgq3\']\n\n[av_postcontent link=\'page,78\' av_uid=\'av-jtdzuibz\']\n<!-- /wp:shortcode -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-03-18 07:26:50', '2019-03-18 07:26:50', '', 0, 'http://localhost:8015/Final/?page_id=43', 0, 'page', '', 0),
(44, 1, '2019-03-18 06:13:46', '2019-03-18 06:13:46', '', 'pro60', '', 'inherit', 'open', 'closed', '', 'pro60', '', '', '2019-03-18 06:13:46', '2019-03-18 06:13:46', '', 43, 'http://localhost:8015/Final/wp-content/uploads/2019/03/pro60.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2019-03-18 06:14:32', '2019-03-18 06:14:32', '<!-- wp:shortcode -->\n[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/pro60-300x178.png\' attachment=\'44\' attachment_size=\'medium\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'\' font_size=\'\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jtdye7oq\' admin_preview_bg=\'\'][/av_image]\n<!-- /wp:shortcode -->', 'Basel & Co.', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 06:14:32', '2019-03-18 06:14:32', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-03-18 06:16:26', '2019-03-18 06:16:26', '<!-- wp:shortcode -->\n[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/pro60-300x178.png\' attachment=\'44\' attachment_size=\'medium\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'\' font_size=\'\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jtdye7oq\' admin_preview_bg=\'\'][/av_image]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 06:16:26', '2019-03-18 06:16:26', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-03-18 06:17:06', '2019-03-18 06:17:06', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 06:17:06', '2019-03-18 06:17:06', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-03-18 06:17:47', '2019-03-18 06:17:47', '{\n    \"enfold::nav_menu_locations[avia]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 06:17:47\"\n    },\n    \"nav_menu[16]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 06:17:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '84406d6d-d6e1-42a6-97f4-a0f70e995807', '', '', '2019-03-18 06:17:47', '2019-03-18 06:17:47', '', 0, 'http://localhost:8015/Final/2019/03/18/84406d6d-d6e1-42a6-97f4-a0f70e995807/', 0, 'customize_changeset', '', 0),
(49, 1, '2019-03-18 06:17:59', '2019-03-18 06:17:59', '<!-- wp:shortcode -->\n<!-- wp:paragraph -->\n\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode /-->\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 06:17:59', '2019-03-18 06:17:59', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-03-18 06:20:03', '2019-03-18 06:20:03', '<!-- wp:shortcode -->\n[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/pro60.png\' attachment=\'44\' attachment_size=\'full\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'\' font_size=\'\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jtdym1i1\' admin_preview_bg=\'\'][/av_image]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 06:20:03', '2019-03-18 06:20:03', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-03-18 06:21:05', '2019-03-18 06:21:05', '<!-- wp:shortcode -->\n[av_partner columns=\'3\' heading=\'\' size=\'no scaling\' img_size_behave=\'\' border=\'\' type=\'slider\' animation=\'slide\' navigation=\'arrows\' autoplay=\'false\' interval=\'5\' av_uid=\'av-jtdyn3pl\']\n[av_partner_logo id=\'31\' hover=\'\' link=\'\' linktitle=\'\' link_target=\'\']\n\n\n[/av_partner]\n\n[av_buttonrow alignment=\'center\' button_spacing=\'5\' button_spacing_unit=\'px\' av-desktop-hide=\'\' av-medium-hide=\'\' av-small-hide=\'\' av-mini-hide=\'\' av_uid=\'\']\n[av_buttonrow_item label=\'Click me\' icon=\'4\'][/av_buttonrow_item]\n[av_buttonrow_item label=\'Call to Action\' icon=\'5\'][/av_buttonrow_item]\n[av_buttonrow_item label=\'Click me\' icon=\'6\'][/av_buttonrow_item]\n[/av_buttonrow]\n\n[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/pro60.png\' attachment=\'44\' attachment_size=\'full\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'\' font_size=\'\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jtdym1i1\' admin_preview_bg=\'\'][/av_image]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 06:21:05', '2019-03-18 06:21:05', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-03-18 06:21:28', '2019-03-18 06:21:28', '<!-- wp:shortcode -->\n[av_buttonrow alignment=\'center\' button_spacing=\'5\' button_spacing_unit=\'px\' av-desktop-hide=\'\' av-medium-hide=\'\' av-small-hide=\'\' av-mini-hide=\'\' av_uid=\'\']\n[av_buttonrow_item label=\'Click me\' icon=\'4\'][/av_buttonrow_item]\n[av_buttonrow_item label=\'Call to Action\' icon=\'5\'][/av_buttonrow_item]\n[av_buttonrow_item label=\'Click me\' icon=\'6\'][/av_buttonrow_item]\n[/av_buttonrow]\n\n[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/pro60.png\' attachment=\'44\' attachment_size=\'full\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'\' font_size=\'\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jtdym1i1\' admin_preview_bg=\'\'][/av_image]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 06:21:28', '2019-03-18 06:21:28', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-03-18 06:22:38', '2019-03-18 06:22:38', '<!-- wp:shortcode -->\n[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide\' conditional_play=\'\' autoplay=\'false\' autoplay_stopper=\'\' interval=\'5\' control_layout=\'\' scroll_down=\'\' perma_caption=\'\' av-desktop-hide=\'\' av-medium-hide=\'\' av-small-hide=\'\' av-mini-hide=\'\' av_uid=\'\'][/av_fullscreen]\n<!-- /wp:shortcode -->', '', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 06:22:38', '2019-03-18 06:22:38', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-03-18 06:22:55', '2019-03-18 06:22:55', '<!-- wp:shortcode -->\n[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\n[av_fullscreen_slide id=\'44\'][/av_fullscreen_slide]\n\n\n[/av_fullscreen]\n<!-- /wp:shortcode -->', '', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 06:22:55', '2019-03-18 06:22:55', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-03-18 06:25:05', '2019-03-18 06:25:05', '<!-- wp:shortcode -->\n[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\n[av_fullscreen_slide id=\'44\' av_uid=\'av-ya4z\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\n\n\n[/av_fullscreen]\n<!-- /wp:shortcode -->', '', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 06:25:05', '2019-03-18 06:25:05', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-03-18 06:28:41', '2019-03-18 06:28:41', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 06:28:41\"\n    },\n    \"page_on_front\": {\n        \"value\": \"43\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 06:28:41\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 06:28:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8a4c92a2-579b-4e20-9f55-1c4047c773e7', '', '', '2019-03-18 06:28:41', '2019-03-18 06:28:41', '', 0, 'http://localhost:8015/Final/2019/03/18/8a4c92a2-579b-4e20-9f55-1c4047c773e7/', 0, 'customize_changeset', '', 0),
(58, 1, '2019-03-18 06:30:21', '2019-03-18 06:30:21', '<!-- wp:shortcode -->\n[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\n[av_fullscreen_slide id=\'44\' av_uid=\'av-ya4z\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\n\n\n[/av_fullscreen]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 06:30:21', '2019-03-18 06:30:21', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-03-18 06:31:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-03-18 06:31:15', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?page_id=59', 0, 'page', '', 0),
(60, 1, '2019-03-18 06:33:12', '2019-03-18 06:33:12', '', 'phonenature', '', 'inherit', 'open', 'closed', '', 'phonenature', '', '', '2019-03-18 06:33:12', '2019-03-18 06:33:12', '', 43, 'http://localhost:8015/Final/wp-content/uploads/2019/03/phonenature.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2019-03-18 06:33:47', '2019-03-18 06:33:47', '<!-- wp:shortcode -->\n[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\n[av_fullscreen_slide id=\'44\' av_uid=\'av-ya4z\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\n[/av_fullscreen]\n\n[av_fullscreen size=\'extra_large\' image_attachment=\'scroll\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\n[av_fullscreen_slide slide_type=\'image\' id=\'60\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'lightbox\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'manually,http://\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'manually,http://\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\n\n\n[/av_fullscreen]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 06:33:47', '2019-03-18 06:33:47', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-03-18 06:34:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-03-18 06:34:12', '0000-00-00 00:00:00', '', 0, 'http://localhost:8015/Final/?page_id=62', 0, 'page', '', 0),
(63, 1, '2019-03-18 06:34:50', '2019-03-18 06:34:50', '<!-- wp:shortcode -->\n[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\n[av_fullscreen_slide id=\'44\' av_uid=\'av-ya4z\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\n[/av_fullscreen]\n\n[av_postcontent link=\'page\' av_uid=\'\']\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 06:34:50', '2019-03-18 06:34:50', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(64, 1, '2019-03-18 06:36:08', '2019-03-18 06:36:08', '<!-- wp:shortcode -->\n[av_one_third first  min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'\']\n\n[av_textblock size=\'\' font_color=\'\' color=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-jte0pxik\' admin_preview_bg=\'\']\n<h2 class=\"vc_custom_heading vc_custom_1473085551571\">Slim and Beautiful</h2>\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\n<div class=\" basel-info-box2 text-left icon-alignment-top box-style-base color-scheme-dark  with-animation vc_custom_1483652611221\">\n<div class=\"info-box-content\">\n<div class=\"info-box-inner\">\n\nThe PRO 6 is a flagship phone equipped\nwith a space saving 5.2 inch screen.\n\n</div>\n</div>\n</div>\n<div class=\"basel-button-wrapper text-left\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\n<div class=\"vc_empty_space\"></div>\n<h2 class=\"vc_custom_heading vc_custom_1473085938391\">What a Smart Cut</h2>\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\n<div class=\" basel-info-box2 text-left icon-alignment-top box-style-base color-scheme-dark  with-animation vc_custom_1483652616155\">\n<div class=\"info-box-content\">\n<div class=\"info-box-inner\">\n\nThanks to a breakthrough in antenna technology,\nthe signal problem by cutting the body.\n\n</div>\n</div>\n</div>\n<div class=\"basel-button-wrapper text-left\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\n[/av_textblock]\n\n[/av_one_third][av_one_third  min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'\']\n\n[av_slideshow size=\'featured\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jte0qobf\']\n[av_slide id=\'65\'][/av_slide]\n\n\n[/av_slideshow]\n\n[/av_one_third][av_one_third  min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'\']\n\n[av_textblock size=\'\' font_color=\'\' color=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-jte0q4kr\' admin_preview_bg=\'\']\n<h2 class=\"vc_custom_heading vc_custom_1473085804042\">Symmetric Beauty</h2>\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\n<div class=\" basel-info-box2 text-right icon-alignment-top box-style-base color-scheme-dark  with-animation vc_custom_1483652621110\">\n<div class=\"info-box-content\">\n<div class=\"info-box-inner\">\n\nWe redesigned the dimensions and position of the\nupper camera and sensor on the front cover.\n\n</div>\n</div>\n</div>\n<div class=\"basel-button-wrapper text-right\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\n<div class=\"vc_empty_space\"></div>\n<h2 class=\"vc_custom_heading vc_custom_1473086415062\">Fantastic Self-Breaking</h2>\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\n<div class=\" basel-info-box2 text-right icon-alignment-top box-style-base color-scheme-dark  with-animation vc_custom_1483652628283\">\n<div class=\"info-box-content\">\n<div class=\"info-box-inner\">\n\nPRO means proactive and brave. Features a new ID style,\nembodied by beautiful curves and arcs.\n\n</div>\n</div>\n</div>\n<div class=\"basel-button-wrapper text-right\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\n[/av_textblock]\n\n[/av_one_third]\n<!-- /wp:shortcode -->', 'Design', '', 'publish', 'closed', 'closed', '', 'design', '', '', '2019-03-18 07:28:31', '2019-03-18 07:28:31', '', 0, 'http://localhost:8015/Final/?page_id=64', 0, 'page', '', 0),
(65, 1, '2019-03-18 06:35:52', '2019-03-18 06:35:52', '', 'paralax-meizu-4', '', 'inherit', 'open', 'closed', '', 'paralax-meizu-4', '', '', '2019-03-18 06:35:52', '2019-03-18 06:35:52', '', 64, 'http://localhost:8015/Final/wp-content/uploads/2019/03/paralax-meizu-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-03-18 06:36:08', '2019-03-18 06:36:08', '<!-- wp:shortcode -->\n[av_fullscreen size=\'large\' image_attachment=\'scroll\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdz6oo1\']\n[av_fullscreen_slide id=\'65\'][/av_fullscreen_slide]\n\n\n[/av_fullscreen]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 06:36:08', '2019-03-18 06:36:08', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-03-18 06:36:32', '2019-03-18 06:36:32', '<!-- wp:shortcode -->\n[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\n[av_fullscreen_slide id=\'44\' av_uid=\'av-ya4z\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\n[/av_fullscreen]\n\n[av_postcontent link=\'page,64\' av_uid=\'av-sgq3\']\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 06:36:32', '2019-03-18 06:36:32', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-03-18 06:37:07', '2019-03-18 06:37:07', '<!-- wp:shortcode -->\n[av_fullscreen size=\'no scaling\' image_attachment=\'scroll\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdz6oo1\']\n[av_fullscreen_slide id=\'65\' av_uid=\'av-x9t8\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\n\n\n[/av_fullscreen]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 06:37:07', '2019-03-18 06:37:07', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-03-18 06:38:05', '2019-03-18 06:38:05', '<!-- wp:shortcode -->\n[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/paralax-meizu-4-185x300.jpg\' attachment=\'65\' attachment_size=\'medium\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'\' font_size=\'\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jtdz97w8\' admin_preview_bg=\'\'][/av_image]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 06:38:05', '2019-03-18 06:38:05', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-03-18 06:39:12', '2019-03-18 06:39:12', '<!-- wp:shortcode -->\n[av_horizontal_gallery ids=\'65\' height=\'25\' size=\'masonry\' links=\'active\' lightbox_text=\'\' link_dest=\'\' gap=\'large\' active=\'\' initial=\'\' control_layout=\'av-control-default\' id=\'\' av_uid=\'av-jtdzanyn\'][/av_horizontal_gallery]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 06:39:12', '2019-03-18 06:39:12', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-03-18 06:40:10', '2019-03-18 06:40:10', '<!-- wp:shortcode -->\n[av_slideshow size=\'gallery\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdzbw0n\']\n[av_slide id=\'65\'][/av_slide]\n\n\n[/av_slideshow]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 06:40:10', '2019-03-18 06:40:10', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-03-18 06:40:27', '2019-03-18 06:40:27', '<!-- wp:shortcode -->\n[av_slideshow size=\'portfolio\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdzbw0n\']\n[av_slide id=\'65\' slide_type=\'\' video=\'https://\' mobile_image=\'\' fallback_link=\'http://\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' link_apply=\'\' link=\'\' link_target=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_slide]\n\n\n[/av_slideshow]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 06:40:27', '2019-03-18 06:40:27', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-03-18 06:43:31', '2019-03-18 06:43:31', '<!-- wp:shortcode -->\n[av_horizontal_gallery ids=\'65\' height=\'25\' size=\'large\' links=\'active\' lightbox_text=\'\' link_dest=\'\' gap=\'large\' active=\'\' initial=\'\' control_layout=\'av-control-default\' id=\'\' av_uid=\'av-jtdzg7tc\'][/av_horizontal_gallery]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 06:43:31', '2019-03-18 06:43:31', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-03-18 06:44:18', '2019-03-18 06:44:18', '<!-- wp:shortcode -->\n[av_slideshow_full size=\'large\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jtdzh7t2\']\n[av_slide_full id=\'65\'][/av_slide_full]\n\n\n[/av_slideshow_full]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 06:44:18', '2019-03-18 06:44:18', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-03-18 06:46:48', '2019-03-18 06:46:48', '<!-- wp:shortcode -->\n[av_slideshow_full size=\'large\' min_height=\'0px\' stretch=\'\' animation=\'slide\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jtdzh7t2\']\n[av_slide_full id=\'65\' av_uid=\'av-3mls\' slide_type=\'\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_format=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_slide_full]\n\n\n[/av_slideshow_full]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 06:46:48', '2019-03-18 06:46:48', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-03-18 06:51:35', '2019-03-18 06:51:35', '<!-- wp:shortcode -->\n[av_slideshow size=\'no scaling\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdzqj6v\']\n[av_slide id=\'65\'][/av_slide]\n\n\n[/av_slideshow]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 06:51:35', '2019-03-18 06:51:35', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-03-18 06:54:37', '2019-03-18 06:54:37', '<!-- wp:shortcode -->\n[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\n[av_fullscreen_slide id=\'44\' av_uid=\'av-ya4z\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\n[/av_fullscreen]\n\n[av_postcontent link=\'page,64\' av_uid=\'av-sgq3\']\n\n[av_postcontent link=\'page,78\' av_uid=\'av-jtdzuibz\']\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 06:54:37', '2019-03-18 06:54:37', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-03-18 06:57:32', '2019-03-18 06:57:32', '', 'blured', '', 'inherit', 'open', 'closed', '', 'blured', '', '', '2019-03-18 06:57:46', '2019-03-18 06:57:46', '', 0, 'http://localhost:8015/Final/wp-content/uploads/2019/03/blured.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2019-03-18 07:04:16', '2019-03-18 07:04:16', '<!-- wp:shortcode -->\n[av_slideshow size=\'featured\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdzqj6v\']\n[av_slide id=\'65\' av_uid=\'av-p7j8\' slide_type=\'\' video=\'https://\' mobile_image=\'\' fallback_link=\'http://\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' link_apply=\'\' link=\'\' link_target=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_slide]\n\n\n[/av_slideshow]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 07:04:16', '2019-03-18 07:04:16', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-03-18 07:05:28', '2019-03-18 07:05:28', '<!-- wp:shortcode -->\n[av_fullscreen size=\'large\' image_attachment=\'scroll\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jte08fbp\']\n[av_fullscreen_slide id=\'65\'][/av_fullscreen_slide]\n\n\n[/av_fullscreen]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 07:05:28', '2019-03-18 07:05:28', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-03-18 07:05:41', '2019-03-18 07:05:41', '<!-- wp:shortcode -->\n[av_fullscreen size=\'no scaling\' image_attachment=\'scroll\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jte08fbp\']\n[av_fullscreen_slide id=\'65\' slide_type=\'image\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\n\n\n[/av_fullscreen]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 07:05:41', '2019-03-18 07:05:41', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2019-03-18 07:06:10', '2019-03-18 07:06:10', '<!-- wp:shortcode -->\n[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte09d99\']\n[av_slide_full id=\'65\'][/av_slide_full]\n\n\n[/av_slideshow_full]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 07:06:10', '2019-03-18 07:06:10', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-03-18 07:07:05', '2019-03-18 07:07:05', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode /-->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 07:07:05', '2019-03-18 07:07:05', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-03-18 07:07:49', '2019-03-18 07:07:49', '<!-- wp:shortcode -->\n[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte0bhjp\']\n[av_slide_full id=\'65\'][/av_slide_full]\n\n\n[/av_slideshow_full]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 07:07:49', '2019-03-18 07:07:49', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-03-18 07:09:57', '2019-03-18 07:09:57', '<!-- wp:shortcode -->\n[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte0bhjp\']\n[av_slide_full id=\'65\' slide_type=\'\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_format=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_slide_full]\n[av_slide_full id=\'82\'][/av_slide_full]\n[av_slide_full id=\'60\'][/av_slide_full]\n[/av_slideshow_full]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 07:09:57', '2019-03-18 07:09:57', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-03-18 07:10:58', '2019-03-18 07:10:58', '<!-- wp:shortcode -->\n[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte0bhjp\']\n[av_slide_full id=\'65\' slide_type=\'\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_format=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_slide_full]\n[av_slide_full id=\'82\'][/av_slide_full]\n[av_slide_full id=\'60\'][/av_slide_full]\n[/av_slideshow_full]\n\n[av_slideshow size=\'featured\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jte0fjel\']\n[av_slide id=\'65\'][/av_slide]\n[av_slide id=\'82\'][/av_slide]\n[av_slide id=\'60\'][/av_slide]\n[/av_slideshow]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 07:10:58', '2019-03-18 07:10:58', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-03-18 07:11:29', '2019-03-18 07:11:29', '<!-- wp:shortcode -->\n[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte0bhjp\']\n[av_slide_full id=\'65\' slide_type=\'\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_format=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_slide_full]\n\n\n[/av_slideshow_full]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 07:11:29', '2019-03-18 07:11:29', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-03-18 07:14:50', '2019-03-18 07:14:50', '<!-- wp:shortcode -->\n[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte0bhjp\']\n[av_slide_full id=\'65\' slide_type=\'\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_format=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_slide_full]\n\n\n[/av_slideshow_full]\n\n[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/blured-1500x1000.jpg\' attachment=\'82\' attachment_size=\'extra_large\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'yes\' font_size=\'14\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jte0khp0\' admin_preview_bg=\'\']\nHIGH PERFORMANCE\nINNOVATION IN EVERY INCH\nUt ridiculus a egestas accumsan commodo suspendisse himenaeos vestibulum orci facilisi quis leo luctus vestibulum suspendisse massa fusce ullamcorper dapibus eu a vel a metus nam dui nunc a.Suspendisse tempus vestibulum cras habitant accumsan vestibulum fames lectus.\n[/av_image]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 07:14:50', '2019-03-18 07:14:50', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-03-18 07:15:31', '2019-03-18 07:15:31', '<!-- wp:shortcode -->\n[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte0bhjp\']\n[av_slide_full id=\'65\' slide_type=\'\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_format=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_slide_full]\n\n\n[/av_slideshow_full]\n\n[av_image src=\'http://localhost:8015/Final/wp-content/uploads/2019/03/blured-1500x1000.jpg\' attachment=\'82\' attachment_size=\'extra_large\' align=\'center\' styling=\'\' hover=\'\' link=\'\' target=\'\' caption=\'yes\' font_size=\'21\' appearance=\'\' overlay_opacity=\'0.4\' overlay_color=\'#000000\' overlay_text_color=\'#ffffff\' copyright=\'\' animation=\'no-animation\' av_uid=\'av-jte0khp0\' admin_preview_bg=\'\']\nHIGH PERFORMANCE\nINNOVATION IN EVERY INCH\nUt ridiculus a egestas accumsan commodo suspendisse himenaeos vestibulum orci facilisi quis leo luctus vestibulum suspendisse massa fusce ullamcorper dapibus eu a vel a metus nam dui nunc a.Suspendisse tempus vestibulum cras habitant accumsan vestibulum fames lectus.\n[/av_image]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 07:15:31', '2019-03-18 07:15:31', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-03-18 07:16:32', '2019-03-18 07:16:32', '<!-- wp:shortcode -->\n[av_slideshow_full size=\'featured\' min_height=\'0px\' stretch=\'image_no_stretch\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' src=\'\' attachment=\'\' attachment_size=\'\' position=\'top left\' repeat=\'no-repeat\' attach=\'scroll\' av_uid=\'av-jte0bhjp\']\n[av_slide_full id=\'65\' slide_type=\'\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_format=\'\' video_ratio=\'16:9\' video_controls=\'\' video_mute=\'\' video_loop=\'\' video_autoplay=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_enable=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_slide_full]\n\n\n[/av_slideshow_full]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 07:16:32', '2019-03-18 07:16:32', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-03-18 07:19:38', '2019-03-18 07:19:38', '<!-- wp:shortcode -->\n[av_one_third first  min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'\']\n\n[av_textblock size=\'\' font_color=\'\' color=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-jte0pxik\' admin_preview_bg=\'\']\n<h2 class=\"vc_custom_heading vc_custom_1473085551571\">Slim and Beautiful</h2>\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\n<div class=\" basel-info-box2 text-left icon-alignment-top box-style-base color-scheme-dark  with-animation vc_custom_1483652611221\">\n<div class=\"info-box-content\">\n<div class=\"info-box-inner\">\n\nThe PRO 6 is a flagship phone equipped\nwith a space saving 5.2 inch screen.\n\n</div>\n</div>\n</div>\n<div class=\"basel-button-wrapper text-left\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\n<div class=\"vc_empty_space\"></div>\n<h2 class=\"vc_custom_heading vc_custom_1473085938391\">What a Smart Cut</h2>\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\n<div class=\" basel-info-box2 text-left icon-alignment-top box-style-base color-scheme-dark  with-animation vc_custom_1483652616155\">\n<div class=\"info-box-content\">\n<div class=\"info-box-inner\">\n\nThanks to a breakthrough in antenna technology,\nthe signal problem by cutting the body.\n\n</div>\n</div>\n</div>\n<div class=\"basel-button-wrapper text-left\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\n[/av_textblock]\n\n[/av_one_third][av_one_third  min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'\']\n\n[av_slideshow size=\'featured\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jte0qobf\']\n[av_slide id=\'65\'][/av_slide]\n\n\n[/av_slideshow]\n\n[/av_one_third][av_one_third  min_height=\'\' vertical_alignment=\'\' space=\'\' custom_margin=\'\' margin=\'0px\' row_boxshadow=\'\' row_boxshadow_color=\'\' row_boxshadow_width=\'10\' link=\'\' linktarget=\'\' link_hover=\'\' padding=\'0px\' highlight=\'\' highlight_size=\'\' border=\'\' border_color=\'\' radius=\'0px\' column_boxshadow=\'\' column_boxshadow_color=\'\' column_boxshadow_width=\'10\' background=\'bg_color\' background_color=\'\' background_gradient_color1=\'\' background_gradient_color2=\'\' background_gradient_direction=\'vertical\' src=\'\' background_position=\'top left\' background_repeat=\'no-repeat\' animation=\'\' mobile_breaking=\'\' mobile_display=\'\' av_uid=\'\']\n\n[av_textblock size=\'\' font_color=\'\' color=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\' av_uid=\'av-jte0q4kr\' admin_preview_bg=\'\']\n<h2 class=\"vc_custom_heading vc_custom_1473085804042\">Symmetric Beauty</h2>\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\n<div class=\" basel-info-box2 text-right icon-alignment-top box-style-base color-scheme-dark  with-animation vc_custom_1483652621110\">\n<div class=\"info-box-content\">\n<div class=\"info-box-inner\">\n\nWe redesigned the dimensions and position of the\nupper camera and sensor on the front cover.\n\n</div>\n</div>\n</div>\n<div class=\"basel-button-wrapper text-right\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\n<div class=\"vc_empty_space\"></div>\n<h2 class=\"vc_custom_heading vc_custom_1473086415062\">Fantastic Self-Breaking</h2>\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_left vc_separator_no_text vc_custom_1473010199959\"></div>\n<div class=\" basel-info-box2 text-right icon-alignment-top box-style-base color-scheme-dark  with-animation vc_custom_1483652628283\">\n<div class=\"info-box-content\">\n<div class=\"info-box-inner\">\n\nPRO means proactive and brave. Features a new ID style,\nembodied by beautiful curves and arcs.\n\n</div>\n</div>\n</div>\n<div class=\"basel-button-wrapper text-right\"><a class=\"btn btn-color-default btn-style-link btn-size-default\" title=\"\" href=\"https://demo.xtemos.com/basel/home-landing/#\">Continue Reading</a></div>\n[/av_textblock]\n\n[/av_one_third]\n<!-- /wp:shortcode -->', 'Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-18 07:19:38', '2019-03-18 07:19:38', '', 64, 'http://localhost:8015/Final/2019/03/18/64-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2019-03-18 07:20:26', '2019-03-18 07:20:26', '', 'paralax-meizu-4', '', 'inherit', 'open', 'closed', '', 'paralax-meizu-4-2', '', '', '2019-03-18 07:20:26', '2019-03-18 07:20:26', '', 64, 'http://localhost:8015/Final/wp-content/uploads/2019/03/paralax-meizu-4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2019-03-18 07:22:56', '2019-03-18 07:22:56', '{\n    \"enfold::nav_menu_locations[avia]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 07:22:56\"\n    },\n    \"nav_menu[-1894034897]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 07:22:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5be38847-ed28-42bc-b286-f235120e12b5', '', '', '2019-03-18 07:22:56', '2019-03-18 07:22:56', '', 0, 'http://localhost:8015/Final/2019/03/18/5be38847-ed28-42bc-b286-f235120e12b5/', 0, 'customize_changeset', '', 0),
(105, 1, '2019-03-18 07:24:41', '2019-03-18 07:24:41', '', 'pro60', '', 'inherit', 'open', 'closed', '', 'pro60-2', '', '', '2019-03-18 07:24:41', '2019-03-18 07:24:41', '', 43, 'http://localhost:8015/Final/wp-content/uploads/2019/03/pro60-1.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2019-03-18 07:24:57', '2019-03-18 07:24:57', '<!-- wp:shortcode -->\n[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\n[av_fullscreen_slide slide_type=\'image\' id=\'105\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'lightbox\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'manually,http://\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'manually,http://\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\n\n\n[/av_fullscreen]\n\n[av_postcontent link=\'page,64\' av_uid=\'av-sgq3\']\n\n[av_postcontent link=\'page,78\' av_uid=\'av-jtdzuibz\']\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 07:24:57', '2019-03-18 07:24:57', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-03-18 07:26:49', '2019-03-18 07:26:49', '<!-- wp:shortcode -->\n[av_fullscreen size=\'extra_large\' image_attachment=\'\' animation=\'slide_up\' conditional_play=\'\' autoplay=\'false\' interval=\'5\' control_layout=\'av-control-default\' av_uid=\'av-jtdypo5l\']\n[av_fullscreen_slide slide_type=\'image\' id=\'44\' position=\'center center\' video=\'http://\' mobile_image=\'\' fallback_link=\'http://\' video_cover=\'\' title=\'\' custom_title_size=\'\' custom_content_size=\'\' caption_pos=\'caption_bottom\' link_apply=\'\' link=\'lightbox\' link_target=\'\' button_label=\'Click me\' button_color=\'light\' link1=\'manually,http://\' link_target1=\'\' button_label2=\'Click me\' button_color2=\'light\' link2=\'manually,http://\' link_target2=\'\' font_color=\'\' custom_title=\'\' custom_content=\'\' overlay_opacity=\'0.5\' overlay_color=\'\' overlay_pattern=\'\' overlay_custom_pattern=\'\' av-medium-font-size-title=\'\' av-small-font-size-title=\'\' av-mini-font-size-title=\'\' av-medium-font-size=\'\' av-small-font-size=\'\' av-mini-font-size=\'\'][/av_fullscreen_slide]\n\n\n[/av_fullscreen]\n\n[av_postcontent link=\'page,64\' av_uid=\'av-sgq3\']\n\n[av_postcontent link=\'page,78\' av_uid=\'av-jtdzuibz\']\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-03-18 07:26:49', '2019-03-18 07:26:49', '', 43, 'http://localhost:8015/Final/2019/03/18/43-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'neilventor'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"94c0bc870383f3f5202805d94c82d767333a273437b4a6a70d2b224acdb4a0a4\";a:4:{s:10:\"expiration\";i:1553060186;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36\";s:5:\"login\";i:1552887386;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(19, 1, 'wc_last_active', '1552867200'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&imgsize=extra_large&advImgDetails=show'),
(21, 1, 'wp_user-settings-time', '1552894107'),
(22, 1, 'ls-show-support-notice-timestamp', '1551075054'),
(23, 1, 'ls-store-last-viewed', '2019-03-18'),
(24, 1, 'layerslider_help_wp_pointer', '1'),
(25, 1, 'closedpostboxes_page', 'a:1:{i:0;s:6:\"layout\";}'),
(26, 1, 'metaboxhidden_page', 'a:1:{i:0;s:16:\"avia_alb_actions\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'neilventor', '$P$BVnUmo9q0jlrThq.L1YYkhVqVuef3K.', 'neilventor', 'neilventor@yahoo.com', '', '2019-03-18 05:36:10', '', 0, 'neilventor');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:714:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:3:\"NEC\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:3:\"NEC\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:20:\"neilventor@yahoo.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1553061025);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Philippines', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'PH', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_layerslider`
--
ALTER TABLE `wp_layerslider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_layerslider_revisions`
--
ALTER TABLE `wp_layerslider_revisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_layerslider`
--
ALTER TABLE `wp_layerslider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_layerslider_revisions`
--
ALTER TABLE `wp_layerslider_revisions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=665;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=517;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
