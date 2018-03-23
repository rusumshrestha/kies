-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2018 at 08:09 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nirajdai_kies`
--

-- --------------------------------------------------------

--
-- Table structure for table `ndpk_commentmeta`
--

CREATE TABLE IF NOT EXISTS `ndpk_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ndpk_comments`
--

CREATE TABLE IF NOT EXISTS `ndpk_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ndpk_comments`
--

INSERT INTO `ndpk_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-20 17:15:01', '2018-03-20 17:15:01', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ndpk_links`
--

CREATE TABLE IF NOT EXISTS `ndpk_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ndpk_options`
--

CREATE TABLE IF NOT EXISTS `ndpk_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ndpk_options`
--

INSERT INTO `ndpk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/niraj-dai/kies', 'yes'),
(2, 'home', 'http://localhost/niraj-dai/kies', 'yes'),
(3, 'blogname', 'KIES DE BESTE BAND', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'prajan.kamacharya@gmail.com', 'yes'),
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
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=66&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:38:"post-duplicator/m4c-postduplicator.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'kies', 'yes'),
(41, 'stylesheet', 'kies', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '66', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'ndpk_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:10:{s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:19:"wp_inactive_widgets";a:0:{}s:15:"footer-widget-1";a:1:{i:0;s:10:"nav_menu-2";}s:15:"footer-widget-2";a:1:{i:0;s:10:"nav_menu-3";}s:15:"footer-widget-3";a:1:{i:0;s:10:"nav_menu-4";}s:15:"footer-widget-4";a:1:{i:0;s:10:"nav_menu-5";}s:15:"footer-widget-5";a:1:{i:0;s:10:"nav_menu-8";}s:15:"footer-widget-6";a:1:{i:0;s:10:"nav_menu-7";}s:15:"footer-widget-7";a:1:{i:0;s:10:"nav_menu-6";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:8:{i:2;a:2:{s:5:"title";s:6:"NIEUWS";s:8:"nav_menu";i:4;}i:3;a:2:{s:5:"title";s:11:"BANDENKEUZE";s:8:"nav_menu";i:5;}i:4;a:2:{s:5:"title";s:11:"BANDENKEUZE";s:8:"nav_menu";i:6;}i:5;a:2:{s:5:"title";s:14:"BANDENSPANNING";s:8:"nav_menu";i:7;}i:6;a:2:{s:5:"title";s:7:"CONTACT";s:8:"nav_menu";i:10;}i:7;a:2:{s:5:"title";s:9:"CAMPAGNES";s:8:"nav_menu";i:9;}i:8;a:2:{s:5:"title";s:9:"DOWNLOADS";s:8:"nav_menu";i:8;}s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1521825304;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1521825305;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1521825564;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1521825996;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1521643639;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1521788249;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(118, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1521788262;s:7:"checked";a:1:{s:4:"kies";s:5:"1.0.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(119, '_site_transient_timeout_browser_49da57eac7f840522fef2b86e883cffa', '1522171168', 'no'),
(120, '_site_transient_browser_49da57eac7f840522fef2b86e883cffa', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"64.0.3282.186";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(122, 'can_compress_scripts', '1', 'no'),
(139, 'current_theme', 'kies', 'yes'),
(140, 'theme_mods_kies', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:7:"nav-top";i:2;s:8:"nav-main";i:3;s:10:"nav-footer";i:11;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(142, '_transient_timeout_plugin_slugs', '1521830907', 'no'),
(143, '_transient_plugin_slugs', 'a:4:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:9:"hello.php";i:3;s:38:"post-duplicator/m4c-postduplicator.php";}', 'no'),
(144, 'recently_activated', 'a:1:{s:25:"duplicator/duplicator.php";i:1521744497;}', 'yes'),
(145, 'category_children', 'a:0:{}', 'yes'),
(151, 'acf_version', '5.6.6', 'yes'),
(156, 'options__site_logo', '7', 'no'),
(157, '_options__site_logo', 'field_5ab295f2a988f', 'no'),
(158, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(159, 'options_add_partners_logo_1_0__site_upload_logo_1', '7', 'no'),
(160, '_options_add_partners_logo_1_0__site_upload_logo_1', 'field_5ab2a34a29cb2', 'no'),
(161, 'options_add_partners_logo_1_1__site_upload_logo_1', '7', 'no'),
(162, '_options_add_partners_logo_1_1__site_upload_logo_1', 'field_5ab2a34a29cb2', 'no'),
(163, 'options_add_partners_logo_1', '2', 'no'),
(164, '_options_add_partners_logo_1', 'field_5ab2a32829cb1', 'no'),
(165, 'options_add_partners_logo_2_0_upload_image', '7', 'no'),
(166, '_options_add_partners_logo_2_0_upload_image', 'field_5ab2a37f29cb4', 'no'),
(167, 'options_add_partners_logo_2_1_upload_image', '7', 'no'),
(168, '_options_add_partners_logo_2_1_upload_image', 'field_5ab2a37f29cb4', 'no'),
(169, 'options_add_partners_logo_2', '2', 'no'),
(170, '_options_add_partners_logo_2', 'field_5ab2a36429cb3', 'no'),
(171, 'options_social_link_0_social_media', 'ico-fb', 'no'),
(172, '_options_social_link_0_social_media', 'field_5ab2a3c529cb6', 'no'),
(173, 'options_social_link_0_social_url', '#', 'no'),
(174, '_options_social_link_0_social_url', 'field_5ab2a3fe29cb7', 'no'),
(175, 'options_social_link_1_social_media', 'ico-twitter', 'no'),
(176, '_options_social_link_1_social_media', 'field_5ab2a3c529cb6', 'no'),
(177, 'options_social_link_1_social_url', '#', 'no'),
(178, '_options_social_link_1_social_url', 'field_5ab2a3fe29cb7', 'no'),
(179, 'options_social_link_2_social_media', 'ico-vimeo', 'no'),
(180, '_options_social_link_2_social_media', 'field_5ab2a3c529cb6', 'no'),
(181, 'options_social_link_2_social_url', '#', 'no'),
(182, '_options_social_link_2_social_url', 'field_5ab2a3fe29cb7', 'no'),
(183, 'options_social_link', '3', 'no'),
(184, '_options_social_link', 'field_5ab2a39629cb5', 'no'),
(185, 'options_copyright_text', '© 2018 <strong>KIES DE BESTE BAND</strong>. PORTAL VOOR PROFESSIONALS', 'no'),
(186, '_options_copyright_text', 'field_5ab2a42129cb8', 'no'),
(189, '_transient_timeout_acf_pro_get_remote_info', '1521774451', 'no'),
(190, '_transient_acf_pro_get_remote_info', 'a:16:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:5:"5.6.9";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.9.9";s:4:"tags";a:74:{i:0;s:5:"5.6.8";i:1;s:5:"5.6.7";i:2;s:5:"5.6.6";i:3;s:5:"5.6.5";i:4;s:5:"5.6.4";i:5;s:5:"5.6.3";i:6;s:5:"5.6.2";i:7;s:5:"5.6.1";i:8;s:11:"5.6.0-beta2";i:9;s:11:"5.6.0-beta1";i:10;s:9:"5.6.0-RC2";i:11;s:9:"5.6.0-RC1";i:12;s:5:"5.6.0";i:13;s:5:"5.5.9";i:14;s:5:"5.5.7";i:15;s:5:"5.5.5";i:16;s:5:"5.5.3";i:17;s:5:"5.5.2";i:18;s:6:"5.5.14";i:19;s:6:"5.5.13";i:20;s:6:"5.5.12";i:21;s:6:"5.5.11";i:22;s:6:"5.5.10";i:23;s:5:"5.5.1";i:24;s:5:"5.5.0";i:25;s:5:"5.4.8";i:26;s:5:"5.4.7";i:27;s:5:"5.4.6";i:28;s:5:"5.4.5";i:29;s:5:"5.4.4";i:30;s:5:"5.4.3";i:31;s:5:"5.4.2";i:32;s:5:"5.4.1";i:33;s:5:"5.4.0";i:34;s:5:"5.3.8";i:35;s:5:"5.3.7";i:36;s:5:"5.3.6";i:37;s:5:"5.3.5";i:38;s:5:"5.3.4";i:39;s:5:"5.3.3";i:40;s:5:"5.3.2";i:41;s:6:"5.3.10";i:42;s:5:"5.3.1";i:43;s:5:"5.3.0";i:44;s:5:"5.2.9";i:45;s:5:"5.2.8";i:46;s:5:"5.2.7";i:47;s:5:"5.2.6";i:48;s:5:"5.2.5";i:49;s:5:"5.2.4";i:50;s:5:"5.2.3";i:51;s:5:"5.2.2";i:52;s:5:"5.2.1";i:53;s:5:"5.2.0";i:54;s:5:"5.1.9";i:55;s:5:"5.1.8";i:56;s:5:"5.1.7";i:57;s:5:"5.1.6";i:58;s:5:"5.1.5";i:59;s:5:"5.1.4";i:60;s:5:"5.1.3";i:61;s:5:"5.1.2";i:62;s:5:"5.1.1";i:63;s:5:"5.1.0";i:64;s:5:"5.0.9";i:65;s:5:"5.0.8";i:66;s:5:"5.0.7";i:67;s:5:"5.0.6";i:68;s:5:"5.0.5";i:69;s:5:"5.0.4";i:70;s:5:"5.0.3";i:71;s:5:"5.0.2";i:72;s:5:"5.0.1";i:73;s:5:"5.0.0";}s:6:"tagged";s:61:"acf, advanced, custom, field, fields, form, repeater, content";s:11:"description";s:1478:"<p>Use the Advanced Custom Fields plugin to take full control of your WordPress edit screens & custom field data.</p>\n<b>Add fields on demand.</b> Our field builder allows you to quickly and easily add fields to WP edit screens with only the click of a few buttons!\n<b>Add them anywhere.</b> Fields can be added all over WP including posts, users, taxonomy terms, media, comments and even custom options pages!\n<b>Show them everywhere.</b> Load and display your custom field values in any theme template file with our hassle free developer friendly functions!\n<h4> Features </h4>\n<ul><li>Simple & Intuitive</li><li>Powerful Functions</li><li>Over 30 Field Types</li><li>Extensive Documentation</li><li>Millions of Users</li></ul>\n<h4> Links </h4>\n<ul><li>[Website](<a href="https://www.advancedcustomfields.com)">www.advancedcustomfields.com)</a></li><li>[Documentation](<a href="https://www.advancedcustomfields.com/resources/)">www.advancedcustomfields.com/resources/)</a></li><li>[Support](<a href="https://support.advancedcustomfields.com)">support.advancedcustomfields.com)</a></li><li>[ACF PRO](<a href="https://www.advancedcustomfields.com/pro/)">www.advancedcustomfields.com/pro/)</a></li></ul>\n<h4> PRO </h4>\n<p>The Advanced Custom Fields plugin is also available in a professional version which includes more fields, more functionality, and more flexibility! [Learn more](<a href="https://www.advancedcustomfields.com/pro/)">www.advancedcustomfields.com/pro/)</a></p>\n";s:12:"installation";s:515:"<p>From your WordPress dashboard<ol><li><b>Visit</b> Plugins > Add New</li><li><b>Search</b> for "Advanced Custom Fields"</li><li><b>Activate</b> Advanced Custom Fields from your Plugins page</li><li><b>Click</b> on the new menu item "Custom Fields" and create your first Custom Field Group!</li><li><b>Read</b> the documentation to [get started](<a href="https://www.advancedcustomfields.com/resources/getting-started-with-acf/)">www.advancedcustomfields.com/resources/getting-started-with-acf/)</a></li></ol></p>\n";s:9:"changelog";s:5601:"<h4> 5.6.9 </h4>\n<ul><li>User field: Added new <code>Return Format</code> setting (Array, Object, ID)</li><li>Core: Added basic compatibility with Gutenberg - values now save</li><li>Core: Fixed bug affecting the loading of fields on new Menu Items</li><li>Core: Removed private (<code>show_ui</code> => false) post types from the <code>Post Type</code> location rule choices</li><li>Core: Minor fixes and improvements</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li></ul>\n<h4> 5.6.8 </h4>\n<ul><li>API: Fixed bug causing have_rows() to fail with PHP 7.2</li><li>Core: Fixed bug causing "Add new term" form to hide after submit</li><li>Core: Minor fixes and improvements</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li><li>Language: Updated Arabic translation - thanks to Karim Ramadan</li><li>Language: Updated Spanish translation - thanks to Luis Rull Muñoz</li><li>Language: Updated Persian translation - thanks to Majix</li></ul>\n<h4> 5.6.7 </h4>\n<ul><li>Fixed an assortment of bugs found in 5.6.6</li></ul>\n<h4> 5.6.6 </h4>\n<ul><li>Accordion field: Added new field type</li><li>Tab field: Added logic to remember active tabs</li><li>WYSIWYG field: Fixed JS error in quicktags initialization</li><li>Core: Fixed issue preventing conditional logic for menu item fields</li><li>Core: Fixed issue preventing JS initialization for newly added menu items.</li><li>Core: Allow whitespace in input value (previously trimmed)</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Updated Brazilian Portuguese translation - thanks to Rafael Ribeiro</li><li>Language: Updated Dutch translation - thanks to Derk Oosterveld</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li><li>Language: Updated Persian translation - thanks to Kamel Kimiaei</li><li>Language: Updated Swiss German translation - thanks to Raphael Hüni</li><li>Language: Updated Arabic translation - thanks to Karim Ramadan</li></ul>\n<h4> 5.6.5 </h4>\n<ul><li>API: Added new <code>kses</code> setting to the `acf_form()` function</li><li>Core: Added new <code>Admin Tools</code> framework (includes design refresh)</li><li>Core: Minor fixes and improvements</li><li>Language: Update Ukrainian translation - thanks to Jurko Chervony</li><li>Language: Update Russian translation - thanks to Andriy Toniyevych</li><li>Language: Update Hebrew translation - thanks to Itamar Megged</li></ul>\n<h4> 5.6.4 </h4>\n<ul><li>Google Map field: Fixed bug causing invalid url to JavaScript library</li><li>WYSIWYG field: Fixed minor z-index and drag/drop bugs</li><li>Group field: Fixed bug causing incorrect export settings</li><li>Core: Fixed bug in <code>Post Taxonomy</code> location rule ignoring selected terms during AJAX callback</li><li>Core: Fixed bug preventing a draft to validate with required fields</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Update Turkish translation - thanks to Emre Erkan</li><li>Language: Updated Chinese translation - thanks to Wang Hao</li><li>Language: Update Hebrew translation - thanks to Itamar Megged</li></ul>\n<h4> 5.6.3 </h4>\n<ul><li>Button Group field: Added new field type</li><li>Range field: Added missing <code>step</code> attribute to number input</li><li>Range field: Added width to number input based on max setting</li><li>Basic fields: Added missing <code>required</code> attribute to inputs</li><li>Basic fields: Removed empty attributes from inputs</li><li>API: Fixed `get_fields()` bug ignoring fields starting with an underscore</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li><li>Language: Updated Finnish translation - thanks to Sauli Rajala</li><li>Language: Updated German translation - thanks to Ralf Koller</li></ul>\n<h4> 5.6.2 </h4>\n<ul><li>Range field: Added new field type</li><li>Clone field: Fixed bug causing value update issues for <code>seamless</code> + widgets / nave menu items</li><li>Location: Added parent theme<code>s post templates to </code>post template'' location rule</li><li>Location: Fixed bug causing <code>nav menu</code> location rule to fail during AJAX (add new item)</li><li>Core: Fixed PHP errors in customizer when editing non ACF panels</li><li>Core: Fixed bug casing backslash character to break fields / field groups</li><li>Core: Many minor bug fixes</li><li>Language: Updated Romanian translation - thanks to Ionut Staicu</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Update Turkish translation - thanks to Emre Erkan</li><li>Language: Updated Russian translation - Thanks to Алекс Яровиков</li><li>Language: Updated French translation - Thanks to Julie Arrigoni</li></ul>\n<h4> 5.6.1 </h4>\n<ul><li>Fixed an assortment of bugs found in 5.6.0</li></ul>\n<h4> 5.6.0 </h4>\n<ul><li>Link field: Added new field type</li><li>Group field: Added new field type</li><li>API: Improved `have_rows()` function to work with clone and group field values</li><li>Core: Added new location for Menus</li><li>Core: Added new location for Menu Items</li><li>Core: Added types to Attachment location rule - thanks to Jan Thomas</li><li>Core: Added "Confirm Remove" tooltips</li><li>Core: Updated Select2 JS library to v4</li><li>Core: Minor fixes and improvements</li></ul>\n";s:14:"upgrade_notice";s:551:"<h4> 5.2.7 </h4>\n<ul><li>Field class names have changed slightly in v5.2.7 from `field_type-{$type}` to `acf-field-{$type}`. This change was introduced to better optimise JS performance. The previous class names can be added back in with the following filter: <a href="https://www.advancedcustomfields.com/resources/acfcompatibility/">www.advancedcustomfields.com/resources/acfcompatibility/</a></li></ul>\n<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}}', 'no'),
(203, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1521755063', 'no'),
(204, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4440;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2667;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2545;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2410;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1861;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1640;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1636;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1449;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1384;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1381;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1380;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1305;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1280;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1188;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1090;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1055;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1015;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:995;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:871;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:867;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:823;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:797;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:794;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:699;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:689;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:683;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:674;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:674;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:655;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:654;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:639;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:636;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:632;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:613;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:610;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:600;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:600;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:588;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:586;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:585;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:557;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:545;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:535;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:532;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:520;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:516;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:511;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:504;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:491;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:487;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:486;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:484;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:479;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:471;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:466;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:463;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:455;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:451;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:436;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:428;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:423;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:420;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:418;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:416;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:412;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:411;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:402;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:399;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:390;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:384;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:380;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:361;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:356;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:353;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:350;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:343;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:343;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:340;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:338;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:336;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:335;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:334;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:333;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:329;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:328;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:328;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:319;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:310;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:305;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:302;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:302;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:300;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:295;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:292;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:292;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:291;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:289;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:288;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:286;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:285;}}', 'no'),
(208, 'mtphr_post_duplicator_settings', '', 'yes'),
(220, '_site_transient_timeout_theme_roots', '1521790060', 'no'),
(221, '_site_transient_theme_roots', 'a:1:{s:4:"kies";s:7:"/themes";}', 'no'),
(222, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1521788265;s:7:"checked";a:5:{s:34:"advanced-custom-fields-pro/acf.php";s:5:"5.6.6";s:19:"akismet/akismet.php";s:5:"4.0.3";s:9:"hello.php";s:3:"1.6";s:38:"post-duplicator/m4c-postduplicator.php";s:4:"2.20";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:5:"2.2.6";}s:8:"response";a:2:{s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":11:{s:2:"id";s:35:"w.org/plugins/regenerate-thumbnails";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"3.0.2";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";s:5:"icons";a:2:{s:2:"1x";s:74:"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390";s:7:"default";s:74:"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390";}s:7:"banners";a:3:{s:2:"2x";s:77:"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390";s:2:"1x";s:76:"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390";s:7:"default";s:77:"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.2";s:13:"compatibility";O:8:"stdClass":0:{}}s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":8:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.6.9";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:6:"tested";s:5:"4.9.9";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:1:{s:7:"default";s:66:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg";}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:38:"post-duplicator/m4c-postduplicator.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/post-duplicator";s:4:"slug";s:15:"post-duplicator";s:6:"plugin";s:38:"post-duplicator/m4c-postduplicator.php";s:11:"new_version";s:4:"2.20";s:3:"url";s:46:"https://wordpress.org/plugins/post-duplicator/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/post-duplicator.zip";s:5:"icons";a:2:{s:2:"1x";s:68:"https://ps.w.org/post-duplicator/assets/icon-128x128.png?rev=1587588";s:7:"default";s:68:"https://ps.w.org/post-duplicator/assets/icon-128x128.png?rev=1587588";}s:7:"banners";a:3:{s:2:"2x";s:71:"https://ps.w.org/post-duplicator/assets/banner-1544x500.png?rev=1587588";s:2:"1x";s:70:"https://ps.w.org/post-duplicator/assets/banner-772x250.png?rev=1587588";s:7:"default";s:71:"https://ps.w.org/post-duplicator/assets/banner-1544x500.png?rev=1587588";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `ndpk_postmeta`
--

CREATE TABLE IF NOT EXISTS `ndpk_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=806 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ndpk_postmeta`
--

INSERT INTO `ndpk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1521733276:1'),
(4, 7, '_wp_attached_file', '2018/03/logo.svg'),
(5, 8, '_menu_item_type', 'custom'),
(6, 8, '_menu_item_menu_item_parent', '0'),
(7, 8, '_menu_item_object_id', '8'),
(8, 8, '_menu_item_object', 'custom'),
(9, 8, '_menu_item_target', ''),
(10, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(11, 8, '_menu_item_xfn', ''),
(12, 8, '_menu_item_url', '#'),
(14, 9, '_menu_item_type', 'custom'),
(15, 9, '_menu_item_menu_item_parent', '0'),
(16, 9, '_menu_item_object_id', '9'),
(17, 9, '_menu_item_object', 'custom'),
(18, 9, '_menu_item_target', ''),
(19, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(20, 9, '_menu_item_xfn', ''),
(21, 9, '_menu_item_url', '#'),
(23, 10, '_menu_item_type', 'custom'),
(24, 10, '_menu_item_menu_item_parent', '0'),
(25, 10, '_menu_item_object_id', '10'),
(26, 10, '_menu_item_object', 'custom'),
(27, 10, '_menu_item_target', ''),
(28, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(29, 10, '_menu_item_xfn', ''),
(30, 10, '_menu_item_url', '#'),
(32, 11, '_menu_item_type', 'custom'),
(33, 11, '_menu_item_menu_item_parent', '0'),
(34, 11, '_menu_item_object_id', '11'),
(35, 11, '_menu_item_object', 'custom'),
(36, 11, '_menu_item_target', ''),
(37, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(38, 11, '_menu_item_xfn', ''),
(39, 11, '_menu_item_url', '#'),
(41, 12, '_menu_item_type', 'custom'),
(42, 12, '_menu_item_menu_item_parent', '0'),
(43, 12, '_menu_item_object_id', '12'),
(44, 12, '_menu_item_object', 'custom'),
(45, 12, '_menu_item_target', ''),
(46, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 12, '_menu_item_xfn', ''),
(48, 12, '_menu_item_url', '#'),
(50, 13, '_menu_item_type', 'custom'),
(51, 13, '_menu_item_menu_item_parent', '0'),
(52, 13, '_menu_item_object_id', '13'),
(53, 13, '_menu_item_object', 'custom'),
(54, 13, '_menu_item_target', ''),
(55, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 13, '_menu_item_xfn', ''),
(57, 13, '_menu_item_url', '#'),
(59, 14, '_menu_item_type', 'custom'),
(60, 14, '_menu_item_menu_item_parent', '13'),
(61, 14, '_menu_item_object_id', '14'),
(62, 14, '_menu_item_object', 'custom'),
(63, 14, '_menu_item_target', ''),
(64, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 14, '_menu_item_xfn', ''),
(66, 14, '_menu_item_url', '#'),
(68, 15, '_menu_item_type', 'custom'),
(69, 15, '_menu_item_menu_item_parent', '13'),
(70, 15, '_menu_item_object_id', '15'),
(71, 15, '_menu_item_object', 'custom'),
(72, 15, '_menu_item_target', ''),
(73, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 15, '_menu_item_xfn', ''),
(75, 15, '_menu_item_url', '#'),
(77, 16, '_menu_item_type', 'custom'),
(78, 16, '_menu_item_menu_item_parent', '13'),
(79, 16, '_menu_item_object_id', '16'),
(80, 16, '_menu_item_object', 'custom'),
(81, 16, '_menu_item_target', ''),
(82, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 16, '_menu_item_xfn', ''),
(84, 16, '_menu_item_url', '#'),
(86, 17, '_menu_item_type', 'custom'),
(87, 17, '_menu_item_menu_item_parent', '13'),
(88, 17, '_menu_item_object_id', '17'),
(89, 17, '_menu_item_object', 'custom'),
(90, 17, '_menu_item_target', ''),
(91, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(92, 17, '_menu_item_xfn', ''),
(93, 17, '_menu_item_url', '#'),
(95, 18, '_menu_item_type', 'custom'),
(96, 18, '_menu_item_menu_item_parent', '0'),
(97, 18, '_menu_item_object_id', '18'),
(98, 18, '_menu_item_object', 'custom'),
(99, 18, '_menu_item_target', ''),
(100, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(101, 18, '_menu_item_xfn', ''),
(102, 18, '_menu_item_url', '#'),
(104, 19, '_menu_item_type', 'custom'),
(105, 19, '_menu_item_menu_item_parent', '18'),
(106, 19, '_menu_item_object_id', '19'),
(107, 19, '_menu_item_object', 'custom'),
(108, 19, '_menu_item_target', ''),
(109, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(110, 19, '_menu_item_xfn', ''),
(111, 19, '_menu_item_url', '#'),
(113, 20, '_menu_item_type', 'custom'),
(114, 20, '_menu_item_menu_item_parent', '18'),
(115, 20, '_menu_item_object_id', '20'),
(116, 20, '_menu_item_object', 'custom'),
(117, 20, '_menu_item_target', ''),
(118, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(119, 20, '_menu_item_xfn', ''),
(120, 20, '_menu_item_url', '#'),
(122, 21, '_menu_item_type', 'custom'),
(123, 21, '_menu_item_menu_item_parent', '18'),
(124, 21, '_menu_item_object_id', '21'),
(125, 21, '_menu_item_object', 'custom'),
(126, 21, '_menu_item_target', ''),
(127, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(128, 21, '_menu_item_xfn', ''),
(129, 21, '_menu_item_url', '#'),
(131, 22, '_menu_item_type', 'custom'),
(132, 22, '_menu_item_menu_item_parent', '18'),
(133, 22, '_menu_item_object_id', '22'),
(134, 22, '_menu_item_object', 'custom'),
(135, 22, '_menu_item_target', ''),
(136, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(137, 22, '_menu_item_xfn', ''),
(138, 22, '_menu_item_url', '#'),
(140, 23, '_menu_item_type', 'custom'),
(141, 23, '_menu_item_menu_item_parent', '18'),
(142, 23, '_menu_item_object_id', '23'),
(143, 23, '_menu_item_object', 'custom'),
(144, 23, '_menu_item_target', ''),
(145, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(146, 23, '_menu_item_xfn', ''),
(147, 23, '_menu_item_url', '#'),
(149, 24, '_menu_item_type', 'custom'),
(150, 24, '_menu_item_menu_item_parent', '18'),
(151, 24, '_menu_item_object_id', '24'),
(152, 24, '_menu_item_object', 'custom'),
(153, 24, '_menu_item_target', ''),
(154, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(155, 24, '_menu_item_xfn', ''),
(156, 24, '_menu_item_url', '#'),
(158, 25, '_menu_item_type', 'custom'),
(159, 25, '_menu_item_menu_item_parent', '18'),
(160, 25, '_menu_item_object_id', '25'),
(161, 25, '_menu_item_object', 'custom'),
(162, 25, '_menu_item_target', ''),
(163, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(164, 25, '_menu_item_xfn', ''),
(165, 25, '_menu_item_url', '#'),
(167, 26, '_menu_item_type', 'custom'),
(168, 26, '_menu_item_menu_item_parent', '18'),
(169, 26, '_menu_item_object_id', '26'),
(170, 26, '_menu_item_object', 'custom'),
(171, 26, '_menu_item_target', ''),
(172, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(173, 26, '_menu_item_xfn', ''),
(174, 26, '_menu_item_url', '#'),
(176, 27, '_menu_item_type', 'custom'),
(177, 27, '_menu_item_menu_item_parent', '0'),
(178, 27, '_menu_item_object_id', '27'),
(179, 27, '_menu_item_object', 'custom'),
(180, 27, '_menu_item_target', ''),
(181, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(182, 27, '_menu_item_xfn', ''),
(183, 27, '_menu_item_url', '#'),
(185, 28, '_menu_item_type', 'custom'),
(186, 28, '_menu_item_menu_item_parent', '27'),
(187, 28, '_menu_item_object_id', '28'),
(188, 28, '_menu_item_object', 'custom'),
(189, 28, '_menu_item_target', ''),
(190, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(191, 28, '_menu_item_xfn', ''),
(192, 28, '_menu_item_url', '#'),
(194, 29, '_menu_item_type', 'custom'),
(195, 29, '_menu_item_menu_item_parent', '27'),
(196, 29, '_menu_item_object_id', '29'),
(197, 29, '_menu_item_object', 'custom'),
(198, 29, '_menu_item_target', ''),
(199, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(200, 29, '_menu_item_xfn', ''),
(201, 29, '_menu_item_url', '#'),
(203, 30, '_menu_item_type', 'custom'),
(204, 30, '_menu_item_menu_item_parent', '27'),
(205, 30, '_menu_item_object_id', '30'),
(206, 30, '_menu_item_object', 'custom'),
(207, 30, '_menu_item_target', ''),
(208, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(209, 30, '_menu_item_xfn', ''),
(210, 30, '_menu_item_url', '#'),
(212, 31, '_menu_item_type', 'custom'),
(213, 31, '_menu_item_menu_item_parent', '27'),
(214, 31, '_menu_item_object_id', '31'),
(215, 31, '_menu_item_object', 'custom'),
(216, 31, '_menu_item_target', ''),
(217, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(218, 31, '_menu_item_xfn', ''),
(219, 31, '_menu_item_url', '#'),
(221, 32, '_menu_item_type', 'custom'),
(222, 32, '_menu_item_menu_item_parent', '0'),
(223, 32, '_menu_item_object_id', '32'),
(224, 32, '_menu_item_object', 'custom'),
(225, 32, '_menu_item_target', ''),
(226, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(227, 32, '_menu_item_xfn', ''),
(228, 32, '_menu_item_url', '#'),
(230, 33, '_menu_item_type', 'custom'),
(231, 33, '_menu_item_menu_item_parent', '0'),
(232, 33, '_menu_item_object_id', '33'),
(233, 33, '_menu_item_object', 'custom'),
(234, 33, '_menu_item_target', ''),
(235, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(236, 33, '_menu_item_xfn', ''),
(237, 33, '_menu_item_url', '#'),
(239, 34, '_menu_item_type', 'custom'),
(240, 34, '_menu_item_menu_item_parent', '0'),
(241, 34, '_menu_item_object_id', '34'),
(242, 34, '_menu_item_object', 'custom'),
(243, 34, '_menu_item_target', ''),
(244, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(245, 34, '_menu_item_xfn', ''),
(246, 34, '_menu_item_url', '#'),
(248, 35, '_menu_item_type', 'custom'),
(249, 35, '_menu_item_menu_item_parent', '0'),
(250, 35, '_menu_item_object_id', '35'),
(251, 35, '_menu_item_object', 'custom'),
(252, 35, '_menu_item_target', ''),
(253, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(254, 35, '_menu_item_xfn', ''),
(255, 35, '_menu_item_url', '#'),
(257, 36, '_menu_item_type', 'custom'),
(258, 36, '_menu_item_menu_item_parent', '0'),
(259, 36, '_menu_item_object_id', '36'),
(260, 36, '_menu_item_object', 'custom'),
(261, 36, '_menu_item_target', ''),
(262, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(263, 36, '_menu_item_xfn', ''),
(264, 36, '_menu_item_url', '#'),
(266, 37, '_menu_item_type', 'custom'),
(267, 37, '_menu_item_menu_item_parent', '0'),
(268, 37, '_menu_item_object_id', '37'),
(269, 37, '_menu_item_object', 'custom'),
(270, 37, '_menu_item_target', ''),
(271, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(272, 37, '_menu_item_xfn', ''),
(273, 37, '_menu_item_url', '#'),
(275, 38, '_menu_item_type', 'custom'),
(276, 38, '_menu_item_menu_item_parent', '0'),
(277, 38, '_menu_item_object_id', '38'),
(278, 38, '_menu_item_object', 'custom'),
(279, 38, '_menu_item_target', ''),
(280, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(281, 38, '_menu_item_xfn', ''),
(282, 38, '_menu_item_url', '#'),
(284, 39, '_menu_item_type', 'custom'),
(285, 39, '_menu_item_menu_item_parent', '0'),
(286, 39, '_menu_item_object_id', '39'),
(287, 39, '_menu_item_object', 'custom'),
(288, 39, '_menu_item_target', ''),
(289, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(290, 39, '_menu_item_xfn', ''),
(291, 39, '_menu_item_url', '#'),
(293, 40, '_menu_item_type', 'custom'),
(294, 40, '_menu_item_menu_item_parent', '0'),
(295, 40, '_menu_item_object_id', '40'),
(296, 40, '_menu_item_object', 'custom'),
(297, 40, '_menu_item_target', ''),
(298, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(299, 40, '_menu_item_xfn', ''),
(300, 40, '_menu_item_url', '#'),
(302, 41, '_menu_item_type', 'custom'),
(303, 41, '_menu_item_menu_item_parent', '0'),
(304, 41, '_menu_item_object_id', '41'),
(305, 41, '_menu_item_object', 'custom'),
(306, 41, '_menu_item_target', ''),
(307, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(308, 41, '_menu_item_xfn', ''),
(309, 41, '_menu_item_url', '#'),
(311, 42, '_menu_item_type', 'custom'),
(312, 42, '_menu_item_menu_item_parent', '0'),
(313, 42, '_menu_item_object_id', '42'),
(314, 42, '_menu_item_object', 'custom'),
(315, 42, '_menu_item_target', ''),
(316, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(317, 42, '_menu_item_xfn', ''),
(318, 42, '_menu_item_url', '#'),
(320, 43, '_menu_item_type', 'custom'),
(321, 43, '_menu_item_menu_item_parent', '0'),
(322, 43, '_menu_item_object_id', '43'),
(323, 43, '_menu_item_object', 'custom'),
(324, 43, '_menu_item_target', ''),
(325, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(326, 43, '_menu_item_xfn', ''),
(327, 43, '_menu_item_url', '#'),
(329, 44, '_menu_item_type', 'custom'),
(330, 44, '_menu_item_menu_item_parent', '0'),
(331, 44, '_menu_item_object_id', '44'),
(332, 44, '_menu_item_object', 'custom'),
(333, 44, '_menu_item_target', ''),
(334, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(335, 44, '_menu_item_xfn', ''),
(336, 44, '_menu_item_url', '#'),
(338, 45, '_menu_item_type', 'custom'),
(339, 45, '_menu_item_menu_item_parent', '0'),
(340, 45, '_menu_item_object_id', '45'),
(341, 45, '_menu_item_object', 'custom'),
(342, 45, '_menu_item_target', ''),
(343, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(344, 45, '_menu_item_xfn', ''),
(345, 45, '_menu_item_url', '#'),
(347, 46, '_menu_item_type', 'custom'),
(348, 46, '_menu_item_menu_item_parent', '0'),
(349, 46, '_menu_item_object_id', '46'),
(350, 46, '_menu_item_object', 'custom'),
(351, 46, '_menu_item_target', ''),
(352, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(353, 46, '_menu_item_xfn', ''),
(354, 46, '_menu_item_url', '#'),
(356, 47, '_menu_item_type', 'custom'),
(357, 47, '_menu_item_menu_item_parent', '0'),
(358, 47, '_menu_item_object_id', '47'),
(359, 47, '_menu_item_object', 'custom'),
(360, 47, '_menu_item_target', ''),
(361, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(362, 47, '_menu_item_xfn', ''),
(363, 47, '_menu_item_url', '#'),
(365, 48, '_menu_item_type', 'custom'),
(366, 48, '_menu_item_menu_item_parent', '0'),
(367, 48, '_menu_item_object_id', '48'),
(368, 48, '_menu_item_object', 'custom'),
(369, 48, '_menu_item_target', ''),
(370, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(371, 48, '_menu_item_xfn', ''),
(372, 48, '_menu_item_url', '#'),
(374, 49, '_menu_item_type', 'custom'),
(375, 49, '_menu_item_menu_item_parent', '0'),
(376, 49, '_menu_item_object_id', '49'),
(377, 49, '_menu_item_object', 'custom'),
(378, 49, '_menu_item_target', ''),
(379, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(380, 49, '_menu_item_xfn', ''),
(381, 49, '_menu_item_url', '#'),
(383, 50, '_menu_item_type', 'custom'),
(384, 50, '_menu_item_menu_item_parent', '0'),
(385, 50, '_menu_item_object_id', '50'),
(386, 50, '_menu_item_object', 'custom'),
(387, 50, '_menu_item_target', ''),
(388, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(389, 50, '_menu_item_xfn', ''),
(390, 50, '_menu_item_url', '#'),
(392, 51, '_menu_item_type', 'custom'),
(393, 51, '_menu_item_menu_item_parent', '0'),
(394, 51, '_menu_item_object_id', '51'),
(395, 51, '_menu_item_object', 'custom'),
(396, 51, '_menu_item_target', ''),
(397, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(398, 51, '_menu_item_xfn', ''),
(399, 51, '_menu_item_url', '#'),
(401, 52, '_menu_item_type', 'custom'),
(402, 52, '_menu_item_menu_item_parent', '0'),
(403, 52, '_menu_item_object_id', '52'),
(404, 52, '_menu_item_object', 'custom'),
(405, 52, '_menu_item_target', ''),
(406, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(407, 52, '_menu_item_xfn', ''),
(408, 52, '_menu_item_url', '#'),
(410, 53, '_menu_item_type', 'custom'),
(411, 53, '_menu_item_menu_item_parent', '0'),
(412, 53, '_menu_item_object_id', '53'),
(413, 53, '_menu_item_object', 'custom'),
(414, 53, '_menu_item_target', ''),
(415, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(416, 53, '_menu_item_xfn', ''),
(417, 53, '_menu_item_url', '#'),
(419, 54, '_menu_item_type', 'custom'),
(420, 54, '_menu_item_menu_item_parent', '0'),
(421, 54, '_menu_item_object_id', '54'),
(422, 54, '_menu_item_object', 'custom'),
(423, 54, '_menu_item_target', ''),
(424, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(425, 54, '_menu_item_xfn', ''),
(426, 54, '_menu_item_url', '#'),
(428, 64, '_menu_item_type', 'custom'),
(429, 64, '_menu_item_menu_item_parent', '0'),
(430, 64, '_menu_item_object_id', '64'),
(431, 64, '_menu_item_object', 'custom'),
(432, 64, '_menu_item_target', ''),
(433, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(434, 64, '_menu_item_xfn', ''),
(435, 64, '_menu_item_url', '#'),
(437, 65, '_menu_item_type', 'custom'),
(438, 65, '_menu_item_menu_item_parent', '0'),
(439, 65, '_menu_item_object_id', '65'),
(440, 65, '_menu_item_object', 'custom'),
(441, 65, '_menu_item_target', ''),
(442, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(443, 65, '_menu_item_xfn', ''),
(444, 65, '_menu_item_url', '#'),
(446, 66, '_edit_last', '1'),
(447, 66, '_edit_lock', '1521747093:1'),
(448, 69, '_wp_attached_file', '2018/03/banner-img.png'),
(449, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1366;s:6:"height";i:400;s:4:"file";s:22:"2018/03/banner-img.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"banner-img-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"banner-img-300x88.png";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:22:"banner-img-768x225.png";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:23:"banner-img-1024x300.png";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(450, 66, '_thumbnail_id', '69'),
(451, 71, '_edit_last', '1'),
(452, 71, '_edit_lock', '1521741946:1'),
(453, 79, '_wp_attached_file', '2018/03/winterbanden.svg'),
(454, 66, 'image_subContentSection', '79'),
(455, 66, '_image_subContentSection', 'field_5ab3eaa7816c1'),
(456, 66, 'section_title_subContentSection', 'ONDERSTEUN DE WINTERCAMPAGNE'),
(457, 66, '_section_title_subContentSection', 'field_5ab3cf3b88a5d'),
(458, 66, 'section_description_subContentSection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.'),
(459, 66, '_section_description_subContentSection', 'field_5ab3cf5c88a5e'),
(460, 66, 'more_link_subContentSection', 'a:3:{s:5:"title";s:30:"BEKIJK DE CAMPAGNEMIDDELEN 123";s:3:"url";s:1:"#";s:6:"target";s:6:"_blank";}'),
(461, 66, '_more_link_subContentSection', 'field_5ab3cf6d88a5f'),
(462, 66, '2_column_sub_subContentSection_0_title_2col_subContentSection', 'ANDERE THEMA’S'),
(463, 66, '_2_column_sub_subContentSection_0_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(464, 66, '2_column_sub_subContentSection_0_description_2col_subContentSection', '<ul>\r\n 	<li><a title="Zomerbanden" href="#">Zomerbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Veiligheid &amp; profiel" href="#">Veiligheid &amp; profiel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Bandenspanning" href="#">Bandenspanning</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(465, 66, '_2_column_sub_subContentSection_0_description_2col_subContentSection', 'field_5ab3eadc816c4'),
(466, 66, '2_column_sub_subContentSection_1_title_2col_subContentSection', 'POSTER GENERATOR'),
(467, 66, '_2_column_sub_subContentSection_1_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(468, 66, '2_column_sub_subContentSection_1_description_2col_subContentSection', '<ul>\r\n 	<li>Maak posters met uw eigen logo en bedrijfsnaam en ondersteun de campagne!</li>\r\n 	<li><a title="Postergenerator" href="#">Postergenerator</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(469, 66, '_2_column_sub_subContentSection_1_description_2col_subContentSection', 'field_5ab3eadc816c4'),
(470, 66, '2_column_sub_subContentSection', '2'),
(471, 66, '_2_column_sub_subContentSection', 'field_5ab3eab2816c2'),
(472, 80, 'image_subContentSection', '79'),
(473, 80, '_image_subContentSection', 'field_5ab3eaa7816c1'),
(474, 80, 'section_title_subContentSection', 'ONDERSTEUN DE WINTERCAMPAGNE'),
(475, 80, '_section_title_subContentSection', 'field_5ab3cf3b88a5d'),
(476, 80, 'section_description_subContentSection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.'),
(477, 80, '_section_description_subContentSection', 'field_5ab3cf5c88a5e'),
(478, 80, 'more_link_subContentSection', 'a:3:{s:5:"title";s:26:"BEKIJK DE CAMPAGNEMIDDELEN";s:3:"url";s:1:"#";s:6:"target";s:0:"";}'),
(479, 80, '_more_link_subContentSection', 'field_5ab3cf6d88a5f'),
(480, 80, '2_column_sub_subContentSection_0_title_2col_subContentSection', 'ANDERE THEMA’S'),
(481, 80, '_2_column_sub_subContentSection_0_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(482, 80, '2_column_sub_subContentSection_0_description_2col_subContentSection', '<ul>\r\n 	<li><a title="Zomerbanden" href="#">Zomerbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Veiligheid &amp; profiel" href="#">Veiligheid &amp; profiel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Bandenspanning" href="#">Bandenspanning</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(483, 80, '_2_column_sub_subContentSection_0_description_2col_subContentSection', 'field_5ab3eadc816c4'),
(484, 80, '2_column_sub_subContentSection_1_title_2col_subContentSection', 'POSTER GENERATOR'),
(485, 80, '_2_column_sub_subContentSection_1_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(486, 80, '2_column_sub_subContentSection_1_description_2col_subContentSection', '<ul>\r\n 	<li>Maak posters met uw eigen logo en bedrijfsnaam en ondersteun de campagne!</li>\r\n 	<li><a title="Postergenerator" href="#">Postergenerator</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(487, 80, '_2_column_sub_subContentSection_1_description_2col_subContentSection', 'field_5ab3eadc816c4'),
(488, 80, '2_column_sub_subContentSection', '2'),
(489, 80, '_2_column_sub_subContentSection', 'field_5ab3eab2816c2'),
(490, 81, 'image_subContentSection', '79'),
(491, 81, '_image_subContentSection', 'field_5ab3eaa7816c1'),
(492, 81, 'section_title_subContentSection', 'ONDERSTEUN DE WINTERCAMPAGNE'),
(493, 81, '_section_title_subContentSection', 'field_5ab3cf3b88a5d'),
(494, 81, 'section_description_subContentSection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.'),
(495, 81, '_section_description_subContentSection', 'field_5ab3cf5c88a5e'),
(496, 81, 'more_link_subContentSection', ''),
(497, 81, '_more_link_subContentSection', 'field_5ab3cf6d88a5f'),
(498, 81, '2_column_sub_subContentSection_0_title_2col_subContentSection', 'ANDERE THEMA’S'),
(499, 81, '_2_column_sub_subContentSection_0_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(500, 81, '2_column_sub_subContentSection_0_description_2col_subContentSection', '<ul>\r\n 	<li><a title="Zomerbanden" href="#">Zomerbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Veiligheid &amp; profiel" href="#">Veiligheid &amp; profiel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Bandenspanning" href="#">Bandenspanning</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(501, 81, '_2_column_sub_subContentSection_0_description_2col_subContentSection', 'field_5ab3eadc816c4'),
(502, 81, '2_column_sub_subContentSection_1_title_2col_subContentSection', 'POSTER GENERATOR'),
(503, 81, '_2_column_sub_subContentSection_1_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(504, 81, '2_column_sub_subContentSection_1_description_2col_subContentSection', '<ul>\r\n 	<li>Maak posters met uw eigen logo en bedrijfsnaam en ondersteun de campagne!</li>\r\n 	<li><a title="Postergenerator" href="#">Postergenerator</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(505, 81, '_2_column_sub_subContentSection_1_description_2col_subContentSection', 'field_5ab3eadc816c4'),
(506, 81, '2_column_sub_subContentSection', '2'),
(507, 81, '_2_column_sub_subContentSection', 'field_5ab3eab2816c2'),
(508, 82, 'image_subContentSection', '79'),
(509, 82, '_image_subContentSection', 'field_5ab3eaa7816c1'),
(510, 82, 'section_title_subContentSection', 'ONDERSTEUN DE WINTERCAMPAGNE'),
(511, 82, '_section_title_subContentSection', 'field_5ab3cf3b88a5d'),
(512, 82, 'section_description_subContentSection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.'),
(513, 82, '_section_description_subContentSection', 'field_5ab3cf5c88a5e'),
(514, 82, 'more_link_subContentSection', 'a:3:{s:5:"title";s:30:"BEKIJK DE CAMPAGNEMIDDELEN 123";s:3:"url";s:1:"#";s:6:"target";s:6:"_blank";}'),
(515, 82, '_more_link_subContentSection', 'field_5ab3cf6d88a5f'),
(516, 82, '2_column_sub_subContentSection_0_title_2col_subContentSection', 'ANDERE THEMA’S'),
(517, 82, '_2_column_sub_subContentSection_0_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(518, 82, '2_column_sub_subContentSection_0_description_2col_subContentSection', '<ul>\r\n 	<li><a title="Zomerbanden" href="#">Zomerbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Veiligheid &amp; profiel" href="#">Veiligheid &amp; profiel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Bandenspanning" href="#">Bandenspanning</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(519, 82, '_2_column_sub_subContentSection_0_description_2col_subContentSection', 'field_5ab3eadc816c4'),
(520, 82, '2_column_sub_subContentSection_1_title_2col_subContentSection', 'POSTER GENERATOR'),
(521, 82, '_2_column_sub_subContentSection_1_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(522, 82, '2_column_sub_subContentSection_1_description_2col_subContentSection', '<ul>\r\n 	<li>Maak posters met uw eigen logo en bedrijfsnaam en ondersteun de campagne!</li>\r\n 	<li><a title="Postergenerator" href="#">Postergenerator</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(523, 82, '_2_column_sub_subContentSection_1_description_2col_subContentSection', 'field_5ab3eadc816c4'),
(524, 82, '2_column_sub_subContentSection', '2'),
(525, 82, '_2_column_sub_subContentSection', 'field_5ab3eab2816c2'),
(526, 83, '_edit_last', '1'),
(527, 83, '_edit_lock', '1521744460:1'),
(528, 91, '_wp_attached_file', '2018/03/img-2.png'),
(529, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1366;s:6:"height";i:684;s:4:"file";s:17:"2018/03/img-2.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"img-2-300x150.png";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:17:"img-2-768x385.png";s:5:"width";i:768;s:6:"height";i:385;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:18:"img-2-1024x513.png";s:5:"width";i:1024;s:6:"height";i:513;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(530, 92, '_wp_attached_file', '2018/03/bandenkeuze.svg'),
(531, 93, '_wp_attached_file', '2018/03/bandencheck.svg'),
(532, 94, '_wp_attached_file', '2018/03/bandenspanning.svg'),
(533, 66, 'section_bg_3col_section', '91'),
(534, 66, '_section_bg_3col_section', 'field_5ab3f11d0eae3'),
(535, 66, 'sectionTitle_3col_section', 'ALLES OVER BANDEN'),
(536, 66, '_sectionTitle_3col_section', 'field_5ab3f13f0eae4'),
(537, 66, 'sectionDesc_3col_section', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.'),
(538, 66, '_sectionDesc_3col_section', 'field_5ab3f1540eae5'),
(539, 66, '3col_rep_3col_section_0_img_sub_3col_section', '92'),
(540, 66, '_3col_rep_3col_section_0_img_sub_3col_section', 'field_5ab3f1a50eae7'),
(541, 66, '3col_rep_3col_section_0_title_sub_3col_section', 'BANDENKEUZE'),
(542, 66, '_3col_rep_3col_section_0_title_sub_3col_section', 'field_5ab3f1cb0eae8'),
(543, 66, '3col_rep_3col_section_0_desc_sub_3col_section', '<ul>\r\n 	<li><a title="Bandenlabel" href="#">Bandenlabel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Zomerbanden" href="#">Zomerbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Winterbanden" href="#">Winterbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="All-season" href="#">All-season</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(544, 66, '_3col_rep_3col_section_0_desc_sub_3col_section', 'field_5ab3f1d50eae9'),
(545, 66, '3col_rep_3col_section_1_img_sub_3col_section', '93'),
(546, 66, '_3col_rep_3col_section_1_img_sub_3col_section', 'field_5ab3f1a50eae7'),
(547, 66, '3col_rep_3col_section_1_title_sub_3col_section', 'BANDENKEUZE'),
(548, 66, '_3col_rep_3col_section_1_title_sub_3col_section', 'field_5ab3f1cb0eae8'),
(549, 66, '3col_rep_3col_section_1_desc_sub_3col_section', '<ul>\r\n 	<li><a title="Profiel" href="#">Profiel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Beschadiging" href="#">Beschadiging</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Spanning" href="#">Spanning</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(550, 66, '_3col_rep_3col_section_1_desc_sub_3col_section', 'field_5ab3f1d50eae9'),
(551, 66, '3col_rep_3col_section_2_img_sub_3col_section', '94'),
(552, 66, '_3col_rep_3col_section_2_img_sub_3col_section', 'field_5ab3f1a50eae7'),
(553, 66, '3col_rep_3col_section_2_title_sub_3col_section', 'BANDENSPANNING'),
(554, 66, '_3col_rep_3col_section_2_title_sub_3col_section', 'field_5ab3f1cb0eae8'),
(555, 66, '3col_rep_3col_section_2_desc_sub_3col_section', '<ul>\r\n 	<li><a title="Advies" href="#">Advies</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Modelinformatie" href="#">Modelinformatie</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Oppomplocaties" href="#">Oppomplocaties</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="App gebruiken" href="#">App gebruiken</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(556, 66, '_3col_rep_3col_section_2_desc_sub_3col_section', 'field_5ab3f1d50eae9'),
(557, 66, '3col_rep_3col_section', '3'),
(558, 66, '_3col_rep_3col_section', 'field_5ab3f1710eae6'),
(559, 95, 'image_subContentSection', '79'),
(560, 95, '_image_subContentSection', 'field_5ab3eaa7816c1'),
(561, 95, 'section_title_subContentSection', 'ONDERSTEUN DE WINTERCAMPAGNE'),
(562, 95, '_section_title_subContentSection', 'field_5ab3cf3b88a5d'),
(563, 95, 'section_description_subContentSection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.'),
(564, 95, '_section_description_subContentSection', 'field_5ab3cf5c88a5e'),
(565, 95, 'more_link_subContentSection', 'a:3:{s:5:"title";s:30:"BEKIJK DE CAMPAGNEMIDDELEN 123";s:3:"url";s:1:"#";s:6:"target";s:6:"_blank";}'),
(566, 95, '_more_link_subContentSection', 'field_5ab3cf6d88a5f'),
(567, 95, '2_column_sub_subContentSection_0_title_2col_subContentSection', 'ANDERE THEMA’S'),
(568, 95, '_2_column_sub_subContentSection_0_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(569, 95, '2_column_sub_subContentSection_0_description_2col_subContentSection', '<ul>\r\n 	<li><a title="Zomerbanden" href="#">Zomerbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Veiligheid &amp; profiel" href="#">Veiligheid &amp; profiel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Bandenspanning" href="#">Bandenspanning</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(570, 95, '_2_column_sub_subContentSection_0_description_2col_subContentSection', 'field_5ab3eadc816c4'),
(571, 95, '2_column_sub_subContentSection_1_title_2col_subContentSection', 'POSTER GENERATOR'),
(572, 95, '_2_column_sub_subContentSection_1_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(573, 95, '2_column_sub_subContentSection_1_description_2col_subContentSection', '<ul>\r\n 	<li>Maak posters met uw eigen logo en bedrijfsnaam en ondersteun de campagne!</li>\r\n 	<li><a title="Postergenerator" href="#">Postergenerator</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(574, 95, '_2_column_sub_subContentSection_1_description_2col_subContentSection', 'field_5ab3eadc816c4'),
(575, 95, '2_column_sub_subContentSection', '2'),
(576, 95, '_2_column_sub_subContentSection', 'field_5ab3eab2816c2'),
(577, 95, 'section_bg_3col_section', '91'),
(578, 95, '_section_bg_3col_section', 'field_5ab3f11d0eae3'),
(579, 95, 'sectionTitle_3col_section', 'ALLES OVER BANDEN'),
(580, 95, '_sectionTitle_3col_section', 'field_5ab3f13f0eae4'),
(581, 95, 'sectionDesc_3col_section', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.'),
(582, 95, '_sectionDesc_3col_section', 'field_5ab3f1540eae5'),
(583, 95, '3col_rep_3col_section_0_img_sub_3col_section', '92'),
(584, 95, '_3col_rep_3col_section_0_img_sub_3col_section', 'field_5ab3f1a50eae7'),
(585, 95, '3col_rep_3col_section_0_title_sub_3col_section', 'BANDENKEUZE'),
(586, 95, '_3col_rep_3col_section_0_title_sub_3col_section', 'field_5ab3f1cb0eae8'),
(587, 95, '3col_rep_3col_section_0_desc_sub_3col_section', '<ul>\r\n 	<li><a title="Bandenlabel" href="#">Bandenlabel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Zomerbanden" href="#">Zomerbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Winterbanden" href="#">Winterbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="All-season" href="#">All-season</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(588, 95, '_3col_rep_3col_section_0_desc_sub_3col_section', 'field_5ab3f1d50eae9'),
(589, 95, '3col_rep_3col_section_1_img_sub_3col_section', '93'),
(590, 95, '_3col_rep_3col_section_1_img_sub_3col_section', 'field_5ab3f1a50eae7'),
(591, 95, '3col_rep_3col_section_1_title_sub_3col_section', 'BANDENKEUZE'),
(592, 95, '_3col_rep_3col_section_1_title_sub_3col_section', 'field_5ab3f1cb0eae8'),
(593, 95, '3col_rep_3col_section_1_desc_sub_3col_section', '<ul>\r\n 	<li><a title="Profiel" href="#">Profiel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Beschadiging" href="#">Beschadiging</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Spanning" href="#">Spanning</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(594, 95, '_3col_rep_3col_section_1_desc_sub_3col_section', 'field_5ab3f1d50eae9'),
(595, 95, '3col_rep_3col_section_2_img_sub_3col_section', '94'),
(596, 95, '_3col_rep_3col_section_2_img_sub_3col_section', 'field_5ab3f1a50eae7'),
(597, 95, '3col_rep_3col_section_2_title_sub_3col_section', 'BANDENSPANNING'),
(598, 95, '_3col_rep_3col_section_2_title_sub_3col_section', 'field_5ab3f1cb0eae8'),
(599, 95, '3col_rep_3col_section_2_desc_sub_3col_section', '<ul>\r\n 	<li><a title="Advies" href="#">Advies</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Modelinformatie" href="#">Modelinformatie</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Oppomplocaties" href="#">Oppomplocaties</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="App gebruiken" href="#">App gebruiken</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(600, 95, '_3col_rep_3col_section_2_desc_sub_3col_section', 'field_5ab3f1d50eae9'),
(601, 95, '3col_rep_3col_section', '3'),
(602, 95, '_3col_rep_3col_section', 'field_5ab3f1710eae6'),
(603, 96, '_edit_last', '1'),
(606, 96, '_edit_lock', '1521747173:1'),
(609, 98, '_edit_last', '1'),
(610, 98, '_edit_lock', '1521744375:1'),
(613, 99, '_edit_last', '1'),
(614, 99, '_edit_lock', '1521744375:1'),
(617, 100, '_edit_last', '1'),
(618, 100, '_edit_lock', '1521744375:1'),
(619, 1, '_wp_trash_meta_status', 'publish'),
(620, 1, '_wp_trash_meta_time', '1521744541'),
(621, 1, '_wp_desired_post_slug', 'hello-world'),
(622, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(625, 102, '_edit_last', '1'),
(626, 102, '_edit_lock', '1521744375:1'),
(629, 103, '_edit_last', '1'),
(630, 103, '_edit_lock', '1521744375:1'),
(631, 104, '_edit_last', '1'),
(632, 104, '_edit_lock', '1521744932:1'),
(633, 66, 'section_title_newsSection', 'NIEUWS'),
(634, 66, '_section_title_newsSection', 'field_5ab3fb2530b57'),
(635, 66, 'section_desc_newsSection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a enim et sem pharetra finibus eu non dui. Phasellus varius, velit et faucibus posuere, lorem urna feugiat arcu, id molestie est nunc at ante.'),
(636, 66, '_section_desc_newsSection', 'field_5ab3fb4230b58'),
(637, 66, 'more_newsSection', 'a:3:{s:5:"title";s:22:"AL HET NIEUWS BEKIJKEN";s:3:"url";s:1:"#";s:6:"target";s:0:"";}'),
(638, 66, '_more_newsSection', 'field_5ab3fb5830b59'),
(639, 66, 'postToShow_newsSection', 'latest'),
(640, 66, '_postToShow_newsSection', 'field_5ab3fb6f30b5a'),
(641, 110, 'image_subContentSection', '79'),
(642, 110, '_image_subContentSection', 'field_5ab3eaa7816c1'),
(643, 110, 'section_title_subContentSection', 'ONDERSTEUN DE WINTERCAMPAGNE'),
(644, 110, '_section_title_subContentSection', 'field_5ab3cf3b88a5d'),
(645, 110, 'section_description_subContentSection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.'),
(646, 110, '_section_description_subContentSection', 'field_5ab3cf5c88a5e'),
(647, 110, 'more_link_subContentSection', 'a:3:{s:5:"title";s:30:"BEKIJK DE CAMPAGNEMIDDELEN 123";s:3:"url";s:1:"#";s:6:"target";s:6:"_blank";}'),
(648, 110, '_more_link_subContentSection', 'field_5ab3cf6d88a5f'),
(649, 110, '2_column_sub_subContentSection_0_title_2col_subContentSection', 'ANDERE THEMA’S'),
(650, 110, '_2_column_sub_subContentSection_0_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(651, 110, '2_column_sub_subContentSection_0_description_2col_subContentSection', '<ul>\r\n 	<li><a title="Zomerbanden" href="#">Zomerbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Veiligheid &amp; profiel" href="#">Veiligheid &amp; profiel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Bandenspanning" href="#">Bandenspanning</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(652, 110, '_2_column_sub_subContentSection_0_description_2col_subContentSection', 'field_5ab3eadc816c4'),
(653, 110, '2_column_sub_subContentSection_1_title_2col_subContentSection', 'POSTER GENERATOR'),
(654, 110, '_2_column_sub_subContentSection_1_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(655, 110, '2_column_sub_subContentSection_1_description_2col_subContentSection', '<ul>\r\n 	<li>Maak posters met uw eigen logo en bedrijfsnaam en ondersteun de campagne!</li>\r\n 	<li><a title="Postergenerator" href="#">Postergenerator</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(656, 110, '_2_column_sub_subContentSection_1_description_2col_subContentSection', 'field_5ab3eadc816c4'),
(657, 110, '2_column_sub_subContentSection', '2'),
(658, 110, '_2_column_sub_subContentSection', 'field_5ab3eab2816c2'),
(659, 110, 'section_bg_3col_section', '91'),
(660, 110, '_section_bg_3col_section', 'field_5ab3f11d0eae3'),
(661, 110, 'sectionTitle_3col_section', 'ALLES OVER BANDEN'),
(662, 110, '_sectionTitle_3col_section', 'field_5ab3f13f0eae4'),
(663, 110, 'sectionDesc_3col_section', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.'),
(664, 110, '_sectionDesc_3col_section', 'field_5ab3f1540eae5'),
(665, 110, '3col_rep_3col_section_0_img_sub_3col_section', '92'),
(666, 110, '_3col_rep_3col_section_0_img_sub_3col_section', 'field_5ab3f1a50eae7'),
(667, 110, '3col_rep_3col_section_0_title_sub_3col_section', 'BANDENKEUZE'),
(668, 110, '_3col_rep_3col_section_0_title_sub_3col_section', 'field_5ab3f1cb0eae8'),
(669, 110, '3col_rep_3col_section_0_desc_sub_3col_section', '<ul>\r\n 	<li><a title="Bandenlabel" href="#">Bandenlabel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Zomerbanden" href="#">Zomerbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Winterbanden" href="#">Winterbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="All-season" href="#">All-season</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(670, 110, '_3col_rep_3col_section_0_desc_sub_3col_section', 'field_5ab3f1d50eae9'),
(671, 110, '3col_rep_3col_section_1_img_sub_3col_section', '93'),
(672, 110, '_3col_rep_3col_section_1_img_sub_3col_section', 'field_5ab3f1a50eae7'),
(673, 110, '3col_rep_3col_section_1_title_sub_3col_section', 'BANDENKEUZE'),
(674, 110, '_3col_rep_3col_section_1_title_sub_3col_section', 'field_5ab3f1cb0eae8'),
(675, 110, '3col_rep_3col_section_1_desc_sub_3col_section', '<ul>\r\n 	<li><a title="Profiel" href="#">Profiel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Beschadiging" href="#">Beschadiging</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Spanning" href="#">Spanning</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(676, 110, '_3col_rep_3col_section_1_desc_sub_3col_section', 'field_5ab3f1d50eae9'),
(677, 110, '3col_rep_3col_section_2_img_sub_3col_section', '94'),
(678, 110, '_3col_rep_3col_section_2_img_sub_3col_section', 'field_5ab3f1a50eae7'),
(679, 110, '3col_rep_3col_section_2_title_sub_3col_section', 'BANDENSPANNING'),
(680, 110, '_3col_rep_3col_section_2_title_sub_3col_section', 'field_5ab3f1cb0eae8'),
(681, 110, '3col_rep_3col_section_2_desc_sub_3col_section', '<ul>\r\n 	<li><a title="Advies" href="#">Advies</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Modelinformatie" href="#">Modelinformatie</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Oppomplocaties" href="#">Oppomplocaties</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="App gebruiken" href="#">App gebruiken</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(682, 110, '_3col_rep_3col_section_2_desc_sub_3col_section', 'field_5ab3f1d50eae9'),
(683, 110, '3col_rep_3col_section', '3'),
(684, 110, '_3col_rep_3col_section', 'field_5ab3f1710eae6'),
(685, 110, 'section_title_newsSection', 'NIEUWS'),
(686, 110, '_section_title_newsSection', 'field_5ab3fb2530b57'),
(687, 110, 'section_desc_newsSection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a enim et sem pharetra finibus eu non dui. Phasellus varius, velit et faucibus posuere, lorem urna feugiat arcu, id molestie est nunc at ante.'),
(688, 110, '_section_desc_newsSection', 'field_5ab3fb4230b58'),
(689, 110, 'more_newsSection', 'a:3:{s:5:"title";s:22:"AL HET NIEUWS BEKIJKEN";s:3:"url";s:1:"#";s:6:"target";s:0:"";}'),
(690, 110, '_more_newsSection', 'field_5ab3fb5830b59'),
(691, 110, 'postToShow_newsSection', 'latest'),
(692, 110, '_postToShow_newsSection', 'field_5ab3fb6f30b5a'),
(693, 66, 'choosePost_newsSection', 'a:2:{i:0;s:3:"102";i:1;s:3:"103";}'),
(694, 66, '_choosePost_newsSection', 'field_5ab3fbb730b5b'),
(695, 111, 'image_subContentSection', '79'),
(696, 111, '_image_subContentSection', 'field_5ab3eaa7816c1'),
(697, 111, 'section_title_subContentSection', 'ONDERSTEUN DE WINTERCAMPAGNE'),
(698, 111, '_section_title_subContentSection', 'field_5ab3cf3b88a5d'),
(699, 111, 'section_description_subContentSection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.'),
(700, 111, '_section_description_subContentSection', 'field_5ab3cf5c88a5e'),
(701, 111, 'more_link_subContentSection', 'a:3:{s:5:"title";s:30:"BEKIJK DE CAMPAGNEMIDDELEN 123";s:3:"url";s:1:"#";s:6:"target";s:6:"_blank";}'),
(702, 111, '_more_link_subContentSection', 'field_5ab3cf6d88a5f'),
(703, 111, '2_column_sub_subContentSection_0_title_2col_subContentSection', 'ANDERE THEMA’S'),
(704, 111, '_2_column_sub_subContentSection_0_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(705, 111, '2_column_sub_subContentSection_0_description_2col_subContentSection', '<ul>\r\n 	<li><a title="Zomerbanden" href="#">Zomerbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Veiligheid &amp; profiel" href="#">Veiligheid &amp; profiel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Bandenspanning" href="#">Bandenspanning</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(706, 111, '_2_column_sub_subContentSection_0_description_2col_subContentSection', 'field_5ab3eadc816c4'),
(707, 111, '2_column_sub_subContentSection_1_title_2col_subContentSection', 'POSTER GENERATOR'),
(708, 111, '_2_column_sub_subContentSection_1_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(709, 111, '2_column_sub_subContentSection_1_description_2col_subContentSection', '<ul>\r\n 	<li>Maak posters met uw eigen logo en bedrijfsnaam en ondersteun de campagne!</li>\r\n 	<li><a title="Postergenerator" href="#">Postergenerator</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(710, 111, '_2_column_sub_subContentSection_1_description_2col_subContentSection', 'field_5ab3eadc816c4'),
(711, 111, '2_column_sub_subContentSection', '2'),
(712, 111, '_2_column_sub_subContentSection', 'field_5ab3eab2816c2'),
(713, 111, 'section_bg_3col_section', '91'),
(714, 111, '_section_bg_3col_section', 'field_5ab3f11d0eae3'),
(715, 111, 'sectionTitle_3col_section', 'ALLES OVER BANDEN'),
(716, 111, '_sectionTitle_3col_section', 'field_5ab3f13f0eae4'),
(717, 111, 'sectionDesc_3col_section', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.'),
(718, 111, '_sectionDesc_3col_section', 'field_5ab3f1540eae5'),
(719, 111, '3col_rep_3col_section_0_img_sub_3col_section', '92'),
(720, 111, '_3col_rep_3col_section_0_img_sub_3col_section', 'field_5ab3f1a50eae7'),
(721, 111, '3col_rep_3col_section_0_title_sub_3col_section', 'BANDENKEUZE'),
(722, 111, '_3col_rep_3col_section_0_title_sub_3col_section', 'field_5ab3f1cb0eae8'),
(723, 111, '3col_rep_3col_section_0_desc_sub_3col_section', '<ul>\r\n 	<li><a title="Bandenlabel" href="#">Bandenlabel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Zomerbanden" href="#">Zomerbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Winterbanden" href="#">Winterbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="All-season" href="#">All-season</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(724, 111, '_3col_rep_3col_section_0_desc_sub_3col_section', 'field_5ab3f1d50eae9'),
(725, 111, '3col_rep_3col_section_1_img_sub_3col_section', '93'),
(726, 111, '_3col_rep_3col_section_1_img_sub_3col_section', 'field_5ab3f1a50eae7'),
(727, 111, '3col_rep_3col_section_1_title_sub_3col_section', 'BANDENKEUZE'),
(728, 111, '_3col_rep_3col_section_1_title_sub_3col_section', 'field_5ab3f1cb0eae8'),
(729, 111, '3col_rep_3col_section_1_desc_sub_3col_section', '<ul>\r\n 	<li><a title="Profiel" href="#">Profiel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Beschadiging" href="#">Beschadiging</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Spanning" href="#">Spanning</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(730, 111, '_3col_rep_3col_section_1_desc_sub_3col_section', 'field_5ab3f1d50eae9'),
(731, 111, '3col_rep_3col_section_2_img_sub_3col_section', '94'),
(732, 111, '_3col_rep_3col_section_2_img_sub_3col_section', 'field_5ab3f1a50eae7'),
(733, 111, '3col_rep_3col_section_2_title_sub_3col_section', 'BANDENSPANNING'),
(734, 111, '_3col_rep_3col_section_2_title_sub_3col_section', 'field_5ab3f1cb0eae8'),
(735, 111, '3col_rep_3col_section_2_desc_sub_3col_section', '<ul>\r\n 	<li><a title="Advies" href="#">Advies</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Modelinformatie" href="#">Modelinformatie</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Oppomplocaties" href="#">Oppomplocaties</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="App gebruiken" href="#">App gebruiken</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(736, 111, '_3col_rep_3col_section_2_desc_sub_3col_section', 'field_5ab3f1d50eae9'),
(737, 111, '3col_rep_3col_section', '3'),
(738, 111, '_3col_rep_3col_section', 'field_5ab3f1710eae6'),
(739, 111, 'section_title_newsSection', 'NIEUWS'),
(740, 111, '_section_title_newsSection', 'field_5ab3fb2530b57'),
(741, 111, 'section_desc_newsSection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a enim et sem pharetra finibus eu non dui. Phasellus varius, velit et faucibus posuere, lorem urna feugiat arcu, id molestie est nunc at ante.'),
(742, 111, '_section_desc_newsSection', 'field_5ab3fb4230b58'),
(743, 111, 'more_newsSection', 'a:3:{s:5:"title";s:22:"AL HET NIEUWS BEKIJKEN";s:3:"url";s:1:"#";s:6:"target";s:0:"";}'),
(744, 111, '_more_newsSection', 'field_5ab3fb5830b59'),
(745, 111, 'postToShow_newsSection', 'custom'),
(746, 111, '_postToShow_newsSection', 'field_5ab3fb6f30b5a'),
(747, 111, 'choosePost_newsSection', 'a:2:{i:0;s:3:"102";i:1;s:3:"103";}'),
(748, 111, '_choosePost_newsSection', 'field_5ab3fbb730b5b'),
(749, 112, 'image_subContentSection', '79'),
(750, 112, '_image_subContentSection', 'field_5ab3eaa7816c1'),
(751, 112, 'section_title_subContentSection', 'ONDERSTEUN DE WINTERCAMPAGNE'),
(752, 112, '_section_title_subContentSection', 'field_5ab3cf3b88a5d'),
(753, 112, 'section_description_subContentSection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.'),
(754, 112, '_section_description_subContentSection', 'field_5ab3cf5c88a5e'),
(755, 112, 'more_link_subContentSection', 'a:3:{s:5:"title";s:30:"BEKIJK DE CAMPAGNEMIDDELEN 123";s:3:"url";s:1:"#";s:6:"target";s:6:"_blank";}'),
(756, 112, '_more_link_subContentSection', 'field_5ab3cf6d88a5f'),
(757, 112, '2_column_sub_subContentSection_0_title_2col_subContentSection', 'ANDERE THEMA’S'),
(758, 112, '_2_column_sub_subContentSection_0_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(759, 112, '2_column_sub_subContentSection_0_description_2col_subContentSection', '<ul>\r\n 	<li><a title="Zomerbanden" href="#">Zomerbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Veiligheid &amp; profiel" href="#">Veiligheid &amp; profiel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Bandenspanning" href="#">Bandenspanning</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(760, 112, '_2_column_sub_subContentSection_0_description_2col_subContentSection', 'field_5ab3eadc816c4');
INSERT INTO `ndpk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(761, 112, '2_column_sub_subContentSection_1_title_2col_subContentSection', 'POSTER GENERATOR'),
(762, 112, '_2_column_sub_subContentSection_1_title_2col_subContentSection', 'field_5ab3eacd816c3'),
(763, 112, '2_column_sub_subContentSection_1_description_2col_subContentSection', '<ul>\r\n 	<li>Maak posters met uw eigen logo en bedrijfsnaam en ondersteun de campagne!</li>\r\n 	<li><a title="Postergenerator" href="#">Postergenerator</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(764, 112, '_2_column_sub_subContentSection_1_description_2col_subContentSection', 'field_5ab3eadc816c4'),
(765, 112, '2_column_sub_subContentSection', '2'),
(766, 112, '_2_column_sub_subContentSection', 'field_5ab3eab2816c2'),
(767, 112, 'section_bg_3col_section', '91'),
(768, 112, '_section_bg_3col_section', 'field_5ab3f11d0eae3'),
(769, 112, 'sectionTitle_3col_section', 'ALLES OVER BANDEN'),
(770, 112, '_sectionTitle_3col_section', 'field_5ab3f13f0eae4'),
(771, 112, 'sectionDesc_3col_section', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.'),
(772, 112, '_sectionDesc_3col_section', 'field_5ab3f1540eae5'),
(773, 112, '3col_rep_3col_section_0_img_sub_3col_section', '92'),
(774, 112, '_3col_rep_3col_section_0_img_sub_3col_section', 'field_5ab3f1a50eae7'),
(775, 112, '3col_rep_3col_section_0_title_sub_3col_section', 'BANDENKEUZE'),
(776, 112, '_3col_rep_3col_section_0_title_sub_3col_section', 'field_5ab3f1cb0eae8'),
(777, 112, '3col_rep_3col_section_0_desc_sub_3col_section', '<ul>\r\n 	<li><a title="Bandenlabel" href="#">Bandenlabel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Zomerbanden" href="#">Zomerbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Winterbanden" href="#">Winterbanden</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="All-season" href="#">All-season</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(778, 112, '_3col_rep_3col_section_0_desc_sub_3col_section', 'field_5ab3f1d50eae9'),
(779, 112, '3col_rep_3col_section_1_img_sub_3col_section', '93'),
(780, 112, '_3col_rep_3col_section_1_img_sub_3col_section', 'field_5ab3f1a50eae7'),
(781, 112, '3col_rep_3col_section_1_title_sub_3col_section', 'BANDENKEUZE'),
(782, 112, '_3col_rep_3col_section_1_title_sub_3col_section', 'field_5ab3f1cb0eae8'),
(783, 112, '3col_rep_3col_section_1_desc_sub_3col_section', '<ul>\r\n 	<li><a title="Profiel" href="#">Profiel</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Beschadiging" href="#">Beschadiging</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Spanning" href="#">Spanning</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(784, 112, '_3col_rep_3col_section_1_desc_sub_3col_section', 'field_5ab3f1d50eae9'),
(785, 112, '3col_rep_3col_section_2_img_sub_3col_section', '94'),
(786, 112, '_3col_rep_3col_section_2_img_sub_3col_section', 'field_5ab3f1a50eae7'),
(787, 112, '3col_rep_3col_section_2_title_sub_3col_section', 'BANDENSPANNING'),
(788, 112, '_3col_rep_3col_section_2_title_sub_3col_section', 'field_5ab3f1cb0eae8'),
(789, 112, '3col_rep_3col_section_2_desc_sub_3col_section', '<ul>\r\n 	<li><a title="Advies" href="#">Advies</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Modelinformatie" href="#">Modelinformatie</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="Oppomplocaties" href="#">Oppomplocaties</a><i class="ico ico-arrow-right"></i></li>\r\n 	<li><a title="App gebruiken" href="#">App gebruiken</a><i class="ico ico-arrow-right"></i></li>\r\n</ul>'),
(790, 112, '_3col_rep_3col_section_2_desc_sub_3col_section', 'field_5ab3f1d50eae9'),
(791, 112, '3col_rep_3col_section', '3'),
(792, 112, '_3col_rep_3col_section', 'field_5ab3f1710eae6'),
(793, 112, 'section_title_newsSection', 'NIEUWS'),
(794, 112, '_section_title_newsSection', 'field_5ab3fb2530b57'),
(795, 112, 'section_desc_newsSection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a enim et sem pharetra finibus eu non dui. Phasellus varius, velit et faucibus posuere, lorem urna feugiat arcu, id molestie est nunc at ante.'),
(796, 112, '_section_desc_newsSection', 'field_5ab3fb4230b58'),
(797, 112, 'more_newsSection', 'a:3:{s:5:"title";s:22:"AL HET NIEUWS BEKIJKEN";s:3:"url";s:1:"#";s:6:"target";s:0:"";}'),
(798, 112, '_more_newsSection', 'field_5ab3fb5830b59'),
(799, 112, 'postToShow_newsSection', 'latest'),
(800, 112, '_postToShow_newsSection', 'field_5ab3fb6f30b5a'),
(801, 112, 'choosePost_newsSection', 'a:2:{i:0;s:3:"102";i:1;s:3:"103";}'),
(802, 112, '_choosePost_newsSection', 'field_5ab3fbb730b5b'),
(803, 96, '_thumbnail_id', '91');

-- --------------------------------------------------------

--
-- Table structure for table `ndpk_posts`
--

CREATE TABLE IF NOT EXISTS `ndpk_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ndpk_posts`
--

INSERT INTO `ndpk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-20 17:15:01', '2018-03-20 17:15:01', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-03-22 18:49:01', '2018-03-22 18:49:01', '', 0, 'http://localhost/niraj-dai/kies/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-20 17:15:01', '2018-03-20 17:15:01', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/niraj-dai/kies/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-03-20 17:15:01', '2018-03-20 17:15:01', '', 0, 'http://localhost/niraj-dai/kies/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-03-20 17:19:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-20 17:19:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/niraj-dai/kies/?p=3', 0, 'post', '', 0),
(4, 1, '2018-03-21 17:28:29', '2018-03-21 17:28:29', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:12:"theme-option";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Theme Option', 'theme-option', 'publish', 'closed', 'closed', '', 'group_5ab295cf7d667', '', '', '2018-03-21 18:41:44', '2018-03-21 18:41:44', '', 0, 'http://localhost/niraj-dai/kies/?post_type=acf-field-group&#038;p=4', 0, 'acf-field-group', '', 0),
(5, 1, '2018-03-21 17:28:29', '2018-03-21 17:28:29', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'General', '', 'publish', 'closed', 'closed', '', 'field_5ab295e4a988e', '', '', '2018-03-21 17:28:29', '2018-03-21 17:28:29', '', 4, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=5', 0, 'acf-field', '', 0),
(6, 1, '2018-03-21 17:28:29', '2018-03-21 17:28:29', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo', '_site_logo', 'publish', 'closed', 'closed', '', 'field_5ab295f2a988f', '', '', '2018-03-21 17:28:29', '2018-03-21 17:28:29', '', 4, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=6', 1, 'acf-field', '', 0),
(7, 1, '2018-03-21 17:31:10', '2018-03-21 17:31:10', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-03-21 17:31:10', '2018-03-21 17:31:10', '', 0, 'http://localhost/niraj-dai/kies/wp-content/uploads/2018/03/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(8, 1, '2018-03-21 17:36:17', '2018-03-21 17:36:17', '', 'KIES DE BESTE BAND PORTAL VOOR PROFESSIONALS', '', 'publish', 'closed', 'closed', '', 'kies-de-beste-band-portal-voor-professionals', '', '', '2018-03-21 18:48:32', '2018-03-21 18:48:32', '', 0, 'http://localhost/niraj-dai/kies/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2018-03-21 17:36:17', '2018-03-21 17:36:17', '', 'Naar de consumentensite', '', 'publish', 'closed', 'closed', '', 'naar-de-consumentensite', '', '', '2018-03-21 18:48:32', '2018-03-21 18:48:32', '', 0, 'http://localhost/niraj-dai/kies/?p=9', 2, 'nav_menu_item', '', 0),
(10, 1, '2018-03-21 17:39:50', '2018-03-21 17:39:50', '', 'NIEUWS', '', 'publish', 'closed', 'closed', '', 'nieuws', '', '', '2018-03-21 17:39:50', '2018-03-21 17:39:50', '', 0, 'http://localhost/niraj-dai/kies/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2018-03-21 17:39:50', '2018-03-21 17:39:50', '', 'BANDENKEUZE', '', 'publish', 'closed', 'closed', '', 'bandenkeuze', '', '', '2018-03-21 17:39:50', '2018-03-21 17:39:50', '', 0, 'http://localhost/niraj-dai/kies/?p=11', 2, 'nav_menu_item', '', 0),
(12, 1, '2018-03-21 17:39:50', '2018-03-21 17:39:50', '', 'BANDENCHECK', '', 'publish', 'closed', 'closed', '', 'bandencheck', '', '', '2018-03-21 17:39:50', '2018-03-21 17:39:50', '', 0, 'http://localhost/niraj-dai/kies/?p=12', 3, 'nav_menu_item', '', 0),
(13, 1, '2018-03-21 17:39:51', '2018-03-21 17:39:51', '', 'BANDENSPANNING', '', 'publish', 'closed', 'closed', '', 'bandenspanning', '', '', '2018-03-21 17:39:51', '2018-03-21 17:39:51', '', 0, 'http://localhost/niraj-dai/kies/?p=13', 4, 'nav_menu_item', '', 0),
(14, 1, '2018-03-21 17:39:51', '2018-03-21 17:39:51', '', 'BANDENLABEL', '', 'publish', 'closed', 'closed', '', 'bandenlabel', '', '', '2018-03-21 17:39:51', '2018-03-21 17:39:51', '', 0, 'http://localhost/niraj-dai/kies/?p=14', 5, 'nav_menu_item', '', 0),
(15, 1, '2018-03-21 17:39:51', '2018-03-21 17:39:51', '', 'ZOMERBANDEN', '', 'publish', 'closed', 'closed', '', 'zomerbanden', '', '', '2018-03-21 17:39:51', '2018-03-21 17:39:51', '', 0, 'http://localhost/niraj-dai/kies/?p=15', 6, 'nav_menu_item', '', 0),
(16, 1, '2018-03-21 17:39:51', '2018-03-21 17:39:51', '', 'WINTERBANDEN', '', 'publish', 'closed', 'closed', '', 'winterbanden', '', '', '2018-03-21 17:39:51', '2018-03-21 17:39:51', '', 0, 'http://localhost/niraj-dai/kies/?p=16', 7, 'nav_menu_item', '', 0),
(17, 1, '2018-03-21 17:39:52', '2018-03-21 17:39:52', '', 'ALL-SEASON', '', 'publish', 'closed', 'closed', '', 'all-season', '', '', '2018-03-21 17:39:52', '2018-03-21 17:39:52', '', 0, 'http://localhost/niraj-dai/kies/?p=17', 8, 'nav_menu_item', '', 0),
(18, 1, '2018-03-21 17:39:52', '2018-03-21 17:39:52', '', 'DOWNLOADS', '', 'publish', 'closed', 'closed', '', 'downloads', '', '', '2018-03-21 17:39:52', '2018-03-21 17:39:52', '', 0, 'http://localhost/niraj-dai/kies/?p=18', 9, 'nav_menu_item', '', 0),
(19, 1, '2018-03-21 17:39:52', '2018-03-21 17:39:52', '', 'CAMPAGNES', '', 'publish', 'closed', 'closed', '', 'campagnes', '', '', '2018-03-21 17:39:52', '2018-03-21 17:39:52', '', 0, 'http://localhost/niraj-dai/kies/?p=19', 10, 'nav_menu_item', '', 0),
(20, 1, '2018-03-21 17:39:52', '2018-03-21 17:39:52', '', 'ONDERZOEKSRAPPORTEN', '', 'publish', 'closed', 'closed', '', 'onderzoeksrapporten', '', '', '2018-03-21 17:39:52', '2018-03-21 17:39:52', '', 0, 'http://localhost/niraj-dai/kies/?p=20', 11, 'nav_menu_item', '', 0),
(21, 1, '2018-03-21 17:39:52', '2018-03-21 17:39:52', '', 'FACTSHEETS', '', 'publish', 'closed', 'closed', '', 'factsheets', '', '', '2018-03-21 17:39:52', '2018-03-21 17:39:52', '', 0, 'http://localhost/niraj-dai/kies/?p=21', 12, 'nav_menu_item', '', 0),
(22, 1, '2018-03-21 17:39:53', '2018-03-21 17:39:53', '', 'VIDEO & ANIMATIE', '', 'publish', 'closed', 'closed', '', 'video-animatie', '', '', '2018-03-21 17:39:53', '2018-03-21 17:39:53', '', 0, 'http://localhost/niraj-dai/kies/?p=22', 13, 'nav_menu_item', '', 0),
(23, 1, '2018-03-21 17:39:53', '2018-03-21 17:39:53', '', 'PERSBERICHTEN', '', 'publish', 'closed', 'closed', '', 'persberichten', '', '', '2018-03-21 17:39:53', '2018-03-21 17:39:53', '', 0, 'http://localhost/niraj-dai/kies/?p=23', 14, 'nav_menu_item', '', 0),
(24, 1, '2018-03-21 17:39:53', '2018-03-21 17:39:53', '', 'BIJEENKOMSTEN', '', 'publish', 'closed', 'closed', '', 'bijeenkomsten', '', '', '2018-03-21 17:39:53', '2018-03-21 17:39:53', '', 0, 'http://localhost/niraj-dai/kies/?p=24', 15, 'nav_menu_item', '', 0),
(25, 1, '2018-03-21 17:39:53', '2018-03-21 17:39:53', '', 'LOGO’S', '', 'publish', 'closed', 'closed', '', 'logos', '', '', '2018-03-21 17:39:53', '2018-03-21 17:39:53', '', 0, 'http://localhost/niraj-dai/kies/?p=25', 16, 'nav_menu_item', '', 0),
(26, 1, '2018-03-21 17:39:54', '2018-03-21 17:39:54', '', 'OVERIGEN', '', 'publish', 'closed', 'closed', '', 'overigen', '', '', '2018-03-21 17:39:54', '2018-03-21 17:39:54', '', 0, 'http://localhost/niraj-dai/kies/?p=26', 17, 'nav_menu_item', '', 0),
(27, 1, '2018-03-21 17:39:54', '2018-03-21 17:39:54', '', 'ONDERSTEUN DE CAMPAGNE', '', 'publish', 'closed', 'closed', '', 'ondersteun-de-campagne', '', '', '2018-03-21 17:39:54', '2018-03-21 17:39:54', '', 0, 'http://localhost/niraj-dai/kies/?p=27', 18, 'nav_menu_item', '', 0),
(28, 1, '2018-03-21 17:39:54', '2018-03-21 17:39:54', '', 'WINTERBANDEN', '', 'publish', 'closed', 'closed', '', 'winterbanden-2', '', '', '2018-03-21 17:39:54', '2018-03-21 17:39:54', '', 0, 'http://localhost/niraj-dai/kies/?p=28', 19, 'nav_menu_item', '', 0),
(29, 1, '2018-03-21 17:39:54', '2018-03-21 17:39:54', '', 'ZOMERBANDEN', '', 'publish', 'closed', 'closed', '', 'zomerbanden-2', '', '', '2018-03-21 17:39:54', '2018-03-21 17:39:54', '', 0, 'http://localhost/niraj-dai/kies/?p=29', 20, 'nav_menu_item', '', 0),
(30, 1, '2018-03-21 17:39:55', '2018-03-21 17:39:55', '', 'VEILIGHEID', '', 'publish', 'closed', 'closed', '', 'veiligheid', '', '', '2018-03-21 17:39:55', '2018-03-21 17:39:55', '', 0, 'http://localhost/niraj-dai/kies/?p=30', 21, 'nav_menu_item', '', 0),
(31, 1, '2018-03-21 17:39:55', '2018-03-21 17:39:55', '', 'BANDENSPANNING', '', 'publish', 'closed', 'closed', '', 'bandenspanning-2', '', '', '2018-03-21 17:39:55', '2018-03-21 17:39:55', '', 0, 'http://localhost/niraj-dai/kies/?p=31', 22, 'nav_menu_item', '', 0),
(32, 1, '2018-03-21 17:39:55', '2018-03-21 17:39:55', '', 'CONTACT', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-03-21 17:39:55', '2018-03-21 17:39:55', '', 0, 'http://localhost/niraj-dai/kies/?p=32', 23, 'nav_menu_item', '', 0),
(33, 1, '2018-03-21 18:04:19', '2018-03-21 18:04:19', '', 'Nieuwsoverzicht', '', 'publish', 'closed', 'closed', '', 'nieuws-2', '', '', '2018-03-21 18:48:46', '2018-03-21 18:48:46', '', 0, 'http://localhost/niraj-dai/kies/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2018-03-21 18:05:34', '2018-03-21 18:05:34', '', 'Bandenlabel', '', 'publish', 'closed', 'closed', '', 'bandenlabel-2', '', '', '2018-03-21 18:48:54', '2018-03-21 18:48:54', '', 0, 'http://localhost/niraj-dai/kies/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2018-03-21 18:05:34', '2018-03-21 18:05:34', '', 'Zomerbanden', '', 'publish', 'closed', 'closed', '', 'zomerbanden-3', '', '', '2018-03-21 18:48:54', '2018-03-21 18:48:54', '', 0, 'http://localhost/niraj-dai/kies/?p=35', 2, 'nav_menu_item', '', 0),
(36, 1, '2018-03-21 18:05:34', '2018-03-21 18:05:34', '', 'Winterbanden', '', 'publish', 'closed', 'closed', '', 'winterbanden-3', '', '', '2018-03-21 18:48:54', '2018-03-21 18:48:54', '', 0, 'http://localhost/niraj-dai/kies/?p=36', 3, 'nav_menu_item', '', 0),
(37, 1, '2018-03-21 18:05:35', '2018-03-21 18:05:35', '', 'All-season', '', 'publish', 'closed', 'closed', '', 'all-season-2', '', '', '2018-03-21 18:48:54', '2018-03-21 18:48:54', '', 0, 'http://localhost/niraj-dai/kies/?p=37', 4, 'nav_menu_item', '', 0),
(38, 1, '2018-03-21 18:06:48', '2018-03-21 18:06:48', '', 'Profiel', '', 'publish', 'closed', 'closed', '', 'profiel', '', '', '2018-03-21 18:49:01', '2018-03-21 18:49:01', '', 0, 'http://localhost/niraj-dai/kies/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2018-03-21 18:06:48', '2018-03-21 18:06:48', '', 'Beschadiging', '', 'publish', 'closed', 'closed', '', 'beschadiging', '', '', '2018-03-21 18:49:01', '2018-03-21 18:49:01', '', 0, 'http://localhost/niraj-dai/kies/?p=39', 2, 'nav_menu_item', '', 0),
(40, 1, '2018-03-21 18:06:48', '2018-03-21 18:06:48', '', 'Spanning', '', 'publish', 'closed', 'closed', '', 'spanning', '', '', '2018-03-21 18:49:01', '2018-03-21 18:49:01', '', 0, 'http://localhost/niraj-dai/kies/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2018-03-21 18:07:56', '2018-03-21 18:07:56', '', 'Advies', '', 'publish', 'closed', 'closed', '', 'advies', '', '', '2018-03-21 18:49:09', '2018-03-21 18:49:09', '', 0, 'http://localhost/niraj-dai/kies/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2018-03-21 18:07:57', '2018-03-21 18:07:57', '', 'Pompkaart', '', 'publish', 'closed', 'closed', '', 'pompkaart', '', '', '2018-03-21 18:49:09', '2018-03-21 18:49:09', '', 0, 'http://localhost/niraj-dai/kies/?p=42', 2, 'nav_menu_item', '', 0),
(43, 1, '2018-03-21 18:07:57', '2018-03-21 18:07:57', '', 'Spanning opzoeken', '', 'publish', 'closed', 'closed', '', 'spanning-opzoeken', '', '', '2018-03-21 18:49:09', '2018-03-21 18:49:09', '', 0, 'http://localhost/niraj-dai/kies/?p=43', 3, 'nav_menu_item', '', 0),
(44, 1, '2018-03-21 18:09:09', '2018-03-21 18:09:09', '', 'Logo’s', '', 'publish', 'closed', 'closed', '', 'logos-2', '', '', '2018-03-21 18:49:19', '2018-03-21 18:49:19', '', 0, 'http://localhost/niraj-dai/kies/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2018-03-21 18:09:09', '2018-03-21 18:09:09', '', 'Campagnes', '', 'publish', 'closed', 'closed', '', 'campagnes-2', '', '', '2018-03-21 18:49:19', '2018-03-21 18:49:19', '', 0, 'http://localhost/niraj-dai/kies/?p=45', 2, 'nav_menu_item', '', 0),
(46, 1, '2018-03-21 18:09:09', '2018-03-21 18:09:09', '', 'Factsheets', '', 'publish', 'closed', 'closed', '', 'factsheets-2', '', '', '2018-03-21 18:49:19', '2018-03-21 18:49:19', '', 0, 'http://localhost/niraj-dai/kies/?p=46', 3, 'nav_menu_item', '', 0),
(47, 1, '2018-03-21 18:09:10', '2018-03-21 18:09:10', '', 'Bijeenkomsten', '', 'publish', 'closed', 'closed', '', 'bijeenkomsten-2', '', '', '2018-03-21 18:49:19', '2018-03-21 18:49:19', '', 0, 'http://localhost/niraj-dai/kies/?p=47', 4, 'nav_menu_item', '', 0),
(48, 1, '2018-03-21 18:09:10', '2018-03-21 18:09:10', '', 'Onderzoeksrapporten', '', 'publish', 'closed', 'closed', '', 'onderzoeksrapporten-2', '', '', '2018-03-21 18:49:19', '2018-03-21 18:49:19', '', 0, 'http://localhost/niraj-dai/kies/?p=48', 5, 'nav_menu_item', '', 0),
(49, 1, '2018-03-21 18:09:10', '2018-03-21 18:09:10', '', 'Overige middelen', '', 'publish', 'closed', 'closed', '', 'overige-middelen', '', '', '2018-03-21 18:49:19', '2018-03-21 18:49:19', '', 0, 'http://localhost/niraj-dai/kies/?p=49', 6, 'nav_menu_item', '', 0),
(50, 1, '2018-03-21 18:10:01', '2018-03-21 18:10:01', '', 'Winterbanden', '', 'publish', 'closed', 'closed', '', 'winterbanden-4', '', '', '2018-03-21 18:49:28', '2018-03-21 18:49:28', '', 0, 'http://localhost/niraj-dai/kies/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2018-03-21 18:10:01', '2018-03-21 18:10:01', '', 'Zomerbanden', '', 'publish', 'closed', 'closed', '', 'zomerbanden-4', '', '', '2018-03-21 18:49:28', '2018-03-21 18:49:28', '', 0, 'http://localhost/niraj-dai/kies/?p=51', 2, 'nav_menu_item', '', 0),
(52, 1, '2018-03-21 18:10:02', '2018-03-21 18:10:02', '', 'Veiligheid', '', 'publish', 'closed', 'closed', '', 'veiligheid-2', '', '', '2018-03-21 18:49:28', '2018-03-21 18:49:28', '', 0, 'http://localhost/niraj-dai/kies/?p=52', 3, 'nav_menu_item', '', 0),
(53, 1, '2018-03-21 18:10:02', '2018-03-21 18:10:02', '', 'Bandenspanning', '', 'publish', 'closed', 'closed', '', 'bandenspanning-3', '', '', '2018-03-21 18:49:28', '2018-03-21 18:49:28', '', 0, 'http://localhost/niraj-dai/kies/?p=53', 4, 'nav_menu_item', '', 0),
(54, 1, '2018-03-21 18:12:51', '2018-03-21 18:12:51', '', 'Contactinformatie', '', 'publish', 'closed', 'closed', '', 'contactinformatie', '', '', '2018-03-21 18:49:36', '2018-03-21 18:49:36', '', 0, 'http://localhost/niraj-dai/kies/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2018-03-21 18:28:18', '2018-03-21 18:28:18', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Footer', '', 'publish', 'closed', 'closed', '', 'field_5ab2a30829cb0', '', '', '2018-03-21 18:28:18', '2018-03-21 18:28:18', '', 4, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=55', 2, 'acf-field', '', 0),
(56, 1, '2018-03-21 18:28:18', '2018-03-21 18:28:18', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:8:"Add Logo";}', 'Add Partners Logo (1)', 'add_partners_logo_1', 'publish', 'closed', 'closed', '', 'field_5ab2a32829cb1', '', '', '2018-03-21 18:28:18', '2018-03-21 18:28:18', '', 4, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=56', 3, 'acf-field', '', 0),
(57, 1, '2018-03-21 18:28:18', '2018-03-21 18:28:18', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Upload Logo', '_site_upload_logo_1', 'publish', 'closed', 'closed', '', 'field_5ab2a34a29cb2', '', '', '2018-03-21 18:28:18', '2018-03-21 18:28:18', '', 56, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=57', 0, 'acf-field', '', 0),
(58, 1, '2018-03-21 18:28:19', '2018-03-21 18:28:19', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:8:"Add Logo";}', 'Add Partners Logo (2)', 'add_partners_logo_2', 'publish', 'closed', 'closed', '', 'field_5ab2a36429cb3', '', '', '2018-03-21 18:28:19', '2018-03-21 18:28:19', '', 4, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=58', 4, 'acf-field', '', 0),
(59, 1, '2018-03-21 18:28:19', '2018-03-21 18:28:19', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Upload Image', 'upload_image', 'publish', 'closed', 'closed', '', 'field_5ab2a37f29cb4', '', '', '2018-03-21 18:28:19', '2018-03-21 18:28:19', '', 58, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=59', 0, 'acf-field', '', 0),
(60, 1, '2018-03-21 18:28:19', '2018-03-21 18:28:19', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";i:3;s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'Social Link', 'social_link', 'publish', 'closed', 'closed', '', 'field_5ab2a39629cb5', '', '', '2018-03-21 18:28:19', '2018-03-21 18:28:19', '', 4, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=60', 5, 'acf-field', '', 0),
(61, 1, '2018-03-21 18:28:19', '2018-03-21 18:28:19', 'a:14:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:3:{s:6:"ico-fb";s:8:"Facebook";s:11:"ico-twitter";s:7:"Twitter";s:9:"ico-vimeo";s:5:"Vimeo";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:11:"placeholder";s:0:"";s:8:"disabled";i:0;s:8:"readonly";i:0;}', 'Social Media', 'social_media', 'publish', 'closed', 'closed', '', 'field_5ab2a3c529cb6', '', '', '2018-03-21 18:41:44', '2018-03-21 18:41:44', '', 60, 'http://localhost/niraj-dai/kies/?post_type=acf-field&#038;p=61', 0, 'acf-field', '', 0),
(62, 1, '2018-03-21 18:28:19', '2018-03-21 18:28:19', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Social URL', 'social_url', 'publish', 'closed', 'closed', '', 'field_5ab2a3fe29cb7', '', '', '2018-03-21 18:28:19', '2018-03-21 18:28:19', '', 60, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=62', 1, 'acf-field', '', 0),
(63, 1, '2018-03-21 18:28:19', '2018-03-21 18:28:19', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:5:"basic";s:12:"media_upload";i:0;}', 'Copyright Text', 'copyright_text', 'publish', 'closed', 'closed', '', 'field_5ab2a42129cb8', '', '', '2018-03-21 18:28:19', '2018-03-21 18:28:19', '', 4, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=63', 6, 'acf-field', '', 0),
(64, 1, '2018-03-21 18:48:16', '2018-03-21 18:48:16', '', 'Privacy statement', '', 'publish', 'closed', 'closed', '', 'privacy-statement', '', '', '2018-03-21 18:48:16', '2018-03-21 18:48:16', '', 0, 'http://localhost/niraj-dai/kies/?p=64', 1, 'nav_menu_item', '', 0),
(65, 1, '2018-03-21 18:48:17', '2018-03-21 18:48:17', '', 'Cookie policy', '', 'publish', 'closed', 'closed', '', 'cookie-policy', '', '', '2018-03-21 18:48:17', '2018-03-21 18:48:17', '', 0, 'http://localhost/niraj-dai/kies/?p=65', 2, 'nav_menu_item', '', 0),
(66, 1, '2018-03-22 15:08:40', '2018-03-22 15:08:40', '<h2>KIES DE BESTE BAND <strong>PORTAL VOOR PROFESSIONALS</strong></h2>\r\nIntroductietekst over het doel van dit platform. Samen met een aantal andere partners is het ministerie van Infrastructuur en Milieu een publiekscampagne gestart die consumenten en retail moet helpen bij het kiezen van de best mogelijke autoband wanneer deze ver- sleten is.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.', 'Home page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2018-03-22 19:31:29', '2018-03-22 19:31:29', '', 0, 'http://localhost/niraj-dai/kies/?page_id=66', 0, 'page', '', 0),
(67, 1, '2018-03-22 15:08:40', '2018-03-22 15:08:40', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-03-22 15:08:40', '2018-03-22 15:08:40', '', 66, 'http://localhost/niraj-dai/kies/2018/03/22/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-03-22 15:11:48', '2018-03-22 15:11:48', '<h2>KIES DE BESTE BAND <strong>PORTAL VOOR PROFESSIONALS</strong></h2>\nIntroductietekst over het doel van dit platform. Samen met een aantal andere partners is het ministerie van Infrastructuur en Milieu een publiekscampagne gestart die consumenten en retail moet helpen bij het kiezen van de best mogelijke autoband wanneer deze ver- sleten is.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.', 'Home page', '', 'inherit', 'closed', 'closed', '', '66-autosave-v1', '', '', '2018-03-22 15:11:48', '2018-03-22 15:11:48', '', 66, 'http://localhost/niraj-dai/kies/2018/03/22/66-autosave-v1/', 0, 'revision', '', 0),
(69, 1, '2018-03-22 15:12:14', '2018-03-22 15:12:14', '', 'banner-img', '', 'inherit', 'open', 'closed', '', 'banner-img', '', '', '2018-03-22 15:12:14', '2018-03-22 15:12:14', '', 66, 'http://localhost/niraj-dai/kies/wp-content/uploads/2018/03/banner-img.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2018-03-22 15:12:28', '2018-03-22 15:12:28', '<h2>KIES DE BESTE BAND <strong>PORTAL VOOR PROFESSIONALS</strong></h2>\r\nIntroductietekst over het doel van dit platform. Samen met een aantal andere partners is het ministerie van Infrastructuur en Milieu een publiekscampagne gestart die consumenten en retail moet helpen bij het kiezen van de best mogelijke autoband wanneer deze ver- sleten is.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.', 'Home page', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-03-22 15:12:28', '2018-03-22 15:12:28', '', 66, 'http://localhost/niraj-dai/kies/2018/03/22/66-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-03-22 15:45:10', '2018-03-22 15:45:10', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"page_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"front_page";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Sub Content Section', 'sub-content-section', 'publish', 'closed', 'closed', '', 'group_5ab3cf2d1af9a', '', '', '2018-03-22 17:46:54', '2018-03-22 17:46:54', '', 0, 'http://localhost/niraj-dai/kies/?post_type=acf-field-group&#038;p=71', 0, 'acf-field-group', '', 0),
(72, 1, '2018-03-22 15:45:10', '2018-03-22 15:45:10', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Section Title', 'section_title_subContentSection', 'publish', 'closed', 'closed', '', 'field_5ab3cf3b88a5d', '', '', '2018-03-22 17:42:12', '2018-03-22 17:42:12', '', 71, 'http://localhost/niraj-dai/kies/?post_type=acf-field&#038;p=72', 1, 'acf-field', '', 0),
(73, 1, '2018-03-22 15:45:10', '2018-03-22 15:45:10', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;}', 'Section Description', 'section_description_subContentSection', 'publish', 'closed', 'closed', '', 'field_5ab3cf5c88a5e', '', '', '2018-03-22 17:42:13', '2018-03-22 17:42:13', '', 71, 'http://localhost/niraj-dai/kies/?post_type=acf-field&#038;p=73', 2, 'acf-field', '', 0),
(74, 1, '2018-03-22 15:45:10', '2018-03-22 15:45:10', 'a:6:{s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";}', 'More Link', 'more_link_subContentSection', 'publish', 'closed', 'closed', '', 'field_5ab3cf6d88a5f', '', '', '2018-03-22 17:42:13', '2018-03-22 17:42:13', '', 71, 'http://localhost/niraj-dai/kies/?post_type=acf-field&#038;p=74', 3, 'acf-field', '', 0),
(75, 1, '2018-03-22 17:42:12', '2018-03-22 17:42:12', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Image', 'image_subContentSection', 'publish', 'closed', 'closed', '', 'field_5ab3eaa7816c1', '', '', '2018-03-22 17:42:12', '2018-03-22 17:42:12', '', 71, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=75', 0, 'acf-field', '', 0),
(76, 1, '2018-03-22 17:42:13', '2018-03-22 17:42:13', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";i:2;s:6:"layout";s:5:"block";s:12:"button_label";s:0:"";}', '2 Column Sub Section', '2_column_sub_subContentSection', 'publish', 'closed', 'closed', '', 'field_5ab3eab2816c2', '', '', '2018-03-22 17:46:54', '2018-03-22 17:46:54', '', 71, 'http://localhost/niraj-dai/kies/?post_type=acf-field&#038;p=76', 4, 'acf-field', '', 0),
(77, 1, '2018-03-22 17:42:13', '2018-03-22 17:42:13', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 'title_2col_subContentSection', 'publish', 'closed', 'closed', '', 'field_5ab3eacd816c3', '', '', '2018-03-22 17:42:13', '2018-03-22 17:42:13', '', 76, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=77', 0, 'acf-field', '', 0),
(78, 1, '2018-03-22 17:42:13', '2018-03-22 17:42:13', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Description', 'description_2col_subContentSection', 'publish', 'closed', 'closed', '', 'field_5ab3eadc816c4', '', '', '2018-03-22 17:42:13', '2018-03-22 17:42:13', '', 76, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=78', 1, 'acf-field', '', 0),
(79, 1, '2018-03-22 17:45:39', '2018-03-22 17:45:39', '', 'winterbanden', '', 'inherit', 'open', 'closed', '', 'winterbanden-5', '', '', '2018-03-22 17:45:39', '2018-03-22 17:45:39', '', 66, 'http://localhost/niraj-dai/kies/wp-content/uploads/2018/03/winterbanden.svg', 0, 'attachment', 'image/svg+xml', 0),
(80, 1, '2018-03-22 17:46:48', '2018-03-22 17:46:48', '<h2>KIES DE BESTE BAND <strong>PORTAL VOOR PROFESSIONALS</strong></h2>\r\nIntroductietekst over het doel van dit platform. Samen met een aantal andere partners is het ministerie van Infrastructuur en Milieu een publiekscampagne gestart die consumenten en retail moet helpen bij het kiezen van de best mogelijke autoband wanneer deze ver- sleten is.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.', 'Home page', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-03-22 17:46:48', '2018-03-22 17:46:48', '', 66, 'http://localhost/niraj-dai/kies/2018/03/22/66-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-03-22 17:58:56', '2018-03-22 17:58:56', '<h2>KIES DE BESTE BAND <strong>PORTAL VOOR PROFESSIONALS</strong></h2>\r\nIntroductietekst over het doel van dit platform. Samen met een aantal andere partners is het ministerie van Infrastructuur en Milieu een publiekscampagne gestart die consumenten en retail moet helpen bij het kiezen van de best mogelijke autoband wanneer deze ver- sleten is.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.', 'Home page', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-03-22 17:58:56', '2018-03-22 17:58:56', '', 66, 'http://localhost/niraj-dai/kies/2018/03/22/66-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-03-22 17:59:50', '2018-03-22 17:59:50', '<h2>KIES DE BESTE BAND <strong>PORTAL VOOR PROFESSIONALS</strong></h2>\r\nIntroductietekst over het doel van dit platform. Samen met een aantal andere partners is het ministerie van Infrastructuur en Milieu een publiekscampagne gestart die consumenten en retail moet helpen bij het kiezen van de best mogelijke autoband wanneer deze ver- sleten is.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.', 'Home page', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-03-22 17:59:50', '2018-03-22 17:59:50', '', 66, 'http://localhost/niraj-dai/kies/2018/03/22/66-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-03-22 18:11:53', '2018-03-22 18:11:53', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"page_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"front_page";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', '3 Column Section', '3-column-section', 'publish', 'closed', 'closed', '', 'group_5ab3f10ad143d', '', '', '2018-03-22 18:11:54', '2018-03-22 18:11:54', '', 0, 'http://localhost/niraj-dai/kies/?post_type=acf-field-group&#038;p=83', 0, 'acf-field-group', '', 0),
(84, 1, '2018-03-22 18:11:53', '2018-03-22 18:11:53', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Section Background', 'section_bg_3col_section', 'publish', 'closed', 'closed', '', 'field_5ab3f11d0eae3', '', '', '2018-03-22 18:11:53', '2018-03-22 18:11:53', '', 83, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=84', 0, 'acf-field', '', 0),
(85, 1, '2018-03-22 18:11:53', '2018-03-22 18:11:53', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Section Title', 'sectionTitle_3col_section', 'publish', 'closed', 'closed', '', 'field_5ab3f13f0eae4', '', '', '2018-03-22 18:11:53', '2018-03-22 18:11:53', '', 83, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=85', 1, 'acf-field', '', 0),
(86, 1, '2018-03-22 18:11:53', '2018-03-22 18:11:53', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Section Description', 'sectionDesc_3col_section', 'publish', 'closed', 'closed', '', 'field_5ab3f1540eae5', '', '', '2018-03-22 18:11:53', '2018-03-22 18:11:53', '', 83, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=86', 2, 'acf-field', '', 0),
(87, 1, '2018-03-22 18:11:53', '2018-03-22 18:11:53', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";i:3;s:6:"layout";s:5:"block";s:12:"button_label";s:10:"Add Column";}', '3 Column Content', '3col_rep_3col_section', 'publish', 'closed', 'closed', '', 'field_5ab3f1710eae6', '', '', '2018-03-22 18:11:53', '2018-03-22 18:11:53', '', 83, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=87', 3, 'acf-field', '', 0),
(88, 1, '2018-03-22 18:11:53', '2018-03-22 18:11:53', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Image', 'img_sub_3col_section', 'publish', 'closed', 'closed', '', 'field_5ab3f1a50eae7', '', '', '2018-03-22 18:11:53', '2018-03-22 18:11:53', '', 87, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=88', 0, 'acf-field', '', 0),
(89, 1, '2018-03-22 18:11:54', '2018-03-22 18:11:54', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 'title_sub_3col_section', 'publish', 'closed', 'closed', '', 'field_5ab3f1cb0eae8', '', '', '2018-03-22 18:11:54', '2018-03-22 18:11:54', '', 87, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=89', 1, 'acf-field', '', 0),
(90, 1, '2018-03-22 18:11:54', '2018-03-22 18:11:54', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Description', 'desc_sub_3col_section', 'publish', 'closed', 'closed', '', 'field_5ab3f1d50eae9', '', '', '2018-03-22 18:11:54', '2018-03-22 18:11:54', '', 87, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=90', 2, 'acf-field', '', 0),
(91, 1, '2018-03-22 18:29:14', '2018-03-22 18:29:14', '', 'img-2', '', 'inherit', 'open', 'closed', '', 'img-2', '', '', '2018-03-22 18:29:20', '2018-03-22 18:29:20', '', 66, 'http://localhost/niraj-dai/kies/wp-content/uploads/2018/03/img-2.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2018-03-22 18:30:00', '2018-03-22 18:30:00', '', 'bandenkeuze', '', 'inherit', 'open', 'closed', '', 'bandenkeuze-2', '', '', '2018-03-22 18:30:00', '2018-03-22 18:30:00', '', 66, 'http://localhost/niraj-dai/kies/wp-content/uploads/2018/03/bandenkeuze.svg', 0, 'attachment', 'image/svg+xml', 0),
(93, 1, '2018-03-22 18:30:38', '2018-03-22 18:30:38', '', 'bandencheck', '', 'inherit', 'open', 'closed', '', 'bandencheck-2', '', '', '2018-03-22 18:30:38', '2018-03-22 18:30:38', '', 66, 'http://localhost/niraj-dai/kies/wp-content/uploads/2018/03/bandencheck.svg', 0, 'attachment', 'image/svg+xml', 0),
(94, 1, '2018-03-22 18:31:16', '2018-03-22 18:31:16', '', 'bandenspanning', '', 'inherit', 'open', 'closed', '', 'bandenspanning-4', '', '', '2018-03-22 18:31:16', '2018-03-22 18:31:16', '', 66, 'http://localhost/niraj-dai/kies/wp-content/uploads/2018/03/bandenspanning.svg', 0, 'attachment', 'image/svg+xml', 0),
(95, 1, '2018-03-22 18:31:26', '2018-03-22 18:31:26', '<h2>KIES DE BESTE BAND <strong>PORTAL VOOR PROFESSIONALS</strong></h2>\r\nIntroductietekst over het doel van dit platform. Samen met een aantal andere partners is het ministerie van Infrastructuur en Milieu een publiekscampagne gestart die consumenten en retail moet helpen bij het kiezen van de best mogelijke autoband wanneer deze ver- sleten is.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.', 'Home page', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-03-22 18:31:26', '2018-03-22 18:31:26', '', 66, 'http://localhost/niraj-dai/kies/2018/03/22/66-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-03-22 18:46:13', '2018-03-22 18:46:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a enim et sem pharetra finibus eu non dui. Phasellus varius, velit et faucibus posuere, lorem urna feugiat arcu, id molestie est nunc at ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna nisl. Praesent tempus cursus iaculis. Pellentesque rhoncus, velit non facilisis molestie, justo ipsum molestie odio, at posuere enim tortor at neque. Ut porta massa vitae dui hendrerit, pretium placerat nisi efficitur. Donec dictum metus est, non pellentesque erat commodo in.\r\n\r\nNulla malesuada ac diam eu tristique. Vivamus non turpis posuere, tempor risus at, porta mauris. Nam convallis arcu vel nisl varius, ornare rhoncus eros elementum. Duis lacinia dolor vitae tortor vulputate iaculis. Vestibulum neque risus, rutrum vel tellus sed, rutrum tincidunt massa. Aenean bibendum ligula metus, sed ultrices lacus commodo sit amet. Etiam porttitor consequat posuere. Nulla at faucibus urna. Sed tempor rutrum suscipit. Ut nibh metus, pharetra quis scelerisque vitae, auctor a odio. Morbi condimentum tincidunt imperdiet. Suspendisse ligula tellus, laoreet nec sapien sed, egestas luctus elit. Maecenas quis diam vel nisl eleifend pellentesque nec eget enim. Donec luctus auctor blandit. Quisque sed nisl at quam convallis posuere ut sed justo. Aliquam id pulvinar nisi.\r\n\r\nAenean vitae cursus libero. Duis ullamcorper sodales ipsum at varius. Donec quis nunc laoreet tellus sagittis lacinia ac non nisi. Suspendisse nec diam facilisis, tincidunt nulla id, fermentum dui. Vivamus in dapibus magna, id ultrices odio. Ut aliquet orci vel eros luctus elementum. Maecenas vestibulum feugiat mauris, ac consectetur lacus. Nam nec metus auctor lorem semper pulvinar eget dignissim eros. Aliquam facilisis nisi vitae sollicitudin facilisis. Integer imperdiet purus eu ligula faucibus pellentesque. Donec vel elit aliquet, dignissim odio vitae, volutpat justo. Nam id felis dolor. Sed luctus suscipit nunc et ultricies.\r\n\r\nVivamus vitae lorem ornare, accumsan nulla vitae, finibus dolor. Praesent ut dui libero. Vivamus tristique mattis tellus id fermentum. Praesent posuere libero id mauris volutpat, sed vulputate arcu suscipit. Integer faucibus, lectus at sodales vestibulum, orci eros blandit velit, ac laoreet ex justo vel dolor. Suspendisse mi massa, volutpat eget suscipit in, auctor sit amet nisi. Aliquam a turpis euismod est dictum sagittis non vel nisi. Nunc in gravida ex. Sed lectus nunc, ornare vitae tellus ac, tempor tempor est. Maecenas auctor scelerisque nisl in auctor. Sed tincidunt viverra nibh, at commodo mauris ultricies id. Etiam semper mi ornare sem egestas, efficitur varius metus laoreet. Suspendisse in mi est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus vitae sapien urna.\r\n\r\nFusce eu neque eu lectus bibendum ornare. Integer fermentum pretium arcu quis facilisis. Aliquam velit felis, placerat a libero eget, rhoncus ultrices leo. Proin eget nulla ac elit placerat molestie. Pellentesque mattis semper ipsum, sit amet volutpat sem porttitor ac. Maecenas viverra tincidunt lectus, id rutrum ex eleifend nec. Morbi pretium feugiat odio, ut ullamcorper mi.', 'Lorem ipsum dolor sit amet', 'Fusce eu neque eu lectus bibendum ornare. Integer fermentum pretium arcu quis facilisis. Aliquam velit felis, placerat a libero eget, rhoncus ultrices leo. Proin eget nulla ac elit placerat molestie. Pellentesque mattis semper ipsum, sit amet volutpat sem porttitor ac. Maecenas viverra tincidunt lectus, id rutrum ex eleifend nec. Morbi pretium feugiat odio, ut ullamcorper mi.', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet', '', '', '2018-03-22 19:32:51', '2018-03-22 19:32:51', '', 0, 'http://localhost/niraj-dai/kies/?p=96', 0, 'post', '', 0),
(97, 1, '2018-03-22 18:46:13', '2018-03-22 18:46:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a enim et sem pharetra finibus eu non dui. Phasellus varius, velit et faucibus posuere, lorem urna feugiat arcu, id molestie est nunc at ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna nisl. Praesent tempus cursus iaculis. Pellentesque rhoncus, velit non facilisis molestie, justo ipsum molestie odio, at posuere enim tortor at neque. Ut porta massa vitae dui hendrerit, pretium placerat nisi efficitur. Donec dictum metus est, non pellentesque erat commodo in.\r\n\r\nNulla malesuada ac diam eu tristique. Vivamus non turpis posuere, tempor risus at, porta mauris. Nam convallis arcu vel nisl varius, ornare rhoncus eros elementum. Duis lacinia dolor vitae tortor vulputate iaculis. Vestibulum neque risus, rutrum vel tellus sed, rutrum tincidunt massa. Aenean bibendum ligula metus, sed ultrices lacus commodo sit amet. Etiam porttitor consequat posuere. Nulla at faucibus urna. Sed tempor rutrum suscipit. Ut nibh metus, pharetra quis scelerisque vitae, auctor a odio. Morbi condimentum tincidunt imperdiet. Suspendisse ligula tellus, laoreet nec sapien sed, egestas luctus elit. Maecenas quis diam vel nisl eleifend pellentesque nec eget enim. Donec luctus auctor blandit. Quisque sed nisl at quam convallis posuere ut sed justo. Aliquam id pulvinar nisi.\r\n\r\nAenean vitae cursus libero. Duis ullamcorper sodales ipsum at varius. Donec quis nunc laoreet tellus sagittis lacinia ac non nisi. Suspendisse nec diam facilisis, tincidunt nulla id, fermentum dui. Vivamus in dapibus magna, id ultrices odio. Ut aliquet orci vel eros luctus elementum. Maecenas vestibulum feugiat mauris, ac consectetur lacus. Nam nec metus auctor lorem semper pulvinar eget dignissim eros. Aliquam facilisis nisi vitae sollicitudin facilisis. Integer imperdiet purus eu ligula faucibus pellentesque. Donec vel elit aliquet, dignissim odio vitae, volutpat justo. Nam id felis dolor. Sed luctus suscipit nunc et ultricies.\r\n\r\nVivamus vitae lorem ornare, accumsan nulla vitae, finibus dolor. Praesent ut dui libero. Vivamus tristique mattis tellus id fermentum. Praesent posuere libero id mauris volutpat, sed vulputate arcu suscipit. Integer faucibus, lectus at sodales vestibulum, orci eros blandit velit, ac laoreet ex justo vel dolor. Suspendisse mi massa, volutpat eget suscipit in, auctor sit amet nisi. Aliquam a turpis euismod est dictum sagittis non vel nisi. Nunc in gravida ex. Sed lectus nunc, ornare vitae tellus ac, tempor tempor est. Maecenas auctor scelerisque nisl in auctor. Sed tincidunt viverra nibh, at commodo mauris ultricies id. Etiam semper mi ornare sem egestas, efficitur varius metus laoreet. Suspendisse in mi est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus vitae sapien urna.\r\n\r\nFusce eu neque eu lectus bibendum ornare. Integer fermentum pretium arcu quis facilisis. Aliquam velit felis, placerat a libero eget, rhoncus ultrices leo. Proin eget nulla ac elit placerat molestie. Pellentesque mattis semper ipsum, sit amet volutpat sem porttitor ac. Maecenas viverra tincidunt lectus, id rutrum ex eleifend nec. Morbi pretium feugiat odio, ut ullamcorper mi.', 'Lorem ipsum dolor sit amet', 'Fusce eu neque eu lectus bibendum ornare. Integer fermentum pretium arcu quis facilisis. Aliquam velit felis, placerat a libero eget, rhoncus ultrices leo. Proin eget nulla ac elit placerat molestie. Pellentesque mattis semper ipsum, sit amet volutpat sem porttitor ac. Maecenas viverra tincidunt lectus, id rutrum ex eleifend nec. Morbi pretium feugiat odio, ut ullamcorper mi.', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2018-03-22 18:46:13', '2018-03-22 18:46:13', '', 96, 'http://localhost/niraj-dai/kies/2018/03/22/96-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ndpk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(98, 1, '2018-03-22 18:48:48', '2018-03-22 18:48:48', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a enim et sem pharetra finibus eu non dui. Phasellus varius, velit et faucibus posuere, lorem urna feugiat arcu, id molestie est nunc at ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna nisl. Praesent tempus cursus iaculis. Pellentesque rhoncus, velit non facilisis molestie, justo ipsum molestie odio, at posuere enim tortor at neque. Ut porta massa vitae dui hendrerit, pretium placerat nisi efficitur. Donec dictum metus est, non pellentesque erat commodo in.\r\n\r\nNulla malesuada ac diam eu tristique. Vivamus non turpis posuere, tempor risus at, porta mauris. Nam convallis arcu vel nisl varius, ornare rhoncus eros elementum. Duis lacinia dolor vitae tortor vulputate iaculis. Vestibulum neque risus, rutrum vel tellus sed, rutrum tincidunt massa. Aenean bibendum ligula metus, sed ultrices lacus commodo sit amet. Etiam porttitor consequat posuere. Nulla at faucibus urna. Sed tempor rutrum suscipit. Ut nibh metus, pharetra quis scelerisque vitae, auctor a odio. Morbi condimentum tincidunt imperdiet. Suspendisse ligula tellus, laoreet nec sapien sed, egestas luctus elit. Maecenas quis diam vel nisl eleifend pellentesque nec eget enim. Donec luctus auctor blandit. Quisque sed nisl at quam convallis posuere ut sed justo. Aliquam id pulvinar nisi.\r\n\r\nAenean vitae cursus libero. Duis ullamcorper sodales ipsum at varius. Donec quis nunc laoreet tellus sagittis lacinia ac non nisi. Suspendisse nec diam facilisis, tincidunt nulla id, fermentum dui. Vivamus in dapibus magna, id ultrices odio. Ut aliquet orci vel eros luctus elementum. Maecenas vestibulum feugiat mauris, ac consectetur lacus. Nam nec metus auctor lorem semper pulvinar eget dignissim eros. Aliquam facilisis nisi vitae sollicitudin facilisis. Integer imperdiet purus eu ligula faucibus pellentesque. Donec vel elit aliquet, dignissim odio vitae, volutpat justo. Nam id felis dolor. Sed luctus suscipit nunc et ultricies.\r\n\r\nVivamus vitae lorem ornare, accumsan nulla vitae, finibus dolor. Praesent ut dui libero. Vivamus tristique mattis tellus id fermentum. Praesent posuere libero id mauris volutpat, sed vulputate arcu suscipit. Integer faucibus, lectus at sodales vestibulum, orci eros blandit velit, ac laoreet ex justo vel dolor. Suspendisse mi massa, volutpat eget suscipit in, auctor sit amet nisi. Aliquam a turpis euismod est dictum sagittis non vel nisi. Nunc in gravida ex. Sed lectus nunc, ornare vitae tellus ac, tempor tempor est. Maecenas auctor scelerisque nisl in auctor. Sed tincidunt viverra nibh, at commodo mauris ultricies id. Etiam semper mi ornare sem egestas, efficitur varius metus laoreet. Suspendisse in mi est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus vitae sapien urna.\r\n\r\nFusce eu neque eu lectus bibendum ornare. Integer fermentum pretium arcu quis facilisis. Aliquam velit felis, placerat a libero eget, rhoncus ultrices leo. Proin eget nulla ac elit placerat molestie. Pellentesque mattis semper ipsum, sit amet volutpat sem porttitor ac. Maecenas viverra tincidunt lectus, id rutrum ex eleifend nec. Morbi pretium feugiat odio, ut ullamcorper mi.', 'Lorem ipsum dolor sit amet  Copy', 'Fusce eu neque eu lectus bibendum ornare. Integer fermentum pretium arcu quis facilisis. Aliquam velit felis, placerat a libero eget, rhoncus ultrices leo. Proin eget nulla ac elit placerat molestie. Pellentesque mattis semper ipsum, sit amet volutpat sem porttitor ac. Maecenas viverra tincidunt lectus, id rutrum ex eleifend nec. Morbi pretium feugiat odio, ut ullamcorper mi.', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-copy', '', '', '2018-03-22 18:48:48', '2018-03-22 18:48:48', '', 0, 'http://localhost/niraj-dai/kies/2018/03/22/lorem-ipsum-dolor-sit-amet-copy/', 0, 'post', '', 0),
(99, 1, '2018-03-22 18:48:53', '2018-03-22 18:48:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a enim et sem pharetra finibus eu non dui. Phasellus varius, velit et faucibus posuere, lorem urna feugiat arcu, id molestie est nunc at ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna nisl. Praesent tempus cursus iaculis. Pellentesque rhoncus, velit non facilisis molestie, justo ipsum molestie odio, at posuere enim tortor at neque. Ut porta massa vitae dui hendrerit, pretium placerat nisi efficitur. Donec dictum metus est, non pellentesque erat commodo in.\r\n\r\nNulla malesuada ac diam eu tristique. Vivamus non turpis posuere, tempor risus at, porta mauris. Nam convallis arcu vel nisl varius, ornare rhoncus eros elementum. Duis lacinia dolor vitae tortor vulputate iaculis. Vestibulum neque risus, rutrum vel tellus sed, rutrum tincidunt massa. Aenean bibendum ligula metus, sed ultrices lacus commodo sit amet. Etiam porttitor consequat posuere. Nulla at faucibus urna. Sed tempor rutrum suscipit. Ut nibh metus, pharetra quis scelerisque vitae, auctor a odio. Morbi condimentum tincidunt imperdiet. Suspendisse ligula tellus, laoreet nec sapien sed, egestas luctus elit. Maecenas quis diam vel nisl eleifend pellentesque nec eget enim. Donec luctus auctor blandit. Quisque sed nisl at quam convallis posuere ut sed justo. Aliquam id pulvinar nisi.\r\n\r\nAenean vitae cursus libero. Duis ullamcorper sodales ipsum at varius. Donec quis nunc laoreet tellus sagittis lacinia ac non nisi. Suspendisse nec diam facilisis, tincidunt nulla id, fermentum dui. Vivamus in dapibus magna, id ultrices odio. Ut aliquet orci vel eros luctus elementum. Maecenas vestibulum feugiat mauris, ac consectetur lacus. Nam nec metus auctor lorem semper pulvinar eget dignissim eros. Aliquam facilisis nisi vitae sollicitudin facilisis. Integer imperdiet purus eu ligula faucibus pellentesque. Donec vel elit aliquet, dignissim odio vitae, volutpat justo. Nam id felis dolor. Sed luctus suscipit nunc et ultricies.\r\n\r\nVivamus vitae lorem ornare, accumsan nulla vitae, finibus dolor. Praesent ut dui libero. Vivamus tristique mattis tellus id fermentum. Praesent posuere libero id mauris volutpat, sed vulputate arcu suscipit. Integer faucibus, lectus at sodales vestibulum, orci eros blandit velit, ac laoreet ex justo vel dolor. Suspendisse mi massa, volutpat eget suscipit in, auctor sit amet nisi. Aliquam a turpis euismod est dictum sagittis non vel nisi. Nunc in gravida ex. Sed lectus nunc, ornare vitae tellus ac, tempor tempor est. Maecenas auctor scelerisque nisl in auctor. Sed tincidunt viverra nibh, at commodo mauris ultricies id. Etiam semper mi ornare sem egestas, efficitur varius metus laoreet. Suspendisse in mi est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus vitae sapien urna.\r\n\r\nFusce eu neque eu lectus bibendum ornare. Integer fermentum pretium arcu quis facilisis. Aliquam velit felis, placerat a libero eget, rhoncus ultrices leo. Proin eget nulla ac elit placerat molestie. Pellentesque mattis semper ipsum, sit amet volutpat sem porttitor ac. Maecenas viverra tincidunt lectus, id rutrum ex eleifend nec. Morbi pretium feugiat odio, ut ullamcorper mi.', 'Lorem ipsum dolor sit amet  Copy', 'Fusce eu neque eu lectus bibendum ornare. Integer fermentum pretium arcu quis facilisis. Aliquam velit felis, placerat a libero eget, rhoncus ultrices leo. Proin eget nulla ac elit placerat molestie. Pellentesque mattis semper ipsum, sit amet volutpat sem porttitor ac. Maecenas viverra tincidunt lectus, id rutrum ex eleifend nec. Morbi pretium feugiat odio, ut ullamcorper mi.', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-copy-2', '', '', '2018-03-22 18:48:53', '2018-03-22 18:48:53', '', 0, 'http://localhost/niraj-dai/kies/2018/03/22/lorem-ipsum-dolor-sit-amet-copy-2/', 0, 'post', '', 0),
(100, 1, '2018-03-22 18:48:57', '2018-03-22 18:48:57', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a enim et sem pharetra finibus eu non dui. Phasellus varius, velit et faucibus posuere, lorem urna feugiat arcu, id molestie est nunc at ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna nisl. Praesent tempus cursus iaculis. Pellentesque rhoncus, velit non facilisis molestie, justo ipsum molestie odio, at posuere enim tortor at neque. Ut porta massa vitae dui hendrerit, pretium placerat nisi efficitur. Donec dictum metus est, non pellentesque erat commodo in.\r\n\r\nNulla malesuada ac diam eu tristique. Vivamus non turpis posuere, tempor risus at, porta mauris. Nam convallis arcu vel nisl varius, ornare rhoncus eros elementum. Duis lacinia dolor vitae tortor vulputate iaculis. Vestibulum neque risus, rutrum vel tellus sed, rutrum tincidunt massa. Aenean bibendum ligula metus, sed ultrices lacus commodo sit amet. Etiam porttitor consequat posuere. Nulla at faucibus urna. Sed tempor rutrum suscipit. Ut nibh metus, pharetra quis scelerisque vitae, auctor a odio. Morbi condimentum tincidunt imperdiet. Suspendisse ligula tellus, laoreet nec sapien sed, egestas luctus elit. Maecenas quis diam vel nisl eleifend pellentesque nec eget enim. Donec luctus auctor blandit. Quisque sed nisl at quam convallis posuere ut sed justo. Aliquam id pulvinar nisi.\r\n\r\nAenean vitae cursus libero. Duis ullamcorper sodales ipsum at varius. Donec quis nunc laoreet tellus sagittis lacinia ac non nisi. Suspendisse nec diam facilisis, tincidunt nulla id, fermentum dui. Vivamus in dapibus magna, id ultrices odio. Ut aliquet orci vel eros luctus elementum. Maecenas vestibulum feugiat mauris, ac consectetur lacus. Nam nec metus auctor lorem semper pulvinar eget dignissim eros. Aliquam facilisis nisi vitae sollicitudin facilisis. Integer imperdiet purus eu ligula faucibus pellentesque. Donec vel elit aliquet, dignissim odio vitae, volutpat justo. Nam id felis dolor. Sed luctus suscipit nunc et ultricies.\r\n\r\nVivamus vitae lorem ornare, accumsan nulla vitae, finibus dolor. Praesent ut dui libero. Vivamus tristique mattis tellus id fermentum. Praesent posuere libero id mauris volutpat, sed vulputate arcu suscipit. Integer faucibus, lectus at sodales vestibulum, orci eros blandit velit, ac laoreet ex justo vel dolor. Suspendisse mi massa, volutpat eget suscipit in, auctor sit amet nisi. Aliquam a turpis euismod est dictum sagittis non vel nisi. Nunc in gravida ex. Sed lectus nunc, ornare vitae tellus ac, tempor tempor est. Maecenas auctor scelerisque nisl in auctor. Sed tincidunt viverra nibh, at commodo mauris ultricies id. Etiam semper mi ornare sem egestas, efficitur varius metus laoreet. Suspendisse in mi est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus vitae sapien urna.\r\n\r\nFusce eu neque eu lectus bibendum ornare. Integer fermentum pretium arcu quis facilisis. Aliquam velit felis, placerat a libero eget, rhoncus ultrices leo. Proin eget nulla ac elit placerat molestie. Pellentesque mattis semper ipsum, sit amet volutpat sem porttitor ac. Maecenas viverra tincidunt lectus, id rutrum ex eleifend nec. Morbi pretium feugiat odio, ut ullamcorper mi.', 'Lorem ipsum dolor sit amet  Copy', 'Fusce eu neque eu lectus bibendum ornare. Integer fermentum pretium arcu quis facilisis. Aliquam velit felis, placerat a libero eget, rhoncus ultrices leo. Proin eget nulla ac elit placerat molestie. Pellentesque mattis semper ipsum, sit amet volutpat sem porttitor ac. Maecenas viverra tincidunt lectus, id rutrum ex eleifend nec. Morbi pretium feugiat odio, ut ullamcorper mi.', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-copy-3', '', '', '2018-03-22 18:48:57', '2018-03-22 18:48:57', '', 0, 'http://localhost/niraj-dai/kies/2018/03/22/lorem-ipsum-dolor-sit-amet-copy-3/', 0, 'post', '', 0),
(101, 1, '2018-03-22 18:49:01', '2018-03-22 18:49:01', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-03-22 18:49:01', '2018-03-22 18:49:01', '', 1, 'http://localhost/niraj-dai/kies/2018/03/22/1-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-03-22 18:49:07', '2018-03-22 18:49:07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a enim et sem pharetra finibus eu non dui. Phasellus varius, velit et faucibus posuere, lorem urna feugiat arcu, id molestie est nunc at ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna nisl. Praesent tempus cursus iaculis. Pellentesque rhoncus, velit non facilisis molestie, justo ipsum molestie odio, at posuere enim tortor at neque. Ut porta massa vitae dui hendrerit, pretium placerat nisi efficitur. Donec dictum metus est, non pellentesque erat commodo in.\r\n\r\nNulla malesuada ac diam eu tristique. Vivamus non turpis posuere, tempor risus at, porta mauris. Nam convallis arcu vel nisl varius, ornare rhoncus eros elementum. Duis lacinia dolor vitae tortor vulputate iaculis. Vestibulum neque risus, rutrum vel tellus sed, rutrum tincidunt massa. Aenean bibendum ligula metus, sed ultrices lacus commodo sit amet. Etiam porttitor consequat posuere. Nulla at faucibus urna. Sed tempor rutrum suscipit. Ut nibh metus, pharetra quis scelerisque vitae, auctor a odio. Morbi condimentum tincidunt imperdiet. Suspendisse ligula tellus, laoreet nec sapien sed, egestas luctus elit. Maecenas quis diam vel nisl eleifend pellentesque nec eget enim. Donec luctus auctor blandit. Quisque sed nisl at quam convallis posuere ut sed justo. Aliquam id pulvinar nisi.\r\n\r\nAenean vitae cursus libero. Duis ullamcorper sodales ipsum at varius. Donec quis nunc laoreet tellus sagittis lacinia ac non nisi. Suspendisse nec diam facilisis, tincidunt nulla id, fermentum dui. Vivamus in dapibus magna, id ultrices odio. Ut aliquet orci vel eros luctus elementum. Maecenas vestibulum feugiat mauris, ac consectetur lacus. Nam nec metus auctor lorem semper pulvinar eget dignissim eros. Aliquam facilisis nisi vitae sollicitudin facilisis. Integer imperdiet purus eu ligula faucibus pellentesque. Donec vel elit aliquet, dignissim odio vitae, volutpat justo. Nam id felis dolor. Sed luctus suscipit nunc et ultricies.\r\n\r\nVivamus vitae lorem ornare, accumsan nulla vitae, finibus dolor. Praesent ut dui libero. Vivamus tristique mattis tellus id fermentum. Praesent posuere libero id mauris volutpat, sed vulputate arcu suscipit. Integer faucibus, lectus at sodales vestibulum, orci eros blandit velit, ac laoreet ex justo vel dolor. Suspendisse mi massa, volutpat eget suscipit in, auctor sit amet nisi. Aliquam a turpis euismod est dictum sagittis non vel nisi. Nunc in gravida ex. Sed lectus nunc, ornare vitae tellus ac, tempor tempor est. Maecenas auctor scelerisque nisl in auctor. Sed tincidunt viverra nibh, at commodo mauris ultricies id. Etiam semper mi ornare sem egestas, efficitur varius metus laoreet. Suspendisse in mi est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus vitae sapien urna.\r\n\r\nFusce eu neque eu lectus bibendum ornare. Integer fermentum pretium arcu quis facilisis. Aliquam velit felis, placerat a libero eget, rhoncus ultrices leo. Proin eget nulla ac elit placerat molestie. Pellentesque mattis semper ipsum, sit amet volutpat sem porttitor ac. Maecenas viverra tincidunt lectus, id rutrum ex eleifend nec. Morbi pretium feugiat odio, ut ullamcorper mi.', 'Lorem ipsum dolor sit amet  Copy  Copy', 'Fusce eu neque eu lectus bibendum ornare. Integer fermentum pretium arcu quis facilisis. Aliquam velit felis, placerat a libero eget, rhoncus ultrices leo. Proin eget nulla ac elit placerat molestie. Pellentesque mattis semper ipsum, sit amet volutpat sem porttitor ac. Maecenas viverra tincidunt lectus, id rutrum ex eleifend nec. Morbi pretium feugiat odio, ut ullamcorper mi.', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-copy-3-copy', '', '', '2018-03-22 18:49:07', '2018-03-22 18:49:07', '', 0, 'http://localhost/niraj-dai/kies/2018/03/22/lorem-ipsum-dolor-sit-amet-copy-3-copy/', 0, 'post', '', 0),
(103, 1, '2018-03-22 18:49:12', '2018-03-22 18:49:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a enim et sem pharetra finibus eu non dui. Phasellus varius, velit et faucibus posuere, lorem urna feugiat arcu, id molestie est nunc at ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna nisl. Praesent tempus cursus iaculis. Pellentesque rhoncus, velit non facilisis molestie, justo ipsum molestie odio, at posuere enim tortor at neque. Ut porta massa vitae dui hendrerit, pretium placerat nisi efficitur. Donec dictum metus est, non pellentesque erat commodo in.\r\n\r\nNulla malesuada ac diam eu tristique. Vivamus non turpis posuere, tempor risus at, porta mauris. Nam convallis arcu vel nisl varius, ornare rhoncus eros elementum. Duis lacinia dolor vitae tortor vulputate iaculis. Vestibulum neque risus, rutrum vel tellus sed, rutrum tincidunt massa. Aenean bibendum ligula metus, sed ultrices lacus commodo sit amet. Etiam porttitor consequat posuere. Nulla at faucibus urna. Sed tempor rutrum suscipit. Ut nibh metus, pharetra quis scelerisque vitae, auctor a odio. Morbi condimentum tincidunt imperdiet. Suspendisse ligula tellus, laoreet nec sapien sed, egestas luctus elit. Maecenas quis diam vel nisl eleifend pellentesque nec eget enim. Donec luctus auctor blandit. Quisque sed nisl at quam convallis posuere ut sed justo. Aliquam id pulvinar nisi.\r\n\r\nAenean vitae cursus libero. Duis ullamcorper sodales ipsum at varius. Donec quis nunc laoreet tellus sagittis lacinia ac non nisi. Suspendisse nec diam facilisis, tincidunt nulla id, fermentum dui. Vivamus in dapibus magna, id ultrices odio. Ut aliquet orci vel eros luctus elementum. Maecenas vestibulum feugiat mauris, ac consectetur lacus. Nam nec metus auctor lorem semper pulvinar eget dignissim eros. Aliquam facilisis nisi vitae sollicitudin facilisis. Integer imperdiet purus eu ligula faucibus pellentesque. Donec vel elit aliquet, dignissim odio vitae, volutpat justo. Nam id felis dolor. Sed luctus suscipit nunc et ultricies.\r\n\r\nVivamus vitae lorem ornare, accumsan nulla vitae, finibus dolor. Praesent ut dui libero. Vivamus tristique mattis tellus id fermentum. Praesent posuere libero id mauris volutpat, sed vulputate arcu suscipit. Integer faucibus, lectus at sodales vestibulum, orci eros blandit velit, ac laoreet ex justo vel dolor. Suspendisse mi massa, volutpat eget suscipit in, auctor sit amet nisi. Aliquam a turpis euismod est dictum sagittis non vel nisi. Nunc in gravida ex. Sed lectus nunc, ornare vitae tellus ac, tempor tempor est. Maecenas auctor scelerisque nisl in auctor. Sed tincidunt viverra nibh, at commodo mauris ultricies id. Etiam semper mi ornare sem egestas, efficitur varius metus laoreet. Suspendisse in mi est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus vitae sapien urna.\r\n\r\nFusce eu neque eu lectus bibendum ornare. Integer fermentum pretium arcu quis facilisis. Aliquam velit felis, placerat a libero eget, rhoncus ultrices leo. Proin eget nulla ac elit placerat molestie. Pellentesque mattis semper ipsum, sit amet volutpat sem porttitor ac. Maecenas viverra tincidunt lectus, id rutrum ex eleifend nec. Morbi pretium feugiat odio, ut ullamcorper mi.', 'Lorem ipsum dolor sit amet  Copy  Copy  Copy', 'Fusce eu neque eu lectus bibendum ornare. Integer fermentum pretium arcu quis facilisis. Aliquam velit felis, placerat a libero eget, rhoncus ultrices leo. Proin eget nulla ac elit placerat molestie. Pellentesque mattis semper ipsum, sit amet volutpat sem porttitor ac. Maecenas viverra tincidunt lectus, id rutrum ex eleifend nec. Morbi pretium feugiat odio, ut ullamcorper mi.', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-copy-3-copy-copy', '', '', '2018-03-22 18:49:12', '2018-03-22 18:49:12', '', 0, 'http://localhost/niraj-dai/kies/2018/03/22/lorem-ipsum-dolor-sit-amet-copy-3-copy-copy/', 0, 'post', '', 0),
(104, 1, '2018-03-22 18:54:37', '2018-03-22 18:54:37', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"page_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"front_page";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'News Section', 'news-section', 'publish', 'closed', 'closed', '', 'group_5ab3fadd0259c', '', '', '2018-03-22 18:55:31', '2018-03-22 18:55:31', '', 0, 'http://localhost/niraj-dai/kies/?post_type=acf-field-group&#038;p=104', 0, 'acf-field-group', '', 0),
(105, 1, '2018-03-22 18:54:37', '2018-03-22 18:54:37', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Section Title', 'section_title_newsSection', 'publish', 'closed', 'closed', '', 'field_5ab3fb2530b57', '', '', '2018-03-22 18:54:37', '2018-03-22 18:54:37', '', 104, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=105', 0, 'acf-field', '', 0),
(106, 1, '2018-03-22 18:54:37', '2018-03-22 18:54:37', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Section Description', 'section_desc_newsSection', 'publish', 'closed', 'closed', '', 'field_5ab3fb4230b58', '', '', '2018-03-22 18:54:37', '2018-03-22 18:54:37', '', 104, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=106', 1, 'acf-field', '', 0),
(107, 1, '2018-03-22 18:54:37', '2018-03-22 18:54:37', 'a:6:{s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";}', 'More', 'more_newsSection', 'publish', 'closed', 'closed', '', 'field_5ab3fb5830b59', '', '', '2018-03-22 18:54:37', '2018-03-22 18:54:37', '', 104, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=107', 2, 'acf-field', '', 0),
(108, 1, '2018-03-22 18:54:37', '2018-03-22 18:54:37', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:2:{s:6:"latest";s:11:"Latest Post";s:6:"custom";s:6:"Custom";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";}', 'Post to Show', 'postToShow_newsSection', 'publish', 'closed', 'closed', '', 'field_5ab3fb6f30b5a', '', '', '2018-03-22 18:55:31', '2018-03-22 18:55:31', '', 104, 'http://localhost/niraj-dai/kies/?post_type=acf-field&#038;p=108', 3, 'acf-field', '', 0),
(109, 1, '2018-03-22 18:54:38', '2018-03-22 18:54:38', 'a:12:{s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:4:"post";}s:8:"taxonomy";a:0:{}s:7:"filters";a:1:{i:0;s:6:"search";}s:8:"elements";s:0:"";s:3:"min";i:1;s:3:"max";i:4;s:13:"return_format";s:6:"object";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5ab3fb6f30b5a";s:8:"operator";s:2:"==";s:5:"value";s:6:"custom";}}}}', 'Choose Post', 'choosePost_newsSection', 'publish', 'closed', 'closed', '', 'field_5ab3fbb730b5b', '', '', '2018-03-22 18:54:38', '2018-03-22 18:54:38', '', 104, 'http://localhost/niraj-dai/kies/?post_type=acf-field&p=109', 4, 'acf-field', '', 0),
(110, 1, '2018-03-22 18:56:38', '2018-03-22 18:56:38', '<h2>KIES DE BESTE BAND <strong>PORTAL VOOR PROFESSIONALS</strong></h2>\r\nIntroductietekst over het doel van dit platform. Samen met een aantal andere partners is het ministerie van Infrastructuur en Milieu een publiekscampagne gestart die consumenten en retail moet helpen bij het kiezen van de best mogelijke autoband wanneer deze ver- sleten is.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.', 'Home page', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-03-22 18:56:38', '2018-03-22 18:56:38', '', 66, 'http://localhost/niraj-dai/kies/2018/03/22/66-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-03-22 19:18:27', '2018-03-22 19:18:27', '<h2>KIES DE BESTE BAND <strong>PORTAL VOOR PROFESSIONALS</strong></h2>\r\nIntroductietekst over het doel van dit platform. Samen met een aantal andere partners is het ministerie van Infrastructuur en Milieu een publiekscampagne gestart die consumenten en retail moet helpen bij het kiezen van de best mogelijke autoband wanneer deze ver- sleten is.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.', 'Home page', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-03-22 19:18:27', '2018-03-22 19:18:27', '', 66, 'http://localhost/niraj-dai/kies/2018/03/22/66-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-03-22 19:31:29', '2018-03-22 19:31:29', '<h2>KIES DE BESTE BAND <strong>PORTAL VOOR PROFESSIONALS</strong></h2>\r\nIntroductietekst over het doel van dit platform. Samen met een aantal andere partners is het ministerie van Infrastructuur en Milieu een publiekscampagne gestart die consumenten en retail moet helpen bij het kiezen van de best mogelijke autoband wanneer deze ver- sleten is.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc ante, euismod quis est vel, euismod volutpat enim. Cras eget luctus magna. Nullam ornare dolor id mauris auctor lacinia.', 'Home page', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-03-22 19:31:29', '2018-03-22 19:31:29', '', 66, 'http://localhost/niraj-dai/kies/2018/03/22/66-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ndpk_termmeta`
--

CREATE TABLE IF NOT EXISTS `ndpk_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ndpk_terms`
--

CREATE TABLE IF NOT EXISTS `ndpk_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ndpk_terms`
--

INSERT INTO `ndpk_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'Main Menu', 'main-menu', 0),
(4, 'Footer Widget 1', 'footer-widget-1', 0),
(5, 'Footer Widget 2', 'footer-widget-2', 0),
(6, 'Footer Widget 3', 'footer-widget-3', 0),
(7, 'Footer Widget 4', 'footer-widget-4', 0),
(8, 'Footer Widget 5', 'footer-widget-5', 0),
(9, 'Footer Widget 6', 'footer-widget-6', 0),
(10, 'Footer Widget 7', 'footer-widget-7', 0),
(11, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ndpk_term_relationships`
--

CREATE TABLE IF NOT EXISTS `ndpk_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ndpk_term_relationships`
--

INSERT INTO `ndpk_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(9, 2, 0),
(10, 3, 0),
(11, 3, 0),
(12, 3, 0),
(13, 3, 0),
(14, 3, 0),
(15, 3, 0),
(16, 3, 0),
(17, 3, 0),
(18, 3, 0),
(19, 3, 0),
(20, 3, 0),
(21, 3, 0),
(22, 3, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(31, 3, 0),
(32, 3, 0),
(33, 4, 0),
(34, 5, 0),
(35, 5, 0),
(36, 5, 0),
(37, 5, 0),
(38, 6, 0),
(39, 6, 0),
(40, 6, 0),
(41, 7, 0),
(42, 7, 0),
(43, 7, 0),
(44, 8, 0),
(45, 8, 0),
(46, 8, 0),
(47, 8, 0),
(48, 8, 0),
(49, 8, 0),
(50, 9, 0),
(51, 9, 0),
(52, 9, 0),
(53, 9, 0),
(54, 10, 0),
(64, 11, 0),
(65, 11, 0),
(96, 1, 0),
(98, 1, 0),
(99, 1, 0),
(100, 1, 0),
(102, 1, 0),
(103, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ndpk_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `ndpk_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ndpk_term_taxonomy`
--

INSERT INTO `ndpk_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 23),
(4, 4, 'nav_menu', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 4),
(6, 6, 'nav_menu', '', 0, 3),
(7, 7, 'nav_menu', '', 0, 3),
(8, 8, 'nav_menu', '', 0, 6),
(9, 9, 'nav_menu', '', 0, 4),
(10, 10, 'nav_menu', '', 0, 1),
(11, 11, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ndpk_usermeta`
--

CREATE TABLE IF NOT EXISTS `ndpk_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ndpk_usermeta`
--

INSERT INTO `ndpk_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'kies@admin'),
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
(12, 1, 'ndpk_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'ndpk_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"a243841efe47c1c1a7edd0707675b60768ef2705ea645631cfea3e11a48b94bb";a:4:{s:10:"expiration";i:1521913019;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36";s:5:"login";i:1521740219;}}'),
(17, 1, 'ndpk_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(19, 1, 'ndpk_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'ndpk_user-settings-time', '1521657032'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(23, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:"side";s:9:"submitdiv";s:6:"normal";s:80:"acf-field-group-fields,acf-field-group-locations,acf-field-group-options,slugdiv";s:8:"advanced";s:0:"";}'),
(24, 1, 'screen_layout_acf-field-group', '2'),
(25, 1, 'acf_user_settings', 'a:0:{}'),
(26, 1, 'closedpostboxes_page', 'a:3:{i:0;s:23:"acf-group_5ab3cf2d1af9a";i:1;s:23:"acf-group_5ab3f10ad143d";i:2;s:23:"acf-group_5ab3fadd0259c";}'),
(27, 1, 'metaboxhidden_page', 'a:6:{i:0;s:23:"acf-group_5ab295cf7d667";i:1;s:12:"revisionsdiv";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(28, 1, 'meta-box-order_page', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:36:"submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:155:"acf-group_5ab3cf2d1af9a,acf-group_5ab3f10ad143d,acf-group_5ab3fadd0259c,acf-group_5ab295cf7d667,revisionsdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(29, 1, 'screen_layout_page', '2'),
(30, 1, 'closedpostboxes_post', 'a:0:{}'),
(31, 1, 'metaboxhidden_post', 'a:7:{i:0;s:23:"acf-group_5ab3f10ad143d";i:1;s:23:"acf-group_5ab3cf2d1af9a";i:2;s:23:"acf-group_5ab295cf7d667";i:3;s:13:"trackbacksdiv";i:4;s:16:"commentstatusdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `ndpk_users`
--

CREATE TABLE IF NOT EXISTS `ndpk_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ndpk_users`
--

INSERT INTO `ndpk_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'kies@admin', '$P$B1IJr.SW7XxNvYdTZaWQhnosAVFurU1', 'kiesadmin', 'prajan.kamacharya@gmail.com', '', '2018-03-20 17:15:00', '', 0, 'kies@admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ndpk_commentmeta`
--
ALTER TABLE `ndpk_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ndpk_comments`
--
ALTER TABLE `ndpk_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `ndpk_links`
--
ALTER TABLE `ndpk_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `ndpk_options`
--
ALTER TABLE `ndpk_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `ndpk_postmeta`
--
ALTER TABLE `ndpk_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ndpk_posts`
--
ALTER TABLE `ndpk_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `ndpk_termmeta`
--
ALTER TABLE `ndpk_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ndpk_terms`
--
ALTER TABLE `ndpk_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `ndpk_term_relationships`
--
ALTER TABLE `ndpk_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `ndpk_term_taxonomy`
--
ALTER TABLE `ndpk_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `ndpk_usermeta`
--
ALTER TABLE `ndpk_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ndpk_users`
--
ALTER TABLE `ndpk_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ndpk_commentmeta`
--
ALTER TABLE `ndpk_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ndpk_comments`
--
ALTER TABLE `ndpk_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ndpk_links`
--
ALTER TABLE `ndpk_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ndpk_options`
--
ALTER TABLE `ndpk_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=223;
--
-- AUTO_INCREMENT for table `ndpk_postmeta`
--
ALTER TABLE `ndpk_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=806;
--
-- AUTO_INCREMENT for table `ndpk_posts`
--
ALTER TABLE `ndpk_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `ndpk_termmeta`
--
ALTER TABLE `ndpk_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ndpk_terms`
--
ALTER TABLE `ndpk_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ndpk_term_taxonomy`
--
ALTER TABLE `ndpk_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ndpk_usermeta`
--
ALTER TABLE `ndpk_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `ndpk_users`
--
ALTER TABLE `ndpk_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
