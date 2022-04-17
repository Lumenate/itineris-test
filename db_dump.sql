# ************************************************************
# Sequel Ace SQL dump
# Version 20033
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 5.7.34)
# Database: wordpress
# Generation Time: 2022-04-15 09:23:57 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-04-01 15:40:47','2020-04-01 15:40:47','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);

/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://wp-local.com:8888/','yes'),
	(2,'home','http://wp-local.com:8888/','yes'),
	(3,'blogname','My Great Blog','yes'),
	(4,'blogdescription','Just another WordPress site','yes'),
	(5,'users_can_register','0','yes'),
	(6,'admin_email','yourname@yourdomain.mamp','yes'),
	(7,'start_of_week','1','yes'),
	(8,'use_balanceTags','0','yes'),
	(9,'use_smilies','1','yes'),
	(10,'require_name_email','1','yes'),
	(11,'comments_notify','1','yes'),
	(12,'posts_per_rss','10','yes'),
	(13,'rss_use_excerpt','0','yes'),
	(14,'mailserver_url','mail.example.com','yes'),
	(15,'mailserver_login','login@example.com','yes'),
	(16,'mailserver_pass','password','yes'),
	(17,'mailserver_port','110','yes'),
	(18,'default_category','1','yes'),
	(19,'default_comment_status','open','yes'),
	(20,'default_ping_status','open','yes'),
	(21,'default_pingback_flag','1','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','F j, Y','yes'),
	(24,'time_format','g:i a','yes'),
	(25,'links_updated_date_format','F j, Y g:i a','yes'),
	(26,'comment_moderation','0','yes'),
	(27,'moderation_notify','1','yes'),
	(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),
	(29,'rewrite_rules','a:96:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),
	(30,'hack_file','0','yes'),
	(31,'blog_charset','UTF-8','yes'),
	(32,'moderation_keys','','no'),
	(33,'active_plugins','a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}','yes'),
	(34,'category_base','','yes'),
	(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(36,'comment_max_links','2','yes'),
	(37,'gmt_offset','0','yes'),
	(38,'default_email_category','1','yes'),
	(39,'recently_edited','','no'),
	(40,'template','itineris-test','yes'),
	(41,'stylesheet','itineris-test','yes'),
	(44,'comment_registration','0','yes'),
	(45,'html_type','text/html','yes'),
	(46,'use_trackback','0','yes'),
	(47,'default_role','subscriber','yes'),
	(48,'db_version','51917','yes'),
	(49,'uploads_use_yearmonth_folders','1','yes'),
	(50,'upload_path','','yes'),
	(51,'blog_public','1','yes'),
	(52,'default_link_category','2','yes'),
	(53,'show_on_front','posts','yes'),
	(54,'tag_base','','yes'),
	(55,'show_avatars','1','yes'),
	(56,'avatar_rating','G','yes'),
	(57,'upload_url_path','','yes'),
	(58,'thumbnail_size_w','150','yes'),
	(59,'thumbnail_size_h','150','yes'),
	(60,'thumbnail_crop','1','yes'),
	(61,'medium_size_w','300','yes'),
	(62,'medium_size_h','300','yes'),
	(63,'avatar_default','mystery','yes'),
	(64,'large_size_w','1024','yes'),
	(65,'large_size_h','1024','yes'),
	(66,'image_default_link_type','none','yes'),
	(67,'image_default_size','','yes'),
	(68,'image_default_align','','yes'),
	(69,'close_comments_for_old_posts','0','yes'),
	(70,'close_comments_days_old','14','yes'),
	(71,'thread_comments','1','yes'),
	(72,'thread_comments_depth','5','yes'),
	(73,'page_comments','0','yes'),
	(74,'comments_per_page','50','yes'),
	(75,'default_comments_page','newest','yes'),
	(76,'comment_order','asc','yes'),
	(77,'sticky_posts','a:0:{}','yes'),
	(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(81,'uninstall_plugins','a:0:{}','no'),
	(82,'timezone_string','','yes'),
	(83,'page_for_posts','0','yes'),
	(84,'page_on_front','0','yes'),
	(85,'default_post_format','0','yes'),
	(86,'link_manager_enabled','0','yes'),
	(87,'finished_splitting_shared_terms','1','yes'),
	(88,'site_icon','0','yes'),
	(89,'medium_large_size_w','768','yes'),
	(90,'medium_large_size_h','0','yes'),
	(91,'wp_page_for_privacy_policy','3','yes'),
	(92,'show_comments_cookies_opt_in','1','yes'),
	(93,'admin_email_lifespan','1650025452','yes'),
	(94,'initial_db_version','47018','yes'),
	(95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
	(96,'fresh_site','1','yes'),
	(97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(102,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:14:\"sidebar-footer\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),
	(103,'cron','a:7:{i:1650015648;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1650025434;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1650037248;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1650037626;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1650037627;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1650555648;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),
	(104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(110,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(111,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(112,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(114,'recovery_keys','a:0:{}','yes'),
	(118,'theme_mods_twentytwenty','a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1649773677;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}','yes'),
	(142,'WPLANG','','yes'),
	(143,'new_admin_email','yourname@yourdomain.mamp','yes'),
	(175,'_transient_health-check-site-status-result','{\"good\":13,\"recommended\":6,\"critical\":0}','yes'),
	(179,'current_theme','Sage Starter Theme','yes'),
	(180,'theme_mods_twentyseventeen','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1588090094;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}}}}','yes'),
	(181,'theme_switched','','yes'),
	(184,'recently_activated','a:0:{}','yes'),
	(188,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1650007979;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}','no'),
	(190,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1650007981;s:7:\"checked\";a:4:{s:13:\"itineris-test\";s:6:\"10.1.6\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.5.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.1.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no'),
	(191,'widget_block','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(196,'_site_transient_timeout_php_check_20f4df878f211a5689e76acb3f9067a8','1650371042','no'),
	(197,'_site_transient_php_check_20f4df878f211a5689e76acb3f9067a8','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),
	(198,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes'),
	(199,'disallowed_keys','','no'),
	(200,'comment_previously_approved','1','yes'),
	(201,'auto_plugin_theme_update_emails','a:0:{}','no'),
	(202,'auto_update_core_dev','enabled','yes'),
	(203,'auto_update_core_minor','enabled','yes'),
	(204,'auto_update_core_major','unset','yes'),
	(205,'wp_force_deactivated_plugins','a:0:{}','yes'),
	(206,'finished_updating_comment_type','1','yes'),
	(207,'db_upgraded','','yes'),
	(208,'_site_transient_timeout_browser_886aa8f0a3040198bf97c9bdf4169483','1650371058','no'),
	(209,'_site_transient_browser_886aa8f0a3040198bf97c9bdf4169483','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"100.0.4896.75\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),
	(212,'can_compress_scripts','1','no'),
	(228,'recovery_mode_email_last_sent','1649771934','yes'),
	(233,'theme_mods_itineris-test','a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}}','yes'),
	(243,'acf_version','5.8.2','yes'),
	(251,'category_children','a:0:{}','yes'),
	(268,'campus_children','a:0:{}','yes'),
	(272,'course_type_children','a:0:{}','yes'),
	(298,'options_hero_title','Land a career that you love','no'),
	(299,'_options_hero_title','field_website_general_settings_hero_title','no'),
	(300,'options_hero_text','I have had an amazing time studying at the College, made lots of new friends and cannot wait to progress to Level 2, so that I can pursue my dream of working with animals.','no'),
	(301,'_options_hero_text','field_website_general_settings_hero_text','no'),
	(302,'options_hero_undersign','Amy studied Introduction to Animal Care (Level 1)','no'),
	(303,'_options_hero_undersign','field_website_general_settings_hero_undersign','no'),
	(304,'options_hero_image','70','no'),
	(305,'_options_hero_image','field_website_general_settings_hero_image','no'),
	(605,'_transient_timeout_acf_plugin_updates','1650123864','no'),
	(606,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.9.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.2\";}}','no'),
	(672,'_site_transient_timeout_theme_roots','1650009780','no'),
	(673,'_site_transient_theme_roots','a:5:{s:13:\"itineris-test\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:6:\"vendor\";s:7:\"/themes\";}','no'),
	(674,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1650007982;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.9.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.2\";s:19:\"akismet/akismet.php\";s:5:\"4.2.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}}','no'),
	(737,'_transient_timeout_global_styles_itineris-test','1650014231','no'),
	(738,'_transient_global_styles_itineris-test','body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--primary: #525ddc;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}body { margin: 0; }.wp-site-blocks > .alignleft { float: left; margin-right: 2em; }.wp-site-blocks > .alignright { float: right; margin-left: 2em; }.wp-site-blocks > .aligncenter { justify-content: center; margin-left: auto; margin-right: auto; }.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-primary-color{color: var(--wp--preset--color--primary) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-primary-background-color{background-color: var(--wp--preset--color--primary) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-primary-border-color{border-color: var(--wp--preset--color--primary) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}','no'),
	(739,'_transient_timeout_global_styles_svg_filters_itineris-test','1650014232','no'),
	(740,'_transient_global_styles_svg_filters_itineris-test','<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>','no');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(2,3,'_wp_page_template','default'),
	(3,43,'_edit_last','1'),
	(4,43,'_edit_lock','1649849347:1'),
	(5,44,'_wp_attached_file','2022/04/Relatedcourses-Animals-and-tracto-2018.png'),
	(6,44,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:528;s:6:\"height\";i:274;s:4:\"file\";s:50:\"2022/04/Relatedcourses-Animals-and-tracto-2018.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"Relatedcourses-Animals-and-tracto-2018-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"Relatedcourses-Animals-and-tracto-2018-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(7,43,'content','Introduction to Animal Care (Level 1)'),
	(8,43,'_content','field_course_content'),
	(9,43,'featured_image','44'),
	(10,43,'_featured_image','field_course_featured_image'),
	(11,43,'duration','1 year'),
	(12,43,'_duration','field_course_duration'),
	(13,43,'course_code','1234'),
	(14,43,'_course_code','field_course_course_code'),
	(15,43,'Campuses_0_campus','2'),
	(16,43,'_Campuses_0_campus','field_course_campuses_campus'),
	(17,43,'Campuses_1_campus','2'),
	(18,43,'_Campuses_1_campus','field_course_campuses_campus'),
	(19,43,'Campuses_2_campus','2'),
	(20,43,'_Campuses_2_campus','field_course_campuses_campus'),
	(21,43,'Campuses','3'),
	(22,43,'_Campuses','field_course_campuses'),
	(23,43,'course_type','8'),
	(24,43,'_course_type','field_course_course_type'),
	(25,45,'content','Introduction to Animal Care (Level 1)'),
	(26,45,'_content','field_course_content'),
	(27,45,'featured_image','44'),
	(28,45,'_featured_image','field_course_featured_image'),
	(29,45,'duration','1 year'),
	(30,45,'_duration','field_course_duration'),
	(31,45,'course_code','1234'),
	(32,45,'_course_code','field_course_course_code'),
	(33,45,'Campuses_0_campus','2'),
	(34,45,'_Campuses_0_campus','field_course_campuses_campus'),
	(35,45,'Campuses_1_campus','2'),
	(36,45,'_Campuses_1_campus','field_course_campuses_campus'),
	(37,45,'Campuses_2_campus','2'),
	(38,45,'_Campuses_2_campus','field_course_campuses_campus'),
	(39,45,'Campuses','3'),
	(40,45,'_Campuses','field_course_campuses'),
	(41,45,'course_type','8'),
	(42,45,'_course_type','field_course_course_type'),
	(43,46,'_edit_last','1'),
	(44,46,'_edit_lock','1649849460:1'),
	(45,47,'_wp_attached_file','2022/04/Relatedcourses-Animals-and-tracto-2018-1.png'),
	(46,47,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:528;s:6:\"height\";i:274;s:4:\"file\";s:52:\"2022/04/Relatedcourses-Animals-and-tracto-2018-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-1-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(47,46,'content','Introduction to Animal Care (Level 1)'),
	(48,46,'_content','field_course_content'),
	(49,46,'featured_image','47'),
	(50,46,'_featured_image','field_course_featured_image'),
	(51,46,'duration','1 year'),
	(52,46,'_duration','field_course_duration'),
	(53,46,'course_code','1234'),
	(54,46,'_course_code','field_course_course_code'),
	(55,46,'Campuses_0_campus','2'),
	(56,46,'_Campuses_0_campus','field_course_campuses_campus'),
	(57,46,'Campuses_1_campus','2'),
	(58,46,'_Campuses_1_campus','field_course_campuses_campus'),
	(59,46,'Campuses_2_campus','2'),
	(60,46,'_Campuses_2_campus','field_course_campuses_campus'),
	(61,46,'Campuses_3_campus','3'),
	(62,46,'_Campuses_3_campus','field_course_campuses_campus'),
	(63,46,'Campuses_4_campus','5'),
	(64,46,'_Campuses_4_campus','field_course_campuses_campus'),
	(65,46,'Campuses_5_campus','6'),
	(66,46,'_Campuses_5_campus','field_course_campuses_campus'),
	(67,46,'Campuses_6_campus','6'),
	(68,46,'_Campuses_6_campus','field_course_campuses_campus'),
	(69,46,'Campuses','7'),
	(70,46,'_Campuses','field_course_campuses'),
	(71,46,'course_type','8'),
	(72,46,'_course_type','field_course_course_type'),
	(73,48,'content','Introduction to Animal Care (Level 1)'),
	(74,48,'_content','field_course_content'),
	(75,48,'featured_image','47'),
	(76,48,'_featured_image','field_course_featured_image'),
	(77,48,'duration','1 year'),
	(78,48,'_duration','field_course_duration'),
	(79,48,'course_code','1234'),
	(80,48,'_course_code','field_course_course_code'),
	(81,48,'Campuses_0_campus','2'),
	(82,48,'_Campuses_0_campus','field_course_campuses_campus'),
	(83,48,'Campuses_1_campus','2'),
	(84,48,'_Campuses_1_campus','field_course_campuses_campus'),
	(85,48,'Campuses_2_campus','2'),
	(86,48,'_Campuses_2_campus','field_course_campuses_campus'),
	(87,48,'Campuses_3_campus','3'),
	(88,48,'_Campuses_3_campus','field_course_campuses_campus'),
	(89,48,'Campuses_4_campus','5'),
	(90,48,'_Campuses_4_campus','field_course_campuses_campus'),
	(91,48,'Campuses_5_campus','6'),
	(92,48,'_Campuses_5_campus','field_course_campuses_campus'),
	(93,48,'Campuses_6_campus','6'),
	(94,48,'_Campuses_6_campus','field_course_campuses_campus'),
	(95,48,'Campuses','7'),
	(96,48,'_Campuses','field_course_campuses'),
	(97,48,'course_type','8'),
	(98,48,'_course_type','field_course_course_type'),
	(99,50,'_wp_attached_file','2022/04/Relatedcourses-Animals-and-tracto-2018-2.png'),
	(100,50,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:528;s:6:\"height\";i:274;s:4:\"file\";s:52:\"2022/04/Relatedcourses-Animals-and-tracto-2018-2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-2-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(101,49,'_edit_last','1'),
	(102,49,'content','Introduction to Animal Care (Level 1)'),
	(103,49,'_content','field_course_content'),
	(104,49,'featured_image','50'),
	(105,49,'_featured_image','field_course_featured_image'),
	(106,49,'duration','1 year'),
	(107,49,'_duration','field_course_duration'),
	(108,49,'course_code','1234'),
	(109,49,'_course_code','field_course_course_code'),
	(110,49,'Campuses_0_campus','2'),
	(111,49,'_Campuses_0_campus','field_course_campuses_campus'),
	(112,49,'Campuses_1_campus','2'),
	(113,49,'_Campuses_1_campus','field_course_campuses_campus'),
	(114,49,'Campuses_2_campus','2'),
	(115,49,'_Campuses_2_campus','field_course_campuses_campus'),
	(116,49,'Campuses_3_campus','3'),
	(117,49,'_Campuses_3_campus','field_course_campuses_campus'),
	(118,49,'Campuses_4_campus','5'),
	(119,49,'_Campuses_4_campus','field_course_campuses_campus'),
	(120,49,'Campuses_5_campus','6'),
	(121,49,'_Campuses_5_campus','field_course_campuses_campus'),
	(122,49,'Campuses_6_campus','6'),
	(123,49,'_Campuses_6_campus','field_course_campuses_campus'),
	(124,49,'Campuses','7'),
	(125,49,'_Campuses','field_course_campuses'),
	(126,49,'course_type','8'),
	(127,49,'_course_type','field_course_course_type'),
	(128,51,'content','Introduction to Animal Care (Level 1)'),
	(129,51,'_content','field_course_content'),
	(130,51,'featured_image','50'),
	(131,51,'_featured_image','field_course_featured_image'),
	(132,51,'duration','1 year'),
	(133,51,'_duration','field_course_duration'),
	(134,51,'course_code','1234'),
	(135,51,'_course_code','field_course_course_code'),
	(136,51,'Campuses_0_campus','2'),
	(137,51,'_Campuses_0_campus','field_course_campuses_campus'),
	(138,51,'Campuses_1_campus','2'),
	(139,51,'_Campuses_1_campus','field_course_campuses_campus'),
	(140,51,'Campuses_2_campus','2'),
	(141,51,'_Campuses_2_campus','field_course_campuses_campus'),
	(142,51,'Campuses_3_campus','3'),
	(143,51,'_Campuses_3_campus','field_course_campuses_campus'),
	(144,51,'Campuses_4_campus','5'),
	(145,51,'_Campuses_4_campus','field_course_campuses_campus'),
	(146,51,'Campuses_5_campus','6'),
	(147,51,'_Campuses_5_campus','field_course_campuses_campus'),
	(148,51,'Campuses_6_campus','6'),
	(149,51,'_Campuses_6_campus','field_course_campuses_campus'),
	(150,51,'Campuses','7'),
	(151,51,'_Campuses','field_course_campuses'),
	(152,51,'course_type','8'),
	(153,51,'_course_type','field_course_course_type'),
	(154,49,'_edit_lock','1649849591:1'),
	(155,53,'_wp_attached_file','2022/04/Relatedcourses-Animals-and-tracto-2018-3.png'),
	(156,53,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:528;s:6:\"height\";i:274;s:4:\"file\";s:52:\"2022/04/Relatedcourses-Animals-and-tracto-2018-3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-3-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(157,52,'_edit_last','1'),
	(158,52,'content','Introduction to Animal Care (Level 1)'),
	(159,52,'_content','field_course_content'),
	(160,52,'featured_image','53'),
	(161,52,'_featured_image','field_course_featured_image'),
	(162,52,'duration','1 year'),
	(163,52,'_duration','field_course_duration'),
	(164,52,'course_code','1234'),
	(165,52,'_course_code','field_course_course_code'),
	(166,52,'Campuses_0_campus','2'),
	(167,52,'_Campuses_0_campus','field_course_campuses_campus'),
	(168,52,'Campuses_1_campus','2'),
	(169,52,'_Campuses_1_campus','field_course_campuses_campus'),
	(170,52,'Campuses_2_campus','2'),
	(171,52,'_Campuses_2_campus','field_course_campuses_campus'),
	(172,52,'Campuses_3_campus','3'),
	(173,52,'_Campuses_3_campus','field_course_campuses_campus'),
	(174,52,'Campuses_4_campus','5'),
	(175,52,'_Campuses_4_campus','field_course_campuses_campus'),
	(176,52,'Campuses_5_campus','6'),
	(177,52,'_Campuses_5_campus','field_course_campuses_campus'),
	(178,52,'Campuses_6_campus','6'),
	(179,52,'_Campuses_6_campus','field_course_campuses_campus'),
	(180,52,'Campuses','7'),
	(181,52,'_Campuses','field_course_campuses'),
	(182,52,'course_type','8'),
	(183,52,'_course_type','field_course_course_type'),
	(184,54,'content','Introduction to Animal Care (Level 1)'),
	(185,54,'_content','field_course_content'),
	(186,54,'featured_image','53'),
	(187,54,'_featured_image','field_course_featured_image'),
	(188,54,'duration','1 year'),
	(189,54,'_duration','field_course_duration'),
	(190,54,'course_code','1234'),
	(191,54,'_course_code','field_course_course_code'),
	(192,54,'Campuses_0_campus','2'),
	(193,54,'_Campuses_0_campus','field_course_campuses_campus'),
	(194,54,'Campuses_1_campus','2'),
	(195,54,'_Campuses_1_campus','field_course_campuses_campus'),
	(196,54,'Campuses_2_campus','2'),
	(197,54,'_Campuses_2_campus','field_course_campuses_campus'),
	(198,54,'Campuses_3_campus','3'),
	(199,54,'_Campuses_3_campus','field_course_campuses_campus'),
	(200,54,'Campuses_4_campus','5'),
	(201,54,'_Campuses_4_campus','field_course_campuses_campus'),
	(202,54,'Campuses_5_campus','6'),
	(203,54,'_Campuses_5_campus','field_course_campuses_campus'),
	(204,54,'Campuses_6_campus','6'),
	(205,54,'_Campuses_6_campus','field_course_campuses_campus'),
	(206,54,'Campuses','7'),
	(207,54,'_Campuses','field_course_campuses'),
	(208,54,'course_type','8'),
	(209,54,'_course_type','field_course_course_type'),
	(210,52,'_edit_lock','1649849667:1'),
	(211,55,'_edit_last','1'),
	(212,55,'_edit_lock','1649849839:1'),
	(213,56,'_wp_attached_file','2022/04/Relatedcourses-Animals-and-tracto-2018-4.png'),
	(214,56,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:528;s:6:\"height\";i:274;s:4:\"file\";s:52:\"2022/04/Relatedcourses-Animals-and-tracto-2018-4.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-4-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(215,55,'content','Introduction to Animal Care (Level 1)'),
	(216,55,'_content','field_course_content'),
	(217,55,'featured_image','56'),
	(218,55,'_featured_image','field_course_featured_image'),
	(219,55,'duration','1 year'),
	(220,55,'_duration','field_course_duration'),
	(221,55,'course_code','1234'),
	(222,55,'_course_code','field_course_course_code'),
	(223,55,'Campuses_0_campus','2'),
	(224,55,'_Campuses_0_campus','field_course_campuses_campus'),
	(225,55,'Campuses_1_campus','2'),
	(226,55,'_Campuses_1_campus','field_course_campuses_campus'),
	(227,55,'Campuses_2_campus','2'),
	(228,55,'_Campuses_2_campus','field_course_campuses_campus'),
	(229,55,'Campuses','3'),
	(230,55,'_Campuses','field_course_campuses'),
	(231,55,'course_type','8'),
	(232,55,'_course_type','field_course_course_type'),
	(233,57,'content','Introduction to Animal Care (Level 1)'),
	(234,57,'_content','field_course_content'),
	(235,57,'featured_image','56'),
	(236,57,'_featured_image','field_course_featured_image'),
	(237,57,'duration','1 year'),
	(238,57,'_duration','field_course_duration'),
	(239,57,'course_code','1234'),
	(240,57,'_course_code','field_course_course_code'),
	(241,57,'Campuses_0_campus','2'),
	(242,57,'_Campuses_0_campus','field_course_campuses_campus'),
	(243,57,'Campuses_1_campus','2'),
	(244,57,'_Campuses_1_campus','field_course_campuses_campus'),
	(245,57,'Campuses_2_campus','2'),
	(246,57,'_Campuses_2_campus','field_course_campuses_campus'),
	(247,57,'Campuses','3'),
	(248,57,'_Campuses','field_course_campuses'),
	(249,57,'course_type','8'),
	(250,57,'_course_type','field_course_course_type'),
	(251,59,'_wp_attached_file','2022/04/Relatedcourses-Animals-and-tracto-2018-5.png'),
	(252,59,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:528;s:6:\"height\";i:274;s:4:\"file\";s:52:\"2022/04/Relatedcourses-Animals-and-tracto-2018-5.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-5-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(253,58,'_edit_last','1'),
	(254,58,'content','Introduction to Animal Care (Level 1)'),
	(255,58,'_content','field_course_content'),
	(256,58,'featured_image','59'),
	(257,58,'_featured_image','field_course_featured_image'),
	(258,58,'duration','1 year'),
	(259,58,'_duration','field_course_duration'),
	(260,58,'course_code','1234'),
	(261,58,'_course_code','field_course_course_code'),
	(262,58,'Campuses_0_campus','2'),
	(263,58,'_Campuses_0_campus','field_course_campuses_campus'),
	(264,58,'Campuses_1_campus','2'),
	(265,58,'_Campuses_1_campus','field_course_campuses_campus'),
	(266,58,'Campuses_2_campus','2'),
	(267,58,'_Campuses_2_campus','field_course_campuses_campus'),
	(268,58,'Campuses_3_campus','3'),
	(269,58,'_Campuses_3_campus','field_course_campuses_campus'),
	(270,58,'Campuses_4_campus','5'),
	(271,58,'_Campuses_4_campus','field_course_campuses_campus'),
	(272,58,'Campuses_5_campus','6'),
	(273,58,'_Campuses_5_campus','field_course_campuses_campus'),
	(274,58,'Campuses_6_campus','6'),
	(275,58,'_Campuses_6_campus','field_course_campuses_campus'),
	(276,58,'Campuses','7'),
	(277,58,'_Campuses','field_course_campuses'),
	(278,58,'course_type','8'),
	(279,58,'_course_type','field_course_course_type'),
	(280,60,'content','Introduction to Animal Care (Level 1)'),
	(281,60,'_content','field_course_content'),
	(282,60,'featured_image','59'),
	(283,60,'_featured_image','field_course_featured_image'),
	(284,60,'duration','1 year'),
	(285,60,'_duration','field_course_duration'),
	(286,60,'course_code','1234'),
	(287,60,'_course_code','field_course_course_code'),
	(288,60,'Campuses_0_campus','2'),
	(289,60,'_Campuses_0_campus','field_course_campuses_campus'),
	(290,60,'Campuses_1_campus','2'),
	(291,60,'_Campuses_1_campus','field_course_campuses_campus'),
	(292,60,'Campuses_2_campus','2'),
	(293,60,'_Campuses_2_campus','field_course_campuses_campus'),
	(294,60,'Campuses_3_campus','3'),
	(295,60,'_Campuses_3_campus','field_course_campuses_campus'),
	(296,60,'Campuses_4_campus','5'),
	(297,60,'_Campuses_4_campus','field_course_campuses_campus'),
	(298,60,'Campuses_5_campus','6'),
	(299,60,'_Campuses_5_campus','field_course_campuses_campus'),
	(300,60,'Campuses_6_campus','6'),
	(301,60,'_Campuses_6_campus','field_course_campuses_campus'),
	(302,60,'Campuses','7'),
	(303,60,'_Campuses','field_course_campuses'),
	(304,60,'course_type','8'),
	(305,60,'_course_type','field_course_course_type'),
	(306,58,'_edit_lock','1649849902:1'),
	(307,61,'_edit_last','1'),
	(308,61,'_edit_lock','1649850221:1'),
	(309,62,'_wp_attached_file','2022/04/Relatedcourses-Animals-and-tracto-2018-6.png'),
	(310,62,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:528;s:6:\"height\";i:274;s:4:\"file\";s:52:\"2022/04/Relatedcourses-Animals-and-tracto-2018-6.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-6-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(311,61,'content','Introduction to Animal Care (Level 1)'),
	(312,61,'_content','field_course_content'),
	(313,61,'featured_image','62'),
	(314,61,'_featured_image','field_course_featured_image'),
	(315,61,'duration','1 year'),
	(316,61,'_duration','field_course_duration'),
	(317,61,'course_code','1234'),
	(318,61,'_course_code','field_course_course_code'),
	(319,61,'Campuses_0_campus','2'),
	(320,61,'_Campuses_0_campus','field_course_campuses_campus'),
	(321,61,'Campuses_1_campus','2'),
	(322,61,'_Campuses_1_campus','field_course_campuses_campus'),
	(323,61,'Campuses_2_campus','2'),
	(324,61,'_Campuses_2_campus','field_course_campuses_campus'),
	(325,61,'Campuses_3_campus','3'),
	(326,61,'_Campuses_3_campus','field_course_campuses_campus'),
	(327,61,'Campuses_4_campus','5'),
	(328,61,'_Campuses_4_campus','field_course_campuses_campus'),
	(329,61,'Campuses_5_campus','6'),
	(330,61,'_Campuses_5_campus','field_course_campuses_campus'),
	(331,61,'Campuses_6_campus','6'),
	(332,61,'_Campuses_6_campus','field_course_campuses_campus'),
	(333,61,'Campuses','7'),
	(334,61,'_Campuses','field_course_campuses'),
	(335,61,'course_type','8'),
	(336,61,'_course_type','field_course_course_type'),
	(337,63,'content','Introduction to Animal Care (Level 1)'),
	(338,63,'_content','field_course_content'),
	(339,63,'featured_image','62'),
	(340,63,'_featured_image','field_course_featured_image'),
	(341,63,'duration','1 year'),
	(342,63,'_duration','field_course_duration'),
	(343,63,'course_code','1234'),
	(344,63,'_course_code','field_course_course_code'),
	(345,63,'Campuses_0_campus','2'),
	(346,63,'_Campuses_0_campus','field_course_campuses_campus'),
	(347,63,'Campuses_1_campus','2'),
	(348,63,'_Campuses_1_campus','field_course_campuses_campus'),
	(349,63,'Campuses_2_campus','2'),
	(350,63,'_Campuses_2_campus','field_course_campuses_campus'),
	(351,63,'Campuses_3_campus','3'),
	(352,63,'_Campuses_3_campus','field_course_campuses_campus'),
	(353,63,'Campuses_4_campus','5'),
	(354,63,'_Campuses_4_campus','field_course_campuses_campus'),
	(355,63,'Campuses_5_campus','6'),
	(356,63,'_Campuses_5_campus','field_course_campuses_campus'),
	(357,63,'Campuses_6_campus','6'),
	(358,63,'_Campuses_6_campus','field_course_campuses_campus'),
	(359,63,'Campuses','7'),
	(360,63,'_Campuses','field_course_campuses'),
	(361,63,'course_type','8'),
	(362,63,'_course_type','field_course_course_type'),
	(363,65,'_wp_attached_file','2022/04/Relatedcourses-Animals-and-tracto-2018-7.png'),
	(364,65,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:528;s:6:\"height\";i:274;s:4:\"file\";s:52:\"2022/04/Relatedcourses-Animals-and-tracto-2018-7.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-7-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(365,64,'_edit_last','1'),
	(366,64,'content','Introduction to Animal Care (Level 1)'),
	(367,64,'_content','field_course_content'),
	(368,64,'featured_image','65'),
	(369,64,'_featured_image','field_course_featured_image'),
	(370,64,'duration','1 year'),
	(371,64,'_duration','field_course_duration'),
	(372,64,'course_code','1234'),
	(373,64,'_course_code','field_course_course_code'),
	(374,64,'Campuses_0_campus','2'),
	(375,64,'_Campuses_0_campus','field_course_campuses_campus'),
	(376,64,'Campuses_1_campus','2'),
	(377,64,'_Campuses_1_campus','field_course_campuses_campus'),
	(378,64,'Campuses_2_campus','2'),
	(379,64,'_Campuses_2_campus','field_course_campuses_campus'),
	(380,64,'Campuses_3_campus','3'),
	(381,64,'_Campuses_3_campus','field_course_campuses_campus'),
	(382,64,'Campuses_4_campus','5'),
	(383,64,'_Campuses_4_campus','field_course_campuses_campus'),
	(384,64,'Campuses_5_campus','6'),
	(385,64,'_Campuses_5_campus','field_course_campuses_campus'),
	(386,64,'Campuses_6_campus','6'),
	(387,64,'_Campuses_6_campus','field_course_campuses_campus'),
	(388,64,'Campuses','7'),
	(389,64,'_Campuses','field_course_campuses'),
	(390,64,'course_type','8'),
	(391,64,'_course_type','field_course_course_type'),
	(392,66,'content','Introduction to Animal Care (Level 1)'),
	(393,66,'_content','field_course_content'),
	(394,66,'featured_image','65'),
	(395,66,'_featured_image','field_course_featured_image'),
	(396,66,'duration','1 year'),
	(397,66,'_duration','field_course_duration'),
	(398,66,'course_code','1234'),
	(399,66,'_course_code','field_course_course_code'),
	(400,66,'Campuses_0_campus','2'),
	(401,66,'_Campuses_0_campus','field_course_campuses_campus'),
	(402,66,'Campuses_1_campus','2'),
	(403,66,'_Campuses_1_campus','field_course_campuses_campus'),
	(404,66,'Campuses_2_campus','2'),
	(405,66,'_Campuses_2_campus','field_course_campuses_campus'),
	(406,66,'Campuses_3_campus','3'),
	(407,66,'_Campuses_3_campus','field_course_campuses_campus'),
	(408,66,'Campuses_4_campus','5'),
	(409,66,'_Campuses_4_campus','field_course_campuses_campus'),
	(410,66,'Campuses_5_campus','6'),
	(411,66,'_Campuses_5_campus','field_course_campuses_campus'),
	(412,66,'Campuses_6_campus','6'),
	(413,66,'_Campuses_6_campus','field_course_campuses_campus'),
	(414,66,'Campuses','7'),
	(415,66,'_Campuses','field_course_campuses'),
	(416,66,'course_type','8'),
	(417,66,'_course_type','field_course_course_type'),
	(418,64,'_edit_lock','1649850301:1'),
	(419,67,'_edit_last','1'),
	(420,67,'_edit_lock','1649850505:1'),
	(421,68,'_wp_attached_file','2022/04/Relatedcourses-Animals-and-tracto-2018-8.png'),
	(422,68,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:528;s:6:\"height\";i:274;s:4:\"file\";s:52:\"2022/04/Relatedcourses-Animals-and-tracto-2018-8.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-8-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Relatedcourses-Animals-and-tracto-2018-8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(423,67,'content','Introduction to Animal Care (Level 1)'),
	(424,67,'_content','field_course_content'),
	(425,67,'featured_image','68'),
	(426,67,'_featured_image','field_course_featured_image'),
	(427,67,'duration','1 year'),
	(428,67,'_duration','field_course_duration'),
	(429,67,'course_code','1234'),
	(430,67,'_course_code','field_course_course_code'),
	(431,67,'Campuses_0_campus','2'),
	(432,67,'_Campuses_0_campus','field_course_campuses_campus'),
	(433,67,'Campuses_1_campus','2'),
	(434,67,'_Campuses_1_campus','field_course_campuses_campus'),
	(435,67,'Campuses_2_campus','2'),
	(436,67,'_Campuses_2_campus','field_course_campuses_campus'),
	(437,67,'Campuses_3_campus','3'),
	(438,67,'_Campuses_3_campus','field_course_campuses_campus'),
	(439,67,'Campuses_4_campus','5'),
	(440,67,'_Campuses_4_campus','field_course_campuses_campus'),
	(441,67,'Campuses','5'),
	(442,67,'_Campuses','field_course_campuses'),
	(443,67,'course_type','8'),
	(444,67,'_course_type','field_course_course_type'),
	(445,69,'content','Introduction to Animal Care (Level 1)'),
	(446,69,'_content','field_course_content'),
	(447,69,'featured_image','68'),
	(448,69,'_featured_image','field_course_featured_image'),
	(449,69,'duration','1 year'),
	(450,69,'_duration','field_course_duration'),
	(451,69,'course_code','1234'),
	(452,69,'_course_code','field_course_course_code'),
	(453,69,'Campuses_0_campus','2'),
	(454,69,'_Campuses_0_campus','field_course_campuses_campus'),
	(455,69,'Campuses_1_campus','2'),
	(456,69,'_Campuses_1_campus','field_course_campuses_campus'),
	(457,69,'Campuses_2_campus','2'),
	(458,69,'_Campuses_2_campus','field_course_campuses_campus'),
	(459,69,'Campuses_3_campus','3'),
	(460,69,'_Campuses_3_campus','field_course_campuses_campus'),
	(461,69,'Campuses_4_campus','5'),
	(462,69,'_Campuses_4_campus','field_course_campuses_campus'),
	(463,69,'Campuses','5'),
	(464,69,'_Campuses','field_course_campuses'),
	(465,69,'course_type','8'),
	(466,69,'_course_type','field_course_course_type'),
	(467,70,'_wp_attached_file','2022/04/Enfield.jpg'),
	(468,70,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2436;s:6:\"height\";i:1384;s:4:\"file\";s:19:\"2022/04/Enfield.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Enfield-300x170.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"Enfield-1024x582.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Enfield-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"Enfield-768x436.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:436;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"Enfield-1536x873.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:873;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"Enfield-2048x1164.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2020-04-01 15:40:47','2020-04-01 15:40:47','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-04-01 15:40:47','2020-04-01 15:40:47','',0,'http://wp-local.com:8888/?p=1',0,'post','',1),
	(2,1,'2020-04-01 15:40:47','2020-04-01 15:40:47','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wp-local.com:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-04-01 15:40:47','2020-04-01 15:40:47','',0,'http://wp-local.com:8888/?page_id=2',0,'page','',0),
	(3,1,'2020-04-01 15:40:47','2020-04-01 15:40:47','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://wp-local.com:8888/.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2020-04-01 15:40:47','2020-04-01 15:40:47','',0,'http://wp-local.com:8888/?page_id=3',0,'page','',0),
	(7,1,'2022-04-12 12:24:18','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2022-04-12 12:24:18','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?p=7',0,'post','',0),
	(8,1,'2022-04-12 15:02:16','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 15:02:16','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=acf-field-group&p=8',0,'acf-field-group','',0),
	(9,1,'2022-04-12 15:57:44','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 15:57:44','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=9',0,'course','',0),
	(10,1,'2022-04-12 16:01:16','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 16:01:16','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=10',0,'course','',0),
	(11,1,'2022-04-12 16:01:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 16:01:28','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=11',0,'course','',0),
	(12,1,'2022-04-12 16:20:00','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 16:20:00','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=12',0,'course','',0),
	(13,1,'2022-04-12 16:25:55','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 16:25:55','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=13',0,'course','',0),
	(14,1,'2022-04-12 16:26:10','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 16:26:10','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=14',0,'course','',0),
	(15,1,'2022-04-12 16:27:41','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 16:27:41','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=15',0,'course','',0),
	(16,1,'2022-04-12 16:38:30','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 16:38:30','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=16',0,'course','',0),
	(17,1,'2022-04-12 16:38:51','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 16:38:51','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=17',0,'course','',0),
	(18,1,'2022-04-12 16:39:46','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 16:39:46','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=18',0,'course','',0),
	(19,1,'2022-04-12 16:40:31','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 16:40:31','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=19',0,'course','',0),
	(20,1,'2022-04-12 16:52:12','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 16:52:12','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=20',0,'course','',0),
	(21,1,'2022-04-12 16:58:01','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 16:58:01','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=21',0,'course','',0),
	(22,1,'2022-04-12 17:00:43','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:00:43','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=22',0,'course','',0),
	(23,1,'2022-04-12 17:04:44','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:04:44','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=23',0,'course','',0),
	(24,1,'2022-04-12 17:04:46','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:04:46','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=24',0,'course','',0),
	(25,1,'2022-04-12 17:08:33','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:08:33','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=25',0,'course','',0),
	(26,1,'2022-04-12 17:10:36','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:10:36','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=26',0,'course','',0),
	(27,1,'2022-04-12 17:11:53','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:11:53','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=27',0,'course','',0),
	(28,1,'2022-04-12 17:13:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:13:15','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=28',0,'course','',0),
	(29,1,'2022-04-12 17:13:41','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:13:41','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=29',0,'course','',0),
	(30,1,'2022-04-12 17:15:07','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:15:07','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=30',0,'course','',0),
	(31,1,'2022-04-12 17:15:34','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:15:34','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=31',0,'course','',0),
	(32,1,'2022-04-12 17:16:18','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:16:18','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=32',0,'course','',0),
	(33,1,'2022-04-12 17:16:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:16:28','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=33',0,'course','',0),
	(34,1,'2022-04-12 17:16:33','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:16:33','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=34',0,'course','',0),
	(35,1,'2022-04-12 17:18:01','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:18:01','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=35',0,'course','',0),
	(36,1,'2022-04-12 17:28:43','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:28:43','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=36',0,'course','',0),
	(37,1,'2022-04-12 17:39:20','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:39:20','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=37',0,'course','',0),
	(38,1,'2022-04-12 17:39:22','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:39:22','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=38',0,'course','',0),
	(39,1,'2022-04-12 17:45:19','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:45:19','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=39',0,'course','',0),
	(40,1,'2022-04-12 17:45:35','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 17:45:35','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=40',0,'course','',0),
	(41,1,'2022-04-12 18:02:38','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 18:02:38','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=41',0,'course','',0),
	(42,1,'2022-04-12 18:03:09','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-04-12 18:03:09','0000-00-00 00:00:00','',0,'http://wp-local.com:8888/?post_type=course&p=42',0,'course','',0),
	(43,1,'2022-04-13 11:08:04','2022-04-13 11:08:04','','Introduction to Animal  Care (Level 1)','','publish','closed','closed','','introduction-to-animal-care-level-1','','','2022-04-13 11:08:39','2022-04-13 11:08:39','',0,'http://wp-local.com:8888/?post_type=course&#038;p=43',0,'course','',0),
	(44,1,'2022-04-13 11:07:05','2022-04-13 11:07:05','','Relatedcourses Animals and tracto 2018','','inherit','open','closed','','relatedcourses-animals-and-tracto-2018','','','2022-04-13 11:07:05','2022-04-13 11:07:05','',43,'http://wp-local.com:8888/wp-content/uploads/2022/04/Relatedcourses-Animals-and-tracto-2018.png',0,'attachment','image/png',0),
	(45,1,'2022-04-13 11:08:04','2022-04-13 11:08:04','','Introduction to Animal  Care (Level 1)','','inherit','closed','closed','','43-revision-v1','','','2022-04-13 11:08:04','2022-04-13 11:08:04','',43,'http://wp-local.com:8888/?p=45',0,'revision','',0),
	(46,1,'2022-04-13 11:33:21','2022-04-13 11:33:21','','Introduction to Animal  Care (Level 1)','','publish','closed','closed','','introduction-to-animal-care-level-1-2','','','2022-04-13 11:33:21','2022-04-13 11:33:21','',0,'http://wp-local.com:8888/?post_type=course&#038;p=46',0,'course','',0),
	(47,1,'2022-04-13 11:32:10','2022-04-13 11:32:10','','Relatedcourses Animals and tracto 2018','','inherit','open','closed','','relatedcourses-animals-and-tracto-2018-2','','','2022-04-13 11:32:10','2022-04-13 11:32:10','',46,'http://wp-local.com:8888/wp-content/uploads/2022/04/Relatedcourses-Animals-and-tracto-2018-1.png',0,'attachment','image/png',0),
	(48,1,'2022-04-13 11:33:21','2022-04-13 11:33:21','','Introduction to Animal  Care (Level 1)','','inherit','closed','closed','','46-revision-v1','','','2022-04-13 11:33:21','2022-04-13 11:33:21','',46,'http://wp-local.com:8888/?p=48',0,'revision','',0),
	(49,1,'2022-04-13 11:35:31','2022-04-13 11:35:31','','Introduction to Animal  Care (Level 1)','','publish','closed','closed','','introduction-to-animal-care-level-1-3','','','2022-04-13 11:35:31','2022-04-13 11:35:31','',0,'http://wp-local.com:8888/?post_type=course&#038;p=49',0,'course','',0),
	(50,1,'2022-04-13 11:34:32','2022-04-13 11:34:32','','Relatedcourses Animals and tracto 2018','','inherit','open','closed','','relatedcourses-animals-and-tracto-2018-3','','','2022-04-13 11:34:32','2022-04-13 11:34:32','',49,'http://wp-local.com:8888/wp-content/uploads/2022/04/Relatedcourses-Animals-and-tracto-2018-2.png',0,'attachment','image/png',0),
	(51,1,'2022-04-13 11:35:31','2022-04-13 11:35:31','','Introduction to Animal  Care (Level 1)','','inherit','closed','closed','','49-revision-v1','','','2022-04-13 11:35:31','2022-04-13 11:35:31','',49,'http://wp-local.com:8888/?p=51',0,'revision','',0),
	(52,1,'2022-04-13 11:36:47','2022-04-13 11:36:47','','Introduction to Animal  Care (Level 1)','','publish','closed','closed','','introduction-to-animal-care-level-1-4','','','2022-04-13 11:36:47','2022-04-13 11:36:47','',0,'http://wp-local.com:8888/?post_type=course&#038;p=52',0,'course','',0),
	(53,1,'2022-04-13 11:35:49','2022-04-13 11:35:49','','Relatedcourses Animals and tracto 2018','','inherit','open','closed','','relatedcourses-animals-and-tracto-2018-4','','','2022-04-13 11:35:49','2022-04-13 11:35:49','',52,'http://wp-local.com:8888/wp-content/uploads/2022/04/Relatedcourses-Animals-and-tracto-2018-3.png',0,'attachment','image/png',0),
	(54,1,'2022-04-13 11:36:47','2022-04-13 11:36:47','','Introduction to Animal  Care (Level 1)','','inherit','closed','closed','','52-revision-v1','','','2022-04-13 11:36:47','2022-04-13 11:36:47','',52,'http://wp-local.com:8888/?p=54',0,'revision','',0),
	(55,1,'2022-04-13 11:39:32','2022-04-13 11:39:32','','Introduction to Animal  Care (Level 1)','','publish','closed','closed','','introduction-to-animal-care-level-1-5','','','2022-04-13 11:39:32','2022-04-13 11:39:32','',0,'http://wp-local.com:8888/?post_type=course&#038;p=55',0,'course','',0),
	(56,1,'2022-04-13 11:37:13','2022-04-13 11:37:13','','Relatedcourses Animals and tracto 2018','','inherit','open','closed','','relatedcourses-animals-and-tracto-2018-5','','','2022-04-13 11:37:13','2022-04-13 11:37:13','',55,'http://wp-local.com:8888/wp-content/uploads/2022/04/Relatedcourses-Animals-and-tracto-2018-4.png',0,'attachment','image/png',0),
	(57,1,'2022-04-13 11:39:32','2022-04-13 11:39:32','','Introduction to Animal  Care (Level 1)','','inherit','closed','closed','','55-revision-v1','','','2022-04-13 11:39:32','2022-04-13 11:39:32','',55,'http://wp-local.com:8888/?p=57',0,'revision','',0),
	(58,1,'2022-04-13 11:40:41','2022-04-13 11:40:41','','Introduction to Animal  Care (Level 1)','','publish','closed','closed','','introduction-to-animal-care-level-1-6','','','2022-04-13 11:40:41','2022-04-13 11:40:41','',0,'http://wp-local.com:8888/?post_type=course&#038;p=58',0,'course','',0),
	(59,1,'2022-04-13 11:39:57','2022-04-13 11:39:57','','Relatedcourses Animals and tracto 2018','','inherit','open','closed','','relatedcourses-animals-and-tracto-2018-6','','','2022-04-13 11:39:57','2022-04-13 11:39:57','',58,'http://wp-local.com:8888/wp-content/uploads/2022/04/Relatedcourses-Animals-and-tracto-2018-5.png',0,'attachment','image/png',0),
	(60,1,'2022-04-13 11:40:41','2022-04-13 11:40:41','','Introduction to Animal  Care (Level 1)','','inherit','closed','closed','','58-revision-v1','','','2022-04-13 11:40:41','2022-04-13 11:40:41','',58,'http://wp-local.com:8888/?p=60',0,'revision','',0),
	(61,1,'2022-04-13 11:42:07','2022-04-13 11:42:07','','Introduction to Animal  Care (Level 1)','','publish','closed','closed','','introduction-to-animal-care-level-1-7','','','2022-04-13 11:42:07','2022-04-13 11:42:07','',0,'http://wp-local.com:8888/?post_type=course&#038;p=61',0,'course','',0),
	(62,1,'2022-04-13 11:41:01','2022-04-13 11:41:01','','Relatedcourses Animals and tracto 2018','','inherit','open','closed','','relatedcourses-animals-and-tracto-2018-7','','','2022-04-13 11:41:01','2022-04-13 11:41:01','',61,'http://wp-local.com:8888/wp-content/uploads/2022/04/Relatedcourses-Animals-and-tracto-2018-6.png',0,'attachment','image/png',0),
	(63,1,'2022-04-13 11:42:07','2022-04-13 11:42:07','','Introduction to Animal  Care (Level 1)','','inherit','closed','closed','','61-revision-v1','','','2022-04-13 11:42:07','2022-04-13 11:42:07','',61,'http://wp-local.com:8888/?p=63',0,'revision','',0),
	(64,1,'2022-04-13 11:47:20','2022-04-13 11:47:20','','Introduction to Animal  Care (Level 1)','','publish','closed','closed','','introduction-to-animal-care-level-1-8','','','2022-04-13 11:47:20','2022-04-13 11:47:20','',0,'http://wp-local.com:8888/?post_type=course&#038;p=64',0,'course','',0),
	(65,1,'2022-04-13 11:46:20','2022-04-13 11:46:20','','Relatedcourses Animals and tracto 2018','','inherit','open','closed','','relatedcourses-animals-and-tracto-2018-8','','','2022-04-13 11:46:20','2022-04-13 11:46:20','',64,'http://wp-local.com:8888/wp-content/uploads/2022/04/Relatedcourses-Animals-and-tracto-2018-7.png',0,'attachment','image/png',0),
	(66,1,'2022-04-13 11:47:20','2022-04-13 11:47:20','','Introduction to Animal  Care (Level 1)','','inherit','closed','closed','','64-revision-v1','','','2022-04-13 11:47:20','2022-04-13 11:47:20','',64,'http://wp-local.com:8888/?p=66',0,'revision','',0),
	(67,1,'2022-04-13 11:48:26','2022-04-13 11:48:26','','Introduction to Animal  Care (Level 1)','','publish','closed','closed','','introduction-to-animal-care-level-1-9','','','2022-04-13 11:48:26','2022-04-13 11:48:26','',0,'http://wp-local.com:8888/?post_type=course&#038;p=67',0,'course','',0),
	(68,1,'2022-04-13 11:47:39','2022-04-13 11:47:39','','Relatedcourses Animals and tracto 2018','','inherit','open','closed','','relatedcourses-animals-and-tracto-2018-9','','','2022-04-13 11:47:39','2022-04-13 11:47:39','',67,'http://wp-local.com:8888/wp-content/uploads/2022/04/Relatedcourses-Animals-and-tracto-2018-8.png',0,'attachment','image/png',0),
	(69,1,'2022-04-13 11:48:26','2022-04-13 11:48:26','','Introduction to Animal  Care (Level 1)','','inherit','closed','closed','','67-revision-v1','','','2022-04-13 11:48:26','2022-04-13 11:48:26','',67,'http://wp-local.com:8888/?p=69',0,'revision','',0),
	(70,1,'2022-04-13 13:57:27','2022-04-13 13:57:27','','Enfield','','inherit','open','closed','','enfield','','','2022-04-13 13:57:27','2022-04-13 13:57:27','',0,'http://wp-local.com:8888/wp-content/uploads/2022/04/Enfield.jpg',0,'attachment','image/jpeg',0);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,1,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,1),
	(2,2,'campus','',0,0),
	(3,3,'campus','',0,0),
	(4,4,'campus','',0,0),
	(5,5,'campus','',0,0),
	(6,6,'campus','',0,0),
	(7,7,'campus','',0,0),
	(8,8,'course_type','',0,0),
	(9,9,'course_type','',0,0),
	(10,10,'course_type','',0,0),
	(11,11,'course_type','',0,0);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Uncategorized','uncategorized',0),
	(2,'Enfield','enfield',0),
	(3,'Crystal Palace Park','crystal-palace-park',0),
	(4,'Gunnersbury Park','gunnersbury-park',0),
	(5,'Regent\'s Park','regents-park',0),
	(6,'Brooks Farm','brooks-farm',0),
	(7,'Mottingham','mottingham',0),
	(8,'Full-time','full-time',0),
	(9,'Part-time','part-time',0),
	(10,'Apprenticeships','apprenticeships',0),
	(11,'Higher Education','higher-education',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'nickname','admin'),
	(2,1,'first_name',''),
	(3,1,'last_name',''),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'syntax_highlighting','true'),
	(7,1,'comment_shortcuts','false'),
	(8,1,'admin_color','fresh'),
	(9,1,'use_ssl','0'),
	(10,1,'show_admin_bar_front','true'),
	(11,1,'locale',''),
	(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(13,1,'wp_user_level','10'),
	(14,1,'dismissed_wp_pointers',''),
	(15,1,'show_welcome_panel','1'),
	(17,1,'wp_dashboard_quick_press_last_post_id','7'),
	(18,1,'session_tokens','a:1:{s:64:\"689864a00b1f153dbca8810b0e01e2668d5a28eef3ba968759230de38fb7a6d6\";a:4:{s:10:\"expiration\";i:1650975847;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36\";s:5:\"login\";i:1649766247;}}'),
	(19,1,'wp_user-settings','editor=tinymce&libraryContent=browse'),
	(20,1,'wp_user-settings-time','1649848080');

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'admin','$P$Bd7ZkOCoY5Hf/inqleWJh2kOCfbpIN/','admin','yourname@yourdomain.mamp','http://wp-local.com:8888/','2020-04-01 15:40:47','',0,'admin');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
