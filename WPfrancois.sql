-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Client: smysql
-- Généré le: Mar 29 Janvier 2013 à 16:43
-- Version du serveur: 5.5.24-4-log
-- Version de PHP: 5.3.10-1ubuntu3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `WPfrancois`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2013-01-08 16:00:18', '2013-01-08 16:00:18', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_comments`
--

CREATE TABLE IF NOT EXISTS `wp_festival_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_em_bookings`
--

CREATE TABLE IF NOT EXISTS `wp_festival_em_bookings` (
  `booking_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` bigint(20) unsigned NOT NULL,
  `person_id` bigint(20) unsigned NOT NULL,
  `booking_spaces` int(5) NOT NULL,
  `booking_comment` text,
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `booking_status` tinyint(1) NOT NULL DEFAULT '1',
  `booking_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `booking_meta` longtext,
  PRIMARY KEY (`booking_id`),
  KEY `event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_em_events`
--

CREATE TABLE IF NOT EXISTS `wp_festival_em_events` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `event_slug` varchar(200) DEFAULT NULL,
  `event_owner` bigint(20) unsigned DEFAULT NULL,
  `event_status` int(1) DEFAULT NULL,
  `event_name` text,
  `event_start_time` time DEFAULT NULL,
  `event_end_time` time DEFAULT NULL,
  `event_all_day` int(1) DEFAULT NULL,
  `event_start_date` date DEFAULT NULL,
  `event_end_date` date DEFAULT NULL,
  `post_content` longtext,
  `event_rsvp` tinyint(1) NOT NULL DEFAULT '0',
  `event_rsvp_date` date DEFAULT NULL,
  `event_rsvp_time` time DEFAULT NULL,
  `event_spaces` int(5) DEFAULT '0',
  `event_private` tinyint(1) NOT NULL DEFAULT '0',
  `location_id` bigint(20) unsigned DEFAULT NULL,
  `recurrence_id` bigint(20) unsigned DEFAULT NULL,
  `event_category_id` bigint(20) unsigned DEFAULT NULL,
  `event_attributes` text,
  `event_date_created` datetime DEFAULT NULL,
  `event_date_modified` datetime DEFAULT NULL,
  `recurrence` tinyint(1) NOT NULL DEFAULT '0',
  `recurrence_interval` int(4) DEFAULT NULL,
  `recurrence_freq` tinytext,
  `recurrence_byday` tinytext,
  `recurrence_byweekno` int(4) DEFAULT NULL,
  `recurrence_days` int(4) DEFAULT NULL,
  `blog_id` bigint(20) unsigned DEFAULT NULL,
  `group_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `event_status` (`event_status`),
  KEY `post_id` (`post_id`),
  KEY `blog_id` (`blog_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `wp_festival_em_events`
--

INSERT INTO `wp_festival_em_events` (`event_id`, `post_id`, `event_slug`, `event_owner`, `event_status`, `event_name`, `event_start_time`, `event_end_time`, `event_all_day`, `event_start_date`, `event_end_date`, `post_content`, `event_rsvp`, `event_rsvp_date`, `event_rsvp_time`, `event_spaces`, `event_private`, `location_id`, `recurrence_id`, `event_category_id`, `event_attributes`, `event_date_created`, `event_date_modified`, `recurrence`, `recurrence_interval`, `recurrence_freq`, `recurrence_byday`, `recurrence_byweekno`, `recurrence_days`, `blog_id`, `group_id`) VALUES
(1, 66, 'orality-in-james-joyce-conference', 1, NULL, 'Vendredi 24 septembre : 20h00', '16:00:00', '18:00:00', 0, '2013-01-22', '2013-01-22', NULL, 0, NULL, '00:00:00', 0, 0, 1, NULL, NULL, 'a:0:{}', NULL, '2013-01-15 16:56:57', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 67, 'traditional-music-session', 1, NULL, 'Traditional music session', '20:00:00', '22:00:00', NULL, '2013-02-12', '2013-02-12', NULL, 0, NULL, NULL, 0, 0, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 68, '6-nations-italy-vs-ireland', 1, NULL, '6 Nations, Italy VS Ireland', '22:00:00', '23:00:00', NULL, '2014-01-15', '2014-01-15', NULL, 0, NULL, NULL, 0, 0, 3, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_em_locations`
--

CREATE TABLE IF NOT EXISTS `wp_festival_em_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `blog_id` bigint(20) unsigned DEFAULT NULL,
  `location_slug` varchar(200) DEFAULT NULL,
  `location_name` text,
  `location_owner` bigint(20) unsigned NOT NULL DEFAULT '0',
  `location_address` varchar(200) DEFAULT NULL,
  `location_town` varchar(200) DEFAULT NULL,
  `location_state` varchar(200) DEFAULT NULL,
  `location_postcode` varchar(10) DEFAULT NULL,
  `location_region` varchar(200) DEFAULT NULL,
  `location_country` char(2) DEFAULT NULL,
  `location_latitude` float DEFAULT NULL,
  `location_longitude` float DEFAULT NULL,
  `post_content` longtext,
  `location_status` int(1) DEFAULT NULL,
  `location_private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`location_id`),
  KEY `location_state` (`location_state`),
  KEY `location_region` (`location_region`),
  KEY `location_country` (`location_country`),
  KEY `post_id` (`post_id`),
  KEY `blog_id` (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `wp_festival_em_locations`
--

INSERT INTO `wp_festival_em_locations` (`location_id`, `post_id`, `blog_id`, `location_slug`, `location_name`, `location_owner`, `location_address`, `location_town`, `location_state`, `location_postcode`, `location_region`, `location_country`, `location_latitude`, `location_longitude`, `post_content`, `location_status`, `location_private`) VALUES
(1, 69, 0, 'arts-millenium-building', 'Soirée d’ouverture', 1, 'Newcastle Road', 'Orleans', 'Galway', NULL, NULL, 'FR', 47.903, 1.90925, 'Soirée d’ouverture : séance de courts métrages\r\nRencontre-débat avec un réalisateur.', NULL, 0),
(2, 70, NULL, 'the-crane-bar', 'The Crane Bar', 1, '2, Sea Road', 'Galway', 'Galway', NULL, NULL, 'IE', 53.2692, -9.06151, NULL, NULL, 0),
(3, 71, NULL, 'taaffes-bar', 'Taaffes Bar', 1, '19 Shop Street', 'Galway', 'Galway', NULL, NULL, 'IE', 53.2725, -9.05321, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_em_meta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_em_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  `meta_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`meta_id`),
  KEY `object_id` (`object_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_em_tickets`
--

CREATE TABLE IF NOT EXISTS `wp_festival_em_tickets` (
  `ticket_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` bigint(20) unsigned NOT NULL,
  `ticket_name` tinytext NOT NULL,
  `ticket_description` text,
  `ticket_price` decimal(10,2) DEFAULT NULL,
  `ticket_start` datetime DEFAULT NULL,
  `ticket_end` datetime DEFAULT NULL,
  `ticket_min` int(10) DEFAULT NULL,
  `ticket_max` int(10) DEFAULT NULL,
  `ticket_spaces` int(11) DEFAULT NULL,
  `ticket_members` int(1) DEFAULT NULL,
  `ticket_required` int(1) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_em_tickets_bookings`
--

CREATE TABLE IF NOT EXISTS `wp_festival_em_tickets_bookings` (
  `ticket_booking_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` bigint(20) unsigned NOT NULL,
  `ticket_id` bigint(20) unsigned NOT NULL,
  `ticket_booking_spaces` int(6) NOT NULL,
  `ticket_booking_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ticket_booking_id`),
  KEY `booking_id` (`booking_id`),
  KEY `ticket_id` (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_links`
--

CREATE TABLE IF NOT EXISTS `wp_festival_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_options`
--

CREATE TABLE IF NOT EXISTS `wp_festival_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=584 ;

--
-- Contenu de la table `wp_festival_options`
--

INSERT INTO `wp_festival_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~francois/festival', 'yes'),
(2, 'blogname', 'Festival LGBT', 'yes'),
(3, 'blogdescription', 'Festival de films gays et lesbiens', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'francois.ben01@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:25:"vice-versa/vice-versa.php";i:2;s:30:"wp-superb-slideshow/superb.php";}', 'yes'),
(36, 'home', 'http://localhost/~francois/festival', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:5:{i:0;s:76:"/mnt/home/francois/public_html/festival/wp-content/themes/festival/style.css";i:2;s:89:"/mnt/home/francois/public_html/festival/wp-content/plugins/wp-superb-slideshow/superb.php";i:3;s:78:"/mnt/home/francois/public_html/festival/wp-content/plugins/akismet/akismet.php";i:4;s:80:"/mnt/home/francois/public_html/festival/wp-content/themes/twentytwelve/style.css";i:5;s:91:"/mnt/home/francois/public_html/festival/wp-content/themes/twentytwelve/editor-style-rtl.css";}', 'no'),
(44, 'template', 'twentytwelve', 'yes'),
(45, 'stylesheet', 'festival', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:3:{i:2;a:3:{s:5:"title";s:6:"Agenda";s:4:"text";s:1316:"<div id ="programme">\r\n<div id ="prog-list">\r\n<div class="prog-item">\r\n<div class="font-rouge prog-date">VENDREDI 24 SEPTEMBRE : 20h00</div>\r\n<div class ="prog-text">\r\nSoirée d’ouverture : séance de courts métrages\r\n\r\nRencontre-débat avec un réalisateur.\r\n</div>\r\n<div class="prog-item">\r\n<div class="font-rouge prog-date">SAMEDI 25 SEPTEMBRE : 19h30       </div>\r\n<div class ="prog-text">\r\nDocumentaire :\r\n\r\n<a href="">It’s elementary, talking about gays issues in school\r\n\r\n(C’est élémentaire - Parler de l’homosexualité à l’école)</a><br/>\r\n\r\nRencontre-débat avec le Groupe Action Gay & Lesbien – Loiret\r\n\r\nsur les interventions en milieu scolaire.\r\n</div>\r\n</div>                 \r\n\r\n<div class="prog-item">\r\n<div class="font-rouge prog-date">SAMEDI 25 SEPTEMBRE : 21h45</div>\r\n<div class ="prog-text">\r\nDocumentaire :\r\n\r\n<a href="">Fiction : Ander</a>\r\n\r\n</div>\r\n</div> \r\n\r\n<div class="prog-item">\r\n<div class="font-rouge prog-date">DIMANCHE 26 SEPTEMBRE : 16h00 </div>\r\n<div class ="prog-text">\r\nFiction : <a href="">El niño pez</a>\r\n</div>\r\n</div>                 \r\n\r\n<div class="prog-item">\r\n<div class="font-rouge prog-date">DIMANCHE 26 SEPTEMBRE : 18h00 </div>\r\n<div class ="prog-text">\r\nFiction : <a href="">I can’t think straight</a>\r\n</div>\r\n</div> \r\n\r\n</div>\r\n</div>\r\n</div>\r\n";s:6:"filter";b:0;}i:3;a:3:{s:5:"title";s:6:"Agenda";s:4:"text";s:1314:"<div id ="programme">\r\n<div id ="prog-list">\r\n<div class="prog-item">\r\n<div class="font-rouge prog-date">VENDREDI 24 SEPTEMBRE : 20h00</div>\r\n<div class ="prog-text">\r\nSoirée d’ouverture : séance de courts métrages\r\n\r\nRencontre-débat avec un réalisateur.\r\n</div>\r\n<div class="prog-item">\r\n<div class="font-rouge prog-date">SAMEDI 25 SEPTEMBRE : 19h30       </div>\r\n<div class ="prog-text">\r\nDocumentaire :\r\n\r\n<a href="">It’s elementary, talking about gays issues in school\r\n\r\n(C’est élémentaire - Parler de l’homosexualité à l’école)</a><br/>\r\n\r\nRencontre-débat avec le Groupe Action Gay & Lesbien – Loiret\r\n\r\nsur les interventions en milieu scolaire.\r\n</div>\r\n</div>                 \r\n\r\n<div class="prog-item">\r\n<div class="font-rouge prog-date">SAMEDI 25 SEPTEMBRE : 21h45</div>\r\n<div class ="prog-text">\r\nDocumentaire :\r\n\r\n<a href="">Fiction : Ander</a>\r\n\r\n</div>\r\n</div> \r\n\r\n<div class="prog-item">\r\n<div class="font-rouge prog-date">DIMANCHE 26 SEPTEMBRE : 16h00 </div>\r\n<div class ="prog-text">\r\nFiction : <a href="">El niño pez</a>\r\n</div>\r\n</div>                 \r\n\r\n<div class="prog-item">\r\n<div class="font-rouge prog-date">DIMANCHE 26 SEPTEMBRE : 18h00 </div>\r\n<div class ="prog-text">\r\nFiction : <a href="">I can’t think straight</a>\r\n</div>\r\n</div> \r\n\r\n</div>\r\n</div>\r\n</div>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '6', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_festival_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:124:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:16:"edit_tribe_event";b:1;s:16:"read_tribe_event";b:1;s:18:"delete_tribe_event";b:1;s:19:"delete_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:24:"edit_others_tribe_events";b:1;s:26:"delete_others_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:27:"delete_private_tribe_events";b:1;s:25:"edit_private_tribe_events";b:1;s:25:"read_private_tribe_events";b:1;s:16:"edit_tribe_venue";b:1;s:16:"read_tribe_venue";b:1;s:18:"delete_tribe_venue";b:1;s:19:"delete_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:24:"edit_others_tribe_venues";b:1;s:26:"delete_others_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:27:"delete_private_tribe_venues";b:1;s:25:"edit_private_tribe_venues";b:1;s:25:"read_private_tribe_venues";b:1;s:20:"edit_tribe_organizer";b:1;s:20:"read_tribe_organizer";b:1;s:22:"delete_tribe_organizer";b:1;s:23:"delete_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;s:28:"edit_others_tribe_organizers";b:1;s:30:"delete_others_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:31:"delete_private_tribe_organizers";b:1;s:29:"edit_private_tribe_organizers";b:1;s:29:"read_private_tribe_organizers";b:1;s:14:"publish_events";b:1;s:20:"delete_others_events";b:1;s:18:"edit_others_events";b:1;s:22:"manage_others_bookings";b:1;s:24:"publish_recurring_events";b:1;s:30:"delete_others_recurring_events";b:1;s:28:"edit_others_recurring_events";b:1;s:17:"publish_locations";b:1;s:23:"delete_others_locations";b:1;s:16:"delete_locations";b:1;s:21:"edit_others_locations";b:1;s:23:"delete_event_categories";b:1;s:21:"edit_event_categories";b:1;s:15:"manage_bookings";b:1;s:19:"upload_event_images";b:1;s:13:"delete_events";b:1;s:11:"edit_events";b:1;s:19:"read_private_events";b:1;s:23:"delete_recurring_events";b:1;s:21:"edit_recurring_events";b:1;s:14:"edit_locations";b:1;s:22:"read_private_locations";b:1;s:21:"read_others_locations";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:96:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:16:"edit_tribe_event";b:1;s:16:"read_tribe_event";b:1;s:18:"delete_tribe_event";b:1;s:19:"delete_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:24:"edit_others_tribe_events";b:1;s:26:"delete_others_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:27:"delete_private_tribe_events";b:1;s:25:"edit_private_tribe_events";b:1;s:25:"read_private_tribe_events";b:1;s:16:"edit_tribe_venue";b:1;s:16:"read_tribe_venue";b:1;s:18:"delete_tribe_venue";b:1;s:19:"delete_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:24:"edit_others_tribe_venues";b:1;s:26:"delete_others_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:27:"delete_private_tribe_venues";b:1;s:25:"edit_private_tribe_venues";b:1;s:25:"read_private_tribe_venues";b:1;s:20:"edit_tribe_organizer";b:1;s:20:"read_tribe_organizer";b:1;s:22:"delete_tribe_organizer";b:1;s:23:"delete_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;s:28:"edit_others_tribe_organizers";b:1;s:30:"delete_others_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:31:"delete_private_tribe_organizers";b:1;s:29:"edit_private_tribe_organizers";b:1;s:29:"read_private_tribe_organizers";b:1;s:14:"publish_events";b:1;s:20:"delete_others_events";b:1;s:18:"edit_others_events";b:1;s:22:"manage_others_bookings";b:1;s:24:"publish_recurring_events";b:1;s:30:"delete_others_recurring_events";b:1;s:28:"edit_others_recurring_events";b:1;s:17:"publish_locations";b:1;s:23:"delete_others_locations";b:1;s:16:"delete_locations";b:1;s:21:"edit_others_locations";b:1;s:23:"delete_event_categories";b:1;s:21:"edit_event_categories";b:1;s:15:"manage_bookings";b:1;s:19:"upload_event_images";b:1;s:13:"delete_events";b:1;s:11:"edit_events";b:1;s:19:"read_private_events";b:1;s:23:"delete_recurring_events";b:1;s:21:"edit_recurring_events";b:1;s:14:"edit_locations";b:1;s:22:"read_private_locations";b:1;s:21:"read_others_locations";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:44:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:16:"edit_tribe_event";b:1;s:16:"read_tribe_event";b:1;s:18:"delete_tribe_event";b:1;s:19:"delete_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:16:"edit_tribe_venue";b:1;s:16:"read_tribe_venue";b:1;s:18:"delete_tribe_venue";b:1;s:19:"delete_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:20:"edit_tribe_organizer";b:1;s:20:"read_tribe_organizer";b:1;s:22:"delete_tribe_organizer";b:1;s:23:"delete_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:15:"manage_bookings";b:1;s:19:"upload_event_images";b:1;s:13:"delete_events";b:1;s:11:"edit_events";b:1;s:19:"read_private_events";b:1;s:23:"delete_recurring_events";b:1;s:21:"edit_recurring_events";b:1;s:14:"edit_locations";b:1;s:22:"read_private_locations";b:1;s:21:"read_others_locations";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:30:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:16:"edit_tribe_event";b:1;s:16:"read_tribe_event";b:1;s:18:"delete_tribe_event";b:1;s:19:"delete_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:16:"edit_tribe_venue";b:1;s:16:"read_tribe_venue";b:1;s:18:"delete_tribe_venue";b:1;s:19:"delete_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:20:"edit_tribe_organizer";b:1;s:20:"read_tribe_organizer";b:1;s:22:"delete_tribe_organizer";b:1;s:23:"delete_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;s:15:"manage_bookings";b:1;s:19:"upload_event_images";b:1;s:13:"delete_events";b:1;s:11:"edit_events";b:1;s:19:"read_private_events";b:1;s:23:"delete_recurring_events";b:1;s:21:"edit_recurring_events";b:1;s:14:"edit_locations";b:1;s:22:"read_private_locations";b:1;s:21:"read_others_locations";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:15:{s:4:"read";b:1;s:7:"level_0";b:1;s:16:"read_tribe_event";b:1;s:20:"read_tribe_organizer";b:1;s:16:"read_tribe_venue";b:1;s:15:"manage_bookings";b:1;s:19:"upload_event_images";b:1;s:13:"delete_events";b:1;s:11:"edit_events";b:1;s:19:"read_private_events";b:1;s:23:"delete_recurring_events";b:1;s:21:"edit_recurring_events";b:1;s:14:"edit_locations";b:1;s:22:"read_private_locations";b:1;s:21:"read_others_locations";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:6:{s:18:"orphaned_widgets_1";a:1:{i:0;s:6:"text-2";}s:19:"wp_inactive_widgets";a:1:{i:0;s:10:"nav_menu-2";}s:9:"sidebar-1";a:1:{i:0;s:6:"text-3";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1359474422;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1359474511;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1359474732;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.5";s:12:"last_checked";i:1359468022;}', 'yes'),
(102, '_transient_random_seed', '084455cc91a2d6454c9be02391cb26fc', 'yes'),
(103, 'auth_key', 'Z:RbT01NZ,yi$>c*5|2N Ff)<7rKnPS}+HSi8 T@OgFL{ygqkaEsx>/j:uLVT6D3', 'yes'),
(104, 'auth_salt', '~dbi(Yl}:RoWt=C-1{RV.h*}smW*ASUE6ojfq#scHXe/XaK[fyz}qJVc@5nx9zsu', 'yes'),
(105, 'logged_in_key', '^ACK*G!M{$Awf{<TAGX2bSW|Ja,aP3iq:A#lQ7OJql`(YfvYA-7)?R>J:+G_p%t:', 'yes'),
(106, 'logged_in_salt', 'SBM(*kU~O4mE6fW^TdrgD0Nye+~K#MfepjF*~P$jaMc6])eWT{PG.ew@,4Eg=hJ5', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1359472009;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1359468083;}', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:35:"http://localhost/~francois/festival";s:4:"link";s:111:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~francois/festival/";s:3:"url";s:150:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~abrioux/festival_cinema/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'nonce_key', 'V5K)KBupD.[DjJux3DS1VL.R/:u%U?QTO]F|)hKLv_KjuQ<fG$qHY$FV}%yN^HK0', 'yes'),
(113, 'nonce_salt', 'R7u%C6,1RGPt6WA*mCrlR3PiQSZWs&~U7q770XXu%<QI1L-+.,6Ww P7 WRx7YFX', 'yes'),
(114, 'can_compress_scripts', '0', 'yes'),
(129, 'category_children', 'a:0:{}', 'yes'),
(133, 'theme_mods_twentytwelve', 'a:8:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:16:"header_textcolor";s:3:"444";s:16:"background_color";s:6:"e6e6e6";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358935297;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:2:{i:0;s:6:"text-3";i:1;s:10:"nav_menu-2";}s:9:"sidebar-1";a:1:{i:0;s:6:"text-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(134, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:4;}}', 'yes'),
(162, 'recently_activated', 'a:0:{}', 'yes'),
(163, 'tribe_events_db_version', '2.0.6', 'yes'),
(164, 'tribe_events_calendar_options', 'a:6:{s:19:"tribeEventsTemplate";s:0:"";s:21:"tribeEventsBeforeHTML";s:0:"";s:20:"tribeEventsAfterHTML";s:0:"";s:21:"previous_ecp_versions";a:1:{i:0;s:1:"0";}s:18:"latest_ecp_version";s:6:"2.0.10";s:14:"welcome_notice";b:0;}', 'yes'),
(169, 'dbem_time_format', 'G \\h i \\m\\i\\n', 'yes'),
(170, 'dbem_date_format', 'd/m/Y', 'yes'),
(171, 'dbem_date_format_js', 'dd/mm/yy', 'yes'),
(172, 'dbem_dates_seperator', ' - ', 'yes'),
(173, 'dbem_times_seperator', ' - ', 'yes'),
(174, 'dbem_default_category', '-1', 'yes'),
(175, 'dbem_default_location', '0', 'yes'),
(176, 'dbem_events_default_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(177, 'dbem_events_default_order', 'ASC', 'yes'),
(178, 'dbem_events_default_limit', '10', 'yes'),
(179, 'dbem_serach_form_submit', 'Recherche', 'yes'),
(180, 'dbem_search_form_text', '1', 'yes'),
(181, 'dbem_search_form_text_label', 'Recherche', 'yes'),
(182, 'dbem_search_form_dates', '1', 'yes'),
(183, 'dbem_search_form_categories', '1', 'yes'),
(184, 'dbem_search_form_categories_label', 'Toutes les catégories', 'yes'),
(185, 'dbem_search_form_countries', '1', 'yes'),
(186, 'dbem_search_form_countries_label', 'Tous les pays', 'yes'),
(187, 'dbem_search_form_regions', '1', 'yes'),
(188, 'dbem_search_form_regions_label', 'Toutes les régions', 'yes'),
(189, 'dbem_search_form_states', '1', 'yes'),
(190, 'dbem_search_form_states_label', 'Tous les états', 'yes'),
(191, 'dbem_search_form_towns', '0', 'yes'),
(192, 'dbem_search_form_towns_label', 'Toutes les villes / cités', 'yes'),
(193, 'dbem_events_form_editor', '1', 'yes'),
(194, 'dbem_events_form_reshow', '1', 'yes'),
(195, 'dbem_events_form_result_success', 'Vous avez soumis votre évènement, celui-ci sera publié après approbation.', 'yes'),
(196, 'dbem_events_form_result_success_updated', 'You have successfully updated your event, which will be republished pending approval.', 'yes'),
(197, 'dbem_events_anonymous_submissions', '0', 'yes'),
(198, 'dbem_events_anonymous_user', '1', 'yes'),
(199, 'dbem_events_anonymous_result_success', 'Vous avez soumis votre évènement, celui-ci sera publié après approbation.', 'yes'),
(200, 'dbem_event_submitted_email_admin', '', 'yes'),
(201, 'dbem_event_submitted_email_subject', 'Évènement en attente d''approbation', 'yes'),
(202, 'dbem_event_submitted_email_body', 'Un nouvel évènement vient d''être soumis par #_CONTACTNAME.\r\n\r\nNom : #_EVENTNAME \r\n\r\nDate : #_EVENTDATES \r\n\r\nHeure : #_EVENTTIMES \r\n\r\nVeuillez visiter la page http://localhost/~abrioux/festival_cinema/wp-admin/post.php?action=edit&post=#_EVENTPOSTID pour valider cet évènement.\r\n\r\n\r\n-------------------------------\r\n\r\nPropulsé par Events Manager, gestionnaire d''évènements pour WordPress - http://wp-events-plugin.com', 'yes'),
(203, 'dbem_event_resubmitted_email_subject', 'Évènement resoumis en attente d''approbation', 'yes'),
(204, 'dbem_event_resubmitted_email_body', 'Un évènement déjà publié vient d''être modifié par #_CONTACTNAME. et cet évènement n''est plus en ligne, il attend votre validation.<br /> Nom : #_EVENTNAME \r\n\r\nDate : #_EVENTDATES \r\n\r\nHeure : #_EVENTTIMES \r\n\r\nVeuillez visiter la page http://localhost/~abrioux/festival_cinema/wp-admin/post.php?action=edit&post=#_EVENTPOSTID pour valider cet évènement.\r\n\r\n\r\n-------------------------------\r\n\r\nPropulsé par Events Manager, gestionnaire d''évènements pour WordPress - http://wp-events-plugin.com', 'yes'),
(205, 'dbem_event_published_email_subject', 'Soumettre - #_EVENTNAME', 'yes'),
(206, 'dbem_event_published_email_body', 'Un nouvel évènement vient d''être publié par #_CONTACTNAME.\r\n\r\nNom : #_EVENTNAME \r\n\r\nDate : #_EVENTDATES \r\n\r\nHeure : #_EVENTTIMES \r\n\r\nVeuillez visiter la page http://localhost/~abrioux/festival_cinema/wp-admin/post.php?action=edit&post=#_EVENTPOSTID pour valider cet évènement.\r\n\r\n\r\n-------------------------------\r\n\r\nPropulsé par Events Manager, gestionnaire d''évènements pour WordPress - http://wp-events-plugin.com', 'yes'),
(207, 'dbem_event_approved_email_subject', 'Évènement approuvé - #_EVENTNAME', 'yes'),
(208, 'dbem_event_approved_email_body', 'Cher/chère #_CONTACTNAME, \r\n\r\nVotre évènement #_EVENTNAME le #_EVENTDATES a été approuvé.\r\n\r\nVous pouvez visualiser votre évènement ici : #_EVENTURL\r\n\r\n\r\n-------------------------------\r\n\r\nPropulsé par Events Manager, gestionnaire d''évènements pour WordPress - http://wp-events-plugin.com', 'yes'),
(209, 'dbem_event_reapproved_email_subject', 'Évènement approuvé - #_EVENTNAME', 'yes'),
(210, 'dbem_event_reapproved_email_body', 'Cher/chère #_CONTACTNAME, \r\n\r\nVotre évènement #_EVENTNAME le #_EVENTDATES a été approuvé.\r\n\r\nVous pouvez visualiser votre évènement ici : #_EVENTURL\r\n\r\n\r\n-------------------------------\r\n\r\nPropulsé par Events Manager, gestionnaire d''évènements pour WordPress - http://wp-events-plugin.com', 'yes'),
(211, 'dbem_events_page_title', 'Évènements', 'yes'),
(212, 'dbem_events_page_scope', 'future', 'yes'),
(213, 'dbem_events_page_search', '1', 'yes'),
(214, 'dbem_event_list_item_format_header', '<table cellpadding="0" cellspacing="0" class="events-table" >\r\n    <thead>\r\n        <tr>\r\n			<th class="event-time" width="150">Date/Time</th>\r\n			<th class="event-description" width="*">Event</th>\r\n		</tr>\r\n   	</thead>\r\n    <tbody>', 'yes'),
(215, 'dbem_event_list_item_format', '<tr>\r\n			<td>\r\n                #_EVENTDATES<br/>\r\n                #_EVENTTIMES\r\n            </td>\r\n            <td>\r\n                #_EVENTLINK\r\n                {has_location}<br/><i>#_LOCATIONNAME, #_LOCATIONTOWN #_LOCATIONSTATE</i>{/has_location}\r\n            </td>\r\n        </tr>', 'yes'),
(216, 'dbem_event_list_item_format_footer', '</tbody></table>', 'yes'),
(217, 'dbem_display_calendar_in_events_page', '0', 'yes'),
(218, 'dbem_single_event_format', '<div style="float:right; margin:0px 0px 15px 15px;">#_LOCATIONMAP</div>\r\n<p>\r\n	<strong>Date/Time</strong><br/>\r\n	Date(s) - #_EVENTDATES<br /><i>#_EVENTTIMES</i>\r\n</p>\r\n{has_location}\r\n<p>\r\n	<strong>Location</strong><br/>\r\n	#_LOCATIONLINK\r\n</p>\r\n{/has_location}\r\n<p>\r\n	<strong>Category(ies)</strong>\r\n	#_CATEGORIES\r\n</p>\r\n<br style="clear:both" />\r\n#_EVENTNOTES\r\n{has_bookings}\r\n<h3>Bookings</h3>\r\n#_BOOKINGFORM\r\n{/has_bookings}', 'yes'),
(219, 'dbem_event_page_title_format', '#_EVENTNAME', 'yes'),
(220, 'dbem_event_all_day_message', 'Toute la journée', 'yes'),
(221, 'dbem_no_events_message', 'Pas de Évènements', 'yes'),
(222, 'dbem_locations_default_orderby', 'location_name', 'yes'),
(223, 'dbem_locations_default_order', 'ASC', 'yes'),
(224, 'dbem_locations_default_limit', '10', 'yes'),
(225, 'dbem_locations_page_title', 'Évènement Emplacements', 'yes'),
(226, 'dbem_no_locations_message', 'Pas de Emplacements', 'yes'),
(227, 'dbem_location_default_country', 'US', 'yes'),
(228, 'dbem_location_list_item_format_header', '<ul class="em-locations-list">', 'yes'),
(229, 'dbem_location_list_item_format', '<li>#_LOCATIONLINK<ul><li>#_LOCATIONFULLLINE</li></ul></li>', 'yes'),
(230, 'dbem_location_list_item_format_footer', '</ul>', 'yes'),
(231, 'dbem_location_page_title_format', '#_LOCATIONNAME', 'yes'),
(232, 'dbem_single_location_format', '<div style="float:right; margin:0px 0px 15px 15px;">#_LOCATIONMAP</div>\r\n<p>\r\n	<strong>Address</strong><br/>\r\n	#_LOCATIONADDRESS<br/>\r\n	#_LOCATIONTOWN<br/>\r\n	#_LOCATIONSTATE<br/>\r\n	#_LOCATIONREGION<br/>\r\n	#_LOCATIONPOSTCODE<br/>\r\n	#_LOCATIONCOUNTRY\r\n</p>\r\n<br style="clear:both" />\r\n#_LOCATIONNOTES\r\n\r\n<h3>Upcoming Events</h3>\r\n<p>#_LOCATIONNEXTEVENTS</p>', 'yes'),
(233, 'dbem_location_no_events_message', '<li>Aucun évènement à cet emplacement</li>', 'yes'),
(234, 'dbem_location_event_list_item_header_format', '<ul>', 'yes'),
(235, 'dbem_location_event_list_item_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES</li>', 'yes'),
(236, 'dbem_location_event_list_item_footer_format', '</ul>', 'yes'),
(237, 'dbem_location_event_list_limit', '20', 'yes'),
(238, 'dbem_categories_default_limit', '10', 'yes'),
(239, 'dbem_categories_default_orderby', 'name', 'yes'),
(240, 'dbem_categories_default_order', 'ASC', 'yes'),
(241, 'dbem_category_page_title_format', '#_CATEGORYNAME', 'yes'),
(242, 'dbem_category_page_format', '#_CATEGORYNOTES<h3>Upcoming Events</h3>#_CATEGORYNEXTEVENTS', 'yes'),
(243, 'dbem_categories_page_title', 'Évènement Catégories', 'yes'),
(244, 'dbem_categories_list_item_format', '<li>#_CATEGORYLINK</li>', 'yes'),
(245, 'dbem_no_categories_message', 'Pas de Catégories', 'yes'),
(246, 'dbem_category_no_events_message', 'No events in this category', 'yes'),
(247, 'dbem_category_event_list_item_header_format', '<ul>', 'yes'),
(248, 'dbem_category_event_list_item_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES</li>', 'yes'),
(249, 'dbem_category_event_list_item_footer_format', '</ul>', 'yes'),
(250, 'dbem_category_event_list_limit', '20', 'yes'),
(251, 'dbem_tag_page_title_format', '#_TAGNAME', 'yes'),
(252, 'dbem_tag_page_format', '<h3>Upcoming Events</h3>#_TAGNEXTEVENTS', 'yes'),
(253, 'dbem_tag_no_events_message', '<li>Aucun évènement correspondant à ce mot-clef</li>', 'yes'),
(254, 'dbem_tag_event_list_item_header_format', '<ul>', 'yes'),
(255, 'dbem_tag_event_list_item_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES</li>', 'yes'),
(256, 'dbem_tag_event_list_item_footer_format', '</ul>', 'yes'),
(257, 'dbem_rss_limit', '10', 'yes'),
(258, 'dbem_rss_scope', 'future', 'yes'),
(259, 'dbem_rss_main_title', 'Festival LGBT - Évènements', 'yes'),
(260, 'dbem_rss_main_description', 'Festival de films gays et lesbiens - Évènements', 'yes'),
(261, 'dbem_rss_description_format', '#_EVENTDATES - #_EVENTTIMES <br/>#_LOCATIONNAME <br/>#_LOCATIONADDRESS <br/>#_LOCATIONTOWN', 'yes'),
(262, 'dbem_rss_title_format', '#_EVENTNAME', 'yes'),
(263, 'em_rss_pubdate', 'Tue, 15 Jan 2013 15:56:57 GMT', 'yes'),
(264, 'dbem_ical_limit', '0', 'yes'),
(265, 'dbem_ical_scope', 'future', 'yes'),
(266, 'dbem_ical_description_format', '#_EVENTNAME - #_LOCATIONNAME - #_EVENTDATES - #_EVENTTIMES', 'yes'),
(267, 'dbem_gmap_is_active', '1', 'yes'),
(268, 'dbem_location_baloon_format', '<strong>#_LOCATIONNAME</strong><br/>#_LOCATIONADDRESS - #_LOCATIONTOWN<br/><a href=''#_LOCATIONPAGEURL''>Details</a>', 'yes'),
(269, 'dbem_map_text_format', '<strong>#_LOCATIONNAME</strong><p>#_LOCATIONADDRESS</p><p>#_LOCATIONTOWN</p>', 'yes'),
(270, 'dbem_email_disable_registration', '0', 'yes'),
(271, 'dbem_rsvp_mail_port', '465', 'yes'),
(272, 'dbem_smtp_host', 'localhost', 'yes'),
(273, 'dbem_mail_sender_name', '', 'yes'),
(274, 'dbem_rsvp_mail_send_method', 'mail', 'yes'),
(275, 'dbem_rsvp_mail_SMTPAuth', '1', 'yes'),
(276, 'dbem_smtp_html', '1', 'yes'),
(277, 'dbem_smtp_html_br', '1', 'yes'),
(278, 'dbem_image_max_width', '700', 'yes'),
(279, 'dbem_image_max_height', '700', 'yes'),
(280, 'dbem_image_min_width', '50', 'yes'),
(281, 'dbem_image_min_height', '50', 'yes'),
(282, 'dbem_image_max_size', '204800', 'yes'),
(283, 'dbem_list_date_title', 'Évènements - #j #M #y', 'yes'),
(284, 'dbem_full_calendar_event_format', '<li>#_EVENTLINK</li>', 'yes'),
(285, 'dbem_full_calendar_long_events', '0', 'yes'),
(286, 'dbem_full_calendar_initials_length', '0', 'yes'),
(287, 'dbem_full_calendar_abbreviated_weekdays', '1', 'yes'),
(288, 'dbem_display_calendar_day_single_yes', '1', 'yes'),
(289, 'dbem_small_calendar_event_title_format', '#_EVENTNAME', 'yes'),
(290, 'dbem_small_calendar_event_title_separator', ', ', 'yes'),
(291, 'dbem_small_calendar_initials_length', '1', 'yes'),
(292, 'dbem_small_calendar_abbreviated_weekdays', '0', 'yes'),
(293, 'dbem_display_calendar_order', 'ASC', 'yes'),
(294, 'dbem_display_calendar_orderby', 'event_name,event_start_time', 'yes'),
(295, 'dbem_display_calendar_events_limit', '3', 'yes'),
(296, 'dbem_display_calendar_events_limit_msg', 'plus...', 'yes'),
(297, 'dbem_calendar_direct_links', '1', 'yes'),
(298, 'dbem_require_location', '0', 'yes'),
(299, 'dbem_locations_enabled', '1', 'yes'),
(300, 'dbem_use_select_for_locations', '0', 'yes'),
(301, 'dbem_attributes_enabled', '0', 'yes'),
(302, 'dbem_recurrence_enabled', '0', 'yes'),
(303, 'dbem_rsvp_enabled', '0', 'yes'),
(304, 'dbem_categories_enabled', '1', 'yes'),
(305, 'dbem_tags_enabled', '0', 'yes'),
(306, 'dbem_placeholders_custom', '', 'yes'),
(307, 'dbem_location_attributes_enabled', '1', 'yes'),
(308, 'dbem_location_placeholders_custom', '', 'yes'),
(309, 'dbem_bookings_registration_disable', '0', 'yes'),
(310, 'dbem_bookings_registration_user', '', 'yes'),
(311, 'dbem_bookings_approval', '1', 'yes'),
(312, 'dbem_bookings_approval_reserved', '0', 'yes'),
(313, 'dbem_bookings_approval_overbooking', '0', 'yes'),
(314, 'dbem_bookings_double', '0', 'yes'),
(315, 'dbem_bookings_user_cancellation', '1', 'yes'),
(316, 'dbem_bookings_currency', 'USD', 'yes'),
(317, 'dbem_bookings_currency_decimal_point', ', ', 'yes'),
(318, 'dbem_bookings_currency_thousands_sep', '  ', 'yes'),
(319, 'dbem_bookings_currency_format', '@#', 'yes'),
(320, 'dbem_bookings_tax', '0', 'yes'),
(321, 'dbem_bookings_tax_auto_add', '0', 'yes'),
(322, 'dbem_bookings_submit_button', 'Envoyer votre demande de réservation', 'yes'),
(323, 'dbem_bookings_login_form', '1', 'yes'),
(324, 'dbem_bookings_anonymous', '1', 'yes'),
(325, 'dbem_bookings_form_max', '20', 'yes'),
(326, 'dbem_bookings_form_msg_disabled', 'Les réservations en ligne ne sont pas disponibles pour cet évènement.', 'yes'),
(327, 'dbem_bookings_form_msg_closed', 'Les réservations sont closes pour cet évènement.', 'yes'),
(328, 'dbem_bookings_form_msg_full', 'Cet évènement est complet.', 'yes'),
(329, 'dbem_bookings_form_msg_attending', 'Vous avez déjà effectué une réservation pour cet évènement.', 'yes'),
(330, 'dbem_bookings_form_msg_bookings_link', 'Gérer mes réservations', 'yes'),
(331, 'dbem_booking_warning_cancel', 'Êtes-vous sûr de vouloir annuler votre réservation ?', 'yes'),
(332, 'dbem_booking_feedback_cancelled', 'Réservation Annulé', 'yes'),
(333, 'dbem_booking_feedback_pending', 'Réservation effectuée, en attente de confirmation (vous recevrez également un e-mail après confirmation).', 'yes'),
(334, 'dbem_booking_feedback', 'Réservation effectuée.', 'yes'),
(335, 'dbem_booking_feedback_full', 'La réservation ne peut être faite, plus de places disponibles !', 'yes'),
(336, 'dbem_booking_feedback_log_in', 'Vous devez vous connecter ou vous enregistrer pour faire une réservation.', 'yes'),
(337, 'dbem_booking_feedback_nomail', 'Cependant, des problèmes se sont produits lors de l''envoi des e-mails de confirmation pour vous et / ou le point de contact de l''évènement. Vous pouvez le contacter directement.', 'yes'),
(338, 'dbem_booking_feedback_error', 'La réservation n''a pu être effectuée :', 'yes'),
(339, 'dbem_booking_feedback_email_exists', 'Cette adresse e-mail existe déjà dans notre système, veuillez vous identifier avec votre compte pour procéder à votre réservation.', 'yes'),
(340, 'dbem_booking_feedback_new_user', 'Un nouveau compte utilisateur a été créé pour vous. Veuillez consulter votre courrier électronique pour plus de détails concernant l''accès à ce compte.', 'yes'),
(341, 'dbem_booking_feedback_reg_error', 'Un problème s''est produit lors de la création du compte utilisateur, veuillez contacter l''administrateur du site.', 'yes'),
(342, 'dbem_booking_feedback_already_booked', 'Vous avez déjà réservé une place à cet évènement.', 'yes'),
(343, 'dbem_booking_feedback_min_space', 'Vous devez demander au moins une place pour votre réservation.', 'yes'),
(344, 'dbem_booking_button_msg_book', 'Réservez maintenant', 'yes'),
(345, 'dbem_booking_button_msg_booking', 'Réservation ...', 'yes'),
(346, 'dbem_booking_button_msg_booked', 'Réservation soumis', 'yes'),
(347, 'dbem_booking_button_msg_error', 'Réservation erreur. Réessayer?', 'yes'),
(348, 'dbem_booking_button_msg_full', 'Epuisé', 'yes'),
(349, 'dbem_booking_button_msg_cancel', 'Annuler', 'yes'),
(350, 'dbem_booking_button_msg_canceling', 'Annuler...', 'yes'),
(351, 'dbem_booking_button_msg_cancelled', 'Annulé', 'yes'),
(352, 'dbem_booking_button_msg_cancel_error', 'Annulation erreur. Réessayer?', 'yes'),
(353, 'dbem_bookings_notify_admin', '0', 'yes'),
(354, 'dbem_bookings_contact_email', '1', 'yes'),
(355, 'dbem_bookings_contact_email_subject', 'Nouvelle réservation', 'yes'),
(356, 'dbem_bookings_contact_email_body', '#_BOOKINGNAME (#_BOOKINGEMAIL) participera à #_EVENTNAME le #_EVENTDATE et souhaite réserver #_BOOKINGSPACES place(s).\r\n\r\nIl y a maintenant #_BOOKEDSPACES places réservées, #_AVAILABLESPACES places sont encore disponibles.\r\n\r\nCordialement\r\n\r\nPropulsé par Events Manager, gestionnaire d''évènements pour WordPress - http://wp-events-plugin.com\r\n\r\n\r\n-------------------------------\r\n\r\nPropulsé par Events Manager, gestionnaire d''évènements pour WordPress - http://wp-events-plugin.com', 'yes'),
(357, 'dbem_contactperson_email_cancelled_subject', 'Réservation annulée', 'yes'),
(358, 'dbem_contactperson_email_cancelled_body', '#_BOOKINGNAME (#_BOOKINGEMAIL) a annulé sa réservation pour #_EVENTNAME le #_EVENTDATES de _BOOKINGSPACES place(s).\r\n\r\nIl y a maintenant #_BOOKEDSPACES places réservées, #_AVAILABLESPACES places sont encore disponibles.\r\n\r\nCordialement\r\n\r\nPropulsé par Events Manager, gestionnaire d''évènements pour WordPress - http://wp-events-plugin.com\r\n\r\n\r\n-------------------------------\r\n\r\nPropulsé par Events Manager, gestionnaire d''évènements pour WordPress - http://wp-events-plugin.com', 'yes'),
(359, 'dbem_bookings_email_pending_subject', 'Réservation en attente', 'yes'),
(360, 'dbem_bookings_email_pending_body', 'Cher/chère #_BOOKINGNAME,\r\n\r\nVous avez demandé à réserver #_BOOKINGSPACES place(s) pour #_EVENTNAME.\r\n\r\nQuand : #_EVENTDATES à #_EVENTTIMES\r\n\r\nOù : #_LOCATIONNAME - #_LOCATIONFULLLINE\r\n\r\nCette réservation est maintenant en attente d''approbation par nos administrateurs : une fois approuvée vous recevrez un e-mail automatique de confirmation.\r\n\r\nCordialement,\r\n\r\n#_CONTACTNAME\r\n\r\n\r\n-------------------------------\r\n\r\nPropulsé par Events Manager, gestionnaire d''évènements pour WordPress - http://wp-events-plugin.com', 'yes'),
(361, 'dbem_bookings_email_rejected_subject', 'Réservation rejetée', 'yes'),
(362, 'dbem_bookings_email_rejected_body', 'Cher/chère #_BOOKINGNAME,\r\n\r\n\r\nVotre réservation pour#_BOOKINGSPACES place(s) pour #_EVENTNAME le #_EVENTDATES a été rejetée. \r\n\r\nCordialement,\r\n\r\n#_CONTACTNAME\r\n\r\n\r\n-------------------------------\r\n\r\nPropulsé par Events Manager, gestionnaire d''évènements pour WordPress - http://wp-events-plugin.com', 'yes'),
(363, 'dbem_bookings_email_confirmed_subject', 'Réservation confirmée', 'yes'),
(364, 'dbem_bookings_email_confirmed_body', 'Dear #_BOOKINGNAME, \r\n\r\nYou have successfully reserved #_BOOKINGSPACES space/spaces for #_EVENTNAME.\r\n\r\nWhen : #_EVENTDATES @ #_EVENTTIMES\r\n\r\nWhere : #_LOCATIONNAME - #_LOCATIONFULLLINE\r\n\r\nYours faithfully,\r\n\r\n#_CONTACTNAME\r\n\r\n\r\n-------------------------------\r\n\r\nPropulsé par Events Manager, gestionnaire d''évènements pour WordPress - http://wp-events-plugin.com', 'yes'),
(365, 'dbem_bookings_email_cancelled_subject', 'Réservation annulée', 'yes'),
(366, 'dbem_bookings_email_cancelled_body', 'Cher/chère #_BOOKINGNAME,\r\n\r\nVotre réservation de #_BOOKINGSPACES place(s) pour #_EVENTNAME le #_EVENTDATES a été annulée.\r\n\r\nCordialement,\r\n\r\n#_CONTACTNAME\r\n\r\n\r\n-------------------------------\r\n\r\nPropulsé par Events Manager, gestionnaire d''évènements pour WordPress - http://wp-events-plugin.com', 'yes'),
(367, 'dbem_bookings_tickets_orderby', 'ticket_price DESC, ticket_name ASC', 'yes'),
(368, 'dbem_bookings_tickets_priority', '0', 'yes'),
(369, 'dbem_bookings_tickets_show_unavailable', '0', 'yes'),
(370, 'dbem_bookings_tickets_show_loggedout', '1', 'yes'),
(371, 'dbem_bookings_tickets_single', '0', 'yes'),
(372, 'dbem_bookings_tickets_single_form', '0', 'yes'),
(373, 'dbem_bookings_my_title_format', 'Mes réservations', 'yes'),
(374, 'dbem_hello_to_user', '0', 'yes'),
(375, 'dbem_bp_events_list_format_header', '<ul class="em-events-list">', 'yes'),
(376, 'dbem_bp_events_list_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES<ul><li>#_LOCATIONLINK - #_LOCATIONADDRESS, #_LOCATIONTOWN</li></ul></li>', 'yes'),
(377, 'dbem_bp_events_list_format_footer', '</ul>', 'yes'),
(378, 'dbem_bp_events_list_none_format', '<p class="em-events-list">Aucun évènement</p>', 'yes'),
(379, 'dbem_cp_events_slug', 'events', 'yes'),
(380, 'dbem_cp_locations_slug', 'locations', 'yes'),
(381, 'dbem_taxonomy_category_slug', 'events/categories', 'yes'),
(382, 'dbem_taxonomy_tag_slug', 'events/tags', 'yes'),
(383, 'dbem_cp_events_template_page', '0', 'yes'),
(384, 'dbem_cp_events_formats', '1', 'yes'),
(385, 'dbem_cp_events_has_archive', '1', 'yes'),
(386, 'dbem_events_default_archive_orderby', '_start_ts', 'yes'),
(387, 'dbem_events_default_archive_order', 'ASC', 'yes'),
(388, 'dbem_cp_events_archive_formats', '1', 'yes'),
(389, 'dbem_cp_events_search_results', '0', 'yes'),
(390, 'dbem_cp_events_custom_fields', '0', 'yes'),
(391, 'dbem_cp_events_comments', '1', 'yes'),
(392, 'dbem_cp_locations_template_page', '0', 'yes'),
(393, 'dbem_cp_locations_formats', '1', 'yes'),
(394, 'dbem_cp_locations_has_archive', '1', 'yes'),
(395, 'dbem_locations_default_archive_orderby', 'title', 'yes'),
(396, 'dbem_locations_default_archive_order', 'ASC', 'yes'),
(397, 'dbem_cp_locations_archive_formats', '1', 'yes'),
(398, 'dbem_cp_locations_search_results', '0', 'yes'),
(399, 'dbem_cp_locations_custom_fields', '0', 'yes'),
(400, 'dbem_cp_locations_comments', '1', 'yes'),
(401, 'dbem_cp_categories_formats', '1', 'yes'),
(402, 'dbem_categories_default_archive_orderby', '_start_ts', 'yes'),
(403, 'dbem_categories_default_archive_order', 'ASC', 'yes'),
(404, 'dbem_cp_tags_formats', '1', 'yes'),
(405, 'dbem_tags_default_archive_orderby', '_start_ts', 'yes'),
(406, 'dbem_tags_default_archive_order', 'ASC', 'yes'),
(407, 'dbem_credits', '0', 'yes'),
(408, 'dbem_time_24h', '1', 'yes'),
(409, 'dbem_events_page', '72', 'yes'),
(410, 'dbem_locations_page', '74', 'yes'),
(411, 'dbem_categories_page', '75', 'yes'),
(412, 'dbem_my_bookings_page', '76', 'yes'),
(413, 'dbem_version', '5.33', 'yes'),
(414, 'dbem_thumbnails_enabled', '1', 'yes'),
(415, 'dbem_js_limit', '0', 'yes'),
(416, 'dbem_js_limit_general', '0', 'yes'),
(417, 'dbem_js_limit_search', '', 'yes'),
(418, 'dbem_js_limit_events_form', '', 'yes'),
(419, 'dbem_js_limit_edit_bookings', '', 'yes'),
(420, 'dbem_css_limit', '0', 'yes'),
(421, 'dbem_css_limit_include', '0', 'yes'),
(422, 'dbem_css_limit_exclude', '0', 'yes'),
(423, 'dbem_disable_timthumb', '0', 'yes'),
(424, 'dbem_pro_dev_updates', '0', 'yes'),
(425, 'dbem_disable_title_rewrites', '0', 'yes'),
(426, 'dbem_title_html', '', 'yes'),
(427, 'dbem_events_current_are_past', '0', 'yes'),
(428, 'dbem_bookings_default_orderby', 'event_name', 'yes'),
(429, 'dbem_bookings_default_order', 'ASC', 'yes'),
(430, 'dbem_edit_events_page', '', 'yes'),
(431, 'dbem_edit_locations_page', '', 'yes'),
(432, 'dbem_edit_bookings_page', '', 'yes'),
(433, 'dbem_event_list_groupby', '0', 'yes'),
(434, 'dbem_event_list_groupby_format', '', 'yes'),
(435, 'dbem_dates_Separator', '', 'yes'),
(436, 'dbem_times_Separator', '', 'yes'),
(437, 'dbem_display_calendar_day_single', '0', 'yes'),
(438, 'dbem_categories_list_item_format_header', '', 'yes'),
(439, 'dbem_categories_list_item_format_footer', '', 'yes'),
(440, 'dbem_mail_sender_address', '', 'yes'),
(441, 'dbem_smtp_username', '', 'yes'),
(442, 'dbem_smtp_password', '', 'yes'),
(445, 'event-categories_children', 'a:0:{}', 'yes'),
(446, 'dbem_regenerate_ical', '1', 'yes'),
(453, 'current_theme', 'Festival', 'yes'),
(454, 'theme_mods_mystique', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358873383;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:10:"nav_menu-2";}s:9:"sidebar-2";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}}', 'yes'),
(455, 'theme_switched', '', 'yes'),
(456, 'mystique', 'a:55:{s:13:"theme_version";s:5:"2.2.2";s:6:"layout";s:11:"col-2-right";s:10:"dimensions";a:2:{s:5:"fixed";a:5:{s:10:"col-2-left";s:3:"310";s:11:"col-2-right";s:3:"630";s:5:"col-3";s:7:"230;710";s:10:"col-3-left";s:7:"230;460";s:11:"col-3-right";s:7:"480;710";}s:5:"fluid";a:5:{s:10:"col-2-left";s:2:"30";s:11:"col-2-right";s:2:"70";s:5:"col-3";s:5:"25;75";s:10:"col-3-left";s:5:"25;50";s:11:"col-3-right";s:5:"50;75";}}s:10:"page_width";s:5:"fixed";s:12:"color_scheme";s:4:"blue";s:10:"font_style";s:1:"0";s:14:"footer_content";s:35:"[credit] <br /> [rss] [xhtml] [top]";s:10:"navigation";s:5:"pages";s:16:"navigation_links";s:0:"";s:12:"exclude_home";s:1:"1";s:13:"exclude_pages";s:14:"11,74,75,76,12";s:18:"exclude_categories";s:0:"";s:10:"post_title";s:1:"1";s:9:"post_info";s:1:"1";s:9:"post_tags";s:1:"1";s:12:"post_content";s:1:"1";s:19:"post_content_length";s:1:"f";s:10:"post_thumb";s:5:"64x64";s:15:"post_thumb_auto";s:1:"1";s:17:"post_single_print";s:1:"1";s:16:"post_single_meta";s:1:"1";s:17:"post_single_share";s:1:"1";s:18:"post_single_author";s:0:"";s:16:"post_single_tags";s:1:"1";s:19:"post_single_related";s:1:"1";s:9:"read_more";s:0:"";s:3:"seo";s:1:"1";s:6:"jquery";s:1:"1";s:16:"ajax_commentnavi";s:1:"1";s:8:"lightbox";s:1:"1";s:8:"user_css";s:0:"";s:4:"logo";s:0:"";s:10:"background";s:0:"";s:16:"background_color";s:6:"000000";s:9:"ad_code_1";s:0:"";s:9:"ad_code_2";s:0:"";s:9:"ad_code_3";s:0:"";s:9:"ad_code_4";s:0:"";s:9:"ad_code_5";s:0:"";s:9:"ad_code_6";s:0:"";s:9:"functions";s:11:"<?php\r\n\r\n\r\n";s:15:"remove_settings";s:0:"";s:22:"comment_author_country";s:0:"";s:14:"featured_posts";s:0:"";s:18:"featured_timeframe";s:2:"30";s:16:"featured_on_home";s:0:"";s:18:"featured_on_single";s:0:"";s:20:"featured_on_archives";s:0:"";s:15:"featured_on_404";s:0:"";s:18:"featured_on_search";s:0:"";s:17:"featured_on_pages";s:0:"";s:14:"featured_count";s:1:"5";s:16:"featured_timeout";s:2:"10";s:15:"xtranav_twitter";s:9:"Wordpress";s:11:"xtranav_rss";s:52:"http://localhost/~abrioux/festival_cinema/?feed=rss2";}', 'yes'),
(457, 'theme_mods_responsive', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:4:{s:8:"top-menu";i:7;s:11:"header-menu";i:4;s:15:"sub-header-menu";i:7;s:11:"footer-menu";i:7;}s:12:"header_image";s:13:"remove-header";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358266788;s:4:"data";a:12:{s:19:"wp_inactive_widgets";a:0:{}s:12:"main-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"right-sidebar";a:0:{}s:12:"left-sidebar";a:0:{}s:17:"left-sidebar-half";N;s:18:"right-sidebar-half";N;s:13:"home-widget-1";N;s:13:"home-widget-2";N;s:13:"home-widget-3";N;s:14:"gallery-widget";N;s:15:"colophon-widget";N;s:10:"top-widget";N;}}}', 'yes');
INSERT INTO `wp_festival_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(458, 'responsive_theme_options', 'a:28:{s:10:"breadcrumb";i:1;s:10:"cta_button";i:1;s:13:"home_headline";s:7:"Accueil";s:16:"home_subheadline";s:5:"Edito";s:17:"home_content_area";s:1737:"Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays & lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay & Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.";s:7:"cta_url";s:0:"";s:8:"cta_text";s:0:"";s:16:"featured_content";s:0:"";s:24:"google_site_verification";s:0:"";s:22:"bing_site_verification";s:0:"";s:23:"yahoo_site_verification";s:0:"";s:23:"site_statistics_tracker";s:0:"";s:11:"twitter_uid";s:0:"";s:12:"facebook_uid";s:0:"";s:12:"linkedin_uid";s:0:"";s:11:"youtube_uid";s:0:"";s:11:"stumble_uid";s:0:"";s:7:"rss_uid";s:0:"";s:15:"google_plus_uid";s:0:"";s:13:"instagram_uid";s:0:"";s:13:"pinterest_uid";s:0:"";s:8:"yelp_uid";s:0:"";s:9:"vimeo_uid";s:0:"";s:14:"foursquare_uid";s:0:"";s:21:"responsive_inline_css";s:0:"";s:25:"responsive_inline_js_head";s:0:"";s:27:"responsive_inline_js_footer";s:0:"";s:31:"responsive_inline_css_js_footer";s:0:"";}', 'yes'),
(461, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(464, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:8:"nav_menu";i:8;}s:12:"_multiwidget";i:1;}', 'yes'),
(498, 'theme_mods_twentyten', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358932657;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:1:{i:0;s:10:"nav_menu-2";}s:19:"primary-widget-area";a:1:{i:0;s:6:"text-2";}s:21:"secondary-widget-area";a:0:{}s:24:"first-footer-widget-area";a:0:{}s:25:"second-footer-widget-area";N;s:24:"third-footer-widget-area";N;s:25:"fourth-footer-widget-area";N;}}}', 'yes'),
(499, 'theme_mods_festival', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}}', 'yes'),
(533, 'superb_settings', 'a:30:{s:15:"slideshow_width";s:3:"600";s:16:"slideshow_height";s:3:"240";s:20:"noof_squares_coloumn";s:1:"7";s:17:"noof_squares_rows";s:1:"3";s:21:"spacing_broken_square";s:2:"10";s:9:"auto_play";s:4:"true";s:12:"random_slide";s:5:"false";s:11:"scale_image";s:4:"true";s:11:"use_buttons";s:4:"true";s:16:"slide_transition";s:1:"1";s:22:"slide_transition_delay";s:1:"2";s:9:"text1_pos";s:4:"left";s:10:"text1_xpos";s:2:"20";s:10:"text1_ypos";s:3:"100";s:11:"text1_color";s:7:"#000000";s:10:"text1_size";s:2:"24";s:13:"text1_bgcolor";s:7:"#FFFFFF";s:19:"text1_bgcolor_alpha";s:3:"100";s:9:"text2_pos";s:4:"left";s:10:"text2_xpos";s:2:"20";s:10:"text2_ypos";s:3:"160";s:11:"text2_color";s:7:"#FFFFFF";s:10:"text2_size";s:2:"24";s:13:"text2_bgcolor";s:7:"#000000";s:19:"text2_bgcolor_alpha";s:3:"100";s:10:"show_text1";s:3:"yes";s:10:"show_text2";s:3:"yes";s:8:"use_link";s:3:"yes";s:6:"target";s:5:"_self";s:5:"wmode";s:6:"opaque";}', 'yes'),
(534, 'akismet_available_servers', 'a:4:{s:12:"72.233.69.88";b:0;s:12:"72.233.69.89";b:0;s:12:"66.135.58.61";b:0;s:12:"66.135.58.62";b:0;}', 'yes'),
(535, 'akismet_connectivity_time', '1359036904', 'yes'),
(538, '_site_transient_timeout_wporg_theme_feature_list', '1359047946', 'yes'),
(539, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(567, '_site_transient_timeout_theme_roots', '1359469883', 'yes'),
(568, '_site_transient_theme_roots', 'a:6:{s:8:"festival";s:7:"/themes";s:8:"mystique";s:7:"/themes";s:10:"responsive";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(569, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1359511402', 'no'),
(570, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: couldn''t connect to host</p>', 'no'),
(571, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1359511403', 'no'),
(572, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(573, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1359511404', 'no'),
(574, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(575, '_transient_timeout_plugin_slugs', '1359558412', 'no'),
(576, '_transient_plugin_slugs', 'a:6:{i:0;s:19:"akismet/akismet.php";i:1;s:33:"events-manager/events-manager.php";i:2;s:9:"hello.php";i:3;s:30:"wp-superb-slideshow/superb.php";i:4;s:43:"the-events-calendar/the-events-calendar.php";i:5;s:25:"vice-versa/vice-versa.php";}', 'no'),
(577, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1359511414', 'no'),
(578, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=506 ;

--
-- Contenu de la table `wp_festival_postmeta`
--

INSERT INTO `wp_festival_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 6, '_edit_last', '1'),
(3, 6, '_edit_lock', '1359035665:1'),
(23, 18, '_edit_last', '1'),
(24, 18, '_edit_lock', '1359473598:1'),
(29, 21, '_edit_last', '1'),
(30, 21, '_edit_lock', '1357664112:1'),
(35, 24, '_edit_last', '1'),
(36, 24, '_edit_lock', '1358954836:1'),
(43, 24, '_wp_trash_meta_status', 'draft'),
(44, 24, '_wp_trash_meta_time', '1357663713'),
(85, 38, '_edit_last', '1'),
(86, 38, '_wp_page_template', 'default'),
(95, 38, '_edit_lock', '1359468750:1'),
(131, 50, '_menu_item_type', 'post_type'),
(132, 50, '_menu_item_menu_item_parent', '0'),
(133, 50, '_menu_item_object_id', '21'),
(134, 50, '_menu_item_object', 'post'),
(135, 50, '_menu_item_target', ''),
(136, 50, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-jaune";}'),
(137, 50, '_menu_item_xfn', ''),
(138, 50, '_menu_item_url', ''),
(140, 51, '_menu_item_type', 'post_type'),
(141, 51, '_menu_item_menu_item_parent', '0'),
(142, 51, '_menu_item_object_id', '6'),
(143, 51, '_menu_item_object', 'post'),
(144, 51, '_menu_item_target', ''),
(145, 51, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-rose";}'),
(146, 51, '_menu_item_xfn', ''),
(147, 51, '_menu_item_url', ''),
(159, 57, '_menu_item_type', 'post_type'),
(160, 57, '_menu_item_menu_item_parent', '0'),
(161, 57, '_menu_item_object_id', '24'),
(162, 57, '_menu_item_object', 'post'),
(163, 57, '_menu_item_target', ''),
(164, 57, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-vert";}'),
(165, 57, '_menu_item_xfn', ''),
(166, 57, '_menu_item_url', ''),
(168, 58, '_menu_item_type', 'post_type'),
(169, 58, '_menu_item_menu_item_parent', '0'),
(170, 58, '_menu_item_object_id', '18'),
(171, 58, '_menu_item_object', 'post'),
(172, 58, '_menu_item_target', ''),
(173, 58, '_menu_item_classes', 'a:1:{i:0;s:12:"fg-turquoise";}'),
(174, 58, '_menu_item_xfn', ''),
(175, 58, '_menu_item_url', ''),
(177, 59, '_menu_item_type', 'post_type'),
(178, 59, '_menu_item_menu_item_parent', '0'),
(179, 59, '_menu_item_object_id', '38'),
(180, 59, '_menu_item_object', 'page'),
(181, 59, '_menu_item_target', ''),
(182, 59, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-orange";}'),
(183, 59, '_menu_item_xfn', ''),
(184, 59, '_menu_item_url', ''),
(186, 60, '_edit_last', '1'),
(187, 60, '_edit_lock', '1359035212:1'),
(188, 60, '_wp_page_template', 'default'),
(189, 62, '_menu_item_type', 'post_type'),
(190, 62, '_menu_item_menu_item_parent', '0'),
(191, 62, '_menu_item_object_id', '60'),
(192, 62, '_menu_item_object', 'page'),
(193, 62, '_menu_item_target', ''),
(194, 62, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-rouge";}'),
(195, 62, '_menu_item_xfn', ''),
(196, 62, '_menu_item_url', ''),
(197, 63, '_menu_item_type', 'post_type'),
(198, 63, '_menu_item_menu_item_parent', '0'),
(199, 63, '_menu_item_object_id', '60'),
(200, 63, '_menu_item_object', 'page'),
(201, 63, '_menu_item_target', ''),
(202, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(203, 63, '_menu_item_xfn', ''),
(204, 63, '_menu_item_url', ''),
(205, 63, '_menu_item_orphaned', '1358264431'),
(206, 65, '_EventAuditTrail', 'a:2:{i:0;a:2:{i:0;s:15:"events-calendar";i:1;i:1358264712;}i:1;a:2:{i:0;s:15:"events-calendar";i:1;i:1358264774;}}'),
(207, 65, '_EventOrigin', 'events-calendar'),
(208, 65, '_edit_last', '1'),
(209, 65, '_edit_lock', '1358264774:1'),
(210, 66, '_event_id', '1'),
(211, 66, '_event_status', '1'),
(212, 66, '_event_start_time', '16:00:00'),
(213, 66, '_event_end_time', '18:00:00'),
(214, 66, '_event_all_day', '0'),
(215, 66, '_event_start_date', '2013-01-22'),
(216, 66, '_event_end_date', '2013-01-22'),
(217, 66, '_event_rsvp', '0'),
(218, 66, '_event_rsvp_date', ''),
(219, 66, '_event_rsvp_time', '00:00:00'),
(220, 66, '_event_spaces', '0'),
(221, 66, '_event_private', '0'),
(222, 66, '_location_id', '1'),
(223, 66, '_recurrence_id', ''),
(224, 66, '_event_category_id', ''),
(225, 66, '_event_date_created', ''),
(226, 66, '_event_date_modified', ''),
(227, 66, '_recurrence', '0'),
(228, 66, '_recurrence_interval', ''),
(229, 66, '_recurrence_freq', ''),
(230, 66, '_recurrence_byday', ''),
(231, 66, '_recurrence_byweekno', ''),
(232, 66, '_recurrence_days', ''),
(233, 66, '_blog_id', ''),
(234, 66, '_group_id', '0'),
(235, 66, '_start_ts', '1358870400'),
(236, 66, '_end_ts', '1358877600'),
(237, 67, '_event_id', '2'),
(238, 67, '_event_status', '1'),
(239, 67, '_event_start_time', '20:00:00'),
(240, 67, '_event_end_time', '22:00:00'),
(241, 67, '_event_all_day', ''),
(242, 67, '_event_start_date', '2013-02-12'),
(243, 67, '_event_end_date', '2013-02-12'),
(244, 67, '_event_rsvp', '0'),
(245, 67, '_event_rsvp_date', ''),
(246, 67, '_event_rsvp_time', ''),
(247, 67, '_event_spaces', '0'),
(248, 67, '_event_private', '0'),
(249, 67, '_location_id', '2'),
(250, 67, '_recurrence_id', ''),
(251, 67, '_event_category_id', ''),
(252, 67, '_event_date_created', ''),
(253, 67, '_event_date_modified', ''),
(254, 67, '_recurrence', '0'),
(255, 67, '_recurrence_interval', ''),
(256, 67, '_recurrence_freq', ''),
(257, 67, '_recurrence_byday', ''),
(258, 67, '_recurrence_byweekno', ''),
(259, 67, '_recurrence_days', ''),
(260, 67, '_blog_id', ''),
(261, 67, '_group_id', ''),
(262, 67, '_start_ts', '1360627200'),
(263, 67, '_end_ts', '1360627200'),
(264, 68, '_event_id', '3'),
(265, 68, '_event_status', '1'),
(266, 68, '_event_start_time', '22:00:00'),
(267, 68, '_event_end_time', '23:00:00'),
(268, 68, '_event_all_day', ''),
(269, 68, '_event_start_date', '2014-01-15'),
(270, 68, '_event_end_date', '2014-01-15'),
(271, 68, '_event_rsvp', '0'),
(272, 68, '_event_rsvp_date', ''),
(273, 68, '_event_rsvp_time', ''),
(274, 68, '_event_spaces', '0'),
(275, 68, '_event_private', '0'),
(276, 68, '_location_id', '3'),
(277, 68, '_recurrence_id', ''),
(278, 68, '_event_category_id', ''),
(279, 68, '_event_date_created', ''),
(280, 68, '_event_date_modified', ''),
(281, 68, '_recurrence', '0'),
(282, 68, '_recurrence_interval', ''),
(283, 68, '_recurrence_freq', ''),
(284, 68, '_recurrence_byday', ''),
(285, 68, '_recurrence_byweekno', ''),
(286, 68, '_recurrence_days', ''),
(287, 68, '_blog_id', ''),
(288, 68, '_group_id', ''),
(289, 68, '_start_ts', '1389744000'),
(290, 68, '_end_ts', '1389744000'),
(291, 69, '_location_id', '1'),
(292, 69, '_blog_id', ''),
(293, 69, '_location_address', ''),
(294, 69, '_location_town', 'Orleans'),
(295, 69, '_location_state', ''),
(296, 69, '_location_postcode', ''),
(297, 69, '_location_region', ''),
(298, 69, '_location_country', 'FR'),
(299, 69, '_location_latitude', '47.902964'),
(300, 69, '_location_longitude', '1.9092510000000402'),
(301, 69, '_location_status', '1'),
(302, 69, '_location_private', '0'),
(303, 70, '_location_id', '2'),
(304, 70, '_blog_id', ''),
(305, 70, '_location_address', '2, Sea Road'),
(306, 70, '_location_town', 'Galway'),
(307, 70, '_location_state', 'Galway'),
(308, 70, '_location_postcode', ''),
(309, 70, '_location_region', ''),
(310, 70, '_location_country', 'IE'),
(311, 70, '_location_latitude', '53.2692'),
(312, 70, '_location_longitude', '-9.06151'),
(313, 70, '_location_status', '1'),
(314, 70, '_location_private', '0'),
(315, 71, '_location_id', '3'),
(316, 71, '_blog_id', ''),
(317, 71, '_location_address', '19 Shop Street'),
(318, 71, '_location_town', 'Galway'),
(319, 71, '_location_state', 'Galway'),
(320, 71, '_location_postcode', ''),
(321, 71, '_location_region', ''),
(322, 71, '_location_country', 'IE'),
(323, 71, '_location_latitude', '53.2725'),
(324, 71, '_location_longitude', '-9.05321'),
(325, 71, '_location_status', '1'),
(326, 71, '_location_private', '0'),
(327, 73, '_menu_item_type', 'post_type'),
(328, 73, '_menu_item_menu_item_parent', '0'),
(329, 73, '_menu_item_object_id', '72'),
(330, 73, '_menu_item_object', 'page'),
(331, 73, '_menu_item_target', ''),
(332, 73, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-bleu";}'),
(333, 73, '_menu_item_xfn', ''),
(334, 73, '_menu_item_url', ''),
(335, 69, '_edit_lock', '1358265349:1'),
(336, 69, '_edit_last', '1'),
(337, 66, '_edit_lock', '1358265304:1'),
(338, 66, '_edit_last', '1'),
(339, 69, '_wp_trash_meta_status', 'draft'),
(340, 69, '_wp_trash_meta_time', '1358265474'),
(341, 71, '_wp_trash_meta_status', 'publish'),
(342, 71, '_wp_trash_meta_time', '1358265474'),
(343, 70, '_wp_trash_meta_status', 'publish'),
(344, 70, '_wp_trash_meta_time', '1358265475'),
(345, 66, '_wp_trash_meta_status', 'publish'),
(346, 66, '_wp_trash_meta_time', '1358265484'),
(347, 67, '_wp_trash_meta_status', 'publish'),
(348, 67, '_wp_trash_meta_time', '1358265484'),
(349, 68, '_wp_trash_meta_status', 'publish'),
(350, 68, '_wp_trash_meta_time', '1358265484'),
(351, 6, '_wp_page_template', 'default'),
(365, 24, '_wp_page_template', 'default'),
(379, 113, '_edit_last', '1'),
(380, 113, '_edit_lock', '1359471626:1'),
(385, 117, '_edit_last', '1'),
(386, 117, '_edit_lock', '1359037798:1'),
(389, 121, '_edit_last', '1'),
(390, 121, '_edit_lock', '1359038252:1'),
(397, 126, '_edit_last', '1'),
(398, 126, '_edit_lock', '1359039273:1'),
(413, 138, '_wp_attached_file', '2013/01/ANDER1.jpg'),
(414, 138, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:576;s:4:"file";s:18:"2013/01/ANDER1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER1-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER1-624x351.jpg";s:5:"width";i:624;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(415, 139, '_wp_attached_file', '2013/01/ANDER2.jpg'),
(416, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:576;s:4:"file";s:18:"2013/01/ANDER2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER2-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER2-624x351.jpg";s:5:"width";i:624;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(439, 153, '_edit_last', '1'),
(440, 153, '_edit_lock', '1359038825:1'),
(447, 159, '_edit_last', '1'),
(448, 159, '_edit_lock', '1359038934:1'),
(451, 163, '_edit_last', '1'),
(452, 163, '_edit_lock', '1359468262:1'),
(455, 167, '_edit_last', '1'),
(456, 167, '_edit_lock', '1359039513:1'),
(461, 172, '_edit_last', '1'),
(462, 172, '_edit_lock', '1359468478:1'),
(469, 179, '_edit_last', '1'),
(470, 179, '_edit_lock', '1359468516:1'),
(475, 183, '_edit_last', '1'),
(476, 183, '_edit_lock', '1359468900:1'),
(481, 18, '_wp_page_template', 'default'),
(482, 195, '_wp_attached_file', '2013/01/RC.jpg'),
(483, 195, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1504;s:6:"height";i:1704;s:4:"file";s:14:"2013/01/RC.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"RC-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"RC-264x300.jpg";s:5:"width";i:264;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"RC-903x1024.jpg";s:5:"width";i:903;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:14:"RC-624x706.jpg";s:5:"width";i:624;s:6:"height";i:706;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(484, 198, '_wp_attached_file', '2013/01/orleans.jpg'),
(485, 198, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:938;s:6:"height";i:992;s:4:"file";s:19:"2013/01/orleans.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"orleans-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"orleans-283x300.jpg";s:5:"width";i:283;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"orleans-624x659.jpg";s:5:"width";i:624;s:6:"height";i:659;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(486, 198, '_wp_attachment_image_alt', 'Orléans'),
(487, 202, '_wp_attached_file', '2013/01/logo_lescarmes.gif'),
(488, 202, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:174;s:6:"height";i:137;s:4:"file";s:26:"2013/01/logo_lescarmes.gif";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"logo_lescarmes-150x137.gif";s:5:"width";i:150;s:6:"height";i:137;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(489, 202, '_wp_attachment_image_alt', 'Cinéma les carmes'),
(492, 206, '_wp_attached_file', '2013/01/gaglLogo.jpg'),
(493, 206, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:400;s:4:"file";s:20:"2013/01/gaglLogo.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"gaglLogo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"gaglLogo-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(494, 206, '_wp_attachment_image_alt', 'GAGL'),
(495, 208, '_wp_attached_file', '2013/01/LOGO_TETU.jpg'),
(496, 208, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1221;s:6:"height";i:465;s:4:"file";s:21:"2013/01/LOGO_TETU.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"LOGO_TETU-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"LOGO_TETU-300x114.jpg";s:5:"width";i:300;s:6:"height";i:114;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"LOGO_TETU-1024x389.jpg";s:5:"width";i:1024;s:6:"height";i:389;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"LOGO_TETU-624x237.jpg";s:5:"width";i:624;s:6:"height";i:237;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(497, 211, '_wp_attached_file', '2013/01/muse.jpg'),
(498, 211, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:547;s:6:"height";i:250;s:4:"file";s:16:"2013/01/muse.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"muse-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"muse-300x137.jpg";s:5:"width";i:300;s:6:"height";i:137;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(499, 213, '_wp_attached_file', '2013/01/logoIndex.jpg'),
(500, 213, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:165;s:6:"height";i:102;s:4:"file";s:21:"2013/01/logoIndex.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"logoIndex-150x102.jpg";s:5:"width";i:150;s:6:"height";i:102;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(501, 215, '_wp_attached_file', '2013/01/logoYagg.jpg'),
(502, 215, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:46;s:4:"file";s:20:"2013/01/logoYagg.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"logoYagg-150x46.jpg";s:5:"width";i:150;s:6:"height";i:46;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(503, 217, '_wp_attached_file', '2013/01/Logo_France_Bleu.png'),
(504, 217, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:28:"2013/01/Logo_France_Bleu.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"Logo_France_Bleu-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:28:"Logo_France_Bleu-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(505, 72, '_edit_lock', '1359473765:1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_posts`
--

CREATE TABLE IF NOT EXISTS `wp_festival_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=220 ;

--
-- Contenu de la table `wp_festival_posts`
--

INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(6, 1, '2013-01-08 17:07:50', '2013-01-08 16:07:50', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival ! Christel Guillard, coordinatrice générale.', 'Accueil', '', 'publish', 'open', 'open', '', 'edito', '', '', '2013-01-24 14:56:18', '2013-01-24 13:56:18', '', 0, 'http://localhost/~francois/festival_cinema/?p=6', 0, 'page', '', 0),
(8, 1, '2013-01-08 17:06:51', '2013-01-08 16:06:51', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une\n\nannée sabbatique, le Festival de films gays &amp; lesbiens revient sous\n\nune nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret,\n\nl’association culturelle Ciné Mundi axée sur le cinéma indépendant,\n\nlance en 2010 le festival de films LGBT D’un bord à l’autre sur un\n\nweek-end de trois jours, format similaire aux éditions précédentes.\n\nCette année, l’événement aura pour thème la sensibilisation des\n\njeunes à la lutte contre les discriminations liées à l’orientation\n\nsexuelle et au genre.\n\nAu programme de ce rendez-vous  : 5  séances inédites au cinéma\n\nLes Carmes à Orléans.\n\nEn ouverture : une sélection de courts métrages dont trois ont été\n\nréalisés dans le cadre de Jeune et homo sous le regard des autres,\n\nconcours organisé en 2009 par le Ministère de la Santé et l’INPES\n\ncontre l’homophobie.\n\nAutre temps fort de ce week-end : It’s elementary, talking about gays\n\nissues in school (C’est élémentaire - Parler de l’homosexualité à\n\nl’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes\n\npassions que le film d’animation Le baiser de la lune en France\n\nen  2010. La projection sera suivie d’un débat avec l’association\n\nG.A.G.L 45, sur les Interventions en Milieu Scolaire.\n\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un\n\nlong métrage espagnol mettant en scène une histoire d’amour entre\n\nun paysan basque et un immigré péruvien, El niño pez, un surprenant\n\nroad-movie lesbien version argentine et I can’t think straight, une\n\nsavoureuse comédie britannique qui clôturera cette édition.\n\nBon festival !\n\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '6-revision', '', '', '2013-01-08 17:06:51', '2013-01-08 16:06:51', '', 6, 'http://localhost/~francois/festival_cinema/?p=8', 0, 'revision', '', 0),
(9, 1, '2013-01-22 17:45:55', '2013-01-22 16:45:55', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Accueil', '', 'inherit', 'open', 'open', '', '6-autosave', '', '', '2013-01-22 17:45:55', '2013-01-22 16:45:55', '', 6, 'http://localhost/~francois/festival_cinema/?p=9', 0, 'revision', '', 0),
(18, 1, '2013-01-08 17:43:43', '2013-01-08 16:43:43', 'Voici la liste de nos partenaires :\r\n\r\n<img class="alignnone size-full wp-image-206" title="GAGL" alt="GAGL" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/gaglLogo.jpg" width="124" height="124" /><img class="alignnone size-full wp-image-211" title="Muse" alt="muse" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/muse.jpg" width="188" height="86" /><img class=" wp-image-195 alignleft" title="Région centre" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-264x300.jpg" width="100" height="114" />\r\n\r\n<img class="size-medium wp-image-198 alignleft" title="Orléans" alt="Orléans" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/orleans-283x300.jpg" width="94" height="100" /><a href="http://localhost/~francois/festival/?attachment_id=208" rel="attachment wp-att-208"><img class="alignnone size-full wp-image-208" title="Têtu" alt="LOGO_TETU" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/LOGO_TETU.jpg" width="192" height="73" /></a><img class="alignnone size-full wp-image-213" alt="logoIndex" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/logoIndex.jpg" width="138" height="85" />\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone size-full wp-image-215" alt="logoYagg" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/logoYagg.jpg" width="118" height="27" />  <img class="alignnone size-full wp-image-217" alt="Logo_France_Bleu" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/Logo_France_Bleu.png" width="85" height="85" />', 'Partenaires', '', 'publish', 'open', 'open', '', '18-2', '', '', '2013-01-29 16:35:04', '2013-01-29 15:35:04', '', 0, 'http://localhost/~francois/festival_cinema/?p=18', 0, 'page', '', 0),
(19, 1, '2013-01-08 17:43:32', '2013-01-08 16:43:32', '<ul>\n	<li> - La Région Centre</li>\n	<li> - La Mairie d''Orléans</li>\n	<li> - Le cinéma des Carmes</li>\n	<li> - Le Groupe Action Gay &amp; Lesbien - Loiret</li>\n	<li> - Citégay</li>\n	<li> - La dixième Muse</li>\n	<li> - Têtu</li>\n	<li> - Yagg.com</li>\n	<li> - France Bleu Orléans</li>\n	<li> - Bagdam Espace Lesbien ( Toulouse )</li>\n	<li> - Cineffable</li>\n	<li> - Le Festival Tous Courts ( Aix en Provence )</li>\n	<li> - Les VidéObstinées</li>\n</ul>', '', '', 'inherit', 'open', 'open', '', '18-revision', '', '', '2013-01-08 17:43:32', '2013-01-08 16:43:32', '', 18, 'http://localhost/~francois/festival_cinema/?p=19', 0, 'revision', '', 0),
(20, 1, '2013-01-08 17:43:43', '2013-01-08 16:43:43', '<ul>\r\n	<li> - La Région Centre</li>\r\n	<li> - La Mairie d''Orléans</li>\r\n	<li> - Le cinéma des Carmes</li>\r\n	<li> - Le Groupe Action Gay &amp; Lesbien - Loiret</li>\r\n	<li> - Citégay</li>\r\n	<li> - La dixième Muse</li>\r\n	<li> - Têtu</li>\r\n	<li> - Yagg.com</li>\r\n	<li> - France Bleu Orléans</li>\r\n	<li> - Bagdam Espace Lesbien ( Toulouse )</li>\r\n	<li> - Cineffable</li>\r\n	<li> - Le Festival Tous Courts ( Aix en Provence )</li>\r\n	<li> - Les VidéObstinées</li>\r\n</ul>', '', '', 'inherit', 'open', 'open', '', '18-revision-2', '', '', '2013-01-08 17:43:43', '2013-01-08 16:43:43', '', 18, 'http://localhost/~francois/festival_cinema/?p=20', 0, 'revision', '', 0),
(21, 1, '2013-01-08 17:44:22', '2013-01-08 16:44:22', '- La Région Centre\r\n- La Mairie d''Orléans\r\n- Le cinéma des Carmes\r\n- Le Groupe Action Gay &amp; Lesbien - Loiret\r\n- Citégay\r\n- La dixième Muse\r\n- Têtu\r\n- Yagg.com\r\n- France Bleu Orléans\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n- Cineffable\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n- Les VidéObstinées', 'Remerciements', '', 'publish', 'open', 'open', '', 'remerciements', '', '', '2013-01-08 17:47:01', '2013-01-08 16:47:01', '', 0, 'http://localhost/~francois/festival_cinema/?p=21', 0, 'page', '', 0),
(22, 1, '2013-01-08 17:44:17', '2013-01-08 16:44:17', '', 'Remerciements', '', 'inherit', 'open', 'open', '', '21-revision', '', '', '2013-01-08 17:44:17', '2013-01-08 16:44:17', '', 21, 'http://localhost/~francois/festival_cinema/?p=22', 0, 'revision', '', 0),
(24, 1, '2013-01-08 17:45:27', '2013-01-08 16:45:27', '<strong>Lieu du festival</strong> : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n<strong>Tarifs</strong> : Plein tarif : 7,50 €\r\n\r\n<strong>Pass Festival</strong> : 25 € (5 séances)\r\n\r\n<strong>Soirée courts métrages</strong> : 6 € (vendredi)\r\n\r\n<strong>2 séances consécutives le samedi ou le dimanche</strong> : 12 €\r\n\r\n<strong>Cartes &amp; réductions acceptées</strong> :\r\n\r\nCartes DECOUVERTE &amp; PASSION,\r\n\r\ntitulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\n&nbsp;\r\n\r\n<strong>Equipe</strong> :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\r\n\r\nProgrammation : Christel Guillard en collaboration avec\r\n\r\nFrançoise Dahmane (Cinéma Les Carmes)\r\n\r\nCommunication &amp; partenariats : Christel Guillard\r\n\r\nConception graphique : Yannis Bellair\r\n\r\nConception du site internet : rccc\r\n\r\nImpression : Prevost Offset\r\n\r\n<strong>Contacts</strong> :\r\n\r\nfestival.dunbordalautre@gmail.com\r\n\r\nwww.festivaldunbordalautre.com', 'Infos pratiques', '', 'publish', 'open', 'open', '', 'infos-pratiques-2', '', '', '2013-01-23 16:26:47', '2013-01-23 15:26:47', '', 0, 'http://localhost/~francois/festival_cinema/?p=24', 0, 'page', '', 0),
(25, 1, '2013-01-08 17:44:22', '2013-01-08 16:44:22', '<ul>\r\n	<li> - La Région Centre</li>\r\n	<li> - La Mairie d''Orléans</li>\r\n	<li> - Le cinéma des Carmes</li>\r\n	<li> - Le Groupe Action Gay &amp; Lesbien - Loiret</li>\r\n	<li> - Citégay</li>\r\n	<li> - La dixième Muse</li>\r\n	<li> - Têtu</li>\r\n	<li> - Yagg.com</li>\r\n	<li> - France Bleu Orléans</li>\r\n	<li> - Bagdam Espace Lesbien ( Toulouse )</li>\r\n	<li> - Cineffable</li>\r\n	<li> - Le Festival Tous Courts ( Aix en Provence )</li>\r\n	<li> - Les VidéObstinées</li>\r\n</ul>', 'Remerciements', '', 'inherit', 'open', 'open', '', '21-revision-2', '', '', '2013-01-08 17:44:22', '2013-01-08 16:44:22', '', 21, 'http://localhost/~francois/festival_cinema/?p=25', 0, 'revision', '', 0),
(26, 1, '2013-01-08 17:44:00', '2013-01-08 16:44:00', '<ul>\r\n	<li>- Région Centre</li>\r\n	<li>- Orléans</li>\r\n	<li>- Cinéma des Carmes</li>\r\n	<li>- GAGL</li>\r\n	<li>- Têtu</li>\r\n	<li>- La dixième MUSE</li>\r\n	<li>- CiteGay</li>\r\n	<li>- Yagg.com</li>\r\n	<li>- France Bleu</li>\r\n</ul>', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-3', '', '', '2013-01-08 17:44:00', '2013-01-08 16:44:00', '', 18, 'http://localhost/~francois/festival_cinema/?p=26', 0, 'revision', '', 0),
(28, 1, '2013-01-08 17:45:27', '2013-01-08 16:45:27', '', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '24-revision', '', '', '2013-01-08 17:45:27', '2013-01-08 16:45:27', '', 24, 'http://localhost/~francois/festival_cinema/?p=28', 0, 'revision', '', 0),
(29, 1, '2013-01-08 17:48:34', '2013-01-08 16:48:34', '', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '24-revision-2', '', '', '2013-01-08 17:48:34', '2013-01-08 16:48:34', '', 24, 'http://localhost/~francois/festival_cinema/?p=29', 0, 'revision', '', 0),
(38, 1, '2013-01-08 17:55:27', '2013-01-08 16:55:27', '<ul>\r\n	<li><a title="En colo – Pascal-Alex Vincent – France" href="http://localhost/~francois/festival/?p=153">En colo - Pascal-Alex Vincent - France</a></li>\r\n	<li><a title="Pauline – Céline Sciamma- France – 2009" href="http://localhost/~francois/festival/?p=159">Pauline – Céline Sciamma- France – 2009</a></li>\r\n	<li><a title="Omar – Sébastien Gabriel – France – 2009 – 9 minutes" href="http://localhost/~francois/festival/?p=163">Omar - Sébastien Gabriel - France - 2009 - 9 minutes</a></li>\r\n	<li><a title="Odile  – Bénédicte Delgéhier – France – 2006- 10 minutes" href="http://localhost/~francois/festival/?p=167">Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes</a></li>\r\n	<li><a title="Os sapatos de Aristeu – René Guerra Luiz – Brésil – 2008" href="http://localhost/~francois/festival/?p=172">Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008</a></li>\r\n	<li><a title="Cowboy Forever – Jean Baptiste Erreca – France" href="http://localhost/~francois/festival/?p=179">Cowboy Forever - Jean Baptiste Erreca - France</a></li>\r\n	<li><a title="American Boy – Patricia &amp; Colette – France" href="http://localhost/~francois/festival/?p=183">American Boy - Patricia &amp; Colette - France</a></li>\r\n</ul>', 'Courts-métrages', '', 'publish', 'open', 'open', '', 'courts-metrages', '', '', '2013-01-29 15:14:22', '2013-01-29 14:14:22', '', 0, 'http://localhost/~francois/festival_cinema/?page_id=38', 0, 'page', '', 0),
(48, 1, '2013-01-29 16:34:57', '2013-01-29 15:34:57', 'Voici la liste de nos partenaires :\n\n<img class="alignnone size-full wp-image-206" title="GAGL" alt="GAGL" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/gaglLogo.jpg" width="124" height="124" /><img class="alignnone size-full wp-image-211" title="Muse" alt="muse" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/muse.jpg" width="188" height="86" /><img class=" wp-image-195 alignleft" title="Région centre" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-264x300.jpg" width="100" height="114" />\n\n<img class="size-medium wp-image-198 alignleft" title="Orléans" alt="Orléans" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/orleans-283x300.jpg" width="94" height="100" /><a href="http://localhost/~francois/festival/?attachment_id=208" rel="attachment wp-att-208"><img class="alignnone size-full wp-image-208" title="Têtu" alt="LOGO_TETU" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/LOGO_TETU.jpg" width="192" height="73" /></a><img class="alignnone size-full wp-image-213" alt="logoIndex" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/logoIndex.jpg" width="138" height="85" />\n\n&nbsp;\n\n<img class="alignnone size-full wp-image-215" alt="logoYagg" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/logoYagg.jpg" width="118" height="27" />  <img class="alignnone size-full wp-image-217" alt="Logo_France_Bleu" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/Logo_France_Bleu.png" width="85" height="85" />', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-autosave', '', '', '2013-01-29 16:34:57', '2013-01-29 15:34:57', '', 18, 'http://localhost/~abrioux/festival_cinema/?p=48', 0, 'revision', '', 0),
(50, 1, '2013-01-15 16:36:31', '2013-01-15 15:36:31', ' ', '', '', 'publish', 'open', 'open', '', '50', '', '', '2013-01-23 16:15:25', '2013-01-23 15:15:25', '', 0, 'http://localhost/~abrioux/festival_cinema/?p=50', 4, 'nav_menu_item', '', 0),
(51, 1, '2013-01-15 16:36:31', '2013-01-15 15:36:31', '', 'Edito', '', 'publish', 'open', 'open', '', '51', '', '', '2013-01-23 16:15:25', '2013-01-23 15:15:25', '', 0, 'http://localhost/~abrioux/festival_cinema/?p=51', 1, 'nav_menu_item', '', 0),
(57, 1, '2013-01-15 16:40:08', '2013-01-15 15:40:08', ' ', '', '', 'publish', 'open', 'open', '', '57', '', '', '2013-01-23 16:15:25', '2013-01-23 15:15:25', '', 0, 'http://localhost/~abrioux/festival_cinema/?p=57', 5, 'nav_menu_item', '', 0),
(58, 1, '2013-01-15 16:40:08', '2013-01-15 15:40:08', ' ', '', '', 'publish', 'open', 'open', '', '58', '', '', '2013-01-23 16:15:25', '2013-01-23 15:15:25', '', 0, 'http://localhost/~abrioux/festival_cinema/?p=58', 6, 'nav_menu_item', '', 0),
(59, 1, '2013-01-15 16:40:07', '2013-01-15 15:40:07', ' ', '', '', 'publish', 'open', 'open', '', '59', '', '', '2013-01-23 16:15:25', '2013-01-23 15:15:25', '', 0, 'http://localhost/~abrioux/festival_cinema/?p=59', 3, 'nav_menu_item', '', 0),
(60, 1, '2013-01-15 16:40:23', '2013-01-15 15:40:23', '<ul>\r\n	<li><a title="It’s elementary, talking about gays issues in school" href="http://localhost/~francois/festival/?p=113">It’s elementary, talking about gays issues in school</a></li>\r\n	<li><a title="ANDER – Réalisé par Roberto Castón" href="http://localhost/~francois/festival/?p=117">ANDER - Réalisé par Roberto Castón</a></li>\r\n	<li><a title="EL NIÑO PEZ – Réalisé par Lucía Puenzo" href="http://localhost/~francois/festival/?p=121">EL NIÑO PEZ - Réalisé par Lucía Puenzo</a></li>\r\n	<li><a title="CAN’T THINK STRAIGHT – Réalisé par Shamim Sarif" href="http://localhost/~francois/festival/?p=126">CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif</a></li>\r\n</ul>', 'Films', '', 'publish', 'open', 'open', '', 'films', '', '', '2013-01-24 14:48:45', '2013-01-24 13:48:45', '', 0, 'http://localhost/~abrioux/festival_cinema/?page_id=60', 0, 'page', '', 0),
(61, 1, '2013-01-15 16:40:19', '2013-01-15 15:40:19', '', 'Films', '', 'inherit', 'open', 'open', '', '60-revision', '', '', '2013-01-15 16:40:19', '2013-01-15 15:40:19', '', 60, 'http://localhost/~abrioux/festival_cinema/?p=61', 0, 'revision', '', 0),
(62, 1, '2013-01-15 16:40:23', '2013-01-15 15:40:23', ' ', '', '', 'publish', 'open', 'open', '', '62', '', '', '2013-01-23 16:15:25', '2013-01-23 15:15:25', '', 0, 'http://localhost/~abrioux/festival_cinema/?p=62', 2, 'nav_menu_item', '', 0),
(63, 1, '2013-01-15 16:40:31', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2013-01-15 16:40:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/~abrioux/festival_cinema/?p=63', 1, 'nav_menu_item', '', 0),
(65, 1, '2013-01-15 16:46:13', '0000-00-00 00:00:00', 'Vendredi 24 septembre : 20h00\n\nSoirée d’ouverture : séance de courts métrages\n\nRencontre-débat avec un réalisateur.', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2013-01-15 16:46:13', '2013-01-15 15:46:13', '', 0, 'http://localhost/~abrioux/festival_cinema/?post_type=tribe_events&#038;p=65', 0, 'tribe_events', '', 0),
(66, 1, '2013-01-15 16:50:40', '2013-01-15 15:50:40', '', 'Vendredi 24 septembre : 20h00', '', 'trash', 'open', 'open', '', 'orality-in-james-joyce-conference', '', '', '2013-01-15 16:58:04', '2013-01-15 15:58:04', '', 0, 'http://localhost/~abrioux/festival_cinema/?event=orality-in-james-joyce-conference', 0, 'event', '', 0),
(67, 1, '2013-01-15 16:50:40', '2013-01-15 15:50:40', '', 'Traditional music session', '', 'trash', 'open', 'open', '', 'traditional-music-session', '', '', '2013-01-15 16:58:04', '2013-01-15 15:58:04', '', 0, 'http://localhost/~abrioux/festival_cinema/?event=traditional-music-session', 0, 'event', '', 0),
(68, 1, '2013-01-15 16:50:41', '2013-01-15 15:50:41', '', '6 Nations, Italy VS Ireland', '', 'trash', 'open', 'open', '', '6-nations-italy-vs-ireland', '', '', '2013-01-15 16:58:04', '2013-01-15 15:58:04', '', 0, 'http://localhost/~abrioux/festival_cinema/?event=6-nations-italy-vs-ireland', 0, 'event', '', 0),
(69, 1, '2013-01-15 16:50:42', '2013-01-15 15:50:42', 'Soirée d’ouverture : séance de courts métrages\r\nRencontre-débat avec un réalisateur.', 'Soirée d’ouverture', '', 'trash', 'open', 'open', '', 'arts-millenium-building', '', '', '2013-01-15 16:57:54', '2013-01-15 15:57:54', '', 0, 'http://localhost/~abrioux/festival_cinema/?location=arts-millenium-building', 0, 'location', '', 0),
(70, 1, '2013-01-15 16:50:43', '2013-01-15 15:50:43', '', 'The Crane Bar', '', 'trash', 'open', 'open', '', 'the-crane-bar', '', '', '2013-01-15 16:57:55', '2013-01-15 15:57:55', '', 0, 'http://localhost/~abrioux/festival_cinema/?location=the-crane-bar', 0, 'location', '', 0),
(71, 1, '2013-01-15 16:50:43', '2013-01-15 15:50:43', '', 'Taaffes Bar', '', 'trash', 'open', 'open', '', 'taaffes-bar', '', '', '2013-01-15 16:57:55', '2013-01-15 15:57:55', '', 0, 'http://localhost/~abrioux/festival_cinema/?location=taaffes-bar', 0, 'location', '', 0),
(72, 1, '2013-01-15 16:51:08', '2013-01-15 15:51:08', 'CONTENTS', 'Évènements', 'CONTENTS', 'publish', 'open', 'open', '', 'evenements', '', '', '2013-01-23 10:42:33', '2013-01-23 09:42:33', '', 0, 'http://localhost/~abrioux/festival_cinema/?page_id=72', 0, 'page', '', 0),
(73, 1, '2013-01-15 16:51:09', '2013-01-15 15:51:09', ' ', '', '', 'publish', 'open', 'open', '', '73', '', '', '2013-01-23 16:15:25', '2013-01-23 15:15:25', '', 0, 'http://localhost/~abrioux/festival_cinema/?p=73', 7, 'nav_menu_item', '', 0),
(79, 1, '2013-01-23 16:27:48', '2013-01-23 15:27:48', '<strong>Lieu du festival</strong> : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\n\n<strong>Tarifs</strong> : Plein tarif : 7,50 €\n\n<strong>Pass Festival</strong> : 25 € (5 séances)\n\n<strong>Soirée courts métrages</strong> : 6 € (vendredi)\n\n<strong>2 séances consécutives le samedi ou le dimanche</strong> : 12 €\n\n<strong>Cartes &amp; réductions acceptées</strong> :\n\nCartes DECOUVERTE &amp; PASSION,\n\ntitulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\n\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\n\n&nbsp;\n\n<strong>Equipe</strong> :\n\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\n\nProgrammation : Christel Guillard en collaboration avec\n\nFrançoise Dahmane (Cinéma Les Carmes)\n\nCommunication &amp; partenariats : Christel Guillard\n\nConception graphique : Yannis Bellair\n\nConception du site internet : rccc\n\nImpression : Prevost Offset\n\n<strong>Contacts</strong> :\n\nfestival.dunbordalautre@gmail.com\n\nwww.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '24-autosave', '', '', '2013-01-23 16:27:48', '2013-01-23 15:27:48', '', 24, 'http://localhost/~abrioux/festival_cinema/?p=79', 0, 'revision', '', 0),
(81, 1, '2013-01-08 17:07:50', '2013-01-08 16:07:50', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '6-revision-2', '', '', '2013-01-08 17:07:50', '2013-01-08 16:07:50', '', 6, 'http://localhost/~abrioux/festival_cinema/?p=81', 0, 'revision', '', 0),
(82, 1, '2013-01-15 17:28:06', '2013-01-15 16:28:06', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Accueil', '', 'inherit', 'open', 'open', '', '6-revision-3', '', '', '2013-01-15 17:28:06', '2013-01-15 16:28:06', '', 6, 'http://localhost/~abrioux/festival_cinema/?p=82', 0, 'revision', '', 0),
(95, 1, '2013-01-22 17:45:45', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-22 17:45:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/~abrioux/festival_cinema/?p=95', 0, 'post', '', 0),
(101, 1, '2013-01-15 16:51:08', '2013-01-15 15:51:08', 'CONTENTS', 'Évènements', 'CONTENTS', 'inherit', 'open', 'open', '', '72-revision', '', '', '2013-01-15 16:51:08', '2013-01-15 15:51:08', '', 72, 'http://localhost/~francois/festival/?p=101', 0, 'revision', '', 0),
(102, 1, '2013-01-23 10:42:15', '2013-01-23 09:42:15', 'CONTENTS', 'Évènements', 'CONTENTS', 'inherit', 'open', 'open', '', '72-revision-2', '', '', '2013-01-23 10:42:15', '2013-01-23 09:42:15', '', 72, 'http://localhost/~francois/festival/?p=102', 0, 'revision', '', 0),
(103, 1, '2013-01-24 14:48:28', '2013-01-24 13:48:28', '<ul>\n	<li><a title="It’s elementary, talking about gays issues in school" href="http://localhost/~francois/festival/?p=113">It’s elementary, talking about gays issues in school</a></li>\n	<li><a title="ANDER – Réalisé par Roberto Castón" href="http://localhost/~francois/festival/?p=117">ANDER - Réalisé par Roberto Castón</a></li>\n	<li><a title="EL NIÑO PEZ – Réalisé par Lucía Puenzo" href="http://localhost/~francois/festival/?p=121">EL NIÑO PEZ - Réalisé par Lucía Puenzo</a></li>\n	<li>CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif</li>\n</ul>', 'Films', '', 'inherit', 'open', 'open', '', '60-autosave', '', '', '2013-01-24 14:48:28', '2013-01-24 13:48:28', '', 60, 'http://localhost/~francois/festival/?p=103', 0, 'revision', '', 0),
(104, 1, '2013-01-15 16:40:23', '2013-01-15 15:40:23', '', 'Films', '', 'inherit', 'open', 'open', '', '60-revision-2', '', '', '2013-01-15 16:40:23', '2013-01-15 15:40:23', '', 60, 'http://localhost/~francois/festival/?p=104', 0, 'revision', '', 0),
(105, 1, '2013-01-29 15:13:16', '2013-01-29 14:13:16', '<ul>\n	<li><a title="En colo – Pascal-Alex Vincent – France" href="http://localhost/~francois/festival/?p=153">En colo - Pascal-Alex Vincent - France</a></li>\n	<li><a title="Pauline – Céline Sciamma- France – 2009" href="http://localhost/~francois/festival/?p=159">Pauline – Céline Sciamma- France – 2009</a></li>\n	<li><a title="Omar – Sébastien Gabriel – France – 2009 – 9 minutes" href="http://localhost/~francois/festival/?p=163">Omar - Sébastien Gabriel - France - 2009 - 9 minutes</a></li>\n	<li><a title="Odile  – Bénédicte Delgéhier – France – 2006- 10 minutes" href="http://localhost/~francois/festival/?p=167">Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes</a></li>\n	<li><a title="Os sapatos de Aristeu – René Guerra Luiz – Brésil – 2008" href="http://localhost/~francois/festival/?p=172">Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008</a></li>\n	<li><a title="Cowboy Forever – Jean Baptiste Erreca – France" href="http://localhost/~francois/festival/?p=179">Cowboy Forever - Jean Baptiste Erreca - France</a></li>\n	<li><a title="American Boy – Patricia &amp; Colette – France" href="http://localhost/~francois/festival/?p=183">American Boy - Patricia &amp; Colette - France</a></li>\n</ul>', 'Courts-métrages', '', 'inherit', 'open', 'open', '', '38-autosave', '', '', '2013-01-29 15:13:16', '2013-01-29 14:13:16', '', 38, 'http://localhost/~francois/festival/?p=105', 0, 'revision', '', 0),
(106, 1, '2013-01-08 17:55:27', '2013-01-08 16:55:27', '', 'Courts-métrages', '', 'inherit', 'open', 'open', '', '38-revision', '', '', '2013-01-08 17:55:27', '2013-01-08 16:55:27', '', 38, 'http://localhost/~francois/festival/?p=106', 0, 'revision', '', 0),
(107, 1, '2013-01-08 17:49:10', '2013-01-08 16:49:10', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\nTarifs : Plein tarif : 7,50 €\r\n\r\nPass Festival : 25 € (5 séances)\r\n\r\nSoirée courts métrages : 6 € (vendredi)\r\n\r\n2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\nCartes &amp; réductions acceptées :\r\n\r\nCartes DECOUVERTE &amp; PASSION,\r\n\r\ntitulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\n&nbsp;\r\n\r\nEquipe :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\r\n\r\nProgrammation : Christel Guillard en collaboration avec\r\n\r\nFrançoise Dahmane (Cinéma Les Carmes)\r\n\r\nCommunication &amp; partenariats : Christel Guillard\r\n\r\nConception graphique : Yannis Bellair\r\n\r\nConception du site internet : rccc\r\n\r\nImpression : Prevost Offset\r\n\r\nContacts :\r\n\r\nfestival.dunbordalautre@gmail.com\r\n\r\nwww.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '24-revision-3', '', '', '2013-01-08 17:49:10', '2013-01-08 16:49:10', '', 24, 'http://localhost/~francois/festival/?p=107', 0, 'revision', '', 0),
(108, 1, '2013-01-23 16:25:48', '2013-01-23 15:25:48', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n<strong>Tarifs</strong> : Plein tarif : 7,50 €\r\n\r\n<strong>Pass Festival</strong> : 25 € (5 séances)\r\n\r\n<strong>Soirée courts métrages</strong> : 6 € (vendredi)\r\n\r\n2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\nCartes &amp; réductions acceptées :\r\n\r\nCartes DECOUVERTE &amp; PASSION,\r\n\r\ntitulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\n&nbsp;\r\n\r\nEquipe :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\r\n\r\nProgrammation : Christel Guillard en collaboration avec\r\n\r\nFrançoise Dahmane (Cinéma Les Carmes)\r\n\r\nCommunication &amp; partenariats : Christel Guillard\r\n\r\nConception graphique : Yannis Bellair\r\n\r\nConception du site internet : rccc\r\n\r\nImpression : Prevost Offset\r\n\r\nContacts :\r\n\r\nfestival.dunbordalautre@gmail.com\r\n\r\nwww.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '24-revision-4', '', '', '2013-01-23 16:25:48', '2013-01-23 15:25:48', '', 24, 'http://localhost/~francois/festival/?p=108', 0, 'revision', '', 0),
(113, 1, '2013-01-23 16:30:48', '2013-01-23 15:30:48', '[superb cats=2]\r\n\r\n(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nEtats-Unis - 1996 - Documentaire\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\n&nbsp;\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée\r\n\r\naux enfants dans les écoles publiques américaines, It’s\r\n\r\nelementary suit les interventions des enseignants dans les\r\n\r\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le\r\n\r\ntour des écoles américaines et a gagné de nombreux prix.\r\n\r\nUn excellent support didactique à montrer à tous les élèves\r\n\r\net leurs professeurs lorsque l’on appartient au monde de\r\n\r\nl’éducation.\r\n\r\n&nbsp;\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de\r\n\r\nl’ultra-droite chrétienne intégriste et homophobe pour\r\n\r\nempêcher sa diffusion sur une chaîne télé.\r\n\r\n&nbsp;\r\n\r\nLa projection sera suivie d’un débat avec l’association\r\n\r\nG.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu\r\n\r\nScolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'publish', 'open', 'open', '', 'its-elementary-talking-about-gays-issues-in-school', '', '', '2013-01-24 15:29:29', '2013-01-24 14:29:29', '', 0, 'http://localhost/~francois/festival/?p=113', 0, 'post', '', 0),
(114, 1, '2013-01-23 16:30:23', '2013-01-23 15:30:23', '', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '113-revision', '', '', '2013-01-23 16:30:23', '2013-01-23 15:30:23', '', 113, 'http://localhost/~francois/festival/?p=114', 0, 'revision', '', 0),
(115, 1, '2013-01-23 16:30:48', '2013-01-23 15:30:48', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nEtats-Unis - 1996 - Documentaire\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\n&nbsp;\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée\r\n\r\naux enfants dans les écoles publiques américaines, It’s\r\n\r\nelementary suit les interventions des enseignants dans les\r\n\r\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le\r\n\r\ntour des écoles américaines et a gagné de nombreux prix.\r\n\r\nUn excellent support didactique à montrer à tous les élèves\r\n\r\net leurs professeurs lorsque l’on appartient au monde de\r\n\r\nl’éducation.\r\n\r\n&nbsp;\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de\r\n\r\nl’ultra-droite chrétienne intégriste et homophobe pour\r\n\r\nempêcher sa diffusion sur une chaîne télé.\r\n\r\n&nbsp;\r\n\r\nLa projection sera suivie d’un débat avec l’association\r\n\r\nG.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu\r\n\r\nScolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '113-revision-2', '', '', '2013-01-23 16:30:48', '2013-01-23 15:30:48', '', 113, 'http://localhost/~francois/festival/?p=115', 0, 'revision', '', 0),
(116, 1, '2013-01-23 11:09:21', '2013-01-23 10:09:21', '<ul>\r\n	<li>It’s elementary, talking about gays issues in school</li>\r\n	<li>ANDER - Réalisé par Roberto Castón</li>\r\n	<li>EL NIÑO PEZ - Réalisé par Lucía Puenzo</li>\r\n	<li>CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif</li>\r\n</ul>', 'Films', '', 'inherit', 'open', 'open', '', '60-revision-3', '', '', '2013-01-23 11:09:21', '2013-01-23 10:09:21', '', 60, 'http://localhost/~francois/festival/?p=116', 0, 'revision', '', 0),
(117, 1, '2013-01-24 14:43:53', '2013-01-24 13:43:53', '[superb cats=3]\r\n\r\nEspagne - 2009 - 02h08 - VOSTF\r\n\r\n<strong>Interprétation</strong> : <em>Josean Bengoetxea</em>, <em>Eriz Alberdi</em>,\r\n\r\n<em>Christian Esquive</em>\r\n\r\n&nbsp;\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine\r\n\r\npassée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme\r\n\r\nfamiliale. Alors qu’Arantxa doit bientôt se marier et laisser Ander\r\n\r\ns’occuper seul de leur mère, celui-ci se casse une jambe.\r\n\r\nPour l’assister dans ses tâches, sa famille embauche José, un\r\n\r\njeune travailleur saisonnier péruvien.\r\n\r\nLe nouveau venu va bientôt bouleverser les relations familiales et\r\n\r\nsurtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto\r\n\r\nCastón met en scène cette histoire d’amour entre deux hommes\r\n\r\nvivant au contact de la nature d’une manière différente. Il laisse\r\n\r\nle temps à ses personnages de s’apprivoiser, de se découvrir,\r\n\r\nd’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le\r\n\r\ntemps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie\r\n\r\nla complexité des rapports humains d’une grande intensité, a\r\n\r\nremporté l’adhésion du public dans tous les festivals où il a été\r\n\r\nprojeté.\r\n\r\n&nbsp;\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'publish', 'open', 'open', '', 'ander-realise-par-roberto-caston', '', '', '2013-01-24 15:31:42', '2013-01-24 14:31:42', '', 0, 'http://localhost/~francois/festival/?p=117', 0, 'post', '', 0),
(118, 1, '2013-01-24 14:43:42', '2013-01-24 13:43:42', '', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '117-revision', '', '', '2013-01-24 14:43:42', '2013-01-24 13:43:42', '', 117, 'http://localhost/~francois/festival/?p=118', 0, 'revision', '', 0),
(119, 1, '2013-01-23 16:31:48', '2013-01-23 15:31:48', '<ul>\r\n	<li><a title="It’s elementary, talking about gays issues in school" href="http://localhost/~francois/festival/?p=113">It’s elementary, talking about gays issues in school</a></li>\r\n	<li>ANDER - Réalisé par Roberto Castón</li>\r\n	<li>EL NIÑO PEZ - Réalisé par Lucía Puenzo</li>\r\n	<li>CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif</li>\r\n</ul>', 'Films', '', 'inherit', 'open', 'open', '', '60-revision-4', '', '', '2013-01-23 16:31:48', '2013-01-23 15:31:48', '', 60, 'http://localhost/~francois/festival/?p=119', 0, 'revision', '', 0),
(120, 1, '2013-01-24 14:52:42', '2013-01-24 13:52:42', 'Espagne - 2009 - 02h08 - VOSTF\n\n<strong>Interprétation</strong> : <em>Josean Bengoetxea</em>, <em>Eriz Alberdi</em>,\n\n<em>Christian Esquive</em>\n\n&nbsp;\n\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine\n\npassée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme\n\nfamiliale. Alors qu’Arantxa doit bientôt se marier et laisser Ander\n\ns’occuper seul de leur mère, celui-ci se casse une jambe.\n\nPour l’assister dans ses tâches, sa famille embauche José, un\n\njeune travailleur saisonnier péruvien.\n\nLe nouveau venu va bientôt bouleverser les relations familiales et\n\nsurtout troubler de plus en plus Ander...\n\nConsidéré comme le Brockback Mountain basque, Roberto\n\nCastón met en scène cette histoire d’amour entre deux hommes\n\nvivant au contact de la nature d’une manière différente. Il laisse\n\nle temps à ses personnages de s’apprivoiser, de se découvrir,\n\nd’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le\n\ntemps de filmer...\n\nCe premier beau long métrage où la simplicité formelle côtoie\n\nla complexité des rapports humains d’une grande intensité, a\n\nremporté l’adhésion du public dans tous les festivals où il a été\n\nprojeté.\n\n&nbsp;\n\nPrix C.I.C.A.E – Festival International de Berlin (2009)\n\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\n\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '117-autosave', '', '', '2013-01-24 14:52:42', '2013-01-24 13:52:42', '', 117, 'http://localhost/~francois/festival/?p=120', 0, 'revision', '', 0),
(121, 1, '2013-01-24 14:46:49', '2013-01-24 13:46:49', '[superb cats = 4]\r\n\r\nArgentine - 2008 - 01h36 - VOSTF\r\n\r\n<strong>Interprétation</strong> : <em>Inés Efron</em>,<em> Mariela Vitale</em>, <em>Pep Munne</em>\r\n\r\n&nbsp;\r\n\r\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge\r\n\r\ndépressif et d’une mère toxicomane, est follement amoureuse\r\n\r\nde Guayi, jeune et jolie domestique paraguayenne au service\r\n\r\nde la famille depuis l’âge de treize ans. Les deux jeunes filles\r\n\r\nprojettent de s’enfuir dans le village d’origine de Guayi, au\r\n\r\nbord du lac Ypoà où elles pourraient vivre ensemble et laisser\r\n\r\ns’exprimer sans contrainte leur désir fusionnel. Mais un\r\n\r\ndrame familial va brusquement les séparer...\r\n\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi\r\n\r\nd’adapter elle-même son propre roman écrit huit ans\r\n\r\nauparavant où deux jeunes femmes aux physiques opposés et\r\n\r\nde classes sociales différentes vont se rencontrer et s’aimer.\r\n\r\nEntre chronique sociale, onirisme et thriller, la cinéaste nous\r\n\r\nentraîne dans un Thelma et Louise lesbien à travers une\r\n\r\nArgentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'publish', 'open', 'open', '', 'el-nino-pez-realise-par-lucia-puenzo', '', '', '2013-01-24 15:35:07', '2013-01-24 14:35:07', '', 0, 'http://localhost/~francois/festival/?p=121', 0, 'post', '', 0),
(122, 1, '2013-01-24 14:46:28', '2013-01-24 13:46:28', '', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '121-revision', '', '', '2013-01-24 14:46:28', '2013-01-24 13:46:28', '', 121, 'http://localhost/~francois/festival/?p=122', 0, 'revision', '', 0),
(123, 1, '2013-01-24 14:43:53', '2013-01-24 13:43:53', 'Espagne - 2009 - 02h08 - VOSTF\r\n\r\nInterprétation : Josean Bengoetxea, Eriz Alberdi,\r\n\r\nChristian Esquive\r\n\r\n&nbsp;\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine\r\n\r\npassée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme\r\n\r\nfamiliale. Alors qu’Arantxa doit bientôt se marier et laisser Ander\r\n\r\ns’occuper seul de leur mère, celui-ci se casse une jambe.\r\n\r\nPour l’assister dans ses tâches, sa famille embauche José, un\r\n\r\njeune travailleur saisonnier péruvien.\r\n\r\nLe nouveau venu va bientôt bouleverser les relations familiales et\r\n\r\nsurtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto\r\n\r\nCastón met en scène cette histoire d’amour entre deux hommes\r\n\r\nvivant au contact de la nature d’une manière différente. Il laisse\r\n\r\nle temps à ses personnages de s’apprivoiser, de se découvrir,\r\n\r\nd’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le\r\n\r\ntemps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie\r\n\r\nla complexité des rapports humains d’une grande intensité, a\r\n\r\nremporté l’adhésion du public dans tous les festivals où il a été\r\n\r\nprojeté.\r\n\r\n&nbsp;\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '117-revision-2', '', '', '2013-01-24 14:43:53', '2013-01-24 13:43:53', '', 117, 'http://localhost/~francois/festival/?p=123', 0, 'revision', '', 0),
(124, 1, '2013-01-24 14:44:30', '2013-01-24 13:44:30', '<ul>\r\n	<li><a title="It’s elementary, talking about gays issues in school" href="http://localhost/~francois/festival/?p=113">It’s elementary, talking about gays issues in school</a></li>\r\n	<li><a title="ANDER – Réalisé par Roberto Castón" href="http://localhost/~francois/festival/?p=117">ANDER - Réalisé par Roberto Castón</a></li>\r\n	<li>EL NIÑO PEZ - Réalisé par Lucía Puenzo</li>\r\n	<li>CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif</li>\r\n</ul>', 'Films', '', 'inherit', 'open', 'open', '', '60-revision-5', '', '', '2013-01-24 14:44:30', '2013-01-24 13:44:30', '', 60, 'http://localhost/~francois/festival/?p=124', 0, 'revision', '', 0),
(125, 1, '2013-01-24 14:47:08', '2013-01-24 13:47:08', 'Espagne - 2009 - 02h08 - VOSTF\r\n\r\nInterprétation : Josean Bengoetxea, Eriz Alberdi,\r\n\r\nChristian Esquive\r\n\r\n&nbsp;\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine\r\n\r\npassée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme\r\n\r\nfamiliale. Alors qu’Arantxa doit bientôt se marier et laisser Ander\r\n\r\ns’occuper seul de leur mère, celui-ci se casse une jambe.\r\n\r\nPour l’assister dans ses tâches, sa famille embauche José, un\r\n\r\njeune travailleur saisonnier péruvien.\r\n\r\nLe nouveau venu va bientôt bouleverser les relations familiales et\r\n\r\nsurtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto\r\n\r\nCastón met en scène cette histoire d’amour entre deux hommes\r\n\r\nvivant au contact de la nature d’une manière différente. Il laisse\r\n\r\nle temps à ses personnages de s’apprivoiser, de se découvrir,\r\n\r\nd’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le\r\n\r\ntemps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie\r\n\r\nla complexité des rapports humains d’une grande intensité, a\r\n\r\nremporté l’adhésion du public dans tous les festivals où il a été\r\n\r\nprojeté.\r\n\r\n&nbsp;\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '117-revision-3', '', '', '2013-01-24 14:47:08', '2013-01-24 13:47:08', '', 117, 'http://localhost/~francois/festival/?p=125', 0, 'revision', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(126, 1, '2013-01-24 14:48:14', '2013-01-24 13:48:14', '[superb cats = 5]\r\n\r\nGrande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF\r\n\r\n<strong>Interprétation</strong> : <em>Lisa Ray</em>, <em>Sheetal Sheth</em>, <em>Antonia Frering</em>\r\n\r\n&nbsp;\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune\r\n\r\nPalestinienne installée à Londres, tombe amoureuse de Leyla,\r\n\r\nune jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla\r\n\r\nmusulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit\r\n\r\npassionnée. Mais le poids des cultures, la pression familiale\r\n\r\net le sens du devoir mettront à l’épreuve leur relation et les\r\n\r\nforceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les\r\n\r\ndeux talentueuses actrices (que l’on retrouve également dans\r\n\r\nson autre film The world unseen) est un pur joyau digne des\r\n\r\ncomédies romantiques anglaises.\r\n\r\n&nbsp;\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'publish', 'open', 'open', '', 'cant-think-straight-realise-par-shamim-sarif', '', '', '2013-01-24 15:36:19', '2013-01-24 14:36:19', '', 0, 'http://localhost/~francois/festival/?p=126', 0, 'post', '', 0),
(127, 1, '2013-01-24 14:48:02', '2013-01-24 13:48:02', '', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '126-revision', '', '', '2013-01-24 14:48:02', '2013-01-24 13:48:02', '', 126, 'http://localhost/~francois/festival/?p=127', 0, 'revision', '', 0),
(128, 1, '2013-01-24 14:47:27', '2013-01-24 13:47:27', '<ul>\r\n	<li><a title="It’s elementary, talking about gays issues in school" href="http://localhost/~francois/festival/?p=113">It’s elementary, talking about gays issues in school</a></li>\r\n	<li><a title="ANDER – Réalisé par Roberto Castón" href="http://localhost/~francois/festival/?p=117">ANDER - Réalisé par Roberto Castón</a></li>\r\n	<li><a title="EL NIÑO PEZ – Réalisé par Lucía Puenzo" href="http://localhost/~francois/festival/?p=121">EL NIÑO PEZ - Réalisé par Lucía Puenzo</a></li>\r\n	<li>CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif</li>\r\n</ul>', 'Films', '', 'inherit', 'open', 'open', '', '60-revision-6', '', '', '2013-01-24 14:47:27', '2013-01-24 13:47:27', '', 60, 'http://localhost/~francois/festival/?p=128', 0, 'revision', '', 0),
(129, 1, '2013-01-24 15:37:22', '2013-01-24 14:37:22', '[superb cats = 5]\n\nGrande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF\n\n<strong>Interprétation</strong> : <em>Lisa Ray</em>, <em>Sheetal Sheth</em>, <em>Antonia Frering</em>\n\n&nbsp;\n\nAlors qu’elle est sur le point de se marier, Tala, une jeune\n\nPalestinienne installée à Londres, tombe amoureuse de Leyla,\n\nune jeune Britannique d’origine indienne.\n\nTout les oppose : Tala est chrétienne et affirmée, Leyla\n\nmusulmane et timide.\n\nEt pourtant, les deux femmes succombent lors d’une nuit\n\npassionnée. Mais le poids des cultures, la pression familiale\n\net le sens du devoir mettront à l’épreuve leur relation et les\n\nforceront à se découvrir elles-mêmes.\n\nCe premier long métrage de Shamim Sarif, portée par les\n\ndeux talentueuses actrices (que l’on retrouve également dans\n\nson autre film The world unseen) est un pur joyau digne des\n\ncomédies romantiques anglaises.\n\n&nbsp;\n\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '126-autosave', '', '', '2013-01-24 15:37:22', '2013-01-24 14:37:22', '', 126, 'http://localhost/~francois/festival/?p=129', 0, 'revision', '', 0),
(130, 1, '2013-01-15 17:28:36', '2013-01-15 16:28:36', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Accueil', '', 'inherit', 'open', 'open', '', '6-revision-4', '', '', '2013-01-15 17:28:36', '2013-01-15 16:28:36', '', 6, 'http://localhost/~francois/festival/?p=130', 0, 'revision', '', 0),
(131, 1, '2013-01-24 14:48:14', '2013-01-24 13:48:14', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF\r\n\r\nInterprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\n\r\n&nbsp;\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune\r\n\r\nPalestinienne installée à Londres, tombe amoureuse de Leyla,\r\n\r\nune jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla\r\n\r\nmusulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit\r\n\r\npassionnée. Mais le poids des cultures, la pression familiale\r\n\r\net le sens du devoir mettront à l’épreuve leur relation et les\r\n\r\nforceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les\r\n\r\ndeux talentueuses actrices (que l’on retrouve également dans\r\n\r\nson autre film The world unseen) est un pur joyau digne des\r\n\r\ncomédies romantiques anglaises.\r\n\r\n&nbsp;\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '126-revision-2', '', '', '2013-01-24 14:48:14', '2013-01-24 13:48:14', '', 126, 'http://localhost/~francois/festival/?p=131', 0, 'revision', '', 0),
(132, 1, '2013-01-24 14:46:49', '2013-01-24 13:46:49', 'Argentine - 2008 - 01h36 - VOSTF\r\n\r\nInterprétation : Inés Efron, Mariela Vitale, Pep Munne\r\n\r\n&nbsp;\r\n\r\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge\r\n\r\ndépressif et d’une mère toxicomane, est follement amoureuse\r\n\r\nde Guayi, jeune et jolie domestique paraguayenne au service\r\n\r\nde la famille depuis l’âge de treize ans. Les deux jeunes filles\r\n\r\nprojettent de s’enfuir dans le village d’origine de Guayi, au\r\n\r\nbord du lac Ypoà où elles pourraient vivre ensemble et laisser\r\n\r\ns’exprimer sans contrainte leur désir fusionnel. Mais un\r\n\r\ndrame familial va brusquement les séparer...\r\n\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi\r\n\r\nd’adapter elle-même son propre roman écrit huit ans\r\n\r\nauparavant où deux jeunes femmes aux physiques opposés et\r\n\r\nde classes sociales différentes vont se rencontrer et s’aimer.\r\n\r\nEntre chronique sociale, onirisme et thriller, la cinéaste nous\r\n\r\nentraîne dans un Thelma et Louise lesbien à travers une\r\n\r\nArgentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '121-revision-2', '', '', '2013-01-24 14:46:49', '2013-01-24 13:46:49', '', 121, 'http://localhost/~francois/festival/?p=132', 0, 'revision', '', 0),
(133, 1, '2013-01-24 14:47:42', '2013-01-24 13:47:42', 'Espagne - 2009 - 02h08 - VOSTF\r\n\r\nInterprétation : Josean Bengoetxea, Eriz Alberdi,\r\n\r\nChristian Esquive\r\n\r\n&nbsp;\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine\r\n\r\npassée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme\r\n\r\nfamiliale. Alors qu’Arantxa doit bientôt se marier et laisser Ander\r\n\r\ns’occuper seul de leur mère, celui-ci se casse une jambe.\r\n\r\nPour l’assister dans ses tâches, sa famille embauche José, un\r\n\r\njeune travailleur saisonnier péruvien.\r\n\r\nLe nouveau venu va bientôt bouleverser les relations familiales et\r\n\r\nsurtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto\r\n\r\nCastón met en scène cette histoire d’amour entre deux hommes\r\n\r\nvivant au contact de la nature d’une manière différente. Il laisse\r\n\r\nle temps à ses personnages de s’apprivoiser, de se découvrir,\r\n\r\nd’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le\r\n\r\ntemps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie\r\n\r\nla complexité des rapports humains d’une grande intensité, a\r\n\r\nremporté l’adhésion du public dans tous les festivals où il a été\r\n\r\nprojeté.\r\n\r\n&nbsp;\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '117-revision-4', '', '', '2013-01-24 14:47:42', '2013-01-24 13:47:42', '', 117, 'http://localhost/~francois/festival/?p=133', 0, 'revision', '', 0),
(134, 1, '2013-01-24 14:51:23', '2013-01-24 13:51:23', 'Espagne - 2009 - 02h08 - VOSTF\r\n\r\n<strong>Interprétation</strong> : <em>Josean Bengoetxea</em>, <em>Eriz Alberdi</em>,\r\n\r\n<em>Christian Esquive</em>\r\n\r\n&nbsp;\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine\r\n\r\npassée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme\r\n\r\nfamiliale. Alors qu’Arantxa doit bientôt se marier et laisser Ander\r\n\r\ns’occuper seul de leur mère, celui-ci se casse une jambe.\r\n\r\nPour l’assister dans ses tâches, sa famille embauche José, un\r\n\r\njeune travailleur saisonnier péruvien.\r\n\r\nLe nouveau venu va bientôt bouleverser les relations familiales et\r\n\r\nsurtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto\r\n\r\nCastón met en scène cette histoire d’amour entre deux hommes\r\n\r\nvivant au contact de la nature d’une manière différente. Il laisse\r\n\r\nle temps à ses personnages de s’apprivoiser, de se découvrir,\r\n\r\nd’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le\r\n\r\ntemps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie\r\n\r\nla complexité des rapports humains d’une grande intensité, a\r\n\r\nremporté l’adhésion du public dans tous les festivals où il a été\r\n\r\nprojeté.\r\n\r\n&nbsp;\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '117-revision-5', '', '', '2013-01-24 14:51:23', '2013-01-24 13:51:23', '', 117, 'http://localhost/~francois/festival/?p=134', 0, 'revision', '', 0),
(135, 1, '2013-01-24 14:50:00', '2013-01-24 13:50:00', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Accueil', '', 'inherit', 'open', 'open', '', '6-revision-5', '', '', '2013-01-24 14:50:00', '2013-01-24 13:50:00', '', 6, 'http://localhost/~francois/festival/?p=135', 0, 'revision', '', 0),
(138, 1, '2013-01-24 15:16:02', '2013-01-24 14:16:02', '', 'ANDER', '', 'inherit', 'open', 'open', '', 'ander1', '', '', '2013-01-24 15:16:02', '2013-01-24 14:16:02', '', 126, 'http://localhost/~francois/festival/wp-content/uploads/2013/01/ANDER1.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2013-01-24 15:16:36', '2013-01-24 14:16:36', '', 'ANDER', '', 'inherit', 'open', 'open', '', 'ander2', '', '', '2013-01-24 15:16:36', '2013-01-24 14:16:36', '', 126, 'http://localhost/~francois/festival/wp-content/uploads/2013/01/ANDER2.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2013-01-24 14:50:40', '2013-01-24 13:50:40', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF\r\n\r\n<strong>Interprétation</strong> : <em>Lisa Ray</em>, <em>Sheetal Sheth</em>, <em>Antonia Frering</em>\r\n\r\n&nbsp;\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune\r\n\r\nPalestinienne installée à Londres, tombe amoureuse de Leyla,\r\n\r\nune jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla\r\n\r\nmusulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit\r\n\r\npassionnée. Mais le poids des cultures, la pression familiale\r\n\r\net le sens du devoir mettront à l’épreuve leur relation et les\r\n\r\nforceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les\r\n\r\ndeux talentueuses actrices (que l’on retrouve également dans\r\n\r\nson autre film The world unseen) est un pur joyau digne des\r\n\r\ncomédies romantiques anglaises.\r\n\r\n&nbsp;\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '126-revision-3', '', '', '2013-01-24 14:50:40', '2013-01-24 13:50:40', '', 126, 'http://localhost/~francois/festival/?p=140', 0, 'revision', '', 0),
(141, 1, '2013-01-24 15:17:00', '2013-01-24 14:17:00', 'Grande Bretag[gallery ids="138,139"]\r\n\r\nne - 2007 - 01h20 - Comédie romantique - VOSTF\r\n\r\n<strong>Interprétation</strong> : <em>Lisa Ray</em>, <em>Sheetal Sheth</em>, <em>Antonia Frering</em>\r\n\r\n&nbsp;\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune\r\n\r\nPalestinienne installée à Londres, tombe amoureuse de Leyla,\r\n\r\nune jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla\r\n\r\nmusulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit\r\n\r\npassionnée. Mais le poids des cultures, la pression familiale\r\n\r\net le sens du devoir mettront à l’épreuve leur relation et les\r\n\r\nforceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les\r\n\r\ndeux talentueuses actrices (que l’on retrouve également dans\r\n\r\nson autre film The world unseen) est un pur joyau digne des\r\n\r\ncomédies romantiques anglaises.\r\n\r\n&nbsp;\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '126-revision-4', '', '', '2013-01-24 15:17:00', '2013-01-24 14:17:00', '', 126, 'http://localhost/~francois/festival/?p=141', 0, 'revision', '', 0),
(142, 1, '2013-01-23 16:31:01', '2013-01-23 15:31:01', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nEtats-Unis - 1996 - Documentaire\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\n&nbsp;\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée\r\n\r\naux enfants dans les écoles publiques américaines, It’s\r\n\r\nelementary suit les interventions des enseignants dans les\r\n\r\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le\r\n\r\ntour des écoles américaines et a gagné de nombreux prix.\r\n\r\nUn excellent support didactique à montrer à tous les élèves\r\n\r\net leurs professeurs lorsque l’on appartient au monde de\r\n\r\nl’éducation.\r\n\r\n&nbsp;\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de\r\n\r\nl’ultra-droite chrétienne intégriste et homophobe pour\r\n\r\nempêcher sa diffusion sur une chaîne télé.\r\n\r\n&nbsp;\r\n\r\nLa projection sera suivie d’un débat avec l’association\r\n\r\nG.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu\r\n\r\nScolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '113-revision-3', '', '', '2013-01-23 16:31:01', '2013-01-23 15:31:01', '', 113, 'http://localhost/~francois/festival/?p=142', 0, 'revision', '', 0),
(143, 1, '2013-01-24 15:22:26', '2013-01-24 14:22:26', '[superb cats=2]\r\n\r\n(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nEtats-Unis - 1996 - Documentaire\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\n&nbsp;\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée\r\n\r\naux enfants dans les écoles publiques américaines, It’s\r\n\r\nelementary suit les interventions des enseignants dans les\r\n\r\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le\r\n\r\ntour des écoles américaines et a gagné de nombreux prix.\r\n\r\nUn excellent support didactique à montrer à tous les élèves\r\n\r\net leurs professeurs lorsque l’on appartient au monde de\r\n\r\nl’éducation.\r\n\r\n&nbsp;\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de\r\n\r\nl’ultra-droite chrétienne intégriste et homophobe pour\r\n\r\nempêcher sa diffusion sur une chaîne télé.\r\n\r\n&nbsp;\r\n\r\nLa projection sera suivie d’un débat avec l’association\r\n\r\nG.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu\r\n\r\nScolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '113-revision-4', '', '', '2013-01-24 15:22:26', '2013-01-24 14:22:26', '', 113, 'http://localhost/~francois/festival/?p=143', 0, 'revision', '', 0),
(144, 1, '2013-01-24 15:23:49', '2013-01-24 14:23:49', '[superb imgs=2]\r\n\r\n(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nEtats-Unis - 1996 - Documentaire\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\n&nbsp;\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée\r\n\r\naux enfants dans les écoles publiques américaines, It’s\r\n\r\nelementary suit les interventions des enseignants dans les\r\n\r\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le\r\n\r\ntour des écoles américaines et a gagné de nombreux prix.\r\n\r\nUn excellent support didactique à montrer à tous les élèves\r\n\r\net leurs professeurs lorsque l’on appartient au monde de\r\n\r\nl’éducation.\r\n\r\n&nbsp;\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de\r\n\r\nl’ultra-droite chrétienne intégriste et homophobe pour\r\n\r\nempêcher sa diffusion sur une chaîne télé.\r\n\r\n&nbsp;\r\n\r\nLa projection sera suivie d’un débat avec l’association\r\n\r\nG.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu\r\n\r\nScolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '113-revision-5', '', '', '2013-01-24 15:23:49', '2013-01-24 14:23:49', '', 113, 'http://localhost/~francois/festival/?p=144', 0, 'revision', '', 0),
(145, 1, '2013-01-24 15:30:31', '2013-01-24 14:30:31', '[superb cats=2]\n\n(C’est élémentaire - Parler de l’homosexualité à l’école)\n\nEtats-Unis - 1996 - Documentaire\n\nDurée 01h20 - Réalisation : Debra Chasnoff\n\n&nbsp;\n\nPremier documentaire à traiter de l’homosexualité expliquée\n\naux enfants dans les écoles publiques américaines, It’s\n\nelementary suit les interventions des enseignants dans les\n\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le\n\ntour des écoles américaines et a gagné de nombreux prix.\n\nUn excellent support didactique à montrer à tous les élèves\n\net leurs professeurs lorsque l’on appartient au monde de\n\nl’éducation.\n\n&nbsp;\n\nCe film a subi aux Etats-Unis des attaques de la part de\n\nl’ultra-droite chrétienne intégriste et homophobe pour\n\nempêcher sa diffusion sur une chaîne télé.\n\n&nbsp;\n\nLa projection sera suivie d’un débat avec l’association\n\nG.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu\n\nScolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '113-autosave', '', '', '2013-01-24 15:30:31', '2013-01-24 14:30:31', '', 113, 'http://localhost/~francois/festival/?p=145', 0, 'revision', '', 0),
(146, 1, '2013-01-24 15:25:24', '2013-01-24 14:25:24', '[superb imgs=1]\r\n\r\n(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nEtats-Unis - 1996 - Documentaire\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\n&nbsp;\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée\r\n\r\naux enfants dans les écoles publiques américaines, It’s\r\n\r\nelementary suit les interventions des enseignants dans les\r\n\r\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le\r\n\r\ntour des écoles américaines et a gagné de nombreux prix.\r\n\r\nUn excellent support didactique à montrer à tous les élèves\r\n\r\net leurs professeurs lorsque l’on appartient au monde de\r\n\r\nl’éducation.\r\n\r\n&nbsp;\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de\r\n\r\nl’ultra-droite chrétienne intégriste et homophobe pour\r\n\r\nempêcher sa diffusion sur une chaîne télé.\r\n\r\n&nbsp;\r\n\r\nLa projection sera suivie d’un débat avec l’association\r\n\r\nG.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu\r\n\r\nScolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '113-revision-6', '', '', '2013-01-24 15:25:24', '2013-01-24 14:25:24', '', 113, 'http://localhost/~francois/festival/?p=146', 0, 'revision', '', 0),
(147, 1, '2013-01-24 14:51:39', '2013-01-24 13:51:39', 'Espagne - 2009 - 02h08 - VOSTF\r\n\r\n<strong>Interprétation</strong> : <em>Josean Bengoetxea</em>, <em>Eriz Alberdi</em>,\r\n\r\n<em>Christian Esquive</em>\r\n\r\n&nbsp;\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine\r\n\r\npassée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme\r\n\r\nfamiliale. Alors qu’Arantxa doit bientôt se marier et laisser Ander\r\n\r\ns’occuper seul de leur mère, celui-ci se casse une jambe.\r\n\r\nPour l’assister dans ses tâches, sa famille embauche José, un\r\n\r\njeune travailleur saisonnier péruvien.\r\n\r\nLe nouveau venu va bientôt bouleverser les relations familiales et\r\n\r\nsurtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto\r\n\r\nCastón met en scène cette histoire d’amour entre deux hommes\r\n\r\nvivant au contact de la nature d’une manière différente. Il laisse\r\n\r\nle temps à ses personnages de s’apprivoiser, de se découvrir,\r\n\r\nd’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le\r\n\r\ntemps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie\r\n\r\nla complexité des rapports humains d’une grande intensité, a\r\n\r\nremporté l’adhésion du public dans tous les festivals où il a été\r\n\r\nprojeté.\r\n\r\n&nbsp;\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '117-revision-6', '', '', '2013-01-24 14:51:39', '2013-01-24 13:51:39', '', 117, 'http://localhost/~francois/festival/?p=147', 0, 'revision', '', 0),
(148, 1, '2013-01-24 15:31:22', '2013-01-24 14:31:22', '[superb cats=3]\r\n\r\nEspagne - 2009 - 02h08 - VOSTF\r\n\r\n<strong>Interprétation</strong> : <em>Josean Bengoetxea</em>, <em>Eriz Alberdi</em>,\r\n\r\n<em>Christian Esquive</em>\r\n\r\n&nbsp;\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine\r\n\r\npassée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme\r\n\r\nfamiliale. Alors qu’Arantxa doit bientôt se marier et laisser Ander\r\n\r\ns’occuper seul de leur mère, celui-ci se casse une jambe.\r\n\r\nPour l’assister dans ses tâches, sa famille embauche José, un\r\n\r\njeune travailleur saisonnier péruvien.\r\n\r\nLe nouveau venu va bientôt bouleverser les relations familiales et\r\n\r\nsurtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto\r\n\r\nCastón met en scène cette histoire d’amour entre deux hommes\r\n\r\nvivant au contact de la nature d’une manière différente. Il laisse\r\n\r\nle temps à ses personnages de s’apprivoiser, de se découvrir,\r\n\r\nd’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le\r\n\r\ntemps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie\r\n\r\nla complexité des rapports humains d’une grande intensité, a\r\n\r\nremporté l’adhésion du public dans tous les festivals où il a été\r\n\r\nprojeté.\r\n\r\n&nbsp;\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '117-revision-7', '', '', '2013-01-24 15:31:22', '2013-01-24 14:31:22', '', 117, 'http://localhost/~francois/festival/?p=148', 0, 'revision', '', 0),
(149, 1, '2013-01-24 14:51:02', '2013-01-24 13:51:02', 'Argentine - 2008 - 01h36 - VOSTF\r\n\r\n<strong>Interprétation</strong> : <em>Inés Efron</em>,<em> Mariela Vitale</em>, <em>Pep Munne</em>\r\n\r\n&nbsp;\r\n\r\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge\r\n\r\ndépressif et d’une mère toxicomane, est follement amoureuse\r\n\r\nde Guayi, jeune et jolie domestique paraguayenne au service\r\n\r\nde la famille depuis l’âge de treize ans. Les deux jeunes filles\r\n\r\nprojettent de s’enfuir dans le village d’origine de Guayi, au\r\n\r\nbord du lac Ypoà où elles pourraient vivre ensemble et laisser\r\n\r\ns’exprimer sans contrainte leur désir fusionnel. Mais un\r\n\r\ndrame familial va brusquement les séparer...\r\n\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi\r\n\r\nd’adapter elle-même son propre roman écrit huit ans\r\n\r\nauparavant où deux jeunes femmes aux physiques opposés et\r\n\r\nde classes sociales différentes vont se rencontrer et s’aimer.\r\n\r\nEntre chronique sociale, onirisme et thriller, la cinéaste nous\r\n\r\nentraîne dans un Thelma et Louise lesbien à travers une\r\n\r\nArgentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '121-revision-3', '', '', '2013-01-24 14:51:02', '2013-01-24 13:51:02', '', 121, 'http://localhost/~francois/festival/?p=149', 0, 'revision', '', 0),
(150, 1, '2013-01-24 15:36:09', '2013-01-24 14:36:09', '[superb cats = 4]\n\nArgentine - 2008 - 01h36 - VOSTF\n\n<strong>Interprétation</strong> : <em>Inés Efron</em>,<em> Mariela Vitale</em>, <em>Pep Munne</em>\n\n&nbsp;\n\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge\n\ndépressif et d’une mère toxicomane, est follement amoureuse\n\nde Guayi, jeune et jolie domestique paraguayenne au service\n\nde la famille depuis l’âge de treize ans. Les deux jeunes filles\n\nprojettent de s’enfuir dans le village d’origine de Guayi, au\n\nbord du lac Ypoà où elles pourraient vivre ensemble et laisser\n\ns’exprimer sans contrainte leur désir fusionnel. Mais un\n\ndrame familial va brusquement les séparer...\n\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi\n\nd’adapter elle-même son propre roman écrit huit ans\n\nauparavant où deux jeunes femmes aux physiques opposés et\n\nde classes sociales différentes vont se rencontrer et s’aimer.\n\nEntre chronique sociale, onirisme et thriller, la cinéaste nous\n\nentraîne dans un Thelma et Louise lesbien à travers une\n\nArgentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '121-autosave', '', '', '2013-01-24 15:36:09', '2013-01-24 14:36:09', '', 121, 'http://localhost/~francois/festival/?p=150', 0, 'revision', '', 0),
(151, 1, '2013-01-24 15:17:32', '2013-01-24 14:17:32', '[gallery ids="138,139"]\r\n\r\nGrande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF\r\n\r\n<strong>Interprétation</strong> : <em>Lisa Ray</em>, <em>Sheetal Sheth</em>, <em>Antonia Frering</em>\r\n\r\n&nbsp;\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune\r\n\r\nPalestinienne installée à Londres, tombe amoureuse de Leyla,\r\n\r\nune jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla\r\n\r\nmusulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit\r\n\r\npassionnée. Mais le poids des cultures, la pression familiale\r\n\r\net le sens du devoir mettront à l’épreuve leur relation et les\r\n\r\nforceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les\r\n\r\ndeux talentueuses actrices (que l’on retrouve également dans\r\n\r\nson autre film The world unseen) est un pur joyau digne des\r\n\r\ncomédies romantiques anglaises.\r\n\r\n&nbsp;\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '126-revision-5', '', '', '2013-01-24 15:17:32', '2013-01-24 14:17:32', '', 126, 'http://localhost/~francois/festival/?p=151', 0, 'revision', '', 0),
(152, 1, '2013-01-24 15:36:12', '2013-01-24 14:36:12', '[superb cats =5]\r\n\r\nGrande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF\r\n\r\n<strong>Interprétation</strong> : <em>Lisa Ray</em>, <em>Sheetal Sheth</em>, <em>Antonia Frering</em>\r\n\r\n&nbsp;\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune\r\n\r\nPalestinienne installée à Londres, tombe amoureuse de Leyla,\r\n\r\nune jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla\r\n\r\nmusulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit\r\n\r\npassionnée. Mais le poids des cultures, la pression familiale\r\n\r\net le sens du devoir mettront à l’épreuve leur relation et les\r\n\r\nforceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les\r\n\r\ndeux talentueuses actrices (que l’on retrouve également dans\r\n\r\nson autre film The world unseen) est un pur joyau digne des\r\n\r\ncomédies romantiques anglaises.\r\n\r\n&nbsp;\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '126-revision-6', '', '', '2013-01-24 15:36:12', '2013-01-24 14:36:12', '', 126, 'http://localhost/~francois/festival/?p=152', 0, 'revision', '', 0),
(153, 1, '2013-01-24 15:42:49', '2013-01-24 14:42:49', '[superb cats = 6]\r\n\r\n2009 - 8 minutes\r\n\r\nLors d’une séance du jeu « Action ou\r\n\r\nvérité ? », deux jeunes garçons, Mathieu\r\n\r\net Maxime, ont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi.\r\n\r\nA partir de ce moment, les ados, témoins de cette scène, font des\r\n\r\nallusions plus ou moins directes à l’éventuelle homosexualité\r\n\r\nde Maxime. Une révélation surprenante va alors déstabiliser\r\n\r\nle groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'publish', 'open', 'open', '', 'en-colo-pascal-alex-vincent-france', '', '', '2013-01-24 15:47:33', '2013-01-24 14:47:33', '', 0, 'http://localhost/~francois/festival/?p=153', 0, 'post', '', 0),
(154, 1, '2013-01-24 15:41:16', '2013-01-24 14:41:16', '', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '153-revision', '', '', '2013-01-24 15:41:16', '2013-01-24 14:41:16', '', 153, 'http://localhost/~francois/festival/?p=154', 0, 'revision', '', 0),
(155, 1, '2013-01-24 15:42:49', '2013-01-24 14:42:49', '[superb cats = 6]\r\n\r\n2009 - 8 minutes\r\n\r\nLors d’une séance du jeu « Action ou\r\n\r\nvérité ? », deux jeunes garçons, Mathieu\r\n\r\net Maxime, ont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi.\r\n\r\nA partir de ce moment, les ados, témoins de cette scène, font des\r\n\r\nallusions plus ou moins directes à l’éventuelle homosexualité\r\n\r\nde Maxime. Une révélation surprenante va alors déstabiliser\r\n\r\nle groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '153-revision-2', '', '', '2013-01-24 15:42:49', '2013-01-24 14:42:49', '', 153, 'http://localhost/~francois/festival/?p=155', 0, 'revision', '', 0),
(156, 1, '2013-01-23 16:23:57', '2013-01-23 15:23:57', '<ul>\r\n	<li>En colo - Pascal-Alex Vincent - France</li>\r\n	<li>Pauline – Céline Sciamma- France – 2009</li>\r\n	<li>Omar - Sébastien Gabriel - France - 2009 - 9 minutes</li>\r\n	<li>Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes</li>\r\n	<li>Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008</li>\r\n	<li>Cowboy Forever - Jean Baptiste Erreca - France</li>\r\n	<li>American Boy - Patricia &amp; Colette - France</li>\r\n</ul>', 'Courts-métrages', '', 'inherit', 'open', 'open', '', '38-revision-2', '', '', '2013-01-23 16:23:57', '2013-01-23 15:23:57', '', 38, 'http://localhost/~francois/festival/?p=156', 0, 'revision', '', 0),
(157, 1, '2013-01-24 15:48:35', '2013-01-24 14:48:35', '[superb cats = 6]\n\n2009 - 8 minutes\n\nLors d’une séance du jeu « Action ou\n\nvérité ? », deux jeunes garçons, Mathieu\n\net Maxime, ont pour défi de s’embrasser.\n\nLe baiser va provoquer chez eux un certain émoi.\n\nA partir de ce moment, les ados, témoins de cette scène, font des\n\nallusions plus ou moins directes à l’éventuelle homosexualité\n\nde Maxime. Une révélation surprenante va alors déstabiliser\n\nle groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '153-autosave', '', '', '2013-01-24 15:48:35', '2013-01-24 14:48:35', '', 153, 'http://localhost/~francois/festival/?p=157', 0, 'revision', '', 0),
(158, 1, '2013-01-24 15:42:57', '2013-01-24 14:42:57', '[superb cats = 6]\r\n\r\n2009 - 8 minutes\r\n\r\nLors d’une séance du jeu « Action ou\r\n\r\nvérité ? », deux jeunes garçons, Mathieu\r\n\r\net Maxime, ont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi.\r\n\r\nA partir de ce moment, les ados, témoins de cette scène, font des\r\n\r\nallusions plus ou moins directes à l’éventuelle homosexualité\r\n\r\nde Maxime. Une révélation surprenante va alors déstabiliser\r\n\r\nle groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '153-revision-3', '', '', '2013-01-24 15:42:57', '2013-01-24 14:42:57', '', 153, 'http://localhost/~francois/festival/?p=158', 0, 'revision', '', 0),
(159, 1, '2013-01-24 15:49:42', '2013-01-24 14:49:42', '[superb cats = 7]\r\n\r\n7 minutes\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte\r\n\r\nface à la caméra : l’enfance joyeuse dans une petite\r\n\r\nville de province où tout le monde se connaît, la révélation\r\n\r\npublique et infamante de son homosexualité par un ami de ses\r\n\r\nparents, le silence des témoins, la douleur de la solitude, la\r\n\r\npossibilité de l’acceptation. Tout cela elle le raconte à une autre\r\n\r\nfille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009', '', 'publish', 'open', 'open', '', 'pauline-celine-sciamma-france-2009', '', '', '2013-01-24 15:49:42', '2013-01-24 14:49:42', '', 0, 'http://localhost/~francois/festival/?p=159', 0, 'post', '', 0),
(160, 1, '2013-01-24 15:49:12', '2013-01-24 14:49:12', '', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'open', 'open', '', '159-revision', '', '', '2013-01-24 15:49:12', '2013-01-24 14:49:12', '', 159, 'http://localhost/~francois/festival/?p=160', 0, 'revision', '', 0),
(161, 1, '2013-01-24 15:43:14', '2013-01-24 14:43:14', '<ul>\r\n	<li><a title="En colo – Pascal-Alex Vincent – France" href="http://localhost/~francois/festival/?p=153">En colo - Pascal-Alex Vincent - France</a></li>\r\n	<li>Pauline – Céline Sciamma- France – 2009</li>\r\n	<li>Omar - Sébastien Gabriel - France - 2009 - 9 minutes</li>\r\n	<li>Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes</li>\r\n	<li>Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008</li>\r\n	<li>Cowboy Forever - Jean Baptiste Erreca - France</li>\r\n	<li>American Boy - Patricia &amp; Colette - France</li>\r\n</ul>', 'Courts-métrages', '', 'inherit', 'open', 'open', '', '38-revision-3', '', '', '2013-01-24 15:43:14', '2013-01-24 14:43:14', '', 38, 'http://localhost/~francois/festival/?p=161', 0, 'revision', '', 0),
(162, 1, '2013-01-24 15:50:45', '2013-01-24 14:50:45', '[superb cats = 7]\n\n7 minutes\n\nC’est la mise en scène d’une jeune fille, qui se raconte\n\nface à la caméra : l’enfance joyeuse dans une petite\n\nville de province où tout le monde se connaît, la révélation\n\npublique et infamante de son homosexualité par un ami de ses\n\nparents, le silence des témoins, la douleur de la solitude, la\n\npossibilité de l’acceptation. Tout cela elle le raconte à une autre\n\nfille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'open', 'open', '', '159-autosave', '', '', '2013-01-24 15:50:45', '2013-01-24 14:50:45', '', 159, 'http://localhost/~francois/festival/?p=162', 0, 'revision', '', 0),
(163, 1, '2013-01-24 15:51:37', '2013-01-24 14:51:37', '[superb cats = 8]\r\n\r\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui\r\n\r\nl’aime mais où la pression est telle qu’il ne peut vraiment assouvir,\r\n\r\nni même révéler, son amour pour Arthur. Jusqu’au\r\n\r\njour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'publish', 'open', 'open', '', 'omar-sebastien-gabriel-france-2009-9-minutes', '', '', '2013-01-29 15:06:11', '2013-01-29 14:06:11', '', 0, 'http://localhost/~francois/festival/?p=163', 0, 'post', '', 0),
(164, 1, '2013-01-24 15:50:53', '2013-01-24 14:50:53', '', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'open', 'open', '', '163-revision', '', '', '2013-01-24 15:50:53', '2013-01-24 14:50:53', '', 163, 'http://localhost/~francois/festival/?p=164', 0, 'revision', '', 0),
(165, 1, '2013-01-24 15:49:55', '2013-01-24 14:49:55', '<ul>\r\n	<li><a title="En colo – Pascal-Alex Vincent – France" href="http://localhost/~francois/festival/?p=153">En colo - Pascal-Alex Vincent - France</a></li>\r\n	<li><a title="Pauline – Céline Sciamma- France – 2009" href="http://localhost/~francois/festival/?p=159">Pauline – Céline Sciamma- France – 2009</a></li>\r\n	<li>Omar - Sébastien Gabriel - France - 2009 - 9 minutes</li>\r\n	<li>Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes</li>\r\n	<li>Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008</li>\r\n	<li>Cowboy Forever - Jean Baptiste Erreca - France</li>\r\n	<li>American Boy - Patricia &amp; Colette - France</li>\r\n</ul>', 'Courts-métrages', '', 'inherit', 'open', 'open', '', '38-revision-4', '', '', '2013-01-24 15:49:55', '2013-01-24 14:49:55', '', 38, 'http://localhost/~francois/festival/?p=165', 0, 'revision', '', 0),
(166, 1, '2013-01-24 15:52:40', '2013-01-24 14:52:40', '[superb cats = 8]\n\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui\n\nl’aime mais où la pression est telle qu’il ne peut vraiment assouvir,\n\nni même révéler, son amour pour Arthur. Jusqu’au\n\njour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'open', 'open', '', '163-autosave', '', '', '2013-01-24 15:52:40', '2013-01-24 14:52:40', '', 163, 'http://localhost/~francois/festival/?p=166', 0, 'revision', '', 0),
(167, 1, '2013-01-24 15:57:01', '2013-01-24 14:57:01', '[superb cats = 9]\r\n\r\nUne boulangerie banale sur une route de\r\n\r\ncampagne. Derrière le comptoir, Odile, s’ennuie.\r\n\r\nUn jour, une horde de motards stoppe devant\r\n\r\nla boutique. Le passé va faire irruption dans\r\n\r\nsa vie...', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'publish', 'open', 'open', '', 'odile-benedicte-delgehier-france-2006-10-minutes', '', '', '2013-01-24 15:57:07', '2013-01-24 14:57:07', '', 0, 'http://localhost/~francois/festival/?p=167', 0, 'post', '', 0),
(168, 1, '2013-01-24 15:56:34', '2013-01-24 14:56:34', '', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'open', 'open', '', '167-revision', '', '', '2013-01-24 15:56:34', '2013-01-24 14:56:34', '', 167, 'http://localhost/~francois/festival/?p=168', 0, 'revision', '', 0),
(169, 1, '2013-01-24 15:57:01', '2013-01-24 14:57:01', '[superb cats = 9]\r\n\r\nUne boulangerie banale sur une route de\r\n\r\ncampagne. Derrière le comptoir, Odile, s’ennuie.\r\n\r\nUn jour, une horde de motards stoppe devant\r\n\r\nla boutique. Le passé va faire irruption dans\r\n\r\nsa vie...', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'open', 'open', '', '167-revision-2', '', '', '2013-01-24 15:57:01', '2013-01-24 14:57:01', '', 167, 'http://localhost/~francois/festival/?p=169', 0, 'revision', '', 0),
(170, 1, '2013-01-24 15:58:09', '2013-01-24 14:58:09', '[superb cats = 9]\n\nUne boulangerie banale sur une route de\n\ncampagne. Derrière le comptoir, Odile, s’ennuie.\n\nUn jour, une horde de motards stoppe devant\n\nla boutique. Le passé va faire irruption dans\n\nsa vie...', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'open', 'open', '', '167-autosave', '', '', '2013-01-24 15:58:09', '2013-01-24 14:58:09', '', 167, 'http://localhost/~francois/festival/?p=170', 0, 'revision', '', 0),
(171, 1, '2013-01-24 15:51:46', '2013-01-24 14:51:46', '<ul>\r\n	<li><a title="En colo – Pascal-Alex Vincent – France" href="http://localhost/~francois/festival/?p=153">En colo - Pascal-Alex Vincent - France</a></li>\r\n	<li><a title="Pauline – Céline Sciamma- France – 2009" href="http://localhost/~francois/festival/?p=159">Pauline – Céline Sciamma- France – 2009</a></li>\r\n	<li><a title="Omar – Sébastien Gabriel – France – 2009 – 9 minutes" href="http://localhost/~francois/festival/?p=163">Omar - Sébastien Gabriel - France - 2009 - 9 minutes</a></li>\r\n	<li>Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes</li>\r\n	<li>Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008</li>\r\n	<li>Cowboy Forever - Jean Baptiste Erreca - France</li>\r\n	<li>American Boy - Patricia &amp; Colette - France</li>\r\n</ul>', 'Courts-métrages', '', 'inherit', 'open', 'open', '', '38-revision-5', '', '', '2013-01-24 15:51:46', '2013-01-24 14:51:46', '', 38, 'http://localhost/~francois/festival/?p=171', 0, 'revision', '', 0),
(172, 1, '2013-01-24 16:01:45', '2013-01-24 15:01:45', '[superb cats = 10]\r\n\r\n17 minutes - VOSTF\r\n\r\nLe corps d’un travesti décédé est préparé\r\n\r\npour l’enterrement par d’autres travestis.\r\n\r\nSon corps de femme est amené à sa famille,\r\n\r\nqui décide de l’enterrer comme un homme.\r\n\r\nUne procession de travestis se met en marche\r\n\r\nvers la veillée funèbre pour revendiquer\r\n\r\nl’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'publish', 'open', 'open', '', 'os-sapatos-de-aristeu-rene-guerra-luiz-bresil-2008', '', '', '2013-01-24 16:05:00', '2013-01-24 15:05:00', '', 0, 'http://localhost/~francois/festival/?p=172', 0, 'post', '', 0),
(173, 1, '2013-01-24 16:01:28', '2013-01-24 15:01:28', '[superb cats = 10]', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'open', 'open', '', '172-revision', '', '', '2013-01-24 16:01:28', '2013-01-24 15:01:28', '', 172, 'http://localhost/~francois/festival/?p=173', 0, 'revision', '', 0),
(174, 1, '2013-01-24 16:06:03', '2013-01-24 15:06:03', '[superb cats = 10]\n\n17 minutes - VOSTF\n\nLe corps d’un travesti décédé est préparé\n\npour l’enterrement par d’autres travestis.\n\nSon corps de femme est amené à sa famille,\n\nqui décide de l’enterrer comme un homme.\n\nUne procession de travestis se met en marche\n\nvers la veillée funèbre pour revendiquer\n\nl’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'open', 'open', '', '172-autosave', '', '', '2013-01-24 16:06:03', '2013-01-24 15:06:03', '', 172, 'http://localhost/~francois/festival/?p=174', 0, 'revision', '', 0),
(175, 1, '2013-01-24 16:01:45', '2013-01-24 15:01:45', '[superb cats = 10]\r\n\r\n17 minutes - VOSTF\r\n\r\nLe corps d’un travesti décédé est préparé\r\n\r\npour l’enterrement par d’autres travestis.\r\n\r\nSon corps de femme est amené à sa famille,\r\n\r\nqui décide de l’enterrer comme un homme.\r\n\r\nUne procession de travestis se met en marche\r\n\r\nvers la veillée funèbre pour revendiquer\r\n\r\nl’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'open', 'open', '', '172-revision-2', '', '', '2013-01-24 16:01:45', '2013-01-24 15:01:45', '', 172, 'http://localhost/~francois/festival/?p=175', 0, 'revision', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(176, 1, '2013-01-24 15:58:38', '2013-01-24 14:58:38', '<ul>\r\n	<li><a title="En colo – Pascal-Alex Vincent – France" href="http://localhost/~francois/festival/?p=153">En colo - Pascal-Alex Vincent - France</a></li>\r\n	<li><a title="Pauline – Céline Sciamma- France – 2009" href="http://localhost/~francois/festival/?p=159">Pauline – Céline Sciamma- France – 2009</a></li>\r\n	<li><a title="Omar – Sébastien Gabriel – France – 2009 – 9 minutes" href="http://localhost/~francois/festival/?p=163">Omar - Sébastien Gabriel - France - 2009 - 9 minutes</a></li>\r\n	<li><a title="Odile  – Bénédicte Delgéhier – France – 2006- 10 minutes" href="http://localhost/~francois/festival/?p=167">Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes</a></li>\r\n	<li>Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008</li>\r\n	<li>Cowboy Forever - Jean Baptiste Erreca - France</li>\r\n	<li>American Boy - Patricia &amp; Colette - France</li>\r\n</ul>', 'Courts-métrages', '', 'inherit', 'open', 'open', '', '38-revision-6', '', '', '2013-01-24 15:58:38', '2013-01-24 14:58:38', '', 38, 'http://localhost/~francois/festival/?p=176', 0, 'revision', '', 0),
(177, 1, '2013-01-24 16:05:19', '2013-01-24 15:05:19', '<ul>\r\n	<li><a title="En colo – Pascal-Alex Vincent – France" href="http://localhost/~francois/festival/?p=153">En colo - Pascal-Alex Vincent - France</a></li>\r\n	<li><a title="Pauline – Céline Sciamma- France – 2009" href="http://localhost/~francois/festival/?p=159">Pauline – Céline Sciamma- France – 2009</a></li>\r\n	<li><a title="Omar – Sébastien Gabriel – France – 2009 – 9 minutes" href="http://localhost/~francois/festival/?p=163">Omar - Sébastien Gabriel - France - 2009 - 9 minutes</a></li>\r\n	<li><a title="Odile  – Bénédicte Delgéhier – France – 2006- 10 minutes" href="http://localhost/~francois/festival/?p=167">Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes</a></li>\r\n	<li><a title="Os sapatos de Aristeu – René Guerra Luiz – Brésil – 2008" href="http://localhost/~francois/festival/?p=172">Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008</a></li>\r\n	<li>Cowboy Forever - Jean Baptiste Erreca - France</li>\r\n	<li>American Boy - Patricia &amp; Colette - France</li>\r\n</ul>', 'Courts-métrages', '', 'inherit', 'open', 'open', '', '38-revision-7', '', '', '2013-01-24 16:05:19', '2013-01-24 15:05:19', '', 38, 'http://localhost/~francois/festival/?p=177', 0, 'revision', '', 0),
(178, 1, '2013-01-24 15:51:37', '2013-01-24 14:51:37', '[superb cats = 8]\r\n\r\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui\r\n\r\nl’aime mais où la pression est telle qu’il ne peut vraiment assouvir,\r\n\r\nni même révéler, son amour pour Arthur. Jusqu’au\r\n\r\njour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'open', 'open', '', '163-revision-2', '', '', '2013-01-24 15:51:37', '2013-01-24 14:51:37', '', 163, 'http://localhost/~francois/festival/?p=178', 0, 'revision', '', 0),
(179, 1, '2013-01-29 15:07:21', '2013-01-29 14:07:21', '[superb cats = 11]\r\n\r\n2006 - 26 minutes\r\n\r\nAu cœur du Brésil, dans le monde machiste des\r\n\r\ncowboys latinos, les héros de Cowboy Forever\r\n\r\nrevendiquent leur homosexualité et manient à\r\n\r\nmerveille le lasso, et pas seulement pour attraper\r\n\r\nle bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'publish', 'open', 'open', '', 'cowboy-forever-jean-baptiste-erreca-france', '', '', '2013-01-29 15:10:18', '2013-01-29 14:10:18', '', 0, 'http://localhost/~francois/festival/?p=179', 0, 'post', '', 0),
(180, 1, '2013-01-29 15:07:19', '2013-01-29 14:07:19', '[superb cat=11]\n\n2006 - 26 minutes\n\nAu cœur du Brésil, dans le monde machiste des\n\ncowboys latinos, les héros de Cowboy Forever\n\nrevendiquent leur homosexualité et manient à\n\nmerveille le lasso, et pas seulement pour attraper\n\nle bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'open', 'open', '', '179-revision', '', '', '2013-01-29 15:07:19', '2013-01-29 14:07:19', '', 179, 'http://localhost/~francois/festival/?p=180', 0, 'revision', '', 0),
(181, 1, '2013-01-24 16:05:36', '2013-01-24 15:05:36', '<ul>\r\n	<li><a title="En colo – Pascal-Alex Vincent – France" href="http://localhost/~francois/festival/?p=153">En colo - Pascal-Alex Vincent - France</a></li>\r\n	<li><a title="Pauline – Céline Sciamma- France – 2009" href="http://localhost/~francois/festival/?p=159">Pauline – Céline Sciamma- France – 2009</a></li>\r\n	<li><a title="Omar – Sébastien Gabriel – France – 2009 – 9 minutes" href="http://localhost/~francois/festival/?p=163">Omar - Sébastien Gabriel - France - 2009 - 9 minutes</a></li>\r\n	<li><a title="Odile  – Bénédicte Delgéhier – France – 2006- 10 minutes" href="http://localhost/~francois/festival/?p=167">Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes</a></li>\r\n	<li><a title="Os sapatos de Aristeu – René Guerra Luiz – Brésil – 2008" href="http://localhost/~francois/festival/?p=172">Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008</a></li>\r\n	<li>Cowboy Forever - Jean Baptiste Erreca - France</li>\r\n	<li>American Boy - Patricia &amp; Colette - France</li>\r\n</ul>', 'Courts-métrages', '', 'inherit', 'open', 'open', '', '38-revision-8', '', '', '2013-01-24 16:05:36', '2013-01-24 15:05:36', '', 38, 'http://localhost/~francois/festival/?p=181', 0, 'revision', '', 0),
(182, 1, '2013-01-29 15:07:21', '2013-01-29 14:07:21', '[superb cat=11]\r\n\r\n2006 - 26 minutes\r\n\r\nAu cœur du Brésil, dans le monde machiste des\r\n\r\ncowboys latinos, les héros de Cowboy Forever\r\n\r\nrevendiquent leur homosexualité et manient à\r\n\r\nmerveille le lasso, et pas seulement pour attraper\r\n\r\nle bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'open', 'open', '', '179-revision-2', '', '', '2013-01-29 15:07:21', '2013-01-29 14:07:21', '', 179, 'http://localhost/~francois/festival/?p=182', 0, 'revision', '', 0),
(183, 1, '2013-01-29 15:12:57', '2013-01-29 14:12:57', '[superb cats = 12]\r\n\r\n2008 - 4 minutes\r\n\r\nComment jouer du genre en chanson ?\r\n\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous\r\n\r\nsera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'publish', 'open', 'open', '', 'american-boy-patricia-colette-france', '', '', '2013-01-29 15:15:24', '2013-01-29 14:15:24', '', 0, 'http://localhost/~francois/festival/?p=183', 0, 'post', '', 0),
(184, 1, '2013-01-29 15:12:30', '2013-01-29 14:12:30', '[superb cats = 12]\n\n2008 - 4 minutes\n\nComment jouer du genre en chanson ?\n\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous\n\nsera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'open', 'open', '', '183-revision', '', '', '2013-01-29 15:12:30', '2013-01-29 14:12:30', '', 183, 'http://localhost/~francois/festival/?p=184', 0, 'revision', '', 0),
(185, 1, '2013-01-29 15:16:50', '2013-01-29 14:16:50', '[superb cats = 12]\n\n2008 - 4 minutes\n\nComment jouer du genre en chanson ?\n\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous\n\nsera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'open', 'open', '', '183-autosave', '', '', '2013-01-29 15:16:50', '2013-01-29 14:16:50', '', 183, 'http://localhost/~francois/festival/?p=185', 0, 'revision', '', 0),
(186, 1, '2013-01-29 15:08:14', '2013-01-29 14:08:14', '<ul>\r\n	<li><a title="En colo – Pascal-Alex Vincent – France" href="http://localhost/~francois/festival/?p=153">En colo - Pascal-Alex Vincent - France</a></li>\r\n	<li><a title="Pauline – Céline Sciamma- France – 2009" href="http://localhost/~francois/festival/?p=159">Pauline – Céline Sciamma- France – 2009</a></li>\r\n	<li><a title="Omar – Sébastien Gabriel – France – 2009 – 9 minutes" href="http://localhost/~francois/festival/?p=163">Omar - Sébastien Gabriel - France - 2009 - 9 minutes</a></li>\r\n	<li><a title="Odile  – Bénédicte Delgéhier – France – 2006- 10 minutes" href="http://localhost/~francois/festival/?p=167">Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes</a></li>\r\n	<li><a title="Os sapatos de Aristeu – René Guerra Luiz – Brésil – 2008" href="http://localhost/~francois/festival/?p=172">Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008</a></li>\r\n	<li><a title="Cowboy Forever – Jean Baptiste Erreca – France" href="http://localhost/~francois/festival/?p=179">Cowboy Forever - Jean Baptiste Erreca - France</a></li>\r\n	<li>American Boy - Patricia &amp; Colette - France</li>\r\n</ul>', 'Courts-métrages', '', 'inherit', 'open', 'open', '', '38-revision-9', '', '', '2013-01-29 15:08:14', '2013-01-29 14:08:14', '', 38, 'http://localhost/~francois/festival/?p=186', 0, 'revision', '', 0),
(187, 1, '2013-01-29 15:15:10', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-29 15:15:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/~francois/festival/?p=187', 0, 'post', '', 0),
(188, 1, '2013-01-29 15:12:57', '2013-01-29 14:12:57', '[superb cats = 12]\r\n\r\n2008 - 4 minutes\r\n\r\nComment jouer du genre en chanson ?\r\n\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous\r\n\r\nsera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'open', 'open', '', '183-revision-2', '', '', '2013-01-29 15:12:57', '2013-01-29 14:12:57', '', 183, 'http://localhost/~francois/festival/?p=188', 0, 'revision', '', 0),
(189, 1, '2013-01-08 17:47:22', '2013-01-08 16:47:22', '- Région Centre\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-4', '', '', '2013-01-08 17:47:22', '2013-01-08 16:47:22', '', 18, 'http://localhost/~francois/festival/?p=189', 0, 'revision', '', 0),
(190, 1, '2013-01-29 15:35:32', '2013-01-29 14:35:32', '&lt;div&gt;Région Centre&lt;/div&gt;\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-5', '', '', '2013-01-29 15:35:32', '2013-01-29 14:35:32', '', 18, 'http://localhost/~francois/festival/?p=190', 0, 'revision', '', 0),
(191, 1, '2013-01-29 15:35:45', '2013-01-29 14:35:45', '&lt;div&gt;Région Centre&lt;/div&gt;\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-6', '', '', '2013-01-29 15:35:45', '2013-01-29 14:35:45', '', 18, 'http://localhost/~francois/festival/?p=191', 0, 'revision', '', 0),
(192, 1, '2013-01-29 15:36:05', '2013-01-29 14:36:05', '&lt;div&gt;Région Centrerr&lt;/div&gt;\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-7', '', '', '2013-01-29 15:36:05', '2013-01-29 14:36:05', '', 18, 'http://localhost/~francois/festival/?p=192', 0, 'revision', '', 0),
(193, 1, '2013-01-29 15:36:19', '2013-01-29 14:36:19', '&lt;div&gt;Région Centrerr&lt;/div&gt;\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-8', '', '', '2013-01-29 15:36:19', '2013-01-29 14:36:19', '', 18, 'http://localhost/~francois/festival/?p=193', 0, 'revision', '', 0),
(194, 1, '2013-01-29 15:38:23', '2013-01-29 14:38:23', '<div class = "partenaires">Région Centre</div>\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-9', '', '', '2013-01-29 15:38:23', '2013-01-29 14:38:23', '', 18, 'http://localhost/~francois/festival/?p=194', 0, 'revision', '', 0),
(195, 1, '2013-01-29 15:52:43', '2013-01-29 14:52:43', '', 'RC', '', 'inherit', 'open', 'open', '', 'rc', '', '', '2013-01-29 15:52:43', '2013-01-29 14:52:43', '', 18, 'http://localhost/~francois/festival/wp-content/uploads/2013/01/RC.jpg', 0, 'attachment', 'image/jpeg', 0),
(196, 1, '2013-01-29 15:42:41', '2013-01-29 14:42:41', '<div class = "partenaires">Région Centre</div>\r\n<div class = "partenaires">Orléans</div>\r\n<div class = "partenaires">Cinéma des Carmes</div>\r\n<div class = "partenaires">GAGL</div>\r\n<div class = "partenaires">Têtu</div>\r\n<div class = "partenaires">La dixième MUSE</div>\r\n<div class = "partenaires">CiteGay</div>\r\n<div class = "partenaires">Yagg.com</div>\r\n<div class = "partenaires">France Bleu</div>', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-10', '', '', '2013-01-29 15:42:41', '2013-01-29 14:42:41', '', 18, 'http://localhost/~francois/festival/?p=196', 0, 'revision', '', 0),
(197, 1, '2013-01-29 15:53:26', '2013-01-29 14:53:26', '<div class="partenaires">Région Centre<a href="http://localhost/~francois/festival/?attachment_id=195" rel="attachment wp-att-195"><img class="alignnone size-medium wp-image-195" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-264x300.jpg" width="97" height="111" /></a></div>\r\n<div class="partenaires"></div>\r\n<div class="partenaires">Orléans</div>\r\n<div class="partenaires">Cinéma des Carmes</div>\r\n<div class="partenaires">GAGL</div>\r\n<div class="partenaires">Têtu</div>\r\n<div class="partenaires">La dixième MUSE</div>\r\n<div class="partenaires">CiteGay</div>\r\n<div class="partenaires">Yagg.com</div>\r\n<div class="partenaires">France Bleu</div>', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-11', '', '', '2013-01-29 15:53:26', '2013-01-29 14:53:26', '', 18, 'http://localhost/~francois/festival/?p=197', 0, 'revision', '', 0),
(198, 1, '2013-01-29 15:56:21', '2013-01-29 14:56:21', '', 'orleans', 'Orléans', 'inherit', 'open', 'open', '', 'orleans', '', '', '2013-01-29 15:56:21', '2013-01-29 14:56:21', '', 18, 'http://localhost/~francois/festival/wp-content/uploads/2013/01/orleans.jpg', 0, 'attachment', 'image/jpeg', 0),
(199, 1, '2013-01-29 15:54:05', '2013-01-29 14:54:05', '<div class="partenaires"><a href="http://localhost/~francois/festival/?attachment_id=195" rel="attachment wp-att-195"><img class="alignnone  wp-image-195" title="Région centre" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-264x300.jpg" width="97" height="111" /></a></div>\r\n<div class="partenaires"></div>\r\n<div class="partenaires">Orléans</div>\r\n<div class="partenaires">Cinéma des Carmes</div>\r\n<div class="partenaires">GAGL</div>\r\n<div class="partenaires">Têtu</div>\r\n<div class="partenaires">La dixième MUSE</div>\r\n<div class="partenaires">CiteGay</div>\r\n<div class="partenaires">Yagg.com</div>\r\n<div class="partenaires">France Bleu</div>', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-12', '', '', '2013-01-29 15:54:05', '2013-01-29 14:54:05', '', 18, 'http://localhost/~francois/festival/?p=199', 0, 'revision', '', 0),
(200, 1, '2013-01-29 15:57:42', '2013-01-29 14:57:42', '<div class="partenaires"><a href="http://localhost/~francois/festival/?attachment_id=195" rel="attachment wp-att-195"><img class="wp-image-195 alignleft" title="Région centre" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-264x300.jpg" width="111" height="127" /></a>\r\n<div class="partenaires">\r\n\r\n<a href="http://localhost/~francois/festival/?attachment_id=198" rel="attachment wp-att-198"><img class="size-medium wp-image-198 alignleft" alt="Orléans" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/orleans-283x300.jpg" width="94" height="100" /></a>\r\n\r\n</div>\r\n</div>\r\n<div class="partenaires"></div>\r\n<div class="partenaires"></div>\r\n<div class="partenaires">Cinéma des Carmes</div>\r\n<div class="partenaires">GAGL</div>\r\n<div class="partenaires">Têtu</div>\r\n<div class="partenaires">La dixième MUSE</div>\r\n<div class="partenaires">CiteGay</div>\r\n<div class="partenaires">Yagg.com</div>\r\n<div class="partenaires">France Bleu</div>', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-13', '', '', '2013-01-29 15:57:42', '2013-01-29 14:57:42', '', 18, 'http://localhost/~francois/festival/?p=200', 0, 'revision', '', 0),
(201, 1, '2013-01-29 15:58:39', '2013-01-29 14:58:39', '<a href="http://localhost/~francois/festival/?attachment_id=195" rel="attachment wp-att-195"><img class="wp-image-195 alignleft" title="Région centre" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-264x300.jpg" width="111" height="127" /></a>\r\n\r\n\r\n<a href="http://localhost/~francois/festival/?attachment_id=198" rel="attachment wp-att-198"><img class="size-medium wp-image-198 alignleft" alt="Orléans" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/orleans-283x300.jpg" width="94" height="100" /></a>\r\n\r\n\r\nCinéma des Carmes\r\nGAGL\r\nTêtu\r\nLa dixième MUSE\r\nCiteGay\r\nYagg.com\r\nFrance Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-14', '', '', '2013-01-29 15:58:39', '2013-01-29 14:58:39', '', 18, 'http://localhost/~francois/festival/?p=201', 0, 'revision', '', 0),
(202, 1, '2013-01-29 16:01:24', '2013-01-29 15:01:24', '', 'logo_lescarmes', '', 'inherit', 'open', 'open', '', 'logo_lescarmes', '', '', '2013-01-29 16:01:24', '2013-01-29 15:01:24', '', 18, 'http://localhost/~francois/festival/wp-content/uploads/2013/01/logo_lescarmes.gif', 0, 'attachment', 'image/gif', 0),
(203, 1, '2013-01-29 15:59:14', '2013-01-29 14:59:14', '<a href="http://localhost/~francois/festival/?attachment_id=195" rel="attachment wp-att-195"><img class="wp-image-195 alignleft" title="Région centre" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-280x300.jpg" width="111" height="127" /></a>\r\n\r\n\r\n<a href="http://localhost/~francois/festival/?attachment_id=198" rel="attachment wp-att-198"><img class="size-medium wp-image-198 alignleft" alt="Orléans" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/orleans-280x300.jpg" width="94" height="100" /></a>\r\n\r\n\r\nCinéma des Carmes\r\nGAGL\r\nTêtu\r\nLa dixième MUSE\r\nCiteGay\r\nYagg.com\r\nFrance Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-15', '', '', '2013-01-29 15:59:14', '2013-01-29 14:59:14', '', 18, 'http://localhost/~francois/festival/?p=203', 0, 'revision', '', 0),
(204, 1, '2013-01-29 16:02:19', '2013-01-29 15:02:19', '<img class=" wp-image-195 alignleft" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-264x300.jpg" width="100" height="114" />\r\n\r\n<img class="size-medium wp-image-198 alignleft" alt="Orléans" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/orleans-283x300.jpg" width="94" height="100" /><a href="http://localhost/~francois/festival/?attachment_id=202" rel="attachment wp-att-202"><img class="alignnone size-full wp-image-202" alt="Cinéma les carmes" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/logo_lescarmes.gif" width="122" height="96" /></a>\r\n\r\nCinéma des Carmes\r\nGAGL\r\nTêtu\r\nLa dixième MUSE\r\nCiteGay\r\nYagg.com\r\nFrance Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-16', '', '', '2013-01-29 16:02:19', '2013-01-29 15:02:19', '', 18, 'http://localhost/~francois/festival/?p=204', 0, 'revision', '', 0),
(206, 1, '2013-01-29 16:04:13', '2013-01-29 15:04:13', '', 'gaglLogo', '', 'inherit', 'open', 'open', '', 'gagllogo', '', '', '2013-01-29 16:04:13', '2013-01-29 15:04:13', '', 18, 'http://localhost/~francois/festival/wp-content/uploads/2013/01/gaglLogo.jpg', 0, 'attachment', 'image/jpeg', 0),
(207, 1, '2013-01-29 16:03:08', '2013-01-29 15:03:08', '<img class=" wp-image-195 alignleft" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-264x300.jpg" width="100" height="114" />\r\n\r\n<img class="size-medium wp-image-198 alignleft" alt="Orléans" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/orleans-283x300.jpg" width="94" height="100" /><img class="alignnone size-full wp-image-202" alt="Cinéma les carmes" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/logo_lescarmes.gif" width="122" height="96" />\r\nGAGL\r\nTêtu\r\nLa dixième MUSE\r\nCiteGay\r\nYagg.com\r\nFrance Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-17', '', '', '2013-01-29 16:03:08', '2013-01-29 15:03:08', '', 18, 'http://localhost/~francois/festival/?p=207', 0, 'revision', '', 0),
(208, 1, '2013-01-29 16:08:59', '2013-01-29 15:08:59', '', 'LOGO_TETU', '', 'inherit', 'open', 'open', '', 'logo_tetu', '', '', '2013-01-29 16:08:59', '2013-01-29 15:08:59', '', 18, 'http://localhost/~francois/festival/wp-content/uploads/2013/01/LOGO_TETU.jpg', 0, 'attachment', 'image/jpeg', 0),
(209, 1, '2013-01-29 16:04:46', '2013-01-29 15:04:46', '<img class="alignnone size-full wp-image-206" alt="GAGL" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/gaglLogo.jpg" width="124" height="124" /><img class=" wp-image-195 alignleft" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-264x300.jpg" width="100" height="114" />\r\n\r\n<img class="size-medium wp-image-198 alignleft" alt="Orléans" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/orleans-283x300.jpg" width="94" height="100" /><img class="alignnone size-full wp-image-202" alt="Cinéma les carmes" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/logo_lescarmes.gif" width="122" height="96" />\r\n\r\nTêtu\r\nLa dixième MUSE\r\nCiteGay\r\nYagg.com\r\nFrance Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-18', '', '', '2013-01-29 16:04:46', '2013-01-29 15:04:46', '', 18, 'http://localhost/~francois/festival/?p=209', 0, 'revision', '', 0),
(210, 1, '2013-01-29 16:09:26', '2013-01-29 15:09:26', '<img class="alignnone size-full wp-image-206" title="GAGL" alt="GAGL" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/gaglLogo.jpg" width="124" height="124" /><img class=" wp-image-195 alignleft" title="Région centre" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-264x300.jpg" width="100" height="114" />\r\n\r\n<img class="size-medium wp-image-198 alignleft" title="Orléans" alt="Orléans" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/orleans-283x300.jpg" width="94" height="100" /><a href="http://localhost/~francois/festival/?attachment_id=208" rel="attachment wp-att-208"><img class="alignnone size-full wp-image-208" title="Têtu" alt="LOGO_TETU" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/LOGO_TETU.jpg" width="192" height="73" /></a>\r\n\r\nTêtu\r\nLa dixième MUSE\r\nCiteGay\r\nYagg.com\r\nFrance Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-19', '', '', '2013-01-29 16:09:26', '2013-01-29 15:09:26', '', 18, 'http://localhost/~francois/festival/?p=210', 0, 'revision', '', 0),
(211, 1, '2013-01-29 16:27:09', '2013-01-29 15:27:09', '', 'muse', '', 'inherit', 'open', 'open', '', 'muse', '', '', '2013-01-29 16:27:09', '2013-01-29 15:27:09', '', 18, 'http://localhost/~francois/festival/wp-content/uploads/2013/01/muse.jpg', 0, 'attachment', 'image/jpeg', 0),
(212, 1, '2013-01-29 16:10:08', '2013-01-29 15:10:08', 'Voici la liste de nos partenaires :\r\n\r\n<img class="alignnone size-full wp-image-206" title="GAGL" alt="GAGL" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/gaglLogo.jpg" width="124" height="124" /><img class=" wp-image-195 alignleft" title="Région centre" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-264x300.jpg" width="100" height="114" />\r\n\r\n<img class="size-medium wp-image-198 alignleft" title="Orléans" alt="Orléans" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/orleans-283x300.jpg" width="94" height="100" /><a href="http://localhost/~francois/festival/?attachment_id=208" rel="attachment wp-att-208"><img class="alignnone size-full wp-image-208" title="Têtu" alt="LOGO_TETU" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/LOGO_TETU.jpg" width="192" height="73" /></a>\r\nLa dixième MUSE\r\nCiteGay\r\nYagg.com\r\nFrance Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-20', '', '', '2013-01-29 16:10:08', '2013-01-29 15:10:08', '', 18, 'http://localhost/~francois/festival/?p=212', 0, 'revision', '', 0),
(213, 1, '2013-01-29 16:29:20', '2013-01-29 15:29:20', '', 'logoIndex', '', 'inherit', 'open', 'open', '', 'logoindex', '', '', '2013-01-29 16:29:20', '2013-01-29 15:29:20', '', 18, 'http://localhost/~francois/festival/wp-content/uploads/2013/01/logoIndex.jpg', 0, 'attachment', 'image/jpeg', 0),
(214, 1, '2013-01-29 16:27:48', '2013-01-29 15:27:48', 'Voici la liste de nos partenaires :\r\n\r\n<img class="alignnone size-full wp-image-206" title="GAGL" alt="GAGL" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/gaglLogo.jpg" width="124" height="124" /><img class="alignnone size-full wp-image-211" title="Muse" alt="muse" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/muse.jpg" width="188" height="86" /><img class=" wp-image-195 alignleft" title="Région centre" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-264x300.jpg" width="100" height="114" />\r\n\r\n<img class="size-medium wp-image-198 alignleft" title="Orléans" alt="Orléans" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/orleans-283x300.jpg" width="94" height="100" /><a href="http://localhost/~francois/festival/?attachment_id=208" rel="attachment wp-att-208"><img class="alignnone size-full wp-image-208" title="Têtu" alt="LOGO_TETU" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/LOGO_TETU.jpg" width="192" height="73" /></a>\r\nLa dixième MUSE\r\nCiteGay\r\nYagg.com\r\nFrance Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-21', '', '', '2013-01-29 16:27:48', '2013-01-29 15:27:48', '', 18, 'http://localhost/~francois/festival/?p=214', 0, 'revision', '', 0),
(215, 1, '2013-01-29 16:30:22', '2013-01-29 15:30:22', '', 'logoYagg', '', 'inherit', 'open', 'open', '', 'logoyagg', '', '', '2013-01-29 16:30:22', '2013-01-29 15:30:22', '', 18, 'http://localhost/~francois/festival/wp-content/uploads/2013/01/logoYagg.jpg', 0, 'attachment', 'image/jpeg', 0),
(216, 1, '2013-01-29 16:29:34', '2013-01-29 15:29:34', 'Voici la liste de nos partenaires :\r\n\r\n<img class="alignnone size-full wp-image-206" title="GAGL" alt="GAGL" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/gaglLogo.jpg" width="124" height="124" /><img class="alignnone size-full wp-image-211" title="Muse" alt="muse" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/muse.jpg" width="188" height="86" /><img class=" wp-image-195 alignleft" title="Région centre" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-264x300.jpg" width="100" height="114" />\r\n\r\n<img class="size-medium wp-image-198 alignleft" title="Orléans" alt="Orléans" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/orleans-283x300.jpg" width="94" height="100" /><a href="http://localhost/~francois/festival/?attachment_id=208" rel="attachment wp-att-208"><img class="alignnone size-full wp-image-208" title="Têtu" alt="LOGO_TETU" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/LOGO_TETU.jpg" width="192" height="73" /></a><img class="alignnone size-full wp-image-213" alt="logoIndex" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/logoIndex.jpg" width="138" height="85" />\r\n\r\n\r\nYagg.com\r\nFrance Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-22', '', '', '2013-01-29 16:29:34', '2013-01-29 15:29:34', '', 18, 'http://localhost/~francois/festival/?p=216', 0, 'revision', '', 0),
(217, 1, '2013-01-29 16:33:20', '2013-01-29 15:33:20', '', 'Logo_France_Bleu', '', 'inherit', 'open', 'open', '', 'logo_france_bleu', '', '', '2013-01-29 16:33:20', '2013-01-29 15:33:20', '', 18, 'http://localhost/~francois/festival/wp-content/uploads/2013/01/Logo_France_Bleu.png', 0, 'attachment', 'image/png', 0),
(218, 1, '2013-01-29 16:32:27', '2013-01-29 15:32:27', 'Voici la liste de nos partenaires :\r\n\r\n<img class="alignnone size-full wp-image-206" title="GAGL" alt="GAGL" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/gaglLogo.jpg" width="124" height="124" /><img class="alignnone size-full wp-image-211" title="Muse" alt="muse" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/muse.jpg" width="188" height="86" /><img class=" wp-image-195 alignleft" title="Région centre" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-264x300.jpg" width="100" height="114" />\r\n\r\n<img class="size-medium wp-image-198 alignleft" title="Orléans" alt="Orléans" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/orleans-283x300.jpg" width="94" height="100" /><a href="http://localhost/~francois/festival/?attachment_id=208" rel="attachment wp-att-208"><img class="alignnone size-full wp-image-208" title="Têtu" alt="LOGO_TETU" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/LOGO_TETU.jpg" width="192" height="73" /></a><img class="alignnone size-full wp-image-213" alt="logoIndex" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/logoIndex.jpg" width="138" height="85" />\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone size-full wp-image-215" alt="logoYagg" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/logoYagg.jpg" width="118" height="27" />\r\nFrance Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-23', '', '', '2013-01-29 16:32:27', '2013-01-29 15:32:27', '', 18, 'http://localhost/~francois/festival/?p=218', 0, 'revision', '', 0),
(219, 1, '2013-01-29 16:33:55', '2013-01-29 15:33:55', 'Voici la liste de nos partenaires :\r\n\r\n<img class="alignnone size-full wp-image-206" title="GAGL" alt="GAGL" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/gaglLogo.jpg" width="124" height="124" /><img class="alignnone size-full wp-image-211" title="Muse" alt="muse" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/muse.jpg" width="188" height="86" /><img class=" wp-image-195 alignleft" title="Région centre" alt="RC" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/RC-264x300.jpg" width="100" height="114" />\r\n\r\n<img class="size-medium wp-image-198 alignleft" title="Orléans" alt="Orléans" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/orleans-283x300.jpg" width="94" height="100" /><a href="http://localhost/~francois/festival/?attachment_id=208" rel="attachment wp-att-208"><img class="alignnone size-full wp-image-208" title="Têtu" alt="LOGO_TETU" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/LOGO_TETU.jpg" width="192" height="73" /></a><img class="alignnone size-full wp-image-213" alt="logoIndex" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/logoIndex.jpg" width="138" height="85" />\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone size-full wp-image-215" alt="logoYagg" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/logoYagg.jpg" width="118" height="27" />  <img class="alignnone size-full wp-image-217" alt="Logo_France_Bleu" src="http://localhost/~francois/festival/wp-content/uploads/2013/01/Logo_France_Bleu.png" width="85" height="85" />', 'Partenaires', '', 'inherit', 'open', 'open', '', '18-revision-24', '', '', '2013-01-29 16:33:55', '2013-01-29 15:33:55', '', 18, 'http://localhost/~francois/festival/?p=219', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_superb_albums`
--

CREATE TABLE IF NOT EXISTS `wp_festival_superb_albums` (
  `album_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `order` bigint(20) DEFAULT '0',
  `creation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `wp_festival_superb_albums`
--

INSERT INTO `wp_festival_superb_albums` (`album_id`, `name`, `description`, `image`, `thumb`, `status`, `order`, `creation_date`) VALUES
(2, 'It’s elementary, talking about gays issues in school', '', '37_it_s_still_elementary.jpg', '37_it_s_still_elementary-resized.jpg', 1, 0, NULL),
(3, 'ANDER', '', '', '', 1, 0, NULL),
(4, 'EL NIÑO PEZ', '', '', '', 1, 0, NULL),
(5, 'CAN’T THINK STRAIGHT', '', '', '', 1, 0, NULL),
(6, 'En colo', '', '', '', 1, 0, NULL),
(7, 'Pauline', '', '', '', 1, 0, NULL),
(8, 'Omar', '', '', '', 1, 0, NULL),
(9, 'Odile', '', '', '', 1, 0, NULL),
(10, 'Os sapatos de Aristeu', '', '', '', 1, 0, NULL),
(11, 'Cowboy Forever', '', '', '', 1, 0, NULL),
(12, 'American boy', '', '', '', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_superb_images`
--

CREATE TABLE IF NOT EXISTS `wp_festival_superb_images` (
  `image_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `order` bigint(20) DEFAULT '0',
  `link` text,
  `creation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `wp_festival_superb_images`
--

INSERT INTO `wp_festival_superb_images` (`image_id`, `category_id`, `title`, `description`, `price`, `thumb`, `image`, `status`, `order`, `link`, `creation_date`) VALUES
(1, 2, 'It\\''s elementary', '', 0.00, '37_it_s_still_elementary1-resized.jpg', '37_it_s_still_elementary1.jpg', 1, 0, '', NULL),
(2, 3, 'ANDER', '', 0.00, 'ANDER1-resized.jpg', 'ANDER1.jpg', 1, 0, '', NULL),
(3, 3, 'Ander', '', 0.00, 'ANDER2-resized.jpg', 'ANDER2.jpg', 1, 0, '', NULL),
(4, 4, 'EL NINO PEZ', '', 0.00, 'EL-NINO-PEZ-1-resized.jpg', 'EL-NINO-PEZ-1.jpg', 1, 0, '', NULL),
(5, 4, 'EL NINO PEZ', '', 0.00, 'EL-NINO-PEZ-2-resized.jpg', 'EL-NINO-PEZ-2.jpg', 1, 0, '', NULL),
(6, 5, 'I cant think straight', '', 0.00, 'I_cant_think_straight_001-resized.jpg', 'I_cant_think_straight_001.jpg', 1, 0, '', NULL),
(7, 5, 'I cant think straight', '', 0.00, 'I-cant-think-straight-2-resized.jpg', 'I-cant-think-straight-2.jpg', 1, 0, '', NULL),
(8, 6, 'En Colo', '', 0.00, 'EN_COLO-resized.jpg', 'EN_COLO.jpg', 1, 0, '', NULL),
(10, 7, 'Pauline', '', 0.00, 'PAULINE_1-resized.jpg', 'PAULINE_1.jpg', 1, 0, '', NULL),
(11, 8, 'OMAR_', '', 0.00, 'OMAR_-resized.jpg', 'OMAR_.jpg', 1, 0, NULL, NULL),
(12, 9, 'Odile ', '', 0.00, 'Odile-resized.jpg', 'Odile-.jpg', 1, 0, NULL, NULL),
(13, 10, 'Os sapatos de Aristeu', '', 0.00, 'Os-sapatos-de-Aristeu-resized.jpg', 'Os-sapatos-de-Aristeu.jpg', 1, 0, NULL, NULL),
(14, 11, 'Cowboy Forever', '', 0.00, 'COWBOY-FOREVER-resized.jpg', 'COWBOY-FOREVER.jpg', 1, 0, '', NULL),
(15, 12, 'American boy', '', 0.00, 'American-boy-resized.jpg', 'American-boy.jpg', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_superb_misc`
--

CREATE TABLE IF NOT EXISTS `wp_festival_superb_misc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ione` int(11) DEFAULT NULL,
  `itwo` int(11) DEFAULT NULL,
  `ithree` int(11) DEFAULT NULL,
  `txt` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_superb_misc`
--

INSERT INTO `wp_festival_superb_misc` (`id`, `ione`, `itwo`, `ithree`, `txt`) VALUES
(1, 1, 1, 1, 'ebb3d7a0a6567b02490aa325dc1bfb91');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_terms`
--

CREATE TABLE IF NOT EXISTS `wp_festival_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `wp_festival_terms`
--

INSERT INTO `wp_festival_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'films', 'films', 0),
(3, 'courts-métrages', 'courts-metrages', 0),
(4, 'Informations pratiques', 'informations-pratiques', 0),
(7, 'vide', 'vide', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_festival_term_relationships`
--

INSERT INTO `wp_festival_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 1, 0),
(11, 1, 0),
(18, 1, 0),
(21, 1, 0),
(24, 1, 0),
(50, 4, 0),
(51, 4, 0),
(57, 4, 0),
(58, 4, 0),
(59, 4, 0),
(62, 4, 0),
(73, 4, 0),
(113, 2, 0),
(117, 2, 0),
(121, 2, 0),
(126, 2, 0),
(153, 3, 0),
(159, 3, 0),
(163, 3, 0),
(167, 3, 0),
(172, 3, 0),
(179, 3, 0),
(183, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `wp_festival_term_taxonomy`
--

INSERT INTO `wp_festival_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 4),
(3, 3, 'category', '', 0, 7),
(4, 4, 'nav_menu', '', 0, 7),
(7, 7, 'nav_menu', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Contenu de la table `wp_festival_usermeta`
--

INSERT INTO `wp_festival_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_festival_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_festival_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_festival_dashboard_quick_press_last_post_id', '95'),
(15, 1, 'managenav-menuscolumnshidden', 'a:2:{i:0;s:3:"xfn";i:1;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:15:"add-post_format";}'),
(17, 1, 'wp_festival_user-settings', 'editor=tinymce&hidetb=1&wplink=1&libraryContent=browse&align=none&imgsize=full&urlbutton=post'),
(18, 1, 'wp_festival_user-settings-time', '1359471721'),
(19, 1, 'nav_menu_recently_edited', '4'),
(20, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(21, 1, 'manageedit-eventcolumnshidden', 'a:1:{i:0;s:8:"event-id";}'),
(22, 1, 'manageedit-locationcolumnshidden', 'a:1:{i:0;s:11:"location-id";}'),
(23, 1, 'aim', ''),
(24, 1, 'yim', ''),
(25, 1, 'jabber', ''),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";i:6;s:12:"revisionsdiv";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_users`
--

CREATE TABLE IF NOT EXISTS `wp_festival_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_users`
--

INSERT INTO `wp_festival_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BTbiepVLgQpgkIvAgel8CcoiJ1iITo0', 'admin', 'francois.ben01@gmail.com', '', '2013-01-08 15:45:46', 'h5KyOtqTfwNhaWHjiJ9x', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=194 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~francois/festival', 'yes'),
(2, 'blogname', 'Festival LGBT', 'yes'),
(3, 'blogdescription', 'Festival de films gays et lesbiens', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'francois.ben01@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'home', 'http://localhost/~francois/festival', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:3:{i:0;s:81:"/mnt/home/francois/public_html/festival/wp-content/themes/twentytwelve/header.php";i:1;s:80:"/mnt/home/francois/public_html/festival/wp-content/themes/twentytwelve/style.css";i:2;s:0:"";}', 'no'),
(44, 'template', 'twentytwelve', 'yes'),
(45, 'stylesheet', 'twentytwelve', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '0', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'posts', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '0', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1358352071;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1358352191;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1358352275;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.5";s:12:"last_checked";i:1358326336;}', 'yes'),
(102, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1358326365;}', 'yes'),
(105, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1358326396;}', 'yes'),
(106, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:35:"http://localhost/~francois/festival";s:4:"link";s:111:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~francois/festival/";s:3:"url";s:144:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~francois/festival/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(108, 'can_compress_scripts', '0', 'yes'),
(125, 'category_children', 'a:0:{}', 'yes'),
(126, 'recently_activated', 'a:0:{}', 'yes'),
(131, '_transient_random_seed', '20153ce152ac80513e0a87acd1dba7fd', 'yes'),
(169, '_site_transient_timeout_wporg_theme_feature_list', '1358275476', 'yes'),
(170, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(171, 'theme_mods_twentytwelve', 'a:1:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}}', 'yes'),
(172, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:4;}}', 'yes'),
(173, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1358307726', 'no'),
(174, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(175, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1358307727', 'no'),
(176, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(177, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1358307727', 'no'),
(178, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(179, '_transient_timeout_plugin_slugs', '1358350938', 'no'),
(180, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(181, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1358307738', 'no'),
(182, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(192, '_site_transient_timeout_theme_roots', '1358328195', 'yes'),
(193, '_site_transient_theme_roots', 'a:3:{s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_wp_trash_meta_status', 'publish'),
(3, 1, '_wp_trash_meta_time', '1357661168'),
(4, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(5, 2, '_wp_trash_meta_status', 'publish'),
(6, 2, '_wp_trash_meta_time', '1357661211'),
(7, 9, '_edit_last', '1'),
(8, 9, '_edit_lock', '1357662234:1'),
(11, 14, '_edit_last', '1'),
(12, 14, '_edit_lock', '1357664153:1'),
(13, 14, '_wp_page_template', 'default'),
(14, 16, '_edit_last', '1'),
(15, 16, '_edit_lock', '1357664127:1'),
(16, 16, '_wp_page_template', 'default'),
(17, 19, '_menu_item_type', 'custom'),
(18, 19, '_menu_item_menu_item_parent', '0'),
(19, 19, '_menu_item_object_id', '19'),
(20, 19, '_menu_item_object', 'custom'),
(21, 19, '_menu_item_target', ''),
(22, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 19, '_menu_item_xfn', ''),
(24, 19, '_menu_item_url', 'http://localhost/~francois/festival/'),
(26, 20, '_menu_item_type', 'post_type'),
(27, 20, '_menu_item_menu_item_parent', '0'),
(28, 20, '_menu_item_object_id', '16'),
(29, 20, '_menu_item_object', 'page'),
(30, 20, '_menu_item_target', ''),
(31, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(32, 20, '_menu_item_xfn', ''),
(33, 20, '_menu_item_url', ''),
(35, 21, '_menu_item_type', 'post_type'),
(36, 21, '_menu_item_menu_item_parent', '0'),
(37, 21, '_menu_item_object_id', '14'),
(38, 21, '_menu_item_object', 'page'),
(39, 21, '_menu_item_target', ''),
(40, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(41, 21, '_menu_item_xfn', ''),
(42, 21, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2013-01-08 16:00:18', '2013-01-08 16:00:18', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2013-01-08 17:06:08', '2013-01-08 16:06:08', '', 0, 'http://localhost/~francois/festival/?p=1', 0, 'post', '', 1),
(2, 1, '2013-01-08 16:00:18', '2013-01-08 16:00:18', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~francois/festival/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'trash', 'open', 'open', '', 'page-d-exemple', '', '', '2013-01-08 17:06:51', '2013-01-08 16:06:51', '', 0, 'http://localhost/~francois/festival/?page_id=2', 0, 'page', '', 0),
(6, 1, '2013-01-08 16:00:18', '2013-01-08 16:00:18', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'open', 'open', '', '1-revision', '', '', '2013-01-08 16:00:18', '2013-01-08 16:00:18', '', 1, 'http://localhost/~francois/festival/?p=6', 0, 'revision', '', 0),
(7, 1, '2013-01-08 16:00:18', '2013-01-08 16:00:18', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~francois/festival/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2013-01-08 16:00:18', '2013-01-08 16:00:18', '', 2, 'http://localhost/~francois/festival/?p=7', 0, 'revision', '', 0),
(9, 1, '2013-01-08 17:22:34', '2013-01-08 16:22:34', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une\r\nannée sabbatique, le Festival de films gays &amp; lesbiens revient sous\r\nune nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret,\r\nl’association culturelle Ciné Mundi axée sur le cinéma indépendant,\r\nlance en 2010 le festival de films LGBT D’un bord à l’autre sur un\r\nweek-end de trois jours, format similaire aux éditions précédentes.\r\nCette année, l’événement aura pour thème la sensibilisation des\r\njeunes à la lutte contre les discriminations liées à l’orientation\r\nsexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma\r\nLes Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été\r\nréalisés dans le cadre de Jeune et homo sous le regard des autres,\r\nconcours organisé en 2009 par le Ministère de la Santé et l’INPES\r\ncontre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays\r\nissues in school (C’est élémentaire - Parler de l’homosexualité à l’école),\r\ndocumentaire de Debra Chasnoff, qui déchaîna les mêmes\r\npassions que le film d’animation Le baiser de la lune en France\r\nen 2010. La projection sera suivie d’un débat avec l’association\r\nG.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un\r\nlong métrage espagnol mettant en scène une histoire d’amour entre\r\nun paysan basque et un immigré péruvien, El niño pez, un surprenant\r\nroad-movie lesbien version argentine et I can’t think straight, une\r\nsavoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'publish', 'open', 'open', '', 'edito', '', '', '2013-01-08 17:23:57', '2013-01-08 16:23:57', '', 0, 'http://localhost/~francois/festival/?p=9', 0, 'post', '', 0),
(10, 1, '2013-01-08 17:16:18', '2013-01-08 16:16:18', '', 'Edito', '', 'inherit', 'open', 'open', '', '9-revision', '', '', '2013-01-08 17:16:18', '2013-01-08 16:16:18', '', 9, 'http://localhost/~francois/festival/?p=10', 0, 'revision', '', 0),
(11, 1, '2013-01-08 17:24:59', '2013-01-08 16:24:59', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une\nannée sabbatique, le Festival de films gays &amp; lesbiens revient sous\nune nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret,\nl’association culturelle Ciné Mundi axée sur le cinéma indépendant,\nlance en 2010 le festival de films LGBT D’un bord à l’autre sur un\nweek-end de trois jours, format similaire aux éditions précédentes.\nCette année, l’événement aura pour thème la sensibilisation des\njeunes à la lutte contre les discriminations liées à l’orientation\nsexuelle et au genre.\n\nAu programme de ce rendez-vous : 5 séances inédites au cinéma\nLes Carmes à Orléans.\n\nEn ouverture : une sélection de courts métrages dont trois ont été\nréalisés dans le cadre de Jeune et homo sous le regard des autres,\nconcours organisé en 2009 par le Ministère de la Santé et l’INPES\ncontre l’homophobie.\n\nAutre temps fort de ce week-end : It’s elementary, talking about gays\nissues in school (C’est élémentaire - Parler de l’homosexualité à l’école),\ndocumentaire de Debra Chasnoff, qui déchaîna les mêmes\npassions que le film d’animation Le baiser de la lune en France\nen 2010. La projection sera suivie d’un débat avec l’association\nG.A.G.L 45, sur les Interventions en Milieu Scolaire.\n\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un\nlong métrage espagnol mettant en scène une histoire d’amour entre\nun paysan basque et un immigré péruvien, El niño pez, un surprenant\nroad-movie lesbien version argentine et I can’t think straight, une\nsavoureuse comédie britannique qui clôturera cette édition.\n\nBon festival !\n\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '9-autosave', '', '', '2013-01-08 17:24:59', '2013-01-08 16:24:59', '', 9, 'http://localhost/~francois/festival/?p=11', 0, 'revision', '', 0),
(12, 1, '2013-01-08 17:22:34', '2013-01-08 16:22:34', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une\r\n\r\nannée sabbatique, le Festival de films gays &amp; lesbiens revient sous\r\n\r\nune nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret,\r\n\r\nl’association culturelle Ciné Mundi axée sur le cinéma indépendant,\r\n\r\nlance en 2010 le festival de films LGBT D’un bord à l’autre sur un\r\n\r\nweek-end de trois jours, format similaire aux éditions précédentes.\r\n\r\nCette année, l’événement aura pour thème la sensibilisation des\r\n\r\njeunes à la lutte contre les discriminations liées à l’orientation\r\n\r\nsexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma\r\n\r\nLes Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été\r\n\r\nréalisés dans le cadre de Jeune et homo sous le regard des autres,\r\n\r\nconcours organisé en 2009 par le Ministère de la Santé et l’INPES\r\n\r\ncontre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays\r\n\r\nissues in school (C’est élémentaire - Parler de l’homosexualité à\r\n\r\nl’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes\r\n\r\npassions que le film d’animation Le baiser de la lune en France\r\n\r\nen 2010. La projection sera suivie d’un débat avec l’association\r\n\r\nG.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un\r\n\r\nlong métrage espagnol mettant en scène une histoire d’amour entre\r\n\r\nun paysan basque et un immigré péruvien, El niño pez, un surprenant\r\n\r\nroad-movie lesbien version argentine et I can’t think straight, une\r\n\r\nsavoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '9-revision-2', '', '', '2013-01-08 17:22:34', '2013-01-08 16:22:34', '', 9, 'http://localhost/~francois/festival/?p=12', 0, 'revision', '', 0),
(13, 1, '2013-01-08 17:54:08', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-08 17:54:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/~francois/festival/?page_id=13', 0, 'page', '', 0),
(14, 1, '2013-01-08 17:55:51', '2013-01-08 16:55:51', '', 'Films', '', 'publish', 'open', 'open', '', 'films', '', '', '2013-01-08 17:55:51', '2013-01-08 16:55:51', '', 0, 'http://localhost/~francois/festival/?page_id=14', 0, 'page', '', 0),
(15, 1, '2013-01-08 17:55:42', '2013-01-08 16:55:42', '', 'Films', '', 'inherit', 'open', 'open', '', '14-revision', '', '', '2013-01-08 17:55:42', '2013-01-08 16:55:42', '', 14, 'http://localhost/~francois/festival/?p=15', 0, 'revision', '', 0),
(16, 1, '2013-01-08 17:57:14', '2013-01-08 16:57:14', '', 'Courts métrages', '', 'publish', 'open', 'open', '', 'courts-metrages', '', '', '2013-01-08 17:57:14', '2013-01-08 16:57:14', '', 0, 'http://localhost/~francois/festival/?page_id=16', 0, 'page', '', 0),
(17, 1, '2013-01-08 17:57:00', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-08 17:57:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/~francois/festival/?page_id=17', 0, 'page', '', 0),
(18, 1, '2013-01-08 17:56:37', '2013-01-08 16:56:37', '', 'Courts métrages', '', 'inherit', 'open', 'open', '', '16-revision', '', '', '2013-01-08 17:56:37', '2013-01-08 16:56:37', '', 16, 'http://localhost/~francois/festival/?p=18', 0, 'revision', '', 0),
(19, 1, '2013-01-15 16:45:29', '2013-01-15 15:45:29', '', 'Edito', '', 'publish', 'open', 'open', '', 'edito', '', '', '2013-01-15 16:45:29', '2013-01-15 15:45:29', '', 0, 'http://localhost/~francois/festival/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2013-01-15 16:45:29', '2013-01-15 15:45:29', ' ', '', '', 'publish', 'open', 'open', '', '20', '', '', '2013-01-15 16:45:29', '2013-01-15 15:45:29', '', 0, 'http://localhost/~francois/festival/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2013-01-15 16:45:29', '2013-01-15 15:45:29', ' ', '', '', 'publish', 'open', 'open', '', '21', '', '', '2013-01-15 16:45:29', '2013-01-15 15:45:29', '', 0, 'http://localhost/~francois/festival/?p=21', 3, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Films', 'films', 0),
(3, 'Courts-métrages', 'cours-metrages', 0),
(4, 'menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 1, 0),
(19, 4, 0),
(20, 4, 0),
(21, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(17, 1, 'wp_user-settings', 'editor=tinymce'),
(18, 1, 'wp_user-settings-time', '1357662150'),
(19, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BXK4XPl/Dffw4gsHLuf4d3RBCrnZnA.', 'admin', 'francois.ben01@gmail.com', '', '2013-01-08 16:00:17', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
