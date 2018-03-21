-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2018 at 07:51 PM
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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-20 17:15:01', '2018-03-20 17:15:01', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:"advanced-custom-fields-pro/acf.php";}', 'yes'),
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
(53, 'show_on_front', 'posts', 'yes'),
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
(84, 'page_on_front', '0', 'yes'),
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
(109, 'cron', 'a:5:{i:1521695704;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1521695705;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1521739164;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1521739596;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1521643639;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1521653165;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(118, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1521653191;s:7:"checked";a:4:{s:4:"kies";s:5:"1.0.0";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(119, '_site_transient_timeout_browser_49da57eac7f840522fef2b86e883cffa', '1522171168', 'no'),
(120, '_site_transient_browser_49da57eac7f840522fef2b86e883cffa', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"64.0.3282.186";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(122, 'can_compress_scripts', '1', 'no'),
(139, 'current_theme', 'kies', 'yes'),
(140, 'theme_mods_kies', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:7:"nav-top";i:2;s:8:"nav-main";i:3;s:10:"nav-footer";i:11;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(142, '_transient_timeout_plugin_slugs', '1521740110', 'no'),
(143, '_transient_plugin_slugs', 'a:3:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:9:"hello.php";}', 'no'),
(144, 'recently_activated', 'a:0:{}', 'yes'),
(145, 'category_children', 'a:0:{}', 'yes'),
(148, '_site_transient_timeout_theme_roots', '1521654968', 'no'),
(149, '_site_transient_theme_roots', 'a:4:{s:4:"kies";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(151, 'acf_version', '5.3.7', 'yes'),
(152, '_transient_timeout_acf_pro_get_remote_info', '1521696388', 'no'),
(153, '_transient_acf_pro_get_remote_info', 'a:16:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:5:"5.6.9";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.9.9";s:4:"tags";a:74:{i:0;s:5:"5.6.8";i:1;s:5:"5.6.7";i:2;s:5:"5.6.6";i:3;s:5:"5.6.5";i:4;s:5:"5.6.4";i:5;s:5:"5.6.3";i:6;s:5:"5.6.2";i:7;s:5:"5.6.1";i:8;s:11:"5.6.0-beta2";i:9;s:11:"5.6.0-beta1";i:10;s:9:"5.6.0-RC2";i:11;s:9:"5.6.0-RC1";i:12;s:5:"5.6.0";i:13;s:5:"5.5.9";i:14;s:5:"5.5.7";i:15;s:5:"5.5.5";i:16;s:5:"5.5.3";i:17;s:5:"5.5.2";i:18;s:6:"5.5.14";i:19;s:6:"5.5.13";i:20;s:6:"5.5.12";i:21;s:6:"5.5.11";i:22;s:6:"5.5.10";i:23;s:5:"5.5.1";i:24;s:5:"5.5.0";i:25;s:5:"5.4.8";i:26;s:5:"5.4.7";i:27;s:5:"5.4.6";i:28;s:5:"5.4.5";i:29;s:5:"5.4.4";i:30;s:5:"5.4.3";i:31;s:5:"5.4.2";i:32;s:5:"5.4.1";i:33;s:5:"5.4.0";i:34;s:5:"5.3.8";i:35;s:5:"5.3.7";i:36;s:5:"5.3.6";i:37;s:5:"5.3.5";i:38;s:5:"5.3.4";i:39;s:5:"5.3.3";i:40;s:5:"5.3.2";i:41;s:6:"5.3.10";i:42;s:5:"5.3.1";i:43;s:5:"5.3.0";i:44;s:5:"5.2.9";i:45;s:5:"5.2.8";i:46;s:5:"5.2.7";i:47;s:5:"5.2.6";i:48;s:5:"5.2.5";i:49;s:5:"5.2.4";i:50;s:5:"5.2.3";i:51;s:5:"5.2.2";i:52;s:5:"5.2.1";i:53;s:5:"5.2.0";i:54;s:5:"5.1.9";i:55;s:5:"5.1.8";i:56;s:5:"5.1.7";i:57;s:5:"5.1.6";i:58;s:5:"5.1.5";i:59;s:5:"5.1.4";i:60;s:5:"5.1.3";i:61;s:5:"5.1.2";i:62;s:5:"5.1.1";i:63;s:5:"5.1.0";i:64;s:5:"5.0.9";i:65;s:5:"5.0.8";i:66;s:5:"5.0.7";i:67;s:5:"5.0.6";i:68;s:5:"5.0.5";i:69;s:5:"5.0.4";i:70;s:5:"5.0.3";i:71;s:5:"5.0.2";i:72;s:5:"5.0.1";i:73;s:5:"5.0.0";}s:6:"tagged";s:61:"acf, advanced, custom, field, fields, form, repeater, content";s:11:"description";s:1478:"<p>Use the Advanced Custom Fields plugin to take full control of your WordPress edit screens & custom field data.</p>\n<b>Add fields on demand.</b> Our field builder allows you to quickly and easily add fields to WP edit screens with only the click of a few buttons!\n<b>Add them anywhere.</b> Fields can be added all over WP including posts, users, taxonomy terms, media, comments and even custom options pages!\n<b>Show them everywhere.</b> Load and display your custom field values in any theme template file with our hassle free developer friendly functions!\n<h4> Features </h4>\n<ul><li>Simple & Intuitive</li><li>Powerful Functions</li><li>Over 30 Field Types</li><li>Extensive Documentation</li><li>Millions of Users</li></ul>\n<h4> Links </h4>\n<ul><li>[Website](<a href="https://www.advancedcustomfields.com)">www.advancedcustomfields.com)</a></li><li>[Documentation](<a href="https://www.advancedcustomfields.com/resources/)">www.advancedcustomfields.com/resources/)</a></li><li>[Support](<a href="https://support.advancedcustomfields.com)">support.advancedcustomfields.com)</a></li><li>[ACF PRO](<a href="https://www.advancedcustomfields.com/pro/)">www.advancedcustomfields.com/pro/)</a></li></ul>\n<h4> PRO </h4>\n<p>The Advanced Custom Fields plugin is also available in a professional version which includes more fields, more functionality, and more flexibility! [Learn more](<a href="https://www.advancedcustomfields.com/pro/)">www.advancedcustomfields.com/pro/)</a></p>\n";s:12:"installation";s:515:"<p>From your WordPress dashboard<ol><li><b>Visit</b> Plugins > Add New</li><li><b>Search</b> for "Advanced Custom Fields"</li><li><b>Activate</b> Advanced Custom Fields from your Plugins page</li><li><b>Click</b> on the new menu item "Custom Fields" and create your first Custom Field Group!</li><li><b>Read</b> the documentation to [get started](<a href="https://www.advancedcustomfields.com/resources/getting-started-with-acf/)">www.advancedcustomfields.com/resources/getting-started-with-acf/)</a></li></ol></p>\n";s:9:"changelog";s:5601:"<h4> 5.6.9 </h4>\n<ul><li>User field: Added new <code>Return Format</code> setting (Array, Object, ID)</li><li>Core: Added basic compatibility with Gutenberg - values now save</li><li>Core: Fixed bug affecting the loading of fields on new Menu Items</li><li>Core: Removed private (<code>show_ui</code> => false) post types from the <code>Post Type</code> location rule choices</li><li>Core: Minor fixes and improvements</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li></ul>\n<h4> 5.6.8 </h4>\n<ul><li>API: Fixed bug causing have_rows() to fail with PHP 7.2</li><li>Core: Fixed bug causing "Add new term" form to hide after submit</li><li>Core: Minor fixes and improvements</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li><li>Language: Updated Arabic translation - thanks to Karim Ramadan</li><li>Language: Updated Spanish translation - thanks to Luis Rull Muñoz</li><li>Language: Updated Persian translation - thanks to Majix</li></ul>\n<h4> 5.6.7 </h4>\n<ul><li>Fixed an assortment of bugs found in 5.6.6</li></ul>\n<h4> 5.6.6 </h4>\n<ul><li>Accordion field: Added new field type</li><li>Tab field: Added logic to remember active tabs</li><li>WYSIWYG field: Fixed JS error in quicktags initialization</li><li>Core: Fixed issue preventing conditional logic for menu item fields</li><li>Core: Fixed issue preventing JS initialization for newly added menu items.</li><li>Core: Allow whitespace in input value (previously trimmed)</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Updated Brazilian Portuguese translation - thanks to Rafael Ribeiro</li><li>Language: Updated Dutch translation - thanks to Derk Oosterveld</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li><li>Language: Updated Persian translation - thanks to Kamel Kimiaei</li><li>Language: Updated Swiss German translation - thanks to Raphael Hüni</li><li>Language: Updated Arabic translation - thanks to Karim Ramadan</li></ul>\n<h4> 5.6.5 </h4>\n<ul><li>API: Added new <code>kses</code> setting to the `acf_form()` function</li><li>Core: Added new <code>Admin Tools</code> framework (includes design refresh)</li><li>Core: Minor fixes and improvements</li><li>Language: Update Ukrainian translation - thanks to Jurko Chervony</li><li>Language: Update Russian translation - thanks to Andriy Toniyevych</li><li>Language: Update Hebrew translation - thanks to Itamar Megged</li></ul>\n<h4> 5.6.4 </h4>\n<ul><li>Google Map field: Fixed bug causing invalid url to JavaScript library</li><li>WYSIWYG field: Fixed minor z-index and drag/drop bugs</li><li>Group field: Fixed bug causing incorrect export settings</li><li>Core: Fixed bug in <code>Post Taxonomy</code> location rule ignoring selected terms during AJAX callback</li><li>Core: Fixed bug preventing a draft to validate with required fields</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Update Turkish translation - thanks to Emre Erkan</li><li>Language: Updated Chinese translation - thanks to Wang Hao</li><li>Language: Update Hebrew translation - thanks to Itamar Megged</li></ul>\n<h4> 5.6.3 </h4>\n<ul><li>Button Group field: Added new field type</li><li>Range field: Added missing <code>step</code> attribute to number input</li><li>Range field: Added width to number input based on max setting</li><li>Basic fields: Added missing <code>required</code> attribute to inputs</li><li>Basic fields: Removed empty attributes from inputs</li><li>API: Fixed `get_fields()` bug ignoring fields starting with an underscore</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li><li>Language: Updated Finnish translation - thanks to Sauli Rajala</li><li>Language: Updated German translation - thanks to Ralf Koller</li></ul>\n<h4> 5.6.2 </h4>\n<ul><li>Range field: Added new field type</li><li>Clone field: Fixed bug causing value update issues for <code>seamless</code> + widgets / nave menu items</li><li>Location: Added parent theme<code>s post templates to </code>post template'' location rule</li><li>Location: Fixed bug causing <code>nav menu</code> location rule to fail during AJAX (add new item)</li><li>Core: Fixed PHP errors in customizer when editing non ACF panels</li><li>Core: Fixed bug casing backslash character to break fields / field groups</li><li>Core: Many minor bug fixes</li><li>Language: Updated Romanian translation - thanks to Ionut Staicu</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Update Turkish translation - thanks to Emre Erkan</li><li>Language: Updated Russian translation - Thanks to Алекс Яровиков</li><li>Language: Updated French translation - Thanks to Julie Arrigoni</li></ul>\n<h4> 5.6.1 </h4>\n<ul><li>Fixed an assortment of bugs found in 5.6.0</li></ul>\n<h4> 5.6.0 </h4>\n<ul><li>Link field: Added new field type</li><li>Group field: Added new field type</li><li>API: Improved `have_rows()` function to work with clone and group field values</li><li>Core: Added new location for Menus</li><li>Core: Added new location for Menu Items</li><li>Core: Added types to Attachment location rule - thanks to Jan Thomas</li><li>Core: Added "Confirm Remove" tooltips</li><li>Core: Updated Select2 JS library to v4</li><li>Core: Minor fixes and improvements</li></ul>\n";s:14:"upgrade_notice";s:551:"<h4> 5.2.7 </h4>\n<ul><li>Field class names have changed slightly in v5.2.7 from `field_type-{$type}` to `acf-field-{$type}`. This change was introduced to better optimise JS performance. The previous class names can be added back in with the following filter: <a href="https://www.advancedcustomfields.com/resources/acfcompatibility/">www.advancedcustomfields.com/resources/acfcompatibility/</a></li></ul>\n<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}}', 'no'),
(154, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1521653708;s:7:"checked";a:3:{s:34:"advanced-custom-fields-pro/acf.php";s:5:"5.3.7";s:19:"akismet/akismet.php";s:5:"4.0.3";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:1:{s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":5:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.6.9";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:7:"package";s:0:"";}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
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
(186, '_options_copyright_text', 'field_5ab2a42129cb8', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `ndpk_postmeta`
--

CREATE TABLE IF NOT EXISTS `ndpk_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=446 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ndpk_postmeta`
--

INSERT INTO `ndpk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1521657705:1'),
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
(444, 65, '_menu_item_url', '#');

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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ndpk_posts`
--

INSERT INTO `ndpk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-20 17:15:01', '2018-03-20 17:15:01', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-03-20 17:15:01', '2018-03-20 17:15:01', '', 0, 'http://localhost/niraj-dai/kies/?p=1', 0, 'post', '', 1),
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
(65, 1, '2018-03-21 18:48:17', '2018-03-21 18:48:17', '', 'Cookie policy', '', 'publish', 'closed', 'closed', '', 'cookie-policy', '', '', '2018-03-21 18:48:17', '2018-03-21 18:48:17', '', 0, 'http://localhost/niraj-dai/kies/?p=65', 2, 'nav_menu_item', '', 0);

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
(65, 11, 0);

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
(1, 1, 'category', '', 0, 1),
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(16, 1, 'session_tokens', 'a:1:{s:64:"4feef86f82d96cb8a000bc7fe67caada4842da1fe306fcc0b606cfa7fe8c10c1";a:4:{s:10:"expiration";i:1521739162;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36";s:5:"login";i:1521566362;}}'),
(17, 1, 'ndpk_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(19, 1, 'ndpk_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'ndpk_user-settings-time', '1521657032'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(23, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:"side";s:9:"submitdiv";s:6:"normal";s:80:"acf-field-group-fields,acf-field-group-locations,acf-field-group-options,slugdiv";s:8:"advanced";s:0:"";}'),
(24, 1, 'screen_layout_acf-field-group', '2'),
(25, 1, 'acf_user_settings', 'a:0:{}');

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
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT for table `ndpk_postmeta`
--
ALTER TABLE `ndpk_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=446;
--
-- AUTO_INCREMENT for table `ndpk_posts`
--
ALTER TABLE `ndpk_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
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
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `ndpk_users`
--
ALTER TABLE `ndpk_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
