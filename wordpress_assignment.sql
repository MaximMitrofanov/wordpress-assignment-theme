-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 09:33 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_wp_trash_meta_status', '1'),
(2, 1, '_wp_trash_meta_time', '1650627916');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-04-17 14:52:59', '2022-04-17 14:52:59', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
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
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Leos Media Assignment', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'max.funoff@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:63:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/leosmedia/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'leosmedia', 'yes'),
(41, 'stylesheet', 'leosmedia', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1665759179', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1650916379;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1650941579;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1650984779;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1650984791;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1650984792;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1651503179;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'theme_mods_twentytwentytwo', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1650292476;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(124, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(138, 'can_compress_scripts', '1', 'no'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(184, 'WPLANG', '', 'yes'),
(185, 'new_admin_email', 'max.funoff@gmail.com', 'yes'),
(197, 'current_theme', 'Leos Media Assignment', 'yes'),
(198, 'theme_mods_leosmedia', 'a:54:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:11;s:25:\"lm-contact-callout-header\";s:45:\"מעוניינים בייעוץ ראשוני?\";s:20:\"lm-share-callout-twt\";b:1;s:23:\"lm-phone-callout-number\";s:11:\"050-0000001\";s:28:\"lm-contact-callout-subheader\";s:63:\"אל תחכו, השאירו פרטים ואחזור בהקדם:\";s:25:\"lm-contact-callout-button\";s:13:\"צור קשר\";s:22:\"lm-phone-callout-label\";s:11:\"חייגו:\";s:25:\"lm-share-callout-linkedin\";b:1;s:20:\"lm-share-callout-ytb\";b:1;s:19:\"lm-share-callout-fb\";b:1;s:26:\"lm-share-callout-pinterest\";b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1650381866;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:27:\"lm-landing-callout-headline\";s:46:\"בואו לייעוץ והדרכת הורים!\";s:26:\"lm-general-callout-primary\";s:7:\"#da2fd5\";s:26:\"lm-landing-callout-display\";s:3:\"Yes\";s:26:\"lm-landing-callout-subhead\";s:154:\"לייעוץ והדרכה בואו לחלוק אתי את הידע הניסיון וההצלחות הרבות שצברתי עם משפחות מרוצות \";s:25:\"lm-general-callout-accent\";s:7:\"#424242\";s:26:\"lm-aboutus-callout-sideimg\";i:139;s:26:\"lm-aboutus-callout-content\";s:1743:\"יועצת הורים ומשפחה, מעניקה ייעוץ אישי להורים ביחד ולחוד, ייעוץ זוגי ופתרון בעיות במשפחה. מנחת סדנאות הורות, מרצה בתחום ההורות ומומחית בתקשורת מקרבת. \n\n        בוגרת לימודי הורות ויחסים במכון אדלר, ובעלת ניסיון של למעלה מעשרים שנה בייעוץ הורי ומשפחתי ובהנחיית קבוצות הורים. מעל הכול, אני אם גאה לשני ילדים נפלאים ובעלת ניסיון בחינוך כבר כמה עשורים. להיות הורים זאת זכות - אך גם אחריות\n\n        אני אוהבת ללמד ולהדריך וזהו מרכז הוויתי מזה שנים רבות.\n        לפני שפניתי לתחום ההורות, עסקתי שנים בהוראה וחינוך ואהבתי את התחום מאוד. במקביל, ביליתי זמן רב בחינוך ילדי ובחינוך בעלי...(:\n        צברתי וותק של 20 שנים בתחום בהם עזרתי למאות משפחות לחוות הורות מיטיבה ומאושרת.\n\n        ועכשיו ברצינות: לאחר כל כך הרבה שנים בתחום החינוך, אם יש דבר אחד שברור לי מעל לכל ספק, הוא שלהיות הורה זו חוויה מדהימה, אך גם מבלבלת מאוד. כולנו חוששים לעשות טעויות ומנסים לעשות את הטוב ביותר עבור ילדינו.\n        אני מזמינה אתכם להצטרף אלי למסע של שינוי, גילוי עצמי והתפתחות בדרך להפוך את ההורות שלכם לחוויה הרבה יותר\";s:26:\"lm-aboutus-callout-display\";s:3:\"Yes\";s:28:\"lm-expertise-callout-display\";s:3:\"Yes\";s:34:\"lm-expertise-callout-tab1-headline\";s:26:\"הורים לגיל הרך\";s:34:\"lm-expertise-callout-tab2-headline\";s:56:\"הורים לילדים בגיל ביה\"ס היסודי \";s:34:\"lm-expertise-callout-tab3-headline\";s:49:\"הורים לילדים בגיל ההתבגרות\";s:33:\"lm-expertise-callout-tab1-content\";s:1014:\"לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית לורם איפסום דולור סיט אמט,\n    קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם.\n    וסטיבולום אט דולור, קראס אגת לקטוס ווא  אאוגו וסטיבולום סוליסי טידום בעליק. צש בליא,\n    מנסוטו צמלח לביקו ננבי, צמוקו בלוקריה שיצמה ברורק. לורם איפסום דולור סיט אמט,\n    קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם.\n    וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק.\n    קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.\n  \";s:33:\"lm-expertise-callout-tab2-content\";s:416:\"קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם.\n    וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק.\n    קונדימנטום קורוס בליקרה, נונסטי קלוב  בריקנה סטום, לפריקך תצטריק לרטי.\";s:33:\"lm-expertise-callout-tab3-content\";s:701:\"קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם.\n    וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק.\n    וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק.\n    וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק.\n    קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.\";s:25:\"lm-whyus-callout-headline\";s:36:\"למה דווקא לבחור בנו?\";s:22:\"lm-whyus-callout-quote\";s:136:\"“הצטרפו אלי למסע של שינוי,\n    והפכו את ההורות שלכם לחוויה הרבה יותר טובה”\n  \";s:24:\"lm-whyus-callout-display\";s:3:\"Yes\";s:22:\"lm-whyus-callout-bgimg\";s:67:\"http://localhost/wordpress/wp-content/uploads/2022/04/reasonsbg.png\";s:20:\"lm-whyus-callout-ins\";s:69:\"http://localhost/wordpress/wp-content/uploads/2022/04/happyfamily.png\";s:28:\"lm-contactus-callout-display\";s:3:\"Yes\";s:29:\"lm-contactus-callout-headline\";s:73:\"להדרכה הנכונה ולייעוץ הנכון להורות שלכם\";s:28:\"lm-contactus-callout-subhead\";s:81:\"השאירו פרטים ואחזור אליכם בהקדם עם כל הפרטים\";s:25:\"lm-contactus-callout-logo\";s:74:\"http://localhost/wordpress/wp-content/uploads/2022/04/logo-placeholder.png\";s:27:\"lm-aboutus-callout-headline\";s:15:\"קצת עליי\";s:27:\"lm-comments-callout-display\";s:3:\"Yes\";s:28:\"lm-comments-callout-headline\";s:49:\"הצטרפו למאות לקוחות מרוצים\";s:26:\"lm-comments-callout-amount\";i:4;s:24:\"lm-landing-callout-bgimg\";s:66:\"http://localhost/wordpress/wp-content/uploads/2022/04/bannerbg.png\";s:32:\"lm-landing-callout-phone-display\";s:3:\"Yes\";s:30:\"lm-landing-callout-phone-label\";s:11:\"חייגו:\";s:31:\"lm-landing-callout-phone-number\";s:11:\"050-0000000\";s:31:\"lm-landing-callout-display-form\";s:3:\"Yes\";s:30:\"lm-aboutus-callout-form-select\";s:40:\"פעוטות, ילדים, מתבגרים\";s:24:\"lm-general-callout-light\";s:7:\"#f1f1f3\";s:30:\"lm-floating-callout-display-sq\";s:3:\"Yes\";s:29:\"lm-floating-callout-display-s\";s:3:\"Yes\";s:29:\"lm-floating-callout-display-m\";s:3:\"Yes\";s:30:\"lm-floating-callout-display-gt\";s:3:\"Yes\";}', 'yes'),
(199, 'theme_switched', '', 'yes'),
(210, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1650906175;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}', 'no'),
(211, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1650906177;s:7:\"checked\";a:1:{s:9:\"leosmedia\";s:5:\"0.0.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(223, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(224, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(246, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(250, 'category_children', 'a:0:{}', 'yes'),
(295, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":0}', 'yes'),
(414, 'site_logo', '11', 'yes'),
(435, 'recovery_mode_email_last_sent', '1650629353', 'yes'),
(613, 'theme_mods_twentytwenty', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1650381883;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(615, 'theme_mods_twentytwentyone', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1650381863;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(1018, 'recently_activated', 'a:0:{}', 'yes'),
(1037, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1650906177;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.12.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.12.2\";s:19:\"akismet/akismet.php\";s:5:\"4.2.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(1038, 'acf_version', '5.12.2', 'yes'),
(1285, '_site_transient_timeout_browser_f39cc4d0a67b6b99bf2b24d90edef278', '1651262755', 'no'),
(1286, '_site_transient_browser_f39cc4d0a67b6b99bf2b24d90edef278', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:14:\"100.0.4896.127\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(1775, '_site_transient_timeout_theme_roots', '1650907976', 'no'),
(1776, '_site_transient_theme_roots', 'a:1:{s:9:\"leosmedia\";s:7:\"/themes\";}', 'no'),
(1777, '_site_transient_timeout_php_check_ecfa741d55b7b1a85bd61a2307877c8c', '1651510978', 'no'),
(1778, '_site_transient_php_check_ecfa741d55b7b1a85bd61a2307877c8c', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1897, '_transient_timeout_global_styles_leosmedia', '1650915042', 'no'),
(1898, '_transient_global_styles_leosmedia', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1650292199:1'),
(7, 2, '_edit_lock', '1650472775:1'),
(8, 11, '_wp_attached_file', '2022/04/logo-placeholder.png'),
(9, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:200;s:4:\"file\";s:28:\"2022/04/logo-placeholder.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 11, '_wp_attachment_image_alt', 'placeholder'),
(11, 12, '_edit_lock', '1650300997:1'),
(12, 12, '_wp_trash_meta_status', 'publish'),
(13, 12, '_wp_trash_meta_time', '1650301009'),
(14, 13, '_wp_trash_meta_status', 'publish'),
(15, 13, '_wp_trash_meta_time', '1650304877'),
(16, 14, '_wp_trash_meta_status', 'publish'),
(17, 14, '_wp_trash_meta_time', '1650304879'),
(20, 16, '_edit_lock', '1650306434:1'),
(21, 16, '_wp_trash_meta_status', 'publish'),
(22, 16, '_wp_trash_meta_time', '1650306437'),
(23, 17, '_wp_trash_meta_status', 'publish'),
(24, 17, '_wp_trash_meta_time', '1650306559'),
(25, 18, '_wp_trash_meta_status', 'publish'),
(26, 18, '_wp_trash_meta_time', '1650306575'),
(27, 19, '_wp_trash_meta_status', 'publish'),
(28, 19, '_wp_trash_meta_time', '1650306576'),
(29, 20, '_wp_trash_meta_status', 'publish'),
(30, 20, '_wp_trash_meta_time', '1650306579'),
(31, 21, '_wp_trash_meta_status', 'publish'),
(32, 21, '_wp_trash_meta_time', '1650306581'),
(33, 22, '_wp_trash_meta_status', 'publish'),
(34, 22, '_wp_trash_meta_time', '1650306587'),
(35, 23, '_wp_trash_meta_status', 'publish'),
(36, 23, '_wp_trash_meta_time', '1650306589'),
(37, 24, '_wp_trash_meta_status', 'publish'),
(38, 24, '_wp_trash_meta_time', '1650306602'),
(39, 25, '_wp_trash_meta_status', 'publish'),
(40, 25, '_wp_trash_meta_time', '1650306605'),
(42, 26, '_customize_restore_dismissed', '1'),
(43, 27, '_edit_lock', '1650616218:1'),
(44, 2, '_wp_trash_meta_status', 'publish'),
(45, 2, '_wp_trash_meta_time', '1650627942'),
(46, 2, '_wp_desired_post_slug', 'sample-page'),
(47, 3, '_wp_trash_meta_status', 'draft'),
(48, 3, '_wp_trash_meta_time', '1650627943'),
(49, 3, '_wp_desired_post_slug', 'privacy-policy'),
(50, 6, '_wp_trash_meta_status', 'publish'),
(51, 6, '_wp_trash_meta_time', '1650627959'),
(52, 6, '_wp_desired_post_slug', 'home'),
(53, 1, '_wp_trash_meta_status', 'publish'),
(54, 1, '_wp_trash_meta_time', '1650627960'),
(55, 1, '_wp_desired_post_slug', 'hello-world'),
(56, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:5:\"trash\";}'),
(57, 30, '_edit_lock', '1650629069:1'),
(60, 32, '_edit_lock', '1650629210:1'),
(63, 34, '_edit_lock', '1650629485:1'),
(64, 35, '_edit_lock', '1650629610:1'),
(65, 44, '_edit_last', '1'),
(66, 44, '_edit_lock', '1650633163:1'),
(67, 66, '_edit_lock', '1650632368:1'),
(68, 67, '_edit_last', '1'),
(69, 67, '_edit_lock', '1650636988:1'),
(70, 69, '_edit_lock', '1650637512:1'),
(74, 69, '_edit_last', '1'),
(75, 69, 'reasons_icon', '81'),
(76, 69, '_reasons_icon', 'field_6262a89f9901a'),
(81, 77, '_wp_attached_file', '2022/04/20.png'),
(82, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:110;s:4:\"file\";s:14:\"2022/04/20.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 78, '_wp_attached_file', '2022/04/chat.png'),
(84, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:110;s:4:\"file\";s:16:\"2022/04/chat.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 79, '_wp_attached_file', '2022/04/eye.png'),
(86, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:110;s:4:\"file\";s:15:\"2022/04/eye.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 80, '_wp_attached_file', '2022/04/family.png'),
(88, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:110;s:4:\"file\";s:18:\"2022/04/family.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 81, '_wp_attached_file', '2022/04/graduate.png'),
(90, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:110;s:4:\"file\";s:20:\"2022/04/graduate.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 82, '_wp_attached_file', '2022/04/love.png'),
(92, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:110;s:4:\"file\";s:16:\"2022/04/love.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 83, '_wp_attached_file', '2022/04/meeting.png'),
(94, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:110;s:4:\"file\";s:19:\"2022/04/meeting.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 84, '_wp_attached_file', '2022/04/teach.png'),
(96, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:110;s:4:\"file\";s:17:\"2022/04/teach.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 85, '_edit_lock', '1650637610:1'),
(98, 85, '_edit_last', '1'),
(99, 85, 'reasons_icon', '77'),
(100, 85, '_reasons_icon', 'field_6262a89f9901a'),
(101, 86, '_edit_lock', '1650637504:1'),
(102, 86, '_edit_last', '1'),
(103, 86, 'reasons_icon', '84'),
(104, 86, '_reasons_icon', 'field_6262a89f9901a'),
(105, 87, '_edit_lock', '1650637534:1'),
(106, 87, '_edit_last', '1'),
(107, 87, 'reasons_icon', '80'),
(108, 87, '_reasons_icon', 'field_6262a89f9901a'),
(109, 88, '_edit_lock', '1650637627:1'),
(110, 88, '_edit_last', '1'),
(111, 88, 'reasons_icon', '78'),
(112, 88, '_reasons_icon', 'field_6262a89f9901a'),
(113, 89, '_edit_lock', '1650637557:1'),
(114, 89, '_edit_last', '1'),
(115, 89, 'reasons_icon', '83'),
(116, 89, '_reasons_icon', 'field_6262a89f9901a'),
(117, 90, '_edit_lock', '1650637566:1'),
(118, 90, '_edit_last', '1'),
(119, 90, 'reasons_icon', '79'),
(120, 90, '_reasons_icon', 'field_6262a89f9901a'),
(121, 91, '_edit_lock', '1650637578:1'),
(122, 91, '_edit_last', '1'),
(123, 91, 'reasons_icon', '82'),
(124, 91, '_reasons_icon', 'field_6262a89f9901a'),
(125, 85, '_wp_trash_meta_status', 'future'),
(126, 85, '_wp_trash_meta_time', '1650637711'),
(127, 85, '_wp_desired_post_slug', '20-%d7%a9%d7%a0%d7%95%d7%aa-%d7%95%d7%95%d7%aa%d7%a7-%d7%95%d7%a0%d7%99%d7%a1%d7%99%d7%95%d7%9f-%d7%91%d7%aa%d7%97%d7%95%d7%9d'),
(128, 86, '_wp_trash_meta_status', 'future'),
(129, 86, '_wp_trash_meta_time', '1650637713'),
(130, 86, '_wp_desired_post_slug', '%d7%a2%d7%95%d7%91%d7%93%d7%aa-%d7%a2%d7%9d-%d7%9e%d7%92%d7%95%d7%95%d7%9f-%d7%92%d7%99%d7%9c%d7%90%d7%99%d7%9d'),
(131, 87, '_wp_trash_meta_status', 'future'),
(132, 87, '_wp_trash_meta_time', '1650637714'),
(133, 87, '_wp_desired_post_slug', '%d7%94%d7%a0%d7%97%d7%99%d7%99%d7%aa-%d7%a7%d7%91%d7%95%d7%a6%d7%95%d7%aa-%d7%94%d7%95%d7%a8%d7%99%d7%9d'),
(134, 69, '_wp_trash_meta_status', 'future'),
(135, 69, '_wp_trash_meta_time', '1650637716'),
(136, 69, '_wp_desired_post_slug', '%d7%94%d7%93%d7%a8%d7%9b%d7%aa-%d7%a6%d7%95%d7%95%d7%aa%d7%99-%d7%97%d7%99%d7%a0%d7%95%d7%9a'),
(137, 88, '_wp_trash_meta_status', 'future'),
(138, 88, '_wp_trash_meta_time', '1650637717'),
(139, 88, '_wp_desired_post_slug', '%d7%9e%d7%95%d7%9e%d7%97%d7%99%d7%95%d7%aa-%d7%91%d7%aa%d7%a7%d7%a9%d7%95%d7%a8%d7%aa-%d7%9e%d7%a7%d7%a8%d7%91%d7%aa'),
(140, 92, '_edit_lock', '1650637746:1'),
(141, 92, '_edit_last', '1'),
(142, 92, 'reasons_icon', '78'),
(143, 92, '_reasons_icon', 'field_6262a89f9901a'),
(144, 93, '_edit_lock', '1650637767:1'),
(145, 93, '_edit_last', '1'),
(146, 93, 'reasons_icon', '80'),
(147, 93, '_reasons_icon', 'field_6262a89f9901a'),
(148, 94, '_edit_lock', '1650637790:1'),
(149, 94, '_edit_last', '1'),
(150, 94, 'reasons_icon', '84'),
(151, 94, '_reasons_icon', 'field_6262a89f9901a'),
(152, 95, '_edit_lock', '1650637808:1'),
(153, 95, '_edit_last', '1'),
(154, 95, 'reasons_icon', '81'),
(155, 95, '_reasons_icon', 'field_6262a89f9901a'),
(156, 96, '_edit_lock', '1650638150:1'),
(157, 96, '_edit_last', '1'),
(158, 96, 'reasons_icon', '77'),
(159, 96, '_reasons_icon', 'field_6262a89f9901a'),
(160, 97, '_edit_lock', '1650638387:1'),
(161, 98, '_edit_lock', '1650638407:1'),
(162, 27, '_customize_restore_dismissed', '1'),
(163, 99, '_edit_lock', '1650645890:1'),
(164, 99, '_customize_restore_dismissed', '1'),
(165, 100, '_edit_lock', '1650646127:1'),
(166, 100, '_customize_restore_dismissed', '1'),
(167, 101, '_edit_lock', '1650647252:1'),
(168, 101, '_customize_restore_dismissed', '1'),
(169, 102, '_edit_lock', '1650647494:1'),
(170, 102, '_customize_restore_dismissed', '1'),
(171, 103, '_edit_lock', '1650647938:1'),
(172, 103, '_customize_restore_dismissed', '1'),
(173, 104, '_edit_lock', '1650647960:1'),
(174, 104, '_customize_restore_dismissed', '1'),
(175, 105, '_edit_lock', '1650648878:1'),
(176, 105, '_customize_restore_dismissed', '1'),
(177, 106, '_wp_trash_meta_status', 'publish'),
(178, 106, '_wp_trash_meta_time', '1650652338'),
(179, 107, '_wp_trash_meta_status', 'publish'),
(180, 107, '_wp_trash_meta_time', '1650652378'),
(181, 108, '_wp_trash_meta_status', 'publish'),
(182, 108, '_wp_trash_meta_time', '1650652394'),
(183, 109, '_wp_trash_meta_status', 'publish'),
(184, 109, '_wp_trash_meta_time', '1650652401'),
(185, 110, '_wp_trash_meta_status', 'publish'),
(186, 110, '_wp_trash_meta_time', '1650652403'),
(187, 111, '_wp_trash_meta_status', 'publish'),
(188, 111, '_wp_trash_meta_time', '1650652427'),
(189, 112, '_wp_trash_meta_status', 'publish'),
(190, 112, '_wp_trash_meta_time', '1650652448'),
(191, 113, '_wp_trash_meta_status', 'publish'),
(192, 113, '_wp_trash_meta_time', '1650652451'),
(193, 114, '_wp_trash_meta_status', 'publish'),
(194, 114, '_wp_trash_meta_time', '1650653801'),
(195, 115, '_edit_lock', '1650655607:1'),
(196, 116, '_wp_attached_file', '2022/04/potrait.jpg'),
(197, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4903;s:6:\"height\";i:7347;s:4:\"file\";s:19:\"2022/04/potrait.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 117, '_wp_attached_file', '2022/04/cropped-potrait.jpg'),
(199, 117, '_wp_attachment_context', 'lm-aboutus-callout-sideimg-control'),
(200, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:800;s:4:\"file\";s:27:\"2022/04/cropped-potrait.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-potrait-188x300.jpg\";s:5:\"width\";i:188;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-potrait-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 115, '_customize_restore_dismissed', '1'),
(202, 118, '_edit_lock', '1650656666:1'),
(203, 118, '_customize_restore_dismissed', '1'),
(204, 119, '_wp_trash_meta_status', 'publish'),
(205, 119, '_wp_trash_meta_time', '1650656727'),
(206, 120, '_wp_trash_meta_status', 'publish'),
(207, 120, '_wp_trash_meta_time', '1650656947'),
(208, 121, '_edit_lock', '1650656993:1'),
(209, 121, '_wp_trash_meta_status', 'publish'),
(210, 121, '_wp_trash_meta_time', '1650657000'),
(211, 122, '_wp_trash_meta_status', 'publish'),
(212, 122, '_wp_trash_meta_time', '1650657004'),
(213, 123, '_wp_trash_meta_status', 'publish'),
(214, 123, '_wp_trash_meta_time', '1650657007'),
(215, 124, '_wp_trash_meta_status', 'publish'),
(216, 124, '_wp_trash_meta_time', '1650657018'),
(217, 125, '_wp_trash_meta_status', 'publish'),
(218, 125, '_wp_trash_meta_time', '1650657021'),
(219, 126, '_wp_trash_meta_status', 'publish'),
(220, 126, '_wp_trash_meta_time', '1650657030'),
(221, 127, '_wp_trash_meta_status', 'publish'),
(222, 127, '_wp_trash_meta_time', '1650657034'),
(223, 128, '_wp_trash_meta_status', 'publish'),
(224, 128, '_wp_trash_meta_time', '1650657154'),
(225, 129, '_wp_trash_meta_status', 'publish'),
(226, 129, '_wp_trash_meta_time', '1650657163'),
(227, 130, '_wp_trash_meta_status', 'publish'),
(228, 130, '_wp_trash_meta_time', '1650657182'),
(229, 131, '_wp_trash_meta_status', 'publish'),
(230, 131, '_wp_trash_meta_time', '1650657193'),
(231, 132, '_wp_attached_file', '2022/04/reasonsbg.png'),
(232, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:21:\"2022/04/reasonsbg.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"reasonsbg-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"reasonsbg-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"reasonsbg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"reasonsbg-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"reasonsbg-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(233, 133, '_wp_attached_file', '2022/04/happyfamily.png'),
(234, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1539;s:6:\"height\";i:999;s:4:\"file\";s:23:\"2022/04/happyfamily.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"happyfamily-300x195.png\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"happyfamily-1024x665.png\";s:5:\"width\";i:1024;s:6:\"height\";i:665;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"happyfamily-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"happyfamily-768x499.png\";s:5:\"width\";i:768;s:6:\"height\";i:499;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"happyfamily-1536x997.png\";s:5:\"width\";i:1536;s:6:\"height\";i:997;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(235, 134, '_wp_trash_meta_status', 'publish'),
(236, 134, '_wp_trash_meta_time', '1650657237'),
(237, 135, '_wp_trash_meta_status', 'publish'),
(238, 135, '_wp_trash_meta_time', '1650657257'),
(239, 136, '_wp_trash_meta_status', 'publish'),
(240, 136, '_wp_trash_meta_time', '1650657259'),
(241, 137, '_wp_trash_meta_status', 'publish'),
(242, 137, '_wp_trash_meta_time', '1650657269'),
(243, 138, '_wp_attached_file', '2022/04/potrait-1-scaled.jpg'),
(244, 138, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1708;s:6:\"height\";i:2560;s:4:\"file\";s:28:\"2022/04/potrait-1-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"potrait-1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"potrait-1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"potrait-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"potrait-1-768x1151.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"potrait-1-1025x1536.jpg\";s:5:\"width\";i:1025;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"potrait-1-1367x2048.jpg\";s:5:\"width\";i:1367;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"potrait-1.jpg\";}'),
(245, 139, '_wp_attached_file', '2022/04/cropped-potrait-1-scaled-1.jpg'),
(246, 139, '_wp_attachment_context', 'lm-aboutus-callout-sideimg-control'),
(247, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:800;s:4:\"file\";s:38:\"2022/04/cropped-potrait-1-scaled-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"cropped-potrait-1-scaled-1-188x300.jpg\";s:5:\"width\";i:188;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"cropped-potrait-1-scaled-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 140, '_wp_trash_meta_status', 'publish'),
(249, 140, '_wp_trash_meta_time', '1650657312'),
(250, 141, '_edit_lock', '1650657851:1'),
(251, 142, '_edit_lock', '1650657939:1'),
(252, 143, '_edit_lock', '1650658056:1'),
(253, 144, '_edit_lock', '1650658113:1'),
(254, 145, '_edit_lock', '1650658107:1'),
(255, 146, '_edit_lock', '1650658131:1'),
(256, 141, '_customize_restore_dismissed', '1'),
(257, 147, '_edit_lock', '1650660560:1'),
(258, 147, '_customize_restore_dismissed', '1'),
(259, 148, '_edit_lock', '1650660858:1'),
(260, 148, '_customize_restore_dismissed', '1'),
(261, 149, '_edit_lock', '1650661128:1'),
(262, 149, '_customize_restore_dismissed', '1'),
(263, 150, '_edit_lock', '1650700663:1'),
(264, 150, '_customize_restore_dismissed', '1'),
(265, 151, '_wp_trash_meta_status', 'publish'),
(266, 151, '_wp_trash_meta_time', '1650700270'),
(267, 152, '_wp_trash_meta_status', 'publish'),
(268, 152, '_wp_trash_meta_time', '1650700272'),
(269, 153, '_wp_trash_meta_status', 'publish'),
(270, 153, '_wp_trash_meta_time', '1650700274'),
(271, 154, '_wp_trash_meta_status', 'publish'),
(272, 154, '_wp_trash_meta_time', '1650700276'),
(273, 155, '_wp_trash_meta_status', 'publish'),
(274, 155, '_wp_trash_meta_time', '1650700290'),
(275, 156, '_wp_trash_meta_status', 'publish'),
(276, 156, '_wp_trash_meta_time', '1650700293'),
(277, 150, '_wp_trash_meta_status', 'publish'),
(278, 150, '_wp_trash_meta_time', '1650700668'),
(279, 157, '_wp_attached_file', '2022/04/bannerbg.png'),
(280, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2022/04/bannerbg.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bannerbg-300x125.png\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"bannerbg-1024x427.png\";s:5:\"width\";i:1024;s:6:\"height\";i:427;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bannerbg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"bannerbg-768x320.png\";s:5:\"width\";i:768;s:6:\"height\";i:320;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"bannerbg-1536x640.png\";s:5:\"width\";i:1536;s:6:\"height\";i:640;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(281, 158, '_edit_lock', '1650703758:1'),
(282, 158, '_wp_trash_meta_status', 'publish'),
(283, 158, '_wp_trash_meta_time', '1650703781'),
(284, 159, '_wp_trash_meta_status', 'publish'),
(285, 159, '_wp_trash_meta_time', '1650703800'),
(286, 160, '_wp_trash_meta_status', 'publish'),
(287, 160, '_wp_trash_meta_time', '1650703802'),
(288, 161, '_wp_trash_meta_status', 'publish'),
(289, 161, '_wp_trash_meta_time', '1650704509'),
(290, 162, '_edit_lock', '1650908578:1'),
(291, 162, '_customize_restore_dismissed', '1'),
(292, 164, '_wp_trash_meta_status', 'publish'),
(293, 164, '_wp_trash_meta_time', '1650910136'),
(294, 165, '_wp_trash_meta_status', 'publish'),
(295, 165, '_wp_trash_meta_time', '1650910138'),
(296, 166, '_wp_trash_meta_status', 'publish'),
(297, 166, '_wp_trash_meta_time', '1650910602'),
(298, 167, '_wp_trash_meta_status', 'publish'),
(299, 167, '_wp_trash_meta_time', '1650913205'),
(300, 168, '_wp_trash_meta_status', 'publish'),
(301, 168, '_wp_trash_meta_time', '1650913208'),
(302, 169, '_edit_lock', '1650914959:1'),
(303, 169, '_customize_restore_dismissed', '1'),
(304, 170, '_wp_trash_meta_status', 'publish'),
(305, 170, '_wp_trash_meta_time', '1650914993'),
(306, 171, '_wp_trash_meta_status', 'publish'),
(307, 171, '_wp_trash_meta_time', '1650914999');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-04-17 14:52:59', '2022-04-17 14:52:59', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2022-04-22 11:46:00', '2022-04-22 11:46:00', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 0),
(2, 1, '2022-04-17 14:52:59', '2022-04-17 14:52:59', '<!-- wp:paragraph -->\n<p>This is the home page</p>\n<!-- /wp:paragraph -->', 'Home', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2022-04-22 11:45:42', '2022-04-22 11:45:42', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-04-17 14:52:59', '2022-04-17 14:52:59', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2022-04-22 11:45:43', '2022-04-22 11:45:43', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2022-04-17 15:32:08', '2022-04-17 15:32:08', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2022-04-17 15:32:08', '2022-04-17 15:32:08', '', 0, 'http://localhost/wordpress/2022/04/17/wp-global-styles-twentytwentytwo/', 0, 'wp_global_styles', '', 0),
(6, 1, '2022-04-18 14:31:55', '2022-04-18 14:31:55', '<!-- wp:paragraph -->\n<p>Home page</p>\n<!-- /wp:paragraph -->', 'Home', '', 'trash', 'open', 'open', '', 'home__trashed', '', '', '2022-04-22 11:45:59', '2022-04-22 11:45:59', '', 0, 'http://localhost/wordpress/?p=6', 0, 'post', '', 0),
(7, 1, '2022-04-18 14:31:55', '2022-04-18 14:31:55', '<!-- wp:paragraph -->\n<p>Home page</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2022-04-18 14:31:55', '2022-04-18 14:31:55', '', 6, 'http://localhost/wordpress/?p=7', 0, 'revision', '', 0),
(9, 1, '2022-04-18 14:33:09', '2022-04-18 14:33:09', '<!-- wp:paragraph -->\n<p>This is the home page</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-04-18 14:33:09', '2022-04-18 14:33:09', '', 2, 'http://localhost/wordpress/?p=9', 0, 'revision', '', 0),
(10, 1, '2022-04-18 15:38:00', '2022-04-18 15:38:00', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-leosmedia', '', '', '2022-04-18 15:38:00', '2022-04-18 15:38:00', '', 0, 'http://localhost/wordpress/2022/04/18/wp-global-styles-leosmedia/', 0, 'wp_global_styles', '', 0),
(11, 1, '2022-04-18 16:52:59', '2022-04-18 16:52:59', '', 'logo-placeholder', '', 'inherit', 'open', 'closed', '', 'logo-placeholder', '', '', '2022-04-18 16:56:09', '2022-04-18 16:56:09', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/logo-placeholder.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2022-04-18 16:56:49', '2022-04-18 16:56:49', '{\n    \"leosmedia::custom_logo\": {\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 16:56:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a6bd17a7-954b-4057-9164-0b66066c6ee5', '', '', '2022-04-18 16:56:49', '2022-04-18 16:56:49', '', 0, 'http://localhost/wordpress/?p=12', 0, 'customize_changeset', '', 0),
(13, 1, '2022-04-18 18:01:17', '2022-04-18 18:01:17', '{\n    \"leosmedia::lm-contact-callout-header\": {\n        \"value\": \"\\u05de\\u05e2\\u05d5\\u05e0\\u05d9\\u05d9\\u05e0\\u05d9\\u05dd \\u05d1\\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05e8\\u05d0\\u05e9\\u05d5\\u05e0\\u05d9??\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:01:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '791cba1b-0bf5-4464-b234-460f5466618d', '', '', '2022-04-18 18:01:17', '2022-04-18 18:01:17', '', 0, 'http://localhost/wordpress/2022/04/18/791cba1b-0bf5-4464-b234-460f5466618d/', 0, 'customize_changeset', '', 0),
(14, 1, '2022-04-18 18:01:19', '2022-04-18 18:01:19', '{\n    \"leosmedia::lm-contact-callout-header\": {\n        \"value\": \"\\u05de\\u05e2\\u05d5\\u05e0\\u05d9\\u05d9\\u05e0\\u05d9\\u05dd \\u05d1\\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05e8\\u05d0\\u05e9\\u05d5\\u05e0\\u05d9?\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:01:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ee23a5cc-00c4-477a-a155-d9bc81156631', '', '', '2022-04-18 18:01:19', '2022-04-18 18:01:19', '', 0, 'http://localhost/wordpress/2022/04/18/ee23a5cc-00c4-477a-a155-d9bc81156631/', 0, 'customize_changeset', '', 0),
(16, 1, '2022-04-18 18:27:17', '2022-04-18 18:27:17', '{\n    \"leosmedia::lm-share-callout-twt\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:24:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dd4635d7-c9f4-4d73-9ad8-5ba91147e6b9', '', '', '2022-04-18 18:27:17', '2022-04-18 18:27:17', '', 0, 'http://localhost/wordpress/?p=16', 0, 'customize_changeset', '', 0),
(17, 1, '2022-04-18 18:29:19', '2022-04-18 18:29:19', '{\n    \"leosmedia::lm-phone-callout-number\": {\n        \"value\": \"050-0000001\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:29:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b6b58b1c-ccef-4718-8e01-22af7f8a716b', '', '', '2022-04-18 18:29:19', '2022-04-18 18:29:19', '', 0, 'http://localhost/wordpress/2022/04/18/b6b58b1c-ccef-4718-8e01-22af7f8a716b/', 0, 'customize_changeset', '', 0),
(18, 1, '2022-04-18 18:29:35', '2022-04-18 18:29:35', '{\n    \"leosmedia::lm-contact-callout-header\": {\n        \"value\": \"\\u05de\\u05e2\\u05d5\\u05e0\\u05d9\\u05d9\\u05e0\\u05d9\\u05dd \\u05d1\\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05e8\\u05d0\\u05e9\\u05d5\\u05e0\\u05d9? \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:29:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c506c056-a934-4fa7-97ef-e9956ec79e99', '', '', '2022-04-18 18:29:35', '2022-04-18 18:29:35', '', 0, 'http://localhost/wordpress/2022/04/18/c506c056-a934-4fa7-97ef-e9956ec79e99/', 0, 'customize_changeset', '', 0),
(19, 1, '2022-04-18 18:29:36', '2022-04-18 18:29:36', '{\n    \"leosmedia::lm-contact-callout-header\": {\n        \"value\": \"\\u05de\\u05e2\\u05d5\\u05e0\\u05d9\\u05d9\\u05e0\\u05d9\\u05dd \\u05d1\\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05e8\\u05d0\\u05e9\\u05d5\\u05e0\\u05d9?\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:29:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '686526af-f187-4835-8443-b61c3bdcd318', '', '', '2022-04-18 18:29:36', '2022-04-18 18:29:36', '', 0, 'http://localhost/wordpress/2022/04/18/686526af-f187-4835-8443-b61c3bdcd318/', 0, 'customize_changeset', '', 0),
(20, 1, '2022-04-18 18:29:39', '2022-04-18 18:29:39', '{\n    \"leosmedia::lm-contact-callout-subheader\": {\n        \"value\": \"\\u05d0\\u05dc \\u05ea\\u05d7\\u05db\\u05d5, \\u05d4\\u05e9\\u05d0\\u05d9\\u05e8\\u05d5 \\u05e4\\u05e8\\u05d8\\u05d9\\u05dd \\u05d5\\u05d0\\u05d7\\u05d6\\u05d5\\u05e8 \\u05d1\\u05d4\\u05e7\\u05d3\\u05dd: \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:29:39\"\n    },\n    \"leosmedia::lm-contact-callout-button\": {\n        \"value\": \"\\u05e6\\u05d5\\u05e8 \\u05e7\\u05e9\\u05e8 \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:29:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0731ce6f-b0cb-409c-96b0-943188919a6f', '', '', '2022-04-18 18:29:39', '2022-04-18 18:29:39', '', 0, 'http://localhost/wordpress/2022/04/18/0731ce6f-b0cb-409c-96b0-943188919a6f/', 0, 'customize_changeset', '', 0),
(21, 1, '2022-04-18 18:29:41', '2022-04-18 18:29:41', '{\n    \"leosmedia::lm-contact-callout-subheader\": {\n        \"value\": \"\\u05d0\\u05dc \\u05ea\\u05d7\\u05db\\u05d5, \\u05d4\\u05e9\\u05d0\\u05d9\\u05e8\\u05d5 \\u05e4\\u05e8\\u05d8\\u05d9\\u05dd \\u05d5\\u05d0\\u05d7\\u05d6\\u05d5\\u05e8 \\u05d1\\u05d4\\u05e7\\u05d3\\u05dd:\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:29:41\"\n    },\n    \"leosmedia::lm-contact-callout-button\": {\n        \"value\": \"\\u05e6\\u05d5\\u05e8 \\u05e7\\u05e9\\u05e8\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:29:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '90ffe2aa-a1b6-470c-90bd-bd042e5e47ca', '', '', '2022-04-18 18:29:41', '2022-04-18 18:29:41', '', 0, 'http://localhost/wordpress/2022/04/18/90ffe2aa-a1b6-470c-90bd-bd042e5e47ca/', 0, 'customize_changeset', '', 0),
(22, 1, '2022-04-18 18:29:47', '2022-04-18 18:29:47', '{\n    \"leosmedia::lm-phone-callout-label\": {\n        \"value\": \"\\u05d7\\u05d9\\u05d9\\u05d2\\u05d5: \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:29:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6a002f69-30fe-46ff-aebf-144222f763a7', '', '', '2022-04-18 18:29:47', '2022-04-18 18:29:47', '', 0, 'http://localhost/wordpress/2022/04/18/6a002f69-30fe-46ff-aebf-144222f763a7/', 0, 'customize_changeset', '', 0),
(23, 1, '2022-04-18 18:29:49', '2022-04-18 18:29:49', '{\n    \"leosmedia::lm-phone-callout-label\": {\n        \"value\": \"\\u05d7\\u05d9\\u05d9\\u05d2\\u05d5:\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:29:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bcf98233-311f-4756-8aec-4d368686d322', '', '', '2022-04-18 18:29:49', '2022-04-18 18:29:49', '', 0, 'http://localhost/wordpress/2022/04/18/bcf98233-311f-4756-8aec-4d368686d322/', 0, 'customize_changeset', '', 0),
(24, 1, '2022-04-18 18:30:02', '2022-04-18 18:30:02', '{\n    \"leosmedia::lm-share-callout-linkedin\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:30:02\"\n    },\n    \"leosmedia::lm-share-callout-ytb\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:30:02\"\n    },\n    \"leosmedia::lm-share-callout-fb\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:30:02\"\n    },\n    \"leosmedia::lm-share-callout-twt\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:30:02\"\n    },\n    \"leosmedia::lm-share-callout-pinterest\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:30:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ebbb739b-e883-4b92-9b79-c40d1e2e52b3', '', '', '2022-04-18 18:30:02', '2022-04-18 18:30:02', '', 0, 'http://localhost/wordpress/2022/04/18/ebbb739b-e883-4b92-9b79-c40d1e2e52b3/', 0, 'customize_changeset', '', 0),
(25, 1, '2022-04-18 18:30:05', '2022-04-18 18:30:05', '{\n    \"leosmedia::lm-share-callout-linkedin\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:30:05\"\n    },\n    \"leosmedia::lm-share-callout-ytb\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:30:05\"\n    },\n    \"leosmedia::lm-share-callout-fb\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:30:05\"\n    },\n    \"leosmedia::lm-share-callout-twt\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-18 18:30:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e1ea4735-fd8c-485f-aae8-e5aee1af677a', '', '', '2022-04-18 18:30:05', '2022-04-18 18:30:05', '', 0, 'http://localhost/wordpress/2022/04/18/e1ea4735-fd8c-485f-aae8-e5aee1af677a/', 0, 'customize_changeset', '', 0),
(26, 1, '2022-04-19 17:54:30', '0000-00-00 00:00:00', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"block-2\",\n                \"block-3\",\n                \"block-4\",\n                \"block-5\",\n                \"block-6\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-19 17:54:30\"\n    },\n    \"twentytwenty::background_color\": {\n        \"value\": \"#ffe5e5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-19 17:54:30\"\n    },\n    \"twentytwenty::header_footer_background_color\": {\n        \"value\": \"#eaeaea\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-19 17:54:30\"\n    },\n    \"twentytwenty::accent_accessible_colors\": {\n        \"value\": {\n            \"content\": {\n                \"text\": \"#000000\",\n                \"accent\": \"#cf1a4b\",\n                \"background\": \"#ffe5e5\",\n                \"borders\": \"#f7b9b9\",\n                \"secondary\": \"#ac3939\"\n            },\n            \"header-footer\": {\n                \"text\": \"#000000\",\n                \"accent\": \"#cd1d4c\",\n                \"background\": \"#eaeaea\",\n                \"borders\": \"#c9c9c9\",\n                \"secondary\": \"#606060\"\n            }\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-19 17:54:30\"\n    },\n    \"twentytwenty::enable_header_search\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-19 17:54:30\"\n    },\n    \"twentytwenty::show_author_bio\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-19 17:54:30\"\n    },\n    \"twentytwenty::blog_content\": {\n        \"value\": \"full\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-19 17:54:30\"\n    },\n    \"twentytwenty::cover_template_fixed_background\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-19 17:54:30\"\n    },\n    \"twentytwenty::cover_template_overlay_background_color\": {\n        \"value\": \"#380036\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-19 17:54:30\"\n    },\n    \"twentytwenty::cover_template_overlay_text_color\": {\n        \"value\": \"#81d742\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-19 17:54:30\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '6de0f2cb-b7d1-4f44-8c0f-3c3608e2fe61', '', '', '2022-04-19 17:54:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=26', 0, 'customize_changeset', '', 0),
(27, 1, '2022-04-21 10:23:58', '0000-00-00 00:00:00', '{\n    \"leosmedia::lm-phone-callout-label\": {\n        \"value\": \"\\u05ea\\u05d7\\u05d9\\u05d9\\u05d2\\u05d5:\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-21 10:23:47\"\n    },\n    \"leosmedia::lm-share-callout-fb\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-21 10:23:58\"\n    },\n    \"leosmedia::lm-share-callout-pinterest\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-21 10:23:58\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '96dcc866-2ae3-4172-b27c-c7b1cf0b79d4', '', '', '2022-04-21 10:23:58', '2022-04-21 10:23:58', '', 0, 'http://localhost/wordpress/?p=27', 0, 'customize_changeset', '', 0),
(28, 1, '2022-04-22 11:45:43', '2022-04-22 11:45:43', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2022-04-22 11:45:43', '2022-04-22 11:45:43', '', 3, 'http://localhost/wordpress/?p=28', 0, 'revision', '', 0),
(29, 1, '2022-04-22 11:46:00', '2022-04-22 11:46:00', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-04-22 11:46:00', '2022-04-22 11:46:00', '', 1, 'http://localhost/wordpress/?p=29', 0, 'revision', '', 0),
(30, 1, '2022-04-22 11:47:36', '2022-04-22 11:47:36', '<!-- wp:paragraph -->\n<p>לורם איפסום דולור סיט אמט, <br>קונסקטורר אדיפיסינג אלית קולהע צופעט למרקוח איבן איף, <br>ברומץ כלרשט מיחוצים. קלאצי סחטיר בלובק.</p>\n<!-- /wp:paragraph -->', 'מקסים', '', 'publish', 'open', 'open', '', '%d7%9e%d7%a7%d7%a1%d7%99%d7%9d', '', '', '2022-04-22 11:47:36', '2022-04-22 11:47:36', '', 0, 'http://localhost/wordpress/?p=30', 0, 'post', '', 0),
(31, 1, '2022-04-22 11:47:36', '2022-04-22 11:47:36', '<!-- wp:paragraph -->\n<p>לורם איפסום דולור סיט אמט, <br>קונסקטורר אדיפיסינג אלית קולהע צופעט למרקוח איבן איף, <br>ברומץ כלרשט מיחוצים. קלאצי סחטיר בלובק.</p>\n<!-- /wp:paragraph -->', 'מקסים', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2022-04-22 11:47:36', '2022-04-22 11:47:36', '', 30, 'http://localhost/wordpress/?p=31', 0, 'revision', '', 0),
(32, 1, '2022-04-22 11:49:11', '2022-04-22 11:49:11', '<!-- wp:paragraph -->\n<p>הועניב היושבב שערש שמחויט - שלושע ותלברו חשלו<br> שעותלשך וחאית נובש ערששף.<br> זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.</p>\n<!-- /wp:paragraph -->', 'אלה', '', 'publish', 'open', 'open', '', '%d7%90%d7%9c%d7%94', '', '', '2022-04-22 11:49:11', '2022-04-22 11:49:11', '', 0, 'http://localhost/wordpress/?p=32', 0, 'post', '', 0),
(33, 1, '2022-04-22 11:49:11', '2022-04-22 11:49:11', '<!-- wp:paragraph -->\n<p>הועניב היושבב שערש שמחויט - שלושע ותלברו חשלו<br> שעותלשך וחאית נובש ערששף.<br> זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.</p>\n<!-- /wp:paragraph -->', 'אלה', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2022-04-22 11:49:11', '2022-04-22 11:49:11', '', 32, 'http://localhost/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2022-04-22 12:13:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-04-22 12:13:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=34', 0, 'post', '', 0),
(35, 1, '2022-04-22 12:15:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-04-22 12:15:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=35', 0, 'post', '', 0),
(36, 1, '2022-04-22 12:21:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:21:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=36', 0, 'recommendations', '', 0),
(37, 1, '2022-04-22 12:22:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:22:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=37', 0, 'recommendations', '', 0),
(38, 1, '2022-04-22 12:22:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:22:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=38', 0, 'recommendations', '', 0),
(39, 1, '2022-04-22 12:24:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:24:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=39', 0, 'recommendations', '', 0),
(40, 1, '2022-04-22 12:24:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:24:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=40', 0, 'recommendations', '', 0),
(41, 1, '2022-04-22 12:27:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:27:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=41', 0, 'recommendations', '', 0),
(42, 1, '2022-04-22 12:29:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:29:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=42', 0, 'recommendations', '', 0),
(43, 1, '2022-04-22 12:29:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:29:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=43', 0, 'recommendations', '', 0),
(44, 1, '2022-04-22 12:33:58', '2022-04-22 12:33:58', 'קולהע צופעט למרקוח איבן איף,\r\nברומץ כלרשט מיחוצים. קלאצי ושבעגט ליבם סולגק.\r\nבראיט ולחת צורק מונחף, בגורמי מגמש.\r\nתרבנך וסתעד לכנו', 'מקס', '', 'publish', 'closed', 'closed', '', '%d7%9e%d7%a7%d7%a1', '', '', '2022-04-22 12:33:58', '2022-04-22 12:33:58', '', 0, 'http://localhost/wordpress/?post_type=recommendations&#038;p=44', 0, 'recommendations', '', 0),
(45, 1, '2022-04-22 12:36:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:36:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=45', 0, 'recommendations', '', 0),
(46, 1, '2022-04-22 12:36:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:36:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=46', 0, 'recommendations', '', 0),
(47, 1, '2022-04-22 12:36:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:36:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=47', 0, 'recommendations', '', 0),
(48, 1, '2022-04-22 12:37:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:37:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=48', 0, 'recommendations', '', 0),
(49, 1, '2022-04-22 12:37:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:37:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=49', 0, 'recommendations', '', 0),
(50, 1, '2022-04-22 12:37:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:37:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=50', 0, 'recommendations', '', 0),
(51, 1, '2022-04-22 12:37:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:37:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=51', 0, 'recommendations', '', 0),
(52, 1, '2022-04-22 12:37:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:37:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=52', 0, 'recommendations', '', 0),
(53, 1, '2022-04-22 12:37:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:37:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=53', 0, 'recommendations', '', 0),
(54, 1, '2022-04-22 12:37:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:37:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=54', 0, 'recommendations', '', 0),
(55, 1, '2022-04-22 12:37:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:37:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=55', 0, 'recommendations', '', 0),
(56, 1, '2022-04-22 12:38:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:38:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=56', 0, 'recommendations', '', 0),
(57, 1, '2022-04-22 12:38:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:38:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=57', 0, 'recommendations', '', 0),
(58, 1, '2022-04-22 12:39:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:39:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=58', 0, 'recommendations', '', 0),
(59, 1, '2022-04-22 12:39:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:39:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=59', 0, 'recommendations', '', 0),
(60, 1, '2022-04-22 12:39:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:39:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=60', 0, 'recommendations', '', 0),
(61, 1, '2022-04-22 12:40:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:40:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=61', 0, 'recommendations', '', 0),
(62, 1, '2022-04-22 12:40:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:40:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=62', 0, 'recommendations', '', 0),
(63, 1, '2022-04-22 12:40:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2022-04-22 12:40:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=63', 0, 'recommendations', '', 0),
(64, 1, '2022-04-22 12:43:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:43:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=64', 0, 'recommendations', '', 0),
(65, 1, '2022-04-22 12:43:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 12:43:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=65', 0, 'recommendations', '', 0),
(66, 1, '2022-04-22 13:01:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 13:01:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=66', 0, 'recommendations', '', 0),
(67, 1, '2022-04-22 13:10:33', '2022-04-22 13:10:33', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"reason\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Reasons Icon', 'reasons-icon', 'publish', 'closed', 'closed', '', 'group_6262a83ccbe45', '', '', '2022-04-22 14:18:37', '2022-04-22 14:18:37', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=67', 0, 'acf-field-group', '', 0),
(68, 1, '2022-04-22 13:10:33', '2022-04-22 13:10:33', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:22:\"Icon beside the reason\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Reasons Icon', 'reasons_icon', 'publish', 'closed', 'closed', '', 'field_6262a89f9901a', '', '', '2022-04-22 14:18:37', '2022-04-22 14:18:37', '', 67, 'http://localhost/wordpress/?post_type=acf-field&#038;p=68', 0, 'acf-field', '', 0),
(69, 1, '2022-04-22 17:00:21', '2022-04-22 17:00:21', '<!-- wp:paragraph -->\n<p>ברומץ כלרשט מיחוצים. קלאצי סחטיר בלובק. <br>תצטנפל בלינדו למרקל אס לכימפו,<br> דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה.</p>\n<!-- /wp:paragraph -->', 'הדרכת צוותי חינוך', '', 'trash', 'closed', 'closed', '', '%d7%94%d7%93%d7%a8%d7%9b%d7%aa-%d7%a6%d7%95%d7%95%d7%aa%d7%99-%d7%97%d7%99%d7%a0%d7%95%d7%9a__trashed', '', '', '2022-04-22 14:28:36', '2022-04-22 14:28:36', '', 0, 'http://localhost/wordpress/?post_type=reason&#038;p=69', 0, 'reason', '', 0),
(77, 1, '2022-04-22 14:05:03', '2022-04-22 14:05:03', '', '20', '', 'inherit', 'open', 'closed', '', '20', '', '', '2022-04-22 14:05:03', '2022-04-22 14:05:03', '', 69, 'http://localhost/wordpress/wp-content/uploads/2022/04/20.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2022-04-22 14:05:03', '2022-04-22 14:05:03', '', 'chat', '', 'inherit', 'open', 'closed', '', 'chat', '', '', '2022-04-22 14:05:03', '2022-04-22 14:05:03', '', 69, 'http://localhost/wordpress/wp-content/uploads/2022/04/chat.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2022-04-22 14:05:04', '2022-04-22 14:05:04', '', 'eye', '', 'inherit', 'open', 'closed', '', 'eye', '', '', '2022-04-22 14:05:04', '2022-04-22 14:05:04', '', 69, 'http://localhost/wordpress/wp-content/uploads/2022/04/eye.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2022-04-22 14:05:04', '2022-04-22 14:05:04', '', 'family', '', 'inherit', 'open', 'closed', '', 'family', '', '', '2022-04-22 14:05:04', '2022-04-22 14:05:04', '', 69, 'http://localhost/wordpress/wp-content/uploads/2022/04/family.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2022-04-22 14:05:04', '2022-04-22 14:05:04', '', 'graduate', '', 'inherit', 'open', 'closed', '', 'graduate', '', '', '2022-04-22 14:05:04', '2022-04-22 14:05:04', '', 69, 'http://localhost/wordpress/wp-content/uploads/2022/04/graduate.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2022-04-22 14:05:04', '2022-04-22 14:05:04', '', 'love', '', 'inherit', 'open', 'closed', '', 'love', '', '', '2022-04-22 14:05:04', '2022-04-22 14:05:04', '', 69, 'http://localhost/wordpress/wp-content/uploads/2022/04/love.png', 0, 'attachment', 'image/png', 0),
(83, 1, '2022-04-22 14:05:05', '2022-04-22 14:05:05', '', 'meeting', '', 'inherit', 'open', 'closed', '', 'meeting', '', '', '2022-04-22 14:05:05', '2022-04-22 14:05:05', '', 69, 'http://localhost/wordpress/wp-content/uploads/2022/04/meeting.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2022-04-22 14:05:05', '2022-04-22 14:05:05', '', 'teach', '', 'inherit', 'open', 'closed', '', 'teach', '', '', '2022-04-22 14:05:05', '2022-04-22 14:05:05', '', 69, 'http://localhost/wordpress/wp-content/uploads/2022/04/teach.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2022-04-22 19:00:18', '2022-04-22 19:00:18', '<!-- wp:paragraph -->\n<p>חטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט מוסן מנת.</p>\n<!-- /wp:paragraph -->', '20 שנות וותק וניסיון בתחום', '', 'trash', 'closed', 'closed', '', '20-%d7%a9%d7%a0%d7%95%d7%aa-%d7%95%d7%95%d7%aa%d7%a7-%d7%95%d7%a0%d7%99%d7%a1%d7%99%d7%95%d7%9f-%d7%91%d7%aa%d7%97%d7%95%d7%9d__trashed', '', '', '2022-04-22 14:28:31', '2022-04-22 14:28:31', '', 0, 'http://localhost/wordpress/?post_type=reason&#038;p=85', 0, 'reason', '', 0),
(86, 1, '2022-04-22 18:00:14', '2022-04-22 18:00:14', '<!-- wp:paragraph -->\n<p>ברומץ כלרשט מיחוצים. קלאצי סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה.</p>\n<!-- /wp:paragraph -->', 'עובדת עם מגוון גילאים', '', 'trash', 'closed', 'closed', '', '%d7%a2%d7%95%d7%91%d7%93%d7%aa-%d7%a2%d7%9d-%d7%9e%d7%92%d7%95%d7%95%d7%9f-%d7%92%d7%99%d7%9c%d7%90%d7%99%d7%9d__trashed', '', '', '2022-04-22 14:28:33', '2022-04-22 14:28:33', '', 0, 'http://localhost/wordpress/?post_type=reason&#038;p=86', 0, 'reason', '', 0),
(87, 1, '2022-04-22 16:00:10', '2022-04-22 16:00:10', '<!-- wp:paragraph -->\n<p>קלאצי סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפך<br>למרקל אס לכימפךענוף הועניב היושבב שערש שמחויט - שלושע ותלברו חשל</p>\n<!-- /wp:paragraph -->', 'הנחיית קבוצות הורים', '', 'trash', 'closed', 'closed', '', '%d7%94%d7%a0%d7%97%d7%99%d7%99%d7%aa-%d7%a7%d7%91%d7%95%d7%a6%d7%95%d7%aa-%d7%94%d7%95%d7%a8%d7%99%d7%9d__trashed', '', '', '2022-04-22 14:28:34', '2022-04-22 14:28:34', '', 0, 'http://localhost/wordpress/?post_type=reason&#038;p=87', 0, 'reason', '', 0),
(88, 1, '2022-04-22 15:00:10', '2022-04-22 15:00:10', '<!-- wp:paragraph -->\n<p>וענוף הועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי</p>\n<!-- /wp:paragraph -->', 'מומחיות בתקשורת מקרבת', '', 'trash', 'closed', 'closed', '', '%d7%9e%d7%95%d7%9e%d7%97%d7%99%d7%95%d7%aa-%d7%91%d7%aa%d7%a7%d7%a9%d7%95%d7%a8%d7%aa-%d7%9e%d7%a7%d7%a8%d7%91%d7%aa__trashed', '', '', '2022-04-22 14:28:37', '2022-04-22 14:28:37', '', 0, 'http://localhost/wordpress/?post_type=reason&#038;p=88', 0, 'reason', '', 0),
(89, 1, '2022-04-22 14:00:46', '2022-04-22 14:00:46', '<!-- wp:paragraph -->\n<p>למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש.</p>\n<!-- /wp:paragraph -->', 'אימון זוגי', '', 'publish', 'closed', 'closed', '', '%d7%90%d7%99%d7%9e%d7%95%d7%9f-%d7%96%d7%95%d7%92%d7%99', '', '', '2022-04-22 14:25:57', '2022-04-22 14:25:57', '', 0, 'http://localhost/wordpress/?post_type=reason&#038;p=89', 0, 'reason', '', 0),
(90, 1, '2022-04-22 14:00:03', '2022-04-22 14:00:03', '<!-- wp:paragraph -->\n<p>למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש.</p>\n<!-- /wp:paragraph -->', 'הורות בגובה עיניים', '', 'publish', 'closed', 'closed', '', '%d7%94%d7%95%d7%a8%d7%95%d7%aa-%d7%91%d7%92%d7%95%d7%91%d7%94-%d7%a2%d7%99%d7%a0%d7%99%d7%99%d7%9d', '', '', '2022-04-22 14:26:06', '2022-04-22 14:26:06', '', 0, 'http://localhost/wordpress/?post_type=reason&#038;p=90', 0, 'reason', '', 0),
(91, 1, '2022-04-22 13:00:26', '2022-04-22 13:00:26', '<!-- wp:paragraph -->\n<p>למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש.</p>\n<!-- /wp:paragraph -->', 'פיתוח חוסן נפשי של הילד', '', 'publish', 'closed', 'closed', '', '%d7%a4%d7%99%d7%aa%d7%95%d7%97-%d7%97%d7%95%d7%a1%d7%9f-%d7%a0%d7%a4%d7%a9%d7%99-%d7%a9%d7%9c-%d7%94%d7%99%d7%9c%d7%93', '', '', '2022-04-22 14:26:18', '2022-04-22 14:26:18', '', 0, 'http://localhost/wordpress/?post_type=reason&#038;p=91', 0, 'reason', '', 0),
(92, 1, '2022-04-22 14:29:06', '2022-04-22 14:29:06', '<!-- wp:paragraph -->\n<p>וענוף הועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי</p>\n<!-- /wp:paragraph -->', 'מומחיות בתקשורת מקרבת', '', 'publish', 'closed', 'closed', '', '%d7%9e%d7%95%d7%9e%d7%97%d7%99%d7%95%d7%aa-%d7%91%d7%aa%d7%a7%d7%a9%d7%95%d7%a8%d7%aa-%d7%9e%d7%a7%d7%a8%d7%91%d7%aa', '', '', '2022-04-22 14:29:06', '2022-04-22 14:29:06', '', 0, 'http://localhost/wordpress/?post_type=reason&#038;p=92', 0, 'reason', '', 0),
(93, 1, '2022-04-22 14:29:27', '2022-04-22 14:29:27', '<!-- wp:paragraph -->\n<p>קלאצי סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפך<br>למרקל אס לכימפךענוף הועניב היושבב שערש שמחויט - שלושע ותלברו חשל</p>\n<!-- /wp:paragraph -->', 'הנחיית קבוצות הורים', '', 'publish', 'closed', 'closed', '', '%d7%94%d7%a0%d7%97%d7%99%d7%99%d7%aa-%d7%a7%d7%91%d7%95%d7%a6%d7%95%d7%aa-%d7%94%d7%95%d7%a8%d7%99%d7%9d', '', '', '2022-04-22 14:29:27', '2022-04-22 14:29:27', '', 0, 'http://localhost/wordpress/?post_type=reason&#038;p=93', 0, 'reason', '', 0),
(94, 1, '2022-04-22 14:29:50', '2022-04-22 14:29:50', '<!-- wp:paragraph -->\n<p>נשואי מנורך. קולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח.<br>קלאצי סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפךרומץ כלרשט מיחוצים. קלאצי סחטיר בלובק.</p>\n<!-- /wp:paragraph -->', 'הדרכת צוותי חינוך', '', 'publish', 'closed', 'closed', '', '%d7%94%d7%93%d7%a8%d7%9b%d7%aa-%d7%a6%d7%95%d7%95%d7%aa%d7%99-%d7%97%d7%99%d7%a0%d7%95%d7%9a', '', '', '2022-04-22 14:29:50', '2022-04-22 14:29:50', '', 0, 'http://localhost/wordpress/?post_type=reason&#038;p=94', 0, 'reason', '', 0),
(95, 1, '2022-04-22 14:30:08', '2022-04-22 14:30:08', '<!-- wp:paragraph -->\n<p>ברומץ כלרשט מיחוצים. קלאצי סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה.</p>\n<!-- /wp:paragraph -->', 'עובדת עם מגוון גילאים', '', 'publish', 'closed', 'closed', '', '%d7%a2%d7%95%d7%91%d7%93%d7%aa-%d7%a2%d7%9d-%d7%9e%d7%92%d7%95%d7%95%d7%9f-%d7%92%d7%99%d7%9c%d7%90%d7%99%d7%9d', '', '', '2022-04-22 14:30:08', '2022-04-22 14:30:08', '', 0, 'http://localhost/wordpress/?post_type=reason&#038;p=95', 0, 'reason', '', 0),
(96, 1, '2022-04-22 14:30:22', '2022-04-22 14:30:22', '<!-- wp:paragraph -->\n<p>חטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט מוסן מנת.</p>\n<!-- /wp:paragraph -->', '20 שנות וותק וניסיון בתחום', '', 'publish', 'closed', 'closed', '', '20-%d7%a9%d7%a0%d7%95%d7%aa-%d7%95%d7%95%d7%aa%d7%a7-%d7%95%d7%a0%d7%99%d7%a1%d7%99%d7%95%d7%9f-%d7%91%d7%aa%d7%97%d7%95%d7%9d', '', '', '2022-04-22 14:30:23', '2022-04-22 14:30:23', '', 0, 'http://localhost/wordpress/?post_type=reason&#038;p=96', 0, 'reason', '', 0),
(97, 1, '2022-04-22 14:42:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 14:42:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=reason&p=97', 0, 'reason', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(98, 1, '2022-04-22 14:42:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 14:42:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=reason&p=98', 0, 'reason', '', 0),
(99, 1, '2022-04-22 16:43:12', '0000-00-00 00:00:00', '{\n    \"leosmedia::landing-callout-display\": {\n        \"value\": \"No\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 16:43:12\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'fd16ff24-3cd8-4cd8-bb76-efac04c2c446', '', '', '2022-04-22 16:43:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=99', 0, 'customize_changeset', '', 0),
(100, 1, '2022-04-22 16:47:03', '0000-00-00 00:00:00', '{\n    \"leosmedia::lm-landing-callout-headline\": {\n        \"value\": \"\\u05d1\\u05d5\\u05d0\\u05d5 \\u05dc\\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d5\\u05d4\\u05d3\\u05e8\\u05db\\u05ea \\u05d4\\u05d5\\u05e8\\u05d9\\u05dd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 16:47:03\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'f5f4510f-7e5f-4ef4-8e0b-a09c41c77986', '', '', '2022-04-22 16:47:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=100', 0, 'customize_changeset', '', 0),
(101, 1, '2022-04-22 17:06:39', '0000-00-00 00:00:00', '{\n    \"leosmedia::lm-landing-callout-display\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 17:06:39\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '52d9a0fb-04e2-46dd-8846-a64b70d6640c', '', '', '2022-04-22 17:06:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=101', 0, 'customize_changeset', '', 0),
(102, 1, '2022-04-22 17:11:34', '0000-00-00 00:00:00', '{\n    \"leosmedia::lm-landing-callout-headline-color\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 17:11:34\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'd24d2d4c-f9b5-48b4-9312-c6a9b5c49e36', '', '', '2022-04-22 17:11:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=102', 0, 'customize_changeset', '', 0),
(103, 1, '2022-04-22 17:18:58', '0000-00-00 00:00:00', '{\n    \"leosmedia::lm-general-callout-primary\": {\n        \"value\": \"#da2fd5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 17:17:58\"\n    },\n    \"leosmedia::lm-general-callout-accent\": {\n        \"value\": \"#424242\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 17:18:58\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'efd65d7d-a78b-443d-99ff-855ff59768dc', '', '', '2022-04-22 17:18:58', '2022-04-22 17:18:58', '', 0, 'http://localhost/wordpress/?p=103', 0, 'customize_changeset', '', 0),
(104, 1, '2022-04-22 17:19:20', '0000-00-00 00:00:00', '{\n    \"leosmedia::lm-general-callout-accent\": {\n        \"value\": \"#043f3c\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 17:19:20\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'e6031799-cb65-4b98-b72f-94b56460cb9c', '', '', '2022-04-22 17:19:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=104', 0, 'customize_changeset', '', 0),
(105, 1, '2022-04-22 17:32:25', '0000-00-00 00:00:00', '{\n    \"leosmedia::lm-landing-callout-phone-label-color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 17:32:25\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'f45504f3-abae-46a1-b9b6-b8c97bece332', '', '', '2022-04-22 17:32:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=105', 0, 'customize_changeset', '', 0),
(106, 1, '2022-04-22 18:32:17', '2022-04-22 18:32:17', '{\n    \"leosmedia::lm-landing-callout-headline\": {\n        \"value\": \"\\u05d1\\u05d5\\u05d0\\u05d5 \\u05dc\\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d5\\u05d4\\u05d3\\u05e8\\u05db\\u05ea \\u05d4\\u05d5\\u05e8\\u05d9\\u05dd!\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 18:32:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dd4f695f-5354-4e7a-8c98-3e2821815924', '', '', '2022-04-22 18:32:17', '2022-04-22 18:32:17', '', 0, 'http://localhost/wordpress/2022/04/22/dd4f695f-5354-4e7a-8c98-3e2821815924/', 0, 'customize_changeset', '', 0),
(107, 1, '2022-04-22 18:32:58', '2022-04-22 18:32:58', '{\n    \"leosmedia::lm-general-callout-primary\": {\n        \"value\": \"#5c30dd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 18:32:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '480cfcda-3a22-4d55-ba11-0b602a245843', '', '', '2022-04-22 18:32:58', '2022-04-22 18:32:58', '', 0, 'http://localhost/wordpress/2022/04/22/480cfcda-3a22-4d55-ba11-0b602a245843/', 0, 'customize_changeset', '', 0),
(108, 1, '2022-04-22 18:33:13', '2022-04-22 18:33:13', '{\n    \"leosmedia::lm-general-callout-primary\": {\n        \"value\": \"#da2fd5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 18:33:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '72629abc-c242-4a1b-9612-f9c4d2044087', '', '', '2022-04-22 18:33:13', '2022-04-22 18:33:13', '', 0, 'http://localhost/wordpress/2022/04/22/72629abc-c242-4a1b-9612-f9c4d2044087/', 0, 'customize_changeset', '', 0),
(109, 1, '2022-04-22 18:33:21', '2022-04-22 18:33:21', '{\n    \"leosmedia::lm-landing-callout-display\": {\n        \"value\": \"No\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 18:33:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aca13328-5de8-4a2d-934f-5a264f52932e', '', '', '2022-04-22 18:33:21', '2022-04-22 18:33:21', '', 0, 'http://localhost/wordpress/2022/04/22/aca13328-5de8-4a2d-934f-5a264f52932e/', 0, 'customize_changeset', '', 0),
(110, 1, '2022-04-22 18:33:23', '2022-04-22 18:33:23', '{\n    \"leosmedia::lm-landing-callout-display\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 18:33:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '095a17d1-e102-424d-b792-66c025c197aa', '', '', '2022-04-22 18:33:23', '2022-04-22 18:33:23', '', 0, 'http://localhost/wordpress/2022/04/22/095a17d1-e102-424d-b792-66c025c197aa/', 0, 'customize_changeset', '', 0),
(111, 1, '2022-04-22 18:33:47', '2022-04-22 18:33:47', '{\n    \"leosmedia::lm-landing-callout-subhead\": {\n        \"value\": \"\\u05dc\\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d5\\u05d4\\u05d3\\u05e8\\u05db\\u05d4 \\u05d1\\u05d5\\u05d0\\u05d5 \\u05dc\\u05d7\\u05dc\\u05d5\\u05e7 \\u05d0\\u05ea\\u05d9 \\u05d0\\u05ea \\u05d4\\u05d9\\u05d3\\u05e2 \\u05d4\\u05e0\\u05d9\\u05e1\\u05d9\\u05d5\\u05df \\u05d5\\u05d4\\u05d4\\u05e6\\u05dc\\u05d7\\u05d5\\u05ea \\u05d4\\u05e8\\u05d1\\u05d5\\u05ea \\u05e9\\u05e6\\u05d1\\u05e8\\u05ea\\u05d9 \\u05e2\\u05dd \\u05de\\u05e9\\u05e4\\u05d7\\u05d5\\u05ea \\u05de\\u05e8\\u05d5\\u05e6\\u05d5\\u05ea \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 18:33:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eaafee1e-c3be-4821-bbff-2083f9d317dd', '', '', '2022-04-22 18:33:47', '2022-04-22 18:33:47', '', 0, 'http://localhost/wordpress/2022/04/22/eaafee1e-c3be-4821-bbff-2083f9d317dd/', 0, 'customize_changeset', '', 0),
(112, 1, '2022-04-22 18:34:08', '2022-04-22 18:34:08', '{\n    \"leosmedia::lm-general-callout-accent\": {\n        \"value\": \"#424241\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 18:34:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '82e033b6-2111-4abd-af28-f6a7d6c12ca0', '', '', '2022-04-22 18:34:08', '2022-04-22 18:34:08', '', 0, 'http://localhost/wordpress/2022/04/22/82e033b6-2111-4abd-af28-f6a7d6c12ca0/', 0, 'customize_changeset', '', 0),
(113, 1, '2022-04-22 18:34:11', '2022-04-22 18:34:11', '{\n    \"leosmedia::lm-general-callout-accent\": {\n        \"value\": \"#424242\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 18:34:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '42f45121-4f51-4550-84ca-d74623a9966c', '', '', '2022-04-22 18:34:11', '2022-04-22 18:34:11', '', 0, 'http://localhost/wordpress/2022/04/22/42f45121-4f51-4550-84ca-d74623a9966c/', 0, 'customize_changeset', '', 0),
(114, 1, '2022-04-22 18:56:41', '2022-04-22 18:56:41', '{\n    \"leosmedia::lm-general-callout-primary\": {\n        \"value\": \"#da2fd5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 18:56:41\"\n    },\n    \"leosmedia::lm-landing-callout-display\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 18:56:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '49460b87-f2ac-4d93-8077-e15dc5d49a2b', '', '', '2022-04-22 18:56:41', '2022-04-22 18:56:41', '', 0, 'http://localhost/wordpress/2022/04/22/49460b87-f2ac-4d93-8077-e15dc5d49a2b/', 0, 'customize_changeset', '', 0),
(115, 1, '2022-04-22 19:21:54', '0000-00-00 00:00:00', '{\n    \"leosmedia::lm-whyus-callout-quote\": {\n        \"value\": \"\\u201c\\u05d4\\u05e6\\u05d8\\u05e8\\u05e4\\u05d5 \\u05d0\\u05dc\\u05d9 \\u05dc\\u05de\\u05e1\\u05e2 \\u05e9\\u05dc \\u05e9\\u05d9\\u05e0\\u05d5\\u05d9,\\n    \\u05d5\\u05d4\\u05e4\\u05db\\u05d5 \\u05d0\\u05ea \\u05d4\\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05e9\\u05dc\\u05db\\u05dd \\u05dc\\u05d7\\u05d5\\u05d5\\u05d9\\u05d4 \\u05d4\\u05e8\\u05d1\\u05d4 \\u05d9\\u05d5\\u05ea\\u05e8 \\u05d8\\u05d5\\u05d1\\u05d4\\u201d\\n  \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:21:54\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '51e6d74b-ec61-4e3c-88d8-58258b1f0013', '', '', '2022-04-22 19:21:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=115', 0, 'customize_changeset', '', 0),
(116, 1, '2022-04-22 19:40:43', '2022-04-22 19:40:43', '', 'potrait', '', 'inherit', 'open', 'closed', '', 'potrait', '', '', '2022-04-22 19:40:43', '2022-04-22 19:40:43', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/potrait.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2022-04-22 19:44:18', '2022-04-22 19:44:18', 'http://localhost/wordpress/wp-content/uploads/2022/04/cropped-potrait.jpg', 'cropped-potrait.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-potrait-jpg', '', '', '2022-04-22 19:44:18', '2022-04-22 19:44:18', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/cropped-potrait.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2022-04-22 19:44:26', '0000-00-00 00:00:00', '{\n    \"leosmedia::lm-aboutus-callout-sideimg\": {\n        \"value\": 117,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:44:26\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'c3a30d1c-ed7d-463f-8bf8-bc6461921297', '', '', '2022-04-22 19:44:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=118', 0, 'customize_changeset', '', 0),
(119, 1, '2022-04-22 19:45:27', '2022-04-22 19:45:27', '{\n    \"leosmedia::lm-aboutus-callout-sideimg\": {\n        \"value\": 117,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:45:27\"\n    },\n    \"leosmedia::lm-aboutus-callout-content\": {\n        \"value\": \"\\u05d9\\u05d5\\u05e2\\u05e6\\u05ea \\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05d5\\u05de\\u05e9\\u05e4\\u05d7\\u05d4, \\u05de\\u05e2\\u05e0\\u05d9\\u05e7\\u05d4 \\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d0\\u05d9\\u05e9\\u05d9 \\u05dc\\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05d1\\u05d9\\u05d7\\u05d3 \\u05d5\\u05dc\\u05d7\\u05d5\\u05d3, \\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d6\\u05d5\\u05d2\\u05d9 \\u05d5\\u05e4\\u05ea\\u05e8\\u05d5\\u05df \\u05d1\\u05e2\\u05d9\\u05d5\\u05ea \\u05d1\\u05de\\u05e9\\u05e4\\u05d7\\u05d4. \\u05de\\u05e0\\u05d7\\u05ea \\u05e1\\u05d3\\u05e0\\u05d0\\u05d5\\u05ea \\u05d4\\u05d5\\u05e8\\u05d5\\u05ea, \\u05de\\u05e8\\u05e6\\u05d4 \\u05d1\\u05ea\\u05d7\\u05d5\\u05dd \\u05d4\\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05d5\\u05de\\u05d5\\u05de\\u05d7\\u05d9\\u05ea \\u05d1\\u05ea\\u05e7\\u05e9\\u05d5\\u05e8\\u05ea \\u05de\\u05e7\\u05e8\\u05d1\\u05ea.\\n\\n        \\u05d1\\u05d5\\u05d2\\u05e8\\u05ea \\u05dc\\u05d9\\u05de\\u05d5\\u05d3\\u05d9 \\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05d5\\u05d9\\u05d7\\u05e1\\u05d9\\u05dd \\u05d1\\u05de\\u05db\\u05d5\\u05df \\u05d0\\u05d3\\u05dc\\u05e8, \\u05d5\\u05d1\\u05e2\\u05dc\\u05ea \\u05e0\\u05d9\\u05e1\\u05d9\\u05d5\\u05df \\u05e9\\u05dc \\u05dc\\u05de\\u05e2\\u05dc\\u05d4 \\u05de\\u05e2\\u05e9\\u05e8\\u05d9\\u05dd \\u05e9\\u05e0\\u05d4 \\u05d1\\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d4\\u05d5\\u05e8\\u05d9 \\u05d5\\u05de\\u05e9\\u05e4\\u05d7\\u05ea\\u05d9 \\u05d5\\u05d1\\u05d4\\u05e0\\u05d7\\u05d9\\u05d9\\u05ea \\u05e7\\u05d1\\u05d5\\u05e6\\u05d5\\u05ea \\u05d4\\u05d5\\u05e8\\u05d9\\u05dd. \\u05de\\u05e2\\u05dc \\u05d4\\u05db\\u05d5\\u05dc, \\u05d0\\u05e0\\u05d9 \\u05d0\\u05dd \\u05d2\\u05d0\\u05d4 \\u05dc\\u05e9\\u05e0\\u05d9 \\u05d9\\u05dc\\u05d3\\u05d9\\u05dd \\u05e0\\u05e4\\u05dc\\u05d0\\u05d9\\u05dd \\u05d5\\u05d1\\u05e2\\u05dc\\u05ea \\u05e0\\u05d9\\u05e1\\u05d9\\u05d5\\u05df \\u05d1\\u05d7\\u05d9\\u05e0\\u05d5\\u05da \\u05db\\u05d1\\u05e8 \\u05db\\u05de\\u05d4 \\u05e2\\u05e9\\u05d5\\u05e8\\u05d9\\u05dd. \\u05dc\\u05d4\\u05d9\\u05d5\\u05ea \\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05d6\\u05d0\\u05ea \\u05d6\\u05db\\u05d5\\u05ea - \\u05d0\\u05da \\u05d2\\u05dd \\u05d0\\u05d7\\u05e8\\u05d9\\u05d5\\u05ea\\n\\n        \\u05d0\\u05e0\\u05d9 \\u05d0\\u05d5\\u05d4\\u05d1\\u05ea \\u05dc\\u05dc\\u05de\\u05d3 \\u05d5\\u05dc\\u05d4\\u05d3\\u05e8\\u05d9\\u05da \\u05d5\\u05d6\\u05d4\\u05d5 \\u05de\\u05e8\\u05db\\u05d6 \\u05d4\\u05d5\\u05d5\\u05d9\\u05ea\\u05d9 \\u05de\\u05d6\\u05d4 \\u05e9\\u05e0\\u05d9\\u05dd \\u05e8\\u05d1\\u05d5\\u05ea.\\n        \\u05dc\\u05e4\\u05e0\\u05d9 \\u05e9\\u05e4\\u05e0\\u05d9\\u05ea\\u05d9 \\u05dc\\u05ea\\u05d7\\u05d5\\u05dd \\u05d4\\u05d4\\u05d5\\u05e8\\u05d5\\u05ea, \\u05e2\\u05e1\\u05e7\\u05ea\\u05d9 \\u05e9\\u05e0\\u05d9\\u05dd \\u05d1\\u05d4\\u05d5\\u05e8\\u05d0\\u05d4 \\u05d5\\u05d7\\u05d9\\u05e0\\u05d5\\u05da \\u05d5\\u05d0\\u05d4\\u05d1\\u05ea\\u05d9 \\u05d0\\u05ea \\u05d4\\u05ea\\u05d7\\u05d5\\u05dd \\u05de\\u05d0\\u05d5\\u05d3. \\u05d1\\u05de\\u05e7\\u05d1\\u05d9\\u05dc, \\u05d1\\u05d9\\u05dc\\u05d9\\u05ea\\u05d9 \\u05d6\\u05de\\u05df \\u05e8\\u05d1 \\u05d1\\u05d7\\u05d9\\u05e0\\u05d5\\u05da \\u05d9\\u05dc\\u05d3\\u05d9 \\u05d5\\u05d1\\u05d7\\u05d9\\u05e0\\u05d5\\u05da \\u05d1\\u05e2\\u05dc\\u05d9...(:\\n        \\u05e6\\u05d1\\u05e8\\u05ea\\u05d9 \\u05d5\\u05d5\\u05ea\\u05e7 \\u05e9\\u05dc 20 \\u05e9\\u05e0\\u05d9\\u05dd \\u05d1\\u05ea\\u05d7\\u05d5\\u05dd \\u05d1\\u05d4\\u05dd \\u05e2\\u05d6\\u05e8\\u05ea\\u05d9 \\u05dc\\u05de\\u05d0\\u05d5\\u05ea \\u05de\\u05e9\\u05e4\\u05d7\\u05d5\\u05ea \\u05dc\\u05d7\\u05d5\\u05d5\\u05ea \\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05de\\u05d9\\u05d8\\u05d9\\u05d1\\u05d4 \\u05d5\\u05de\\u05d0\\u05d5\\u05e9\\u05e8\\u05ea.\\n\\n        \\u05d5\\u05e2\\u05db\\u05e9\\u05d9\\u05d5 \\u05d1\\u05e8\\u05e6\\u05d9\\u05e0\\u05d5\\u05ea: \\u05dc\\u05d0\\u05d7\\u05e8 \\u05db\\u05dc \\u05db\\u05da \\u05d4\\u05e8\\u05d1\\u05d4 \\u05e9\\u05e0\\u05d9\\u05dd \\u05d1\\u05ea\\u05d7\\u05d5\\u05dd \\u05d4\\u05d7\\u05d9\\u05e0\\u05d5\\u05da, \\u05d0\\u05dd \\u05d9\\u05e9 \\u05d3\\u05d1\\u05e8 \\u05d0\\u05d7\\u05d3 \\u05e9\\u05d1\\u05e8\\u05d5\\u05e8 \\u05dc\\u05d9 \\u05de\\u05e2\\u05dc \\u05dc\\u05db\\u05dc \\u05e1\\u05e4\\u05e7, \\u05d4\\u05d5\\u05d0 \\u05e9\\u05dc\\u05d4\\u05d9\\u05d5\\u05ea \\u05d4\\u05d5\\u05e8\\u05d4 \\u05d6\\u05d5 \\u05d7\\u05d5\\u05d5\\u05d9\\u05d4 \\u05de\\u05d3\\u05d4\\u05d9\\u05de\\u05d4, \\u05d0\\u05da \\u05d2\\u05dd \\u05de\\u05d1\\u05dc\\u05d1\\u05dc\\u05ea \\u05de\\u05d0\\u05d5\\u05d3. \\u05db\\u05d5\\u05dc\\u05e0\\u05d5 \\u05d7\\u05d5\\u05e9\\u05e9\\u05d9\\u05dd \\u05dc\\u05e2\\u05e9\\u05d5\\u05ea \\u05d8\\u05e2\\u05d5\\u05d9\\u05d5\\u05ea \\u05d5\\u05de\\u05e0\\u05e1\\u05d9\\u05dd \\u05dc\\u05e2\\u05e9\\u05d5\\u05ea \\u05d0\\u05ea \\u05d4\\u05d8\\u05d5\\u05d1 \\u05d1\\u05d9\\u05d5\\u05ea\\u05e8 \\u05e2\\u05d1\\u05d5\\u05e8 \\u05d9\\u05dc\\u05d3\\u05d9\\u05e0\\u05d5.\\n        \\u05d0\\u05e0\\u05d9 \\u05de\\u05d6\\u05de\\u05d9\\u05e0\\u05d4 \\u05d0\\u05ea\\u05db\\u05dd \\u05dc\\u05d4\\u05e6\\u05d8\\u05e8\\u05e3 \\u05d0\\u05dc\\u05d9 \\u05dc\\u05de\\u05e1\\u05e2 \\u05e9\\u05dc \\u05e9\\u05d9\\u05e0\\u05d5\\u05d9, \\u05d2\\u05d9\\u05dc\\u05d5\\u05d9 \\u05e2\\u05e6\\u05de\\u05d9 \\u05d5\\u05d4\\u05ea\\u05e4\\u05ea\\u05d7\\u05d5\\u05ea \\u05d1\\u05d3\\u05e8\\u05da \\u05dc\\u05d4\\u05e4\\u05d5\\u05da \\u05d0\\u05ea \\u05d4\\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05e9\\u05dc\\u05db\\u05dd \\u05dc\\u05d7\\u05d5\\u05d5\\u05d9\\u05d4 \\u05d4\\u05e8\\u05d1\\u05d4 \\u05d9\\u05d5\\u05ea\\u05e8\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:45:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f654200f-cdb6-424d-88d0-e8cb16900517', '', '', '2022-04-22 19:45:27', '2022-04-22 19:45:27', '', 0, 'http://localhost/wordpress/2022/04/22/f654200f-cdb6-424d-88d0-e8cb16900517/', 0, 'customize_changeset', '', 0),
(120, 1, '2022-04-22 19:49:07', '2022-04-22 19:49:07', '{\n    \"leosmedia::lm-aboutus-callout-content\": {\n        \"value\": \"\\u05d9\\u05d5\\u05e2\\u05e6\\u05ea \\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05d5\\u05de\\u05e9\\u05e4\\u05d7\\u05d4, \\u05de\\u05e2\\u05e0\\u05d9\\u05e7\\u05d4 \\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d0\\u05d9\\u05e9\\u05d9 \\u05dc\\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05d1\\u05d9\\u05d7\\u05d3 \\u05d5\\u05dc\\u05d7\\u05d5\\u05d3, \\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d6\\u05d5\\u05d2\\u05d9 \\u05d5\\u05e4\\u05ea\\u05e8\\u05d5\\u05df \\u05d1\\u05e2\\u05d9\\u05d5\\u05ea \\u05d1\\u05de\\u05e9\\u05e4\\u05d7\\u05d4. \\u05de\\u05e0\\u05d7\\u05ea \\u05e1\\u05d3\\u05e0\\u05d0\\u05d5\\u05ea \\u05d4\\u05d5\\u05e8\\u05d5\\u05ea, \\u05de\\u05e8\\u05e6\\u05d4 \\u05d1\\u05ea\\u05d7\\u05d5\\u05dd \\u05d4\\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05d5\\u05de\\u05d5\\u05de\\u05d7\\u05d9\\u05ea \\u05d1\\u05ea\\u05e7\\u05e9\\u05d5\\u05e8\\u05ea \\u05de\\u05e7\\u05e8\\u05d1\\u05ea. \\n\\n        \\u05d1\\u05d5\\u05d2\\u05e8\\u05ea \\u05dc\\u05d9\\u05de\\u05d5\\u05d3\\u05d9 \\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05d5\\u05d9\\u05d7\\u05e1\\u05d9\\u05dd \\u05d1\\u05de\\u05db\\u05d5\\u05df \\u05d0\\u05d3\\u05dc\\u05e8, \\u05d5\\u05d1\\u05e2\\u05dc\\u05ea \\u05e0\\u05d9\\u05e1\\u05d9\\u05d5\\u05df \\u05e9\\u05dc \\u05dc\\u05de\\u05e2\\u05dc\\u05d4 \\u05de\\u05e2\\u05e9\\u05e8\\u05d9\\u05dd \\u05e9\\u05e0\\u05d4 \\u05d1\\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d4\\u05d5\\u05e8\\u05d9 \\u05d5\\u05de\\u05e9\\u05e4\\u05d7\\u05ea\\u05d9 \\u05d5\\u05d1\\u05d4\\u05e0\\u05d7\\u05d9\\u05d9\\u05ea \\u05e7\\u05d1\\u05d5\\u05e6\\u05d5\\u05ea \\u05d4\\u05d5\\u05e8\\u05d9\\u05dd. \\u05de\\u05e2\\u05dc \\u05d4\\u05db\\u05d5\\u05dc, \\u05d0\\u05e0\\u05d9 \\u05d0\\u05dd \\u05d2\\u05d0\\u05d4 \\u05dc\\u05e9\\u05e0\\u05d9 \\u05d9\\u05dc\\u05d3\\u05d9\\u05dd \\u05e0\\u05e4\\u05dc\\u05d0\\u05d9\\u05dd \\u05d5\\u05d1\\u05e2\\u05dc\\u05ea \\u05e0\\u05d9\\u05e1\\u05d9\\u05d5\\u05df \\u05d1\\u05d7\\u05d9\\u05e0\\u05d5\\u05da \\u05db\\u05d1\\u05e8 \\u05db\\u05de\\u05d4 \\u05e2\\u05e9\\u05d5\\u05e8\\u05d9\\u05dd. \\u05dc\\u05d4\\u05d9\\u05d5\\u05ea \\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05d6\\u05d0\\u05ea \\u05d6\\u05db\\u05d5\\u05ea - \\u05d0\\u05da \\u05d2\\u05dd \\u05d0\\u05d7\\u05e8\\u05d9\\u05d5\\u05ea\\n\\n        \\u05d0\\u05e0\\u05d9 \\u05d0\\u05d5\\u05d4\\u05d1\\u05ea \\u05dc\\u05dc\\u05de\\u05d3 \\u05d5\\u05dc\\u05d4\\u05d3\\u05e8\\u05d9\\u05da \\u05d5\\u05d6\\u05d4\\u05d5 \\u05de\\u05e8\\u05db\\u05d6 \\u05d4\\u05d5\\u05d5\\u05d9\\u05ea\\u05d9 \\u05de\\u05d6\\u05d4 \\u05e9\\u05e0\\u05d9\\u05dd \\u05e8\\u05d1\\u05d5\\u05ea.\\n        \\u05dc\\u05e4\\u05e0\\u05d9 \\u05e9\\u05e4\\u05e0\\u05d9\\u05ea\\u05d9 \\u05dc\\u05ea\\u05d7\\u05d5\\u05dd \\u05d4\\u05d4\\u05d5\\u05e8\\u05d5\\u05ea, \\u05e2\\u05e1\\u05e7\\u05ea\\u05d9 \\u05e9\\u05e0\\u05d9\\u05dd \\u05d1\\u05d4\\u05d5\\u05e8\\u05d0\\u05d4 \\u05d5\\u05d7\\u05d9\\u05e0\\u05d5\\u05da \\u05d5\\u05d0\\u05d4\\u05d1\\u05ea\\u05d9 \\u05d0\\u05ea \\u05d4\\u05ea\\u05d7\\u05d5\\u05dd \\u05de\\u05d0\\u05d5\\u05d3. \\u05d1\\u05de\\u05e7\\u05d1\\u05d9\\u05dc, \\u05d1\\u05d9\\u05dc\\u05d9\\u05ea\\u05d9 \\u05d6\\u05de\\u05df \\u05e8\\u05d1 \\u05d1\\u05d7\\u05d9\\u05e0\\u05d5\\u05da \\u05d9\\u05dc\\u05d3\\u05d9 \\u05d5\\u05d1\\u05d7\\u05d9\\u05e0\\u05d5\\u05da \\u05d1\\u05e2\\u05dc\\u05d9...(:\\n        \\u05e6\\u05d1\\u05e8\\u05ea\\u05d9 \\u05d5\\u05d5\\u05ea\\u05e7 \\u05e9\\u05dc 20 \\u05e9\\u05e0\\u05d9\\u05dd \\u05d1\\u05ea\\u05d7\\u05d5\\u05dd \\u05d1\\u05d4\\u05dd \\u05e2\\u05d6\\u05e8\\u05ea\\u05d9 \\u05dc\\u05de\\u05d0\\u05d5\\u05ea \\u05de\\u05e9\\u05e4\\u05d7\\u05d5\\u05ea \\u05dc\\u05d7\\u05d5\\u05d5\\u05ea \\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05de\\u05d9\\u05d8\\u05d9\\u05d1\\u05d4 \\u05d5\\u05de\\u05d0\\u05d5\\u05e9\\u05e8\\u05ea.\\n\\n        \\u05d5\\u05e2\\u05db\\u05e9\\u05d9\\u05d5 \\u05d1\\u05e8\\u05e6\\u05d9\\u05e0\\u05d5\\u05ea: \\u05dc\\u05d0\\u05d7\\u05e8 \\u05db\\u05dc \\u05db\\u05da \\u05d4\\u05e8\\u05d1\\u05d4 \\u05e9\\u05e0\\u05d9\\u05dd \\u05d1\\u05ea\\u05d7\\u05d5\\u05dd \\u05d4\\u05d7\\u05d9\\u05e0\\u05d5\\u05da, \\u05d0\\u05dd \\u05d9\\u05e9 \\u05d3\\u05d1\\u05e8 \\u05d0\\u05d7\\u05d3 \\u05e9\\u05d1\\u05e8\\u05d5\\u05e8 \\u05dc\\u05d9 \\u05de\\u05e2\\u05dc \\u05dc\\u05db\\u05dc \\u05e1\\u05e4\\u05e7, \\u05d4\\u05d5\\u05d0 \\u05e9\\u05dc\\u05d4\\u05d9\\u05d5\\u05ea \\u05d4\\u05d5\\u05e8\\u05d4 \\u05d6\\u05d5 \\u05d7\\u05d5\\u05d5\\u05d9\\u05d4 \\u05de\\u05d3\\u05d4\\u05d9\\u05de\\u05d4, \\u05d0\\u05da \\u05d2\\u05dd \\u05de\\u05d1\\u05dc\\u05d1\\u05dc\\u05ea \\u05de\\u05d0\\u05d5\\u05d3. \\u05db\\u05d5\\u05dc\\u05e0\\u05d5 \\u05d7\\u05d5\\u05e9\\u05e9\\u05d9\\u05dd \\u05dc\\u05e2\\u05e9\\u05d5\\u05ea \\u05d8\\u05e2\\u05d5\\u05d9\\u05d5\\u05ea \\u05d5\\u05de\\u05e0\\u05e1\\u05d9\\u05dd \\u05dc\\u05e2\\u05e9\\u05d5\\u05ea \\u05d0\\u05ea \\u05d4\\u05d8\\u05d5\\u05d1 \\u05d1\\u05d9\\u05d5\\u05ea\\u05e8 \\u05e2\\u05d1\\u05d5\\u05e8 \\u05d9\\u05dc\\u05d3\\u05d9\\u05e0\\u05d5.\\n        \\u05d0\\u05e0\\u05d9 \\u05de\\u05d6\\u05de\\u05d9\\u05e0\\u05d4 \\u05d0\\u05ea\\u05db\\u05dd \\u05dc\\u05d4\\u05e6\\u05d8\\u05e8\\u05e3 \\u05d0\\u05dc\\u05d9 \\u05dc\\u05de\\u05e1\\u05e2 \\u05e9\\u05dc \\u05e9\\u05d9\\u05e0\\u05d5\\u05d9, \\u05d2\\u05d9\\u05dc\\u05d5\\u05d9 \\u05e2\\u05e6\\u05de\\u05d9 \\u05d5\\u05d4\\u05ea\\u05e4\\u05ea\\u05d7\\u05d5\\u05ea \\u05d1\\u05d3\\u05e8\\u05da \\u05dc\\u05d4\\u05e4\\u05d5\\u05da \\u05d0\\u05ea \\u05d4\\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05e9\\u05dc\\u05db\\u05dd \\u05dc\\u05d7\\u05d5\\u05d5\\u05d9\\u05d4 \\u05d4\\u05e8\\u05d1\\u05d4 \\u05d9\\u05d5\\u05ea\\u05e8\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:49:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7712bce2-6bfc-4076-950b-94705844aeb6', '', '', '2022-04-22 19:49:07', '2022-04-22 19:49:07', '', 0, 'http://localhost/wordpress/2022/04/22/7712bce2-6bfc-4076-950b-94705844aeb6/', 0, 'customize_changeset', '', 0),
(121, 1, '2022-04-22 19:50:00', '2022-04-22 19:50:00', '{\n    \"leosmedia::lm-aboutus-callout-display\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:49:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5bf7e40c-0acf-4237-b037-cf876060511f', '', '', '2022-04-22 19:50:00', '2022-04-22 19:50:00', '', 0, 'http://localhost/wordpress/?p=121', 0, 'customize_changeset', '', 0),
(122, 1, '2022-04-22 19:50:04', '2022-04-22 19:50:04', '{\n    \"leosmedia::lm-landing-callout-display\": {\n        \"value\": \"No\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:50:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cb98c264-43aa-4bdd-a590-dc19f403e28a', '', '', '2022-04-22 19:50:04', '2022-04-22 19:50:04', '', 0, 'http://localhost/wordpress/2022/04/22/cb98c264-43aa-4bdd-a590-dc19f403e28a/', 0, 'customize_changeset', '', 0),
(123, 1, '2022-04-22 19:50:07', '2022-04-22 19:50:07', '{\n    \"leosmedia::lm-landing-callout-display\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:50:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3f6987e1-6b89-4a01-a0f1-c98eb1caed14', '', '', '2022-04-22 19:50:07', '2022-04-22 19:50:07', '', 0, 'http://localhost/wordpress/2022/04/22/3f6987e1-6b89-4a01-a0f1-c98eb1caed14/', 0, 'customize_changeset', '', 0),
(124, 1, '2022-04-22 19:50:18', '2022-04-22 19:50:18', '{\n    \"leosmedia::lm-expertise-callout-display\": {\n        \"value\": \"No\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:50:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '85a3b1ca-98f5-4c31-a572-9ec11ee4882c', '', '', '2022-04-22 19:50:18', '2022-04-22 19:50:18', '', 0, 'http://localhost/wordpress/2022/04/22/85a3b1ca-98f5-4c31-a572-9ec11ee4882c/', 0, 'customize_changeset', '', 0),
(125, 1, '2022-04-22 19:50:21', '2022-04-22 19:50:21', '{\n    \"leosmedia::lm-expertise-callout-display\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:50:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6d4978e8-daa7-4080-a7e1-bcaaceb1ad38', '', '', '2022-04-22 19:50:21', '2022-04-22 19:50:21', '', 0, 'http://localhost/wordpress/2022/04/22/6d4978e8-daa7-4080-a7e1-bcaaceb1ad38/', 0, 'customize_changeset', '', 0),
(126, 1, '2022-04-22 19:50:30', '2022-04-22 19:50:30', '{\n    \"leosmedia::lm-expertise-callout-tab1-headline\": {\n        \"value\": \"\\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05dc\\u05d2\\u05d9\\u05dc \\u05d4\\u05e8\\u05da \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:50:30\"\n    },\n    \"leosmedia::lm-expertise-callout-tab2-headline\": {\n        \"value\": \"\\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05dc\\u05d9\\u05dc\\u05d3\\u05d9\\u05dd \\u05d1\\u05d2\\u05d9\\u05dc \\u05d1\\u05d9\\u05d4\\\"\\u05e1 \\u05d4\\u05d9\\u05e1\\u05d5\\u05d3\\u05d9 \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:50:30\"\n    },\n    \"leosmedia::lm-expertise-callout-tab3-headline\": {\n        \"value\": \"\\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05dc\\u05d9\\u05dc\\u05d3\\u05d9\\u05dd \\u05d1\\u05d2\\u05d9\\u05dc \\u05d4\\u05d4\\u05ea\\u05d1\\u05d2\\u05e8\\u05d5\\u05ea \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:50:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd4792001-4de2-4e0e-b903-877aa4e05b33', '', '', '2022-04-22 19:50:30', '2022-04-22 19:50:30', '', 0, 'http://localhost/wordpress/2022/04/22/d4792001-4de2-4e0e-b903-877aa4e05b33/', 0, 'customize_changeset', '', 0),
(127, 1, '2022-04-22 19:50:34', '2022-04-22 19:50:34', '{\n    \"leosmedia::lm-expertise-callout-tab1-headline\": {\n        \"value\": \"\\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05dc\\u05d2\\u05d9\\u05dc \\u05d4\\u05e8\\u05da\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:50:34\"\n    },\n    \"leosmedia::lm-expertise-callout-tab2-headline\": {\n        \"value\": \"\\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05dc\\u05d9\\u05dc\\u05d3\\u05d9\\u05dd \\u05d1\\u05d2\\u05d9\\u05dc \\u05d1\\u05d9\\u05d4\\\"\\u05e1 \\u05d4\\u05d9\\u05e1\\u05d5\\u05d3\\u05d9\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:50:34\"\n    },\n    \"leosmedia::lm-expertise-callout-tab3-headline\": {\n        \"value\": \"\\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05dc\\u05d9\\u05dc\\u05d3\\u05d9\\u05dd \\u05d1\\u05d2\\u05d9\\u05dc \\u05d4\\u05d4\\u05ea\\u05d1\\u05d2\\u05e8\\u05d5\\u05ea\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:50:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '782f1c1f-cce4-4d16-a641-fe5e6345f306', '', '', '2022-04-22 19:50:34', '2022-04-22 19:50:34', '', 0, 'http://localhost/wordpress/2022/04/22/782f1c1f-cce4-4d16-a641-fe5e6345f306/', 0, 'customize_changeset', '', 0),
(128, 1, '2022-04-22 19:52:34', '2022-04-22 19:52:34', '{\n    \"leosmedia::lm-expertise-callout-tab1-content\": {\n        \"value\": \"\\u05dc\\u05d5\\u05e8\\u05dd \\u05d0\\u05d9\\u05e4\\u05e1\\u05d5\\u05dd \\u05d3\\u05d5\\u05dc\\u05d5\\u05e8 \\u05e1\\u05d9\\u05d8 \\u05d0\\u05de\\u05d8, \\u05e7\\u05d5\\u05e0\\u05e1\\u05e7\\u05d8\\u05d5\\u05e8\\u05e8 \\u05d0\\u05d3\\u05d9\\u05e4\\u05d9\\u05e1\\u05d9\\u05e0\\u05d2 \\u05d0\\u05dc\\u05d9\\u05ea \\u05dc\\u05d5\\u05e8\\u05dd \\u05d0\\u05d9\\u05e4\\u05e1\\u05d5\\u05dd \\u05d3\\u05d5\\u05dc\\u05d5\\u05e8 \\u05e1\\u05d9\\u05d8 \\u05d0\\u05de\\u05d8,\\n    \\u05e7\\u05d5\\u05e0\\u05e1\\u05e7\\u05d8\\u05d5\\u05e8\\u05e8 \\u05d0\\u05d3\\u05d9\\u05e4\\u05d9\\u05e1\\u05d9\\u05e0\\u05d2 \\u05d0\\u05dc\\u05d9\\u05ea. \\u05e1\\u05ea \\u05d0\\u05dc\\u05de\\u05e0\\u05e7\\u05d5\\u05dd \\u05e0\\u05d9\\u05e1\\u05d9 \\u05e0\\u05d5\\u05df \\u05e0\\u05d9\\u05d1\\u05d0\\u05d4. \\u05d3\\u05e1 \\u05d0\\u05d9\\u05d0\\u05e7\\u05d5\\u05dc\\u05d9\\u05e1 \\u05d5\\u05d5\\u05dc\\u05d5\\u05e4\\u05d8\\u05d4 \\u05d3\\u05d9\\u05d0\\u05dd.\\n    \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05d0\\u05d8 \\u05d3\\u05d5\\u05dc\\u05d5\\u05e8, \\u05e7\\u05e8\\u05d0\\u05e1 \\u05d0\\u05d2\\u05ea \\u05dc\\u05e7\\u05d8\\u05d5\\u05e1 \\u05d5\\u05d5\\u05d0\\u05dc  \\u05d0\\u05d0\\u05d5\\u05d2\\u05d5 \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05e1\\u05d5\\u05dc\\u05d9\\u05e1\\u05d9 \\u05d8\\u05d9\\u05d3\\u05d5\\u05dd \\u05d1\\u05e2\\u05dc\\u05d9\\u05e7. \\u05e6\\u05e9 \\u05d1\\u05dc\\u05d9\\u05d0,\\n    \\u05de\\u05e0\\u05e1\\u05d5\\u05d8\\u05d5 \\u05e6\\u05de\\u05dc\\u05d7 \\u05dc\\u05d1\\u05d9\\u05e7\\u05d5 \\u05e0\\u05e0\\u05d1\\u05d9, \\u05e6\\u05de\\u05d5\\u05e7\\u05d5 \\u05d1\\u05dc\\u05d5\\u05e7\\u05e8\\u05d9\\u05d4 \\u05e9\\u05d9\\u05e6\\u05de\\u05d4 \\u05d1\\u05e8\\u05d5\\u05e8\\u05e7. \\u05dc\\u05d5\\u05e8\\u05dd \\u05d0\\u05d9\\u05e4\\u05e1\\u05d5\\u05dd \\u05d3\\u05d5\\u05dc\\u05d5\\u05e8 \\u05e1\\u05d9\\u05d8 \\u05d0\\u05de\\u05d8,\\n    \\u05e7\\u05d5\\u05e0\\u05e1\\u05e7\\u05d8\\u05d5\\u05e8\\u05e8 \\u05d0\\u05d3\\u05d9\\u05e4\\u05d9\\u05e1\\u05d9\\u05e0\\u05d2 \\u05d0\\u05dc\\u05d9\\u05ea. \\u05e1\\u05ea \\u05d0\\u05dc\\u05de\\u05e0\\u05e7\\u05d5\\u05dd \\u05e0\\u05d9\\u05e1\\u05d9 \\u05e0\\u05d5\\u05df \\u05e0\\u05d9\\u05d1\\u05d0\\u05d4. \\u05d3\\u05e1 \\u05d0\\u05d9\\u05d0\\u05e7\\u05d5\\u05dc\\u05d9\\u05e1 \\u05d5\\u05d5\\u05dc\\u05d5\\u05e4\\u05d8\\u05d4 \\u05d3\\u05d9\\u05d0\\u05dd.\\n    \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05d0\\u05d8 \\u05d3\\u05d5\\u05dc\\u05d5\\u05e8, \\u05e7\\u05e8\\u05d0\\u05e1 \\u05d0\\u05d2\\u05ea \\u05dc\\u05e7\\u05d8\\u05d5\\u05e1 \\u05d5\\u05d5\\u05d0\\u05dc \\u05d0\\u05d0\\u05d5\\u05d2\\u05d5 \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05e1\\u05d5\\u05dc\\u05d9\\u05e1\\u05d9 \\u05d8\\u05d9\\u05d3\\u05d5\\u05dd \\u05d1\\u05e2\\u05dc\\u05d9\\u05e7.\\n    \\u05e7\\u05d5\\u05e0\\u05d3\\u05d9\\u05de\\u05e0\\u05d8\\u05d5\\u05dd \\u05e7\\u05d5\\u05e8\\u05d5\\u05e1 \\u05d1\\u05dc\\u05d9\\u05e7\\u05e8\\u05d4, \\u05e0\\u05d5\\u05e0\\u05e1\\u05d8\\u05d9 \\u05e7\\u05dc\\u05d5\\u05d1\\u05e8 \\u05d1\\u05e8\\u05d9\\u05e7\\u05e0\\u05d4 \\u05e1\\u05d8\\u05d5\\u05dd, \\u05dc\\u05e4\\u05e8\\u05d9\\u05e7\\u05da \\u05ea\\u05e6\\u05d8\\u05e8\\u05d9\\u05e7 \\u05dc\\u05e8\\u05d8\\u05d9.\\n  \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:52:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'caf39b77-f0d4-40b5-90c1-5471c20dcb47', '', '', '2022-04-22 19:52:34', '2022-04-22 19:52:34', '', 0, 'http://localhost/wordpress/2022/04/22/caf39b77-f0d4-40b5-90c1-5471c20dcb47/', 0, 'customize_changeset', '', 0),
(129, 1, '2022-04-22 19:52:43', '2022-04-22 19:52:43', '{\n    \"leosmedia::lm-expertise-callout-tab1-content\": {\n        \"value\": \"\\u05dc\\u05d5\\u05e8\\u05dd \\u05d0\\u05d9\\u05e4\\u05e1\\u05d5\\u05dd \\u05d3\\u05d5\\u05dc\\u05d5\\u05e8 \\u05e1\\u05d9\\u05d8 \\u05d0\\u05de\\u05d8, \\u05e7\\u05d5\\u05e0\\u05e1\\u05e7\\u05d8\\u05d5\\u05e8\\u05e8 \\u05d0\\u05d3\\u05d9\\u05e4\\u05d9\\u05e1\\u05d9\\u05e0\\u05d2 \\u05d0\\u05dc\\u05d9\\u05ea \\u05dc\\u05d5\\u05e8\\u05dd \\u05d0\\u05d9\\u05e4\\u05e1\\u05d5\\u05dd \\u05d3\\u05d5\\u05dc\\u05d5\\u05e8 \\u05e1\\u05d9\\u05d8 \\u05d0\\u05de\\u05d8,\\n    \\u05e7\\u05d5\\u05e0\\u05e1\\u05e7\\u05d8\\u05d5\\u05e8\\u05e8 \\u05d0\\u05d3\\u05d9\\u05e4\\u05d9\\u05e1\\u05d9\\u05e0\\u05d2 \\u05d0\\u05dc\\u05d9\\u05ea. \\u05e1\\u05ea \\u05d0\\u05dc\\u05de\\u05e0\\u05e7\\u05d5\\u05dd \\u05e0\\u05d9\\u05e1\\u05d9 \\u05e0\\u05d5\\u05df \\u05e0\\u05d9\\u05d1\\u05d0\\u05d4. \\u05d3\\u05e1 \\u05d0\\u05d9\\u05d0\\u05e7\\u05d5\\u05dc\\u05d9\\u05e1 \\u05d5\\u05d5\\u05dc\\u05d5\\u05e4\\u05d8\\u05d4 \\u05d3\\u05d9\\u05d0\\u05dd.\\n    \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05d0\\u05d8 \\u05d3\\u05d5\\u05dc\\u05d5\\u05e8, \\u05e7\\u05e8\\u05d0\\u05e1 \\u05d0\\u05d2\\u05ea \\u05dc\\u05e7\\u05d8\\u05d5\\u05e1 \\u05d5\\u05d5\\u05d0  \\u05d0\\u05d0\\u05d5\\u05d2\\u05d5 \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05e1\\u05d5\\u05dc\\u05d9\\u05e1\\u05d9 \\u05d8\\u05d9\\u05d3\\u05d5\\u05dd \\u05d1\\u05e2\\u05dc\\u05d9\\u05e7. \\u05e6\\u05e9 \\u05d1\\u05dc\\u05d9\\u05d0,\\n    \\u05de\\u05e0\\u05e1\\u05d5\\u05d8\\u05d5 \\u05e6\\u05de\\u05dc\\u05d7 \\u05dc\\u05d1\\u05d9\\u05e7\\u05d5 \\u05e0\\u05e0\\u05d1\\u05d9, \\u05e6\\u05de\\u05d5\\u05e7\\u05d5 \\u05d1\\u05dc\\u05d5\\u05e7\\u05e8\\u05d9\\u05d4 \\u05e9\\u05d9\\u05e6\\u05de\\u05d4 \\u05d1\\u05e8\\u05d5\\u05e8\\u05e7. \\u05dc\\u05d5\\u05e8\\u05dd \\u05d0\\u05d9\\u05e4\\u05e1\\u05d5\\u05dd \\u05d3\\u05d5\\u05dc\\u05d5\\u05e8 \\u05e1\\u05d9\\u05d8 \\u05d0\\u05de\\u05d8,\\n    \\u05e7\\u05d5\\u05e0\\u05e1\\u05e7\\u05d8\\u05d5\\u05e8\\u05e8 \\u05d0\\u05d3\\u05d9\\u05e4\\u05d9\\u05e1\\u05d9\\u05e0\\u05d2 \\u05d0\\u05dc\\u05d9\\u05ea. \\u05e1\\u05ea \\u05d0\\u05dc\\u05de\\u05e0\\u05e7\\u05d5\\u05dd \\u05e0\\u05d9\\u05e1\\u05d9 \\u05e0\\u05d5\\u05df \\u05e0\\u05d9\\u05d1\\u05d0\\u05d4. \\u05d3\\u05e1 \\u05d0\\u05d9\\u05d0\\u05e7\\u05d5\\u05dc\\u05d9\\u05e1 \\u05d5\\u05d5\\u05dc\\u05d5\\u05e4\\u05d8\\u05d4 \\u05d3\\u05d9\\u05d0\\u05dd.\\n    \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05d0\\u05d8 \\u05d3\\u05d5\\u05dc\\u05d5\\u05e8, \\u05e7\\u05e8\\u05d0\\u05e1 \\u05d0\\u05d2\\u05ea \\u05dc\\u05e7\\u05d8\\u05d5\\u05e1 \\u05d5\\u05d5\\u05d0\\u05dc \\u05d0\\u05d0\\u05d5\\u05d2\\u05d5 \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05e1\\u05d5\\u05dc\\u05d9\\u05e1\\u05d9 \\u05d8\\u05d9\\u05d3\\u05d5\\u05dd \\u05d1\\u05e2\\u05dc\\u05d9\\u05e7.\\n    \\u05e7\\u05d5\\u05e0\\u05d3\\u05d9\\u05de\\u05e0\\u05d8\\u05d5\\u05dd \\u05e7\\u05d5\\u05e8\\u05d5\\u05e1 \\u05d1\\u05dc\\u05d9\\u05e7\\u05e8\\u05d4, \\u05e0\\u05d5\\u05e0\\u05e1\\u05d8\\u05d9 \\u05e7\\u05dc\\u05d5\\u05d1\\u05e8 \\u05d1\\u05e8\\u05d9\\u05e7\\u05e0\\u05d4 \\u05e1\\u05d8\\u05d5\\u05dd, \\u05dc\\u05e4\\u05e8\\u05d9\\u05e7\\u05da \\u05ea\\u05e6\\u05d8\\u05e8\\u05d9\\u05e7 \\u05dc\\u05e8\\u05d8\\u05d9.\\n  \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:52:43\"\n    },\n    \"leosmedia::lm-expertise-callout-tab2-headline\": {\n        \"value\": \"\\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05dc\\u05d9\\u05dc\\u05d3\\u05d9\\u05dd \\u05d1\\u05d2\\u05d9\\u05dc \\u05d1\\u05d9\\u05d4\\\"\\u05e1 \\u05d4\\u05d9\\u05e1\\u05d5\\u05d3\\u05d9 \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:52:43\"\n    },\n    \"leosmedia::lm-expertise-callout-tab2-content\": {\n        \"value\": \"\\u05e7\\u05d5\\u05e0\\u05e1\\u05e7\\u05d8\\u05d5\\u05e8\\u05e8 \\u05d0\\u05d3\\u05d9\\u05e4\\u05d9\\u05e1\\u05d9\\u05e0\\u05d2 \\u05d0\\u05dc\\u05d9\\u05ea. \\u05e1\\u05ea \\u05d0\\u05dc\\u05de\\u05e0\\u05e7\\u05d5\\u05dd \\u05e0\\u05d9\\u05e1\\u05d9 \\u05e0\\u05d5\\u05df \\u05e0\\u05d9\\u05d1\\u05d0\\u05d4. \\u05d3\\u05e1 \\u05d0\\u05d9\\u05d0\\u05e7\\u05d5\\u05dc\\u05d9\\u05e1 \\u05d5\\u05d5\\u05dc\\u05d5\\u05e4\\u05d8\\u05d4 \\u05d3\\u05d9\\u05d0\\u05dd.\\n    \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05d0\\u05d8 \\u05d3\\u05d5\\u05dc\\u05d5\\u05e8, \\u05e7\\u05e8\\u05d0\\u05e1 \\u05d0\\u05d2\\u05ea \\u05dc\\u05e7\\u05d8\\u05d5\\u05e1 \\u05d5\\u05d5\\u05d0\\u05dc \\u05d0\\u05d0\\u05d5\\u05d2\\u05d5 \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05e1\\u05d5\\u05dc\\u05d9\\u05e1\\u05d9 \\u05d8\\u05d9\\u05d3\\u05d5\\u05dd \\u05d1\\u05e2\\u05dc\\u05d9\\u05e7.\\n    \\u05e7\\u05d5\\u05e0\\u05d3\\u05d9\\u05de\\u05e0\\u05d8\\u05d5\\u05dd \\u05e7\\u05d5\\u05e8\\u05d5\\u05e1 \\u05d1\\u05dc\\u05d9\\u05e7\\u05e8\\u05d4, \\u05e0\\u05d5\\u05e0\\u05e1\\u05d8\\u05d9 \\u05e7\\u05dc\\u05d5\\u05d1  \\u05d1\\u05e8\\u05d9\\u05e7\\u05e0\\u05d4 \\u05e1\\u05d8\\u05d5\\u05dd, \\u05dc\\u05e4\\u05e8\\u05d9\\u05e7\\u05da \\u05ea\\u05e6\\u05d8\\u05e8\\u05d9\\u05e7 \\u05dc\\u05e8\\u05d8\\u05d9.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:52:43\"\n    },\n    \"leosmedia::lm-expertise-callout-tab3-headline\": {\n        \"value\": \"\\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05dc\\u05d9\\u05dc\\u05d3\\u05d9\\u05dd \\u05d1\\u05d2\\u05d9\\u05dc \\u05d4\\u05d4\\u05ea\\u05d1\\u05d2\\u05e8\\u05d5\\u05ea\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:52:43\"\n    },\n    \"leosmedia::lm-expertise-callout-tab3-content\": {\n        \"value\": \"\\u05e7\\u05d5\\u05e0\\u05e1\\u05e7\\u05d8\\u05d5\\u05e8\\u05e8 \\u05d0\\u05d3\\u05d9\\u05e4\\u05d9\\u05e1\\u05d9\\u05e0\\u05d2 \\u05d0\\u05dc\\u05d9\\u05ea. \\u05e1\\u05ea \\u05d0\\u05dc\\u05de\\u05e0\\u05e7\\u05d5\\u05dd \\u05e0\\u05d9\\u05e1\\u05d9 \\u05e0\\u05d5\\u05df \\u05e0\\u05d9\\u05d1\\u05d0\\u05d4. \\u05d3\\u05e1 \\u05d0\\u05d9\\u05d0\\u05e7\\u05d5\\u05dc\\u05d9\\u05e1 \\u05d5\\u05d5\\u05dc\\u05d5\\u05e4\\u05d8\\u05d4 \\u05d3\\u05d9\\u05d0\\u05dd.\\n    \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05d0\\u05d8 \\u05d3\\u05d5\\u05dc\\u05d5\\u05e8, \\u05e7\\u05e8\\u05d0\\u05e1 \\u05d0\\u05d2\\u05ea \\u05dc\\u05e7\\u05d8\\u05d5\\u05e1 \\u05d5\\u05d5\\u05d0\\u05dc \\u05d0\\u05d0\\u05d5\\u05d2\\u05d5 \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05e1\\u05d5\\u05dc\\u05d9\\u05e1\\u05d9 \\u05d8\\u05d9\\u05d3\\u05d5\\u05dd \\u05d1\\u05e2\\u05dc\\u05d9\\u05e7.\\n    \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05d0\\u05d8 \\u05d3\\u05d5\\u05dc\\u05d5\\u05e8, \\u05e7\\u05e8\\u05d0\\u05e1 \\u05d0\\u05d2\\u05ea \\u05dc\\u05e7\\u05d8\\u05d5\\u05e1 \\u05d5\\u05d5\\u05d0\\u05dc \\u05d0\\u05d0\\u05d5\\u05d2\\u05d5 \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05e1\\u05d5\\u05dc\\u05d9\\u05e1\\u05d9 \\u05d8\\u05d9\\u05d3\\u05d5\\u05dd \\u05d1\\u05e2\\u05dc\\u05d9\\u05e7.\\n    \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05d0\\u05d8 \\u05d3\\u05d5\\u05dc\\u05d5\\u05e8, \\u05e7\\u05e8\\u05d0\\u05e1 \\u05d0\\u05d2\\u05ea \\u05dc\\u05e7\\u05d8\\u05d5\\u05e1 \\u05d5\\u05d5\\u05d0\\u05dc \\u05d0\\u05d0\\u05d5\\u05d2\\u05d5 \\u05d5\\u05e1\\u05d8\\u05d9\\u05d1\\u05d5\\u05dc\\u05d5\\u05dd \\u05e1\\u05d5\\u05dc\\u05d9\\u05e1\\u05d9 \\u05d8\\u05d9\\u05d3\\u05d5\\u05dd \\u05d1\\u05e2\\u05dc\\u05d9\\u05e7.\\n    \\u05e7\\u05d5\\u05e0\\u05d3\\u05d9\\u05de\\u05e0\\u05d8\\u05d5\\u05dd \\u05e7\\u05d5\\u05e8\\u05d5\\u05e1 \\u05d1\\u05dc\\u05d9\\u05e7\\u05e8\\u05d4, \\u05e0\\u05d5\\u05e0\\u05e1\\u05d8\\u05d9 \\u05e7\\u05dc\\u05d5\\u05d1\\u05e8 \\u05d1\\u05e8\\u05d9\\u05e7\\u05e0\\u05d4 \\u05e1\\u05d8\\u05d5\\u05dd, \\u05dc\\u05e4\\u05e8\\u05d9\\u05e7\\u05da \\u05ea\\u05e6\\u05d8\\u05e8\\u05d9\\u05e7 \\u05dc\\u05e8\\u05d8\\u05d9.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:52:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd3964da6-f67c-4dbd-ac35-be87cb5ba9d4', '', '', '2022-04-22 19:52:43', '2022-04-22 19:52:43', '', 0, 'http://localhost/wordpress/2022/04/22/d3964da6-f67c-4dbd-ac35-be87cb5ba9d4/', 0, 'customize_changeset', '', 0),
(130, 1, '2022-04-22 19:53:02', '2022-04-22 19:53:02', '{\n    \"leosmedia::lm-whyus-callout-headline\": {\n        \"value\": \"\\u05dc\\u05de\\u05d4 \\u05d3\\u05d5\\u05d5\\u05e7\\u05d0 \\u05dc\\u05d1\\u05d7\\u05d5\\u05e8 \\u05d1\\u05e0\\u05d5?\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:53:02\"\n    },\n    \"leosmedia::lm-whyus-callout-quote\": {\n        \"value\": \"\\u201c\\u05d4\\u05e6\\u05d8\\u05e8\\u05e4\\u05d5 \\u05d0\\u05dc\\u05d9 \\u05dc\\u05de\\u05e1\\u05e2 \\u05e9\\u05dc \\u05e9\\u05d9\\u05e0\\u05d5\\u05d9,\\n    \\u05d5\\u05d4\\u05e4\\u05db\\u05d5 \\u05d0\\u05ea \\u05d4\\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05e9\\u05dc\\u05db\\u05dd \\u05dc\\u05d7\\u05d5\\u05d5\\u05d9\\u05d4 \\u05d4\\u05e8\\u05d1\\u05d4 \\u05d9\\u05d5\\u05ea\\u05e8 \\u05d8\\u05d5\\u05d1\\u05d4\\u201d\\n  \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:53:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '306158c4-2b0c-41b3-9f60-f1e154fbe26c', '', '', '2022-04-22 19:53:02', '2022-04-22 19:53:02', '', 0, 'http://localhost/wordpress/2022/04/22/306158c4-2b0c-41b3-9f60-f1e154fbe26c/', 0, 'customize_changeset', '', 0),
(131, 1, '2022-04-22 19:53:13', '2022-04-22 19:53:13', '{\n    \"leosmedia::lm-whyus-callout-display\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:53:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1fabbfe5-bbe3-4662-b202-b3308c207b84', '', '', '2022-04-22 19:53:13', '2022-04-22 19:53:13', '', 0, 'http://localhost/wordpress/2022/04/22/1fabbfe5-bbe3-4662-b202-b3308c207b84/', 0, 'customize_changeset', '', 0),
(132, 1, '2022-04-22 19:53:38', '2022-04-22 19:53:38', '', 'reasonsbg', '', 'inherit', 'open', 'closed', '', 'reasonsbg', '', '', '2022-04-22 19:53:38', '2022-04-22 19:53:38', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/reasonsbg.png', 0, 'attachment', 'image/png', 0),
(133, 1, '2022-04-22 19:53:51', '2022-04-22 19:53:51', '', 'happyfamily', '', 'inherit', 'open', 'closed', '', 'happyfamily', '', '', '2022-04-22 19:53:51', '2022-04-22 19:53:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/happyfamily.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2022-04-22 19:53:57', '2022-04-22 19:53:57', '{\n    \"leosmedia::lm-whyus-callout-bgimg\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2022/04/reasonsbg.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:53:57\"\n    },\n    \"leosmedia::lm-whyus-callout-quote\": {\n        \"value\": \"\\u201c\\u05d4\\u05e6\\u05d8\\u05e8\\u05e4\\u05d5 \\u05d0\\u05dc\\u05d9 \\u05dc\\u05de\\u05e1\\u05e2 \\u05e9\\u05dc \\u05e9\\u05d9\\u05e0\\u05d5\\u05d9,\\n    \\u05d5\\u05d4\\u05e4\\u05db\\u05d5 \\u05d0\\u05ea \\u05d4\\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05e9\\u05dc\\u05db\\u05dd \\u05dc\\u05d7\\u05d5\\u05d5\\u05d9\\u05d4 \\u05d4\\u05e8\\u05d1\\u05d4 \\u05d9\\u05d5\\u05ea\\u05e8 \\u05d8\\u05d5\\u05d1\\u05d4\\u201d\\n  \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:53:57\"\n    },\n    \"leosmedia::lm-whyus-callout-ins\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2022/04/happyfamily.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:53:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b45fa580-28a5-409d-9f82-5126363492b5', '', '', '2022-04-22 19:53:57', '2022-04-22 19:53:57', '', 0, 'http://localhost/wordpress/2022/04/22/b45fa580-28a5-409d-9f82-5126363492b5/', 0, 'customize_changeset', '', 0),
(135, 1, '2022-04-22 19:54:17', '2022-04-22 19:54:17', '{\n    \"leosmedia::lm-contactus-callout-display\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:54:17\"\n    },\n    \"leosmedia::lm-contactus-callout-headline\": {\n        \"value\": \"\\u05dc\\u05d4\\u05d3\\u05e8\\u05db\\u05d4 \\u05d4\\u05e0\\u05db\\u05d5\\u05e0\\u05d4 \\u05d5\\u05dc\\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d4\\u05e0\\u05db\\u05d5\\u05df \\u05dc\\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05e9\\u05dc\\u05db\\u05dd \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:54:17\"\n    },\n    \"leosmedia::lm-contactus-callout-subhead\": {\n        \"value\": \"\\u05d4\\u05e9\\u05d0\\u05d9\\u05e8\\u05d5 \\u05e4\\u05e8\\u05d8\\u05d9\\u05dd \\u05d5\\u05d0\\u05d7\\u05d6\\u05d5\\u05e8 \\u05d0\\u05dc\\u05d9\\u05db\\u05dd \\u05d1\\u05d4\\u05e7\\u05d3\\u05dd \\u05e2\\u05dd \\u05db\\u05dc \\u05d4\\u05e4\\u05e8\\u05d8\\u05d9\\u05dd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:54:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7f5669b0-3258-4c0a-ad17-aeba28e99f2f', '', '', '2022-04-22 19:54:17', '2022-04-22 19:54:17', '', 0, 'http://localhost/wordpress/2022/04/22/7f5669b0-3258-4c0a-ad17-aeba28e99f2f/', 0, 'customize_changeset', '', 0),
(136, 1, '2022-04-22 19:54:19', '2022-04-22 19:54:19', '{\n    \"leosmedia::lm-contactus-callout-headline\": {\n        \"value\": \"\\u05dc\\u05d4\\u05d3\\u05e8\\u05db\\u05d4 \\u05d4\\u05e0\\u05db\\u05d5\\u05e0\\u05d4 \\u05d5\\u05dc\\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d4\\u05e0\\u05db\\u05d5\\u05df \\u05dc\\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05e9\\u05dc\\u05db\\u05dd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:54:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '355e74e2-64a2-429c-bab8-7325c662f389', '', '', '2022-04-22 19:54:19', '2022-04-22 19:54:19', '', 0, 'http://localhost/wordpress/2022/04/22/355e74e2-64a2-429c-bab8-7325c662f389/', 0, 'customize_changeset', '', 0),
(137, 1, '2022-04-22 19:54:29', '2022-04-22 19:54:29', '{\n    \"leosmedia::lm-contactus-callout-logo\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2022/04/logo-placeholder.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:54:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a53a18db-6946-472a-a785-d65b2450b5d5', '', '', '2022-04-22 19:54:29', '2022-04-22 19:54:29', '', 0, 'http://localhost/wordpress/2022/04/22/a53a18db-6946-472a-a785-d65b2450b5d5/', 0, 'customize_changeset', '', 0),
(138, 1, '2022-04-22 19:54:52', '2022-04-22 19:54:52', '', 'potrait', '', 'inherit', 'open', 'closed', '', 'potrait-2', '', '', '2022-04-22 19:54:52', '2022-04-22 19:54:52', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/potrait-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2022-04-22 19:55:04', '2022-04-22 19:55:04', 'http://localhost/wordpress/wp-content/uploads/2022/04/cropped-potrait-1-scaled-1.jpg', 'cropped-potrait-1-scaled-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-potrait-1-scaled-1-jpg', '', '', '2022-04-22 19:55:04', '2022-04-22 19:55:04', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/cropped-potrait-1-scaled-1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(140, 1, '2022-04-22 19:55:12', '2022-04-22 19:55:12', '{\n    \"leosmedia::lm-aboutus-callout-display\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:55:12\"\n    },\n    \"leosmedia::lm-aboutus-callout-sideimg\": {\n        \"value\": 139,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:55:12\"\n    },\n    \"leosmedia::lm-aboutus-callout-headline\": {\n        \"value\": \"\\u05e7\\u05e6\\u05ea \\u05e2\\u05dc\\u05d9\\u05d9\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:55:12\"\n    },\n    \"leosmedia::lm-aboutus-callout-content\": {\n        \"value\": \"\\u05d9\\u05d5\\u05e2\\u05e6\\u05ea \\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05d5\\u05de\\u05e9\\u05e4\\u05d7\\u05d4, \\u05de\\u05e2\\u05e0\\u05d9\\u05e7\\u05d4 \\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d0\\u05d9\\u05e9\\u05d9 \\u05dc\\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05d1\\u05d9\\u05d7\\u05d3 \\u05d5\\u05dc\\u05d7\\u05d5\\u05d3, \\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d6\\u05d5\\u05d2\\u05d9 \\u05d5\\u05e4\\u05ea\\u05e8\\u05d5\\u05df \\u05d1\\u05e2\\u05d9\\u05d5\\u05ea \\u05d1\\u05de\\u05e9\\u05e4\\u05d7\\u05d4. \\u05de\\u05e0\\u05d7\\u05ea \\u05e1\\u05d3\\u05e0\\u05d0\\u05d5\\u05ea \\u05d4\\u05d5\\u05e8\\u05d5\\u05ea, \\u05de\\u05e8\\u05e6\\u05d4 \\u05d1\\u05ea\\u05d7\\u05d5\\u05dd \\u05d4\\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05d5\\u05de\\u05d5\\u05de\\u05d7\\u05d9\\u05ea \\u05d1\\u05ea\\u05e7\\u05e9\\u05d5\\u05e8\\u05ea \\u05de\\u05e7\\u05e8\\u05d1\\u05ea. \\n\\n        \\u05d1\\u05d5\\u05d2\\u05e8\\u05ea \\u05dc\\u05d9\\u05de\\u05d5\\u05d3\\u05d9 \\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05d5\\u05d9\\u05d7\\u05e1\\u05d9\\u05dd \\u05d1\\u05de\\u05db\\u05d5\\u05df \\u05d0\\u05d3\\u05dc\\u05e8, \\u05d5\\u05d1\\u05e2\\u05dc\\u05ea \\u05e0\\u05d9\\u05e1\\u05d9\\u05d5\\u05df \\u05e9\\u05dc \\u05dc\\u05de\\u05e2\\u05dc\\u05d4 \\u05de\\u05e2\\u05e9\\u05e8\\u05d9\\u05dd \\u05e9\\u05e0\\u05d4 \\u05d1\\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d4\\u05d5\\u05e8\\u05d9 \\u05d5\\u05de\\u05e9\\u05e4\\u05d7\\u05ea\\u05d9 \\u05d5\\u05d1\\u05d4\\u05e0\\u05d7\\u05d9\\u05d9\\u05ea \\u05e7\\u05d1\\u05d5\\u05e6\\u05d5\\u05ea \\u05d4\\u05d5\\u05e8\\u05d9\\u05dd. \\u05de\\u05e2\\u05dc \\u05d4\\u05db\\u05d5\\u05dc, \\u05d0\\u05e0\\u05d9 \\u05d0\\u05dd \\u05d2\\u05d0\\u05d4 \\u05dc\\u05e9\\u05e0\\u05d9 \\u05d9\\u05dc\\u05d3\\u05d9\\u05dd \\u05e0\\u05e4\\u05dc\\u05d0\\u05d9\\u05dd \\u05d5\\u05d1\\u05e2\\u05dc\\u05ea \\u05e0\\u05d9\\u05e1\\u05d9\\u05d5\\u05df \\u05d1\\u05d7\\u05d9\\u05e0\\u05d5\\u05da \\u05db\\u05d1\\u05e8 \\u05db\\u05de\\u05d4 \\u05e2\\u05e9\\u05d5\\u05e8\\u05d9\\u05dd. \\u05dc\\u05d4\\u05d9\\u05d5\\u05ea \\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05d6\\u05d0\\u05ea \\u05d6\\u05db\\u05d5\\u05ea - \\u05d0\\u05da \\u05d2\\u05dd \\u05d0\\u05d7\\u05e8\\u05d9\\u05d5\\u05ea\\n\\n        \\u05d0\\u05e0\\u05d9 \\u05d0\\u05d5\\u05d4\\u05d1\\u05ea \\u05dc\\u05dc\\u05de\\u05d3 \\u05d5\\u05dc\\u05d4\\u05d3\\u05e8\\u05d9\\u05da \\u05d5\\u05d6\\u05d4\\u05d5 \\u05de\\u05e8\\u05db\\u05d6 \\u05d4\\u05d5\\u05d5\\u05d9\\u05ea\\u05d9 \\u05de\\u05d6\\u05d4 \\u05e9\\u05e0\\u05d9\\u05dd \\u05e8\\u05d1\\u05d5\\u05ea.\\n        \\u05dc\\u05e4\\u05e0\\u05d9 \\u05e9\\u05e4\\u05e0\\u05d9\\u05ea\\u05d9 \\u05dc\\u05ea\\u05d7\\u05d5\\u05dd \\u05d4\\u05d4\\u05d5\\u05e8\\u05d5\\u05ea, \\u05e2\\u05e1\\u05e7\\u05ea\\u05d9 \\u05e9\\u05e0\\u05d9\\u05dd \\u05d1\\u05d4\\u05d5\\u05e8\\u05d0\\u05d4 \\u05d5\\u05d7\\u05d9\\u05e0\\u05d5\\u05da \\u05d5\\u05d0\\u05d4\\u05d1\\u05ea\\u05d9 \\u05d0\\u05ea \\u05d4\\u05ea\\u05d7\\u05d5\\u05dd \\u05de\\u05d0\\u05d5\\u05d3. \\u05d1\\u05de\\u05e7\\u05d1\\u05d9\\u05dc, \\u05d1\\u05d9\\u05dc\\u05d9\\u05ea\\u05d9 \\u05d6\\u05de\\u05df \\u05e8\\u05d1 \\u05d1\\u05d7\\u05d9\\u05e0\\u05d5\\u05da \\u05d9\\u05dc\\u05d3\\u05d9 \\u05d5\\u05d1\\u05d7\\u05d9\\u05e0\\u05d5\\u05da \\u05d1\\u05e2\\u05dc\\u05d9...(:\\n        \\u05e6\\u05d1\\u05e8\\u05ea\\u05d9 \\u05d5\\u05d5\\u05ea\\u05e7 \\u05e9\\u05dc 20 \\u05e9\\u05e0\\u05d9\\u05dd \\u05d1\\u05ea\\u05d7\\u05d5\\u05dd \\u05d1\\u05d4\\u05dd \\u05e2\\u05d6\\u05e8\\u05ea\\u05d9 \\u05dc\\u05de\\u05d0\\u05d5\\u05ea \\u05de\\u05e9\\u05e4\\u05d7\\u05d5\\u05ea \\u05dc\\u05d7\\u05d5\\u05d5\\u05ea \\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05de\\u05d9\\u05d8\\u05d9\\u05d1\\u05d4 \\u05d5\\u05de\\u05d0\\u05d5\\u05e9\\u05e8\\u05ea.\\n\\n        \\u05d5\\u05e2\\u05db\\u05e9\\u05d9\\u05d5 \\u05d1\\u05e8\\u05e6\\u05d9\\u05e0\\u05d5\\u05ea: \\u05dc\\u05d0\\u05d7\\u05e8 \\u05db\\u05dc \\u05db\\u05da \\u05d4\\u05e8\\u05d1\\u05d4 \\u05e9\\u05e0\\u05d9\\u05dd \\u05d1\\u05ea\\u05d7\\u05d5\\u05dd \\u05d4\\u05d7\\u05d9\\u05e0\\u05d5\\u05da, \\u05d0\\u05dd \\u05d9\\u05e9 \\u05d3\\u05d1\\u05e8 \\u05d0\\u05d7\\u05d3 \\u05e9\\u05d1\\u05e8\\u05d5\\u05e8 \\u05dc\\u05d9 \\u05de\\u05e2\\u05dc \\u05dc\\u05db\\u05dc \\u05e1\\u05e4\\u05e7, \\u05d4\\u05d5\\u05d0 \\u05e9\\u05dc\\u05d4\\u05d9\\u05d5\\u05ea \\u05d4\\u05d5\\u05e8\\u05d4 \\u05d6\\u05d5 \\u05d7\\u05d5\\u05d5\\u05d9\\u05d4 \\u05de\\u05d3\\u05d4\\u05d9\\u05de\\u05d4, \\u05d0\\u05da \\u05d2\\u05dd \\u05de\\u05d1\\u05dc\\u05d1\\u05dc\\u05ea \\u05de\\u05d0\\u05d5\\u05d3. \\u05db\\u05d5\\u05dc\\u05e0\\u05d5 \\u05d7\\u05d5\\u05e9\\u05e9\\u05d9\\u05dd \\u05dc\\u05e2\\u05e9\\u05d5\\u05ea \\u05d8\\u05e2\\u05d5\\u05d9\\u05d5\\u05ea \\u05d5\\u05de\\u05e0\\u05e1\\u05d9\\u05dd \\u05dc\\u05e2\\u05e9\\u05d5\\u05ea \\u05d0\\u05ea \\u05d4\\u05d8\\u05d5\\u05d1 \\u05d1\\u05d9\\u05d5\\u05ea\\u05e8 \\u05e2\\u05d1\\u05d5\\u05e8 \\u05d9\\u05dc\\u05d3\\u05d9\\u05e0\\u05d5.\\n        \\u05d0\\u05e0\\u05d9 \\u05de\\u05d6\\u05de\\u05d9\\u05e0\\u05d4 \\u05d0\\u05ea\\u05db\\u05dd \\u05dc\\u05d4\\u05e6\\u05d8\\u05e8\\u05e3 \\u05d0\\u05dc\\u05d9 \\u05dc\\u05de\\u05e1\\u05e2 \\u05e9\\u05dc \\u05e9\\u05d9\\u05e0\\u05d5\\u05d9, \\u05d2\\u05d9\\u05dc\\u05d5\\u05d9 \\u05e2\\u05e6\\u05de\\u05d9 \\u05d5\\u05d4\\u05ea\\u05e4\\u05ea\\u05d7\\u05d5\\u05ea \\u05d1\\u05d3\\u05e8\\u05da \\u05dc\\u05d4\\u05e4\\u05d5\\u05da \\u05d0\\u05ea \\u05d4\\u05d4\\u05d5\\u05e8\\u05d5\\u05ea \\u05e9\\u05dc\\u05db\\u05dd \\u05dc\\u05d7\\u05d5\\u05d5\\u05d9\\u05d4 \\u05d4\\u05e8\\u05d1\\u05d4 \\u05d9\\u05d5\\u05ea\\u05e8\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 19:55:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b904a88b-10e4-449f-8003-c20c327fefbb', '', '', '2022-04-22 19:55:12', '2022-04-22 19:55:12', '', 0, 'http://localhost/wordpress/2022/04/22/b904a88b-10e4-449f-8003-c20c327fefbb/', 0, 'customize_changeset', '', 0),
(141, 1, '2022-04-22 20:02:46', '0000-00-00 00:00:00', '{\n    \"leosmedia::lm-expertise-callout-display\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 20:02:46\"\n    },\n    \"leosmedia::lm-expertise-callout-tab1-headline\": {\n        \"value\": \"\\u05d4\\u05d5\\u05e8\\u05d9\\u05dd \\u05dc\\u05d2\\u05d9\\u05dc \\u05d4\\u05e8\\u05da\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 20:02:46\"\n    },\n    \"leosmedia::lm-general-callout-primary\": {\n        \"value\": \"#3c33e8\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 20:02:46\"\n    },\n    \"leosmedia::lm-landing-callout-headline\": {\n        \"value\": \"\\u05d1\\u05d5\\u05d0\\u05d5 \\u05dc\\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d5\\u05d4\\u05d3\\u05e8\\u05db\\u05ea \\u05d4\\u05d5\\u05e8\\u05d9\\u05dd!\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 20:02:46\"\n    },\n    \"leosmedia::lm-landing-callout-subhead\": {\n        \"value\": \"\\u05dc\\u05d9\\u05d9\\u05e2\\u05d5\\u05e5 \\u05d5\\u05d4\\u05d3\\u05e8\\u05db\\u05d4 \\u05d1\\u05d5\\u05d0\\u05d5 \\u05dc\\u05d7\\u05dc\\u05d5\\u05e7 \\u05d0\\u05ea\\u05d9 \\u05d0\\u05ea \\u05d4\\u05d9\\u05d3\\u05e2 \\u05d4\\u05e0\\u05d9\\u05e1\\u05d9\\u05d5\\u05df \\u05d5\\u05d4\\u05d4\\u05e6\\u05dc\\u05d7\\u05d5\\u05ea \\u05d4\\u05e8\\u05d1\\u05d5\\u05ea \\u05e9\\u05e6\\u05d1\\u05e8\\u05ea\\u05d9 \\u05e2\\u05dd \\u05de\\u05e9\\u05e4\\u05d7\\u05d5\\u05ea \\u05de\\u05e8\\u05d5\\u05e6\\u05d5\\u05ea \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 20:02:46\"\n    },\n    \"leosmedia::lm-landing-callout-phone-display\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 20:02:46\"\n    },\n    \"leosmedia::lm-landing-callout-phone-label-color\": {\n        \"value\": \"#ff0000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 20:02:46\"\n    },\n    \"leosmedia::lm-landing-callout-phone-number\": {\n        \"value\": \"050-0000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 20:02:46\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'decf1554-cdcf-4e9d-b005-87feb05770a2', '', '', '2022-04-22 20:02:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=141', 0, 'customize_changeset', '', 0),
(142, 1, '2022-04-22 20:05:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-22 20:05:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&p=142', 0, 'recommendations', '', 0),
(143, 1, '2022-04-22 20:10:00', '2022-04-22 20:10:00', '<!-- wp:paragraph -->\n<p>ורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.</p>\n<!-- /wp:paragraph -->', 'אלה', '', 'publish', 'closed', 'closed', '', '%d7%90%d7%9c%d7%94', '', '', '2022-04-22 20:10:00', '2022-04-22 20:10:00', '', 0, 'http://localhost/wordpress/?post_type=recommendations&#038;p=143', 0, 'recommendations', '', 0),
(144, 1, '2022-04-22 20:10:09', '2022-04-22 20:10:09', '<!-- wp:paragraph -->\n<p>ורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. קונדימנטום קורוס </p>\n<!-- /wp:paragraph -->', 'ניקול', '', 'publish', 'closed', 'closed', '', '%d7%a0%d7%99%d7%a7%d7%95%d7%9c', '', '', '2022-04-22 20:10:09', '2022-04-22 20:10:09', '', 0, 'http://localhost/wordpress/?post_type=recommendations&#038;p=144', 0, 'recommendations', '', 0),
(145, 1, '2022-04-22 20:10:28', '2022-04-22 20:10:28', '<!-- wp:paragraph -->\n<p>ולהע צופעט למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי להאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורך. קולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף סחטיר בלובק. </p>\n<!-- /wp:paragraph -->', 'אסף', '', 'publish', 'closed', 'closed', '', '%d7%90%d7%a1%d7%a3', '', '', '2022-04-22 20:10:28', '2022-04-22 20:10:28', '', 0, 'http://localhost/wordpress/?post_type=recommendations&#038;p=145', 0, 'recommendations', '', 0),
(146, 1, '2022-04-22 20:11:15', '2022-04-22 20:11:15', '<!-- wp:paragraph -->\n<p>לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית נולום ארווס סאפיאן - פוסיליס קוויס, אקווזמן קוואזי במר מודוף</p>\n<!-- /wp:paragraph -->', 'גבריאל', '', 'publish', 'closed', 'closed', '', '%d7%92%d7%91%d7%a8%d7%99%d7%90%d7%9c', '', '', '2022-04-22 20:11:15', '2022-04-22 20:11:15', '', 0, 'http://localhost/wordpress/?post_type=recommendations&#038;p=146', 0, 'recommendations', '', 0),
(147, 1, '2022-04-22 20:43:28', '0000-00-00 00:00:00', '{\n    \"leosmedia::lm-comments-callout-amount\": {\n        \"value\": \"5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 20:43:28\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '99fb23ca-2fa6-4e8e-8bed-9810dbc988cb', '', '', '2022-04-22 20:43:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=147', 0, 'customize_changeset', '', 0),
(148, 1, '2022-04-22 20:54:18', '0000-00-00 00:00:00', '{\n    \"leosmedia::lm-comments-callout-headline\": {\n        \"value\": \"\\u05d4\\u05e6\\u05d8\\u05e8\\u05e4\\u05d5 \\u05dc\\u05de\\u05d0\\u05d5\\u05ea \\u05dc\\u05e7\\u05d5\\u05d7\\u05d5\\u05ea \\u05de\\u05e8\\u05d5\\u05e6\\u05d9\\u05dd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 20:54:18\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'f5edf60f-0136-4fe2-bfcc-4bd10745f0b3', '', '', '2022-04-22 20:54:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=148', 0, 'customize_changeset', '', 0),
(149, 1, '2022-04-22 20:58:48', '0000-00-00 00:00:00', '{\n    \"leosmedia::lm-comments-callout-amount\": {\n        \"value\": \"5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-22 20:58:48\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'f16cb984-7ada-4ac0-8426-eee6b5f03fe9', '', '', '2022-04-22 20:58:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=149', 0, 'customize_changeset', '', 0),
(150, 1, '2022-04-23 07:57:48', '2022-04-23 07:57:48', '{\n    \"leosmedia::lm-comments-callout-amount\": {\n        \"value\": \"10\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-23 07:57:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '54603499-a625-4c7a-94dd-c0d49db1ab75', '', '', '2022-04-23 07:57:48', '2022-04-23 07:57:48', '', 0, 'http://localhost/wordpress/?p=150', 0, 'customize_changeset', '', 0),
(151, 1, '2022-04-23 07:51:10', '2022-04-23 07:51:10', '{\n    \"leosmedia::lm-comments-callout-display\": {\n        \"value\": \"No\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-23 07:51:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '22069519-7b51-4ddf-b3d5-73e8caeb9af3', '', '', '2022-04-23 07:51:10', '2022-04-23 07:51:10', '', 0, 'http://localhost/wordpress/2022/04/23/22069519-7b51-4ddf-b3d5-73e8caeb9af3/', 0, 'customize_changeset', '', 0),
(152, 1, '2022-04-23 07:51:12', '2022-04-23 07:51:12', '{\n    \"leosmedia::lm-comments-callout-display\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-23 07:51:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '68f8cae6-e498-490b-8bc3-2671a89d7b4a', '', '', '2022-04-23 07:51:12', '2022-04-23 07:51:12', '', 0, 'http://localhost/wordpress/2022/04/23/68f8cae6-e498-490b-8bc3-2671a89d7b4a/', 0, 'customize_changeset', '', 0),
(153, 1, '2022-04-23 07:51:14', '2022-04-23 07:51:14', '{\n    \"leosmedia::lm-comments-callout-headline\": {\n        \"value\": \"\\u05d4\\u05e6\\u05d8\\u05e8\\u05e4\\u05d5 \\u05dc\\u05de\\u05d0\\u05d5\\u05ea \\u05dc\\u05e7\\u05d5\\u05d7\\u05d5\\u05ea \\u05de\\u05e8\\u05d5\\u05e6\\u05d9\\u05dd \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-23 07:51:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a2d6f0fc-c507-4fb6-93cf-7f07ddb9296a', '', '', '2022-04-23 07:51:14', '2022-04-23 07:51:14', '', 0, 'http://localhost/wordpress/2022/04/23/a2d6f0fc-c507-4fb6-93cf-7f07ddb9296a/', 0, 'customize_changeset', '', 0),
(154, 1, '2022-04-23 07:51:16', '2022-04-23 07:51:16', '{\n    \"leosmedia::lm-comments-callout-headline\": {\n        \"value\": \"\\u05d4\\u05e6\\u05d8\\u05e8\\u05e4\\u05d5 \\u05dc\\u05de\\u05d0\\u05d5\\u05ea \\u05dc\\u05e7\\u05d5\\u05d7\\u05d5\\u05ea \\u05de\\u05e8\\u05d5\\u05e6\\u05d9\\u05dd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-23 07:51:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b67428e9-14cc-49d9-9ef8-43998e7c244d', '', '', '2022-04-23 07:51:16', '2022-04-23 07:51:16', '', 0, 'http://localhost/wordpress/2022/04/23/b67428e9-14cc-49d9-9ef8-43998e7c244d/', 0, 'customize_changeset', '', 0),
(155, 1, '2022-04-23 07:51:30', '2022-04-23 07:51:30', '{\n    \"leosmedia::lm-comments-callout-amount\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-23 07:51:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2d11484d-7424-4331-a5e3-883220316f2d', '', '', '2022-04-23 07:51:30', '2022-04-23 07:51:30', '', 0, 'http://localhost/wordpress/2022/04/23/2d11484d-7424-4331-a5e3-883220316f2d/', 0, 'customize_changeset', '', 0),
(156, 1, '2022-04-23 07:51:33', '2022-04-23 07:51:33', '{\n    \"leosmedia::lm-comments-callout-amount\": {\n        \"value\": \"4\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-23 07:51:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9406eb22-5f59-400f-9860-56f2c411faea', '', '', '2022-04-23 07:51:33', '2022-04-23 07:51:33', '', 0, 'http://localhost/wordpress/2022/04/23/9406eb22-5f59-400f-9860-56f2c411faea/', 0, 'customize_changeset', '', 0),
(157, 1, '2022-04-23 08:49:12', '2022-04-23 08:49:12', '', 'bannerbg', '', 'inherit', 'open', 'closed', '', 'bannerbg', '', '', '2022-04-23 08:49:12', '2022-04-23 08:49:12', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/bannerbg.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2022-04-23 08:49:41', '2022-04-23 08:49:41', '{\n    \"leosmedia::lm-landing-callout-bgimg\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2022/04/bannerbg.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-23 08:49:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bf6bf543-f065-4f4c-aa6c-7db484b4bbc7', '', '', '2022-04-23 08:49:41', '2022-04-23 08:49:41', '', 0, 'http://localhost/wordpress/?p=158', 0, 'customize_changeset', '', 0),
(159, 1, '2022-04-23 08:50:00', '2022-04-23 08:50:00', '{\n    \"leosmedia::lm-landing-callout-phone-display\": {\n        \"value\": \"No\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-23 08:50:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3d398dae-83d1-431b-9851-cb5e81b05308', '', '', '2022-04-23 08:50:00', '2022-04-23 08:50:00', '', 0, 'http://localhost/wordpress/2022/04/23/3d398dae-83d1-431b-9851-cb5e81b05308/', 0, 'customize_changeset', '', 0),
(160, 1, '2022-04-23 08:50:02', '2022-04-23 08:50:02', '{\n    \"leosmedia::lm-landing-callout-phone-display\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-23 08:50:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ad1845e2-6c1e-487f-ae1c-e04c2c671a70', '', '', '2022-04-23 08:50:02', '2022-04-23 08:50:02', '', 0, 'http://localhost/wordpress/2022/04/23/ad1845e2-6c1e-487f-ae1c-e04c2c671a70/', 0, 'customize_changeset', '', 0),
(161, 1, '2022-04-23 09:01:49', '2022-04-23 09:01:49', '{\n    \"leosmedia::lm-landing-callout-phone-label\": {\n        \"value\": \"\\u05d7\\u05d9\\u05d9\\u05d2\\u05d5:\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-23 09:01:49\"\n    },\n    \"leosmedia::lm-landing-callout-phone-number\": {\n        \"value\": \"050-0000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-23 09:01:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '72f82c03-db11-4408-8798-7a1b6733254f', '', '', '2022-04-23 09:01:49', '2022-04-23 09:01:49', '', 0, 'http://localhost/wordpress/2022/04/23/72f82c03-db11-4408-8798-7a1b6733254f/', 0, 'customize_changeset', '', 0),
(162, 1, '2022-04-25 17:42:58', '0000-00-00 00:00:00', '{\n    \"leosmedia::lm-landing-callout-display-form\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 17:42:58\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'ce79dc66-60c8-409e-9c82-f707c7738306', '', '', '2022-04-25 17:42:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=162', 0, 'customize_changeset', '', 0),
(163, 1, '2022-04-25 17:45:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-25 17:45:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&p=163', 0, 'acf-field-group', '', 0),
(164, 1, '2022-04-25 18:08:56', '2022-04-25 18:08:56', '{\n    \"leosmedia::lm-landing-callout-display-form\": {\n        \"value\": \"No\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 18:08:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c3210bd0-4a4e-4903-82d6-18c4e771389b', '', '', '2022-04-25 18:08:56', '2022-04-25 18:08:56', '', 0, 'http://localhost/wordpress/2022/04/25/c3210bd0-4a4e-4903-82d6-18c4e771389b/', 0, 'customize_changeset', '', 0),
(165, 1, '2022-04-25 18:08:58', '2022-04-25 18:08:58', '{\n    \"leosmedia::lm-landing-callout-display-form\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 18:08:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6deec68f-a1d4-44f5-9cfb-1a10b9499f08', '', '', '2022-04-25 18:08:58', '2022-04-25 18:08:58', '', 0, 'http://localhost/wordpress/2022/04/25/6deec68f-a1d4-44f5-9cfb-1a10b9499f08/', 0, 'customize_changeset', '', 0),
(166, 1, '2022-04-25 18:16:42', '2022-04-25 18:16:42', '{\n    \"leosmedia::lm-aboutus-callout-form-select\": {\n        \"value\": \"\\u05e4\\u05e2\\u05d5\\u05d8\\u05d5\\u05ea, \\u05d9\\u05dc\\u05d3\\u05d9\\u05dd, \\u05de\\u05ea\\u05d1\\u05d2\\u05e8\\u05d9\\u05dd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 18:16:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a61da134-bf4d-4a6a-a435-921b4c9b5298', '', '', '2022-04-25 18:16:42', '2022-04-25 18:16:42', '', 0, 'http://localhost/wordpress/2022/04/25/a61da134-bf4d-4a6a-a435-921b4c9b5298/', 0, 'customize_changeset', '', 0),
(167, 1, '2022-04-25 19:00:05', '2022-04-25 19:00:05', '{\n    \"leosmedia::lm-general-callout-light\": {\n        \"value\": \"#888889\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 19:00:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7e6dfba5-8882-4f97-a168-386c2050bf09', '', '', '2022-04-25 19:00:05', '2022-04-25 19:00:05', '', 0, 'http://localhost/wordpress/2022/04/25/7e6dfba5-8882-4f97-a168-386c2050bf09/', 0, 'customize_changeset', '', 0),
(168, 1, '2022-04-25 19:00:08', '2022-04-25 19:00:08', '{\n    \"leosmedia::lm-general-callout-light\": {\n        \"value\": \"#f1f1f3\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 19:00:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'be9b0236-f296-4bae-82b1-fbe5ce70c2a6', '', '', '2022-04-25 19:00:08', '2022-04-25 19:00:08', '', 0, 'http://localhost/wordpress/2022/04/25/be9b0236-f296-4bae-82b1-fbe5ce70c2a6/', 0, 'customize_changeset', '', 0),
(169, 1, '2022-04-25 19:28:48', '0000-00-00 00:00:00', '{\n    \"leosmedia::lm-floating-callout-display-s\": {\n        \"value\": \"No\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 19:28:48\"\n    },\n    \"leosmedia::lm-floating-callout-display-m\": {\n        \"value\": \"No\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 19:28:48\"\n    },\n    \"leosmedia::lm-floating-callout-display-gt\": {\n        \"value\": \"No\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 19:28:48\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'a3426dc3-6ad8-485f-bafa-176142000cb4', '', '', '2022-04-25 19:28:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=169', 0, 'customize_changeset', '', 0),
(170, 1, '2022-04-25 19:29:53', '2022-04-25 19:29:53', '{\n    \"leosmedia::lm-floating-callout-display-sq\": {\n        \"value\": \"No\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 19:29:53\"\n    },\n    \"leosmedia::lm-floating-callout-display-s\": {\n        \"value\": \"No\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 19:29:53\"\n    },\n    \"leosmedia::lm-floating-callout-display-m\": {\n        \"value\": \"No\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 19:29:53\"\n    },\n    \"leosmedia::lm-floating-callout-display-gt\": {\n        \"value\": \"No\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 19:29:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1f5a8173-83e8-4985-8cf9-cd960aa93018', '', '', '2022-04-25 19:29:53', '2022-04-25 19:29:53', '', 0, 'http://localhost/wordpress/2022/04/25/1f5a8173-83e8-4985-8cf9-cd960aa93018/', 0, 'customize_changeset', '', 0),
(171, 1, '2022-04-25 19:29:59', '2022-04-25 19:29:59', '{\n    \"leosmedia::lm-floating-callout-display-sq\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 19:29:59\"\n    },\n    \"leosmedia::lm-floating-callout-display-s\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 19:29:59\"\n    },\n    \"leosmedia::lm-floating-callout-display-m\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 19:29:59\"\n    },\n    \"leosmedia::lm-floating-callout-display-gt\": {\n        \"value\": \"Yes\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-25 19:29:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fab76201-f5f2-4228-96a8-20434792c34c', '', '', '2022-04-25 19:29:59', '2022-04-25 19:29:59', '', 0, 'http://localhost/wordpress/2022/04/25/fab76201-f5f2-4228-96a8-20434792c34c/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentytwo', 'twentytwentytwo', 0),
(3, 'leosmedia', 'leosmedia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(6, 1, 0),
(10, 3, 0),
(30, 1, 0),
(32, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"731145c5d0b969e4b7765bdcbcfd4718dedc77fe74d3339786492378f962b99f\";a:4:{s:10:\"expiration\";i:1651416791;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:116:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\";s:5:\"login\";i:1650207191;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&ampeditor=tinymce'),
(19, 1, 'wp_user-settings-time', '1650658050');

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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$B6WB/0jZYoSRw/zqv7vauB/0WxWhoq.', 'root', 'max.funoff@gmail.com', 'http://localhost/wordpress', '2022-04-17 14:52:59', '', 0, 'root');

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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1899;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
