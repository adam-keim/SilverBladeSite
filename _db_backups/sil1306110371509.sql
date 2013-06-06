-- MySQL dump 10.11
--
-- Host: 50.63.230.46    Database: sil1306110371509
-- ------------------------------------------------------
-- Server version	5.0.96-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `zen_address_book`
--

DROP TABLE IF EXISTS `zen_address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_address_book` (
  `address_book_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `entry_gender` char(1) NOT NULL default '',
  `entry_company` varchar(64) default NULL,
  `entry_firstname` varchar(32) NOT NULL default '',
  `entry_lastname` varchar(32) NOT NULL default '',
  `entry_street_address` varchar(64) NOT NULL default '',
  `entry_suburb` varchar(32) default NULL,
  `entry_postcode` varchar(10) NOT NULL default '',
  `entry_city` varchar(32) NOT NULL default '',
  `entry_state` varchar(32) default NULL,
  `entry_country_id` int(11) NOT NULL default '0',
  `entry_zone_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`address_book_id`),
  KEY `idx_address_book_customers_id_zen` (`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_address_book`
--

LOCK TABLES `zen_address_book` WRITE;
/*!40000 ALTER TABLE `zen_address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_address_format`
--

DROP TABLE IF EXISTS `zen_address_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_address_format` (
  `address_format_id` int(11) NOT NULL auto_increment,
  `address_format` varchar(128) NOT NULL default '',
  `address_summary` varchar(48) NOT NULL default '',
  PRIMARY KEY  (`address_format_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_address_format`
--

LOCK TABLES `zen_address_format` WRITE;
/*!40000 ALTER TABLE `zen_address_format` DISABLE KEYS */;
INSERT INTO `zen_address_format` VALUES (1,'$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country','$city / $country'),(2,'$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country','$city, $state / $country'),(3,'$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country','$state / $country'),(4,'$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country','$postcode / $country'),(5,'$firstname $lastname$cr$streets$cr$postcode $city$cr$country','$city / $country'),(6,'$firstname $lastname$cr$streets$cr$city$cr$state$cr$postcode$cr$country','$postcode / $country');
/*!40000 ALTER TABLE `zen_address_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_admin`
--

DROP TABLE IF EXISTS `zen_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_admin` (
  `admin_id` int(11) NOT NULL auto_increment,
  `admin_name` varchar(32) NOT NULL default '',
  `admin_email` varchar(96) NOT NULL default '',
  `admin_profile` int(11) NOT NULL default '0',
  `admin_pass` varchar(40) NOT NULL default '',
  `prev_pass1` varchar(40) NOT NULL default '',
  `prev_pass2` varchar(40) NOT NULL default '',
  `prev_pass3` varchar(40) NOT NULL default '',
  `pwd_last_change_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `reset_token` varchar(60) NOT NULL default '',
  `last_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_login_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_login_ip` varchar(45) NOT NULL default '',
  `failed_logins` smallint(4) unsigned NOT NULL default '0',
  `lockout_expires` int(11) NOT NULL default '0',
  `last_failed_attempt` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_failed_ip` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`admin_id`),
  KEY `idx_admin_name_zen` (`admin_name`),
  KEY `idx_admin_email_zen` (`admin_email`),
  KEY `idx_admin_profile_zen` (`admin_profile`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_admin`
--

LOCK TABLES `zen_admin` WRITE;
/*!40000 ALTER TABLE `zen_admin` DISABLE KEYS */;
INSERT INTO `zen_admin` VALUES (1,'aduscaeim','silverbladesite@gmail.com',1,'689f641a67417dde21eff92a20dae1cb:9a','','','','0000-00-00 00:00:00','1362505443}4bd2cfe2b0c5b7c7ffdfe203b75ebf1f:ab','2013-03-02 10:43:57','0000-00-00 00:00:00','',0,0,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `zen_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_admin_activity_log`
--

DROP TABLE IF EXISTS `zen_admin_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_admin_activity_log` (
  `log_id` bigint(15) NOT NULL auto_increment,
  `access_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `admin_id` int(11) NOT NULL default '0',
  `page_accessed` varchar(80) NOT NULL default '',
  `page_parameters` text,
  `ip_address` varchar(45) NOT NULL default '',
  `flagged` tinyint(4) NOT NULL default '0',
  `attention` varchar(255) NOT NULL default '',
  `gzpost` mediumblob,
  PRIMARY KEY  (`log_id`),
  KEY `idx_page_accessed_zen` (`page_accessed`),
  KEY `idx_access_date_zen` (`access_date`),
  KEY `idx_flagged_zen` (`flagged`),
  KEY `idx_ip_zen` (`ip_address`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_admin_activity_log`
--

LOCK TABLES `zen_admin_activity_log` WRITE;
/*!40000 ALTER TABLE `zen_admin_activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_admin_activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_admin_menus`
--

DROP TABLE IF EXISTS `zen_admin_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_admin_menus` (
  `menu_key` varchar(32) NOT NULL default '',
  `language_key` varchar(255) NOT NULL default '',
  `sort_order` int(11) NOT NULL default '0',
  UNIQUE KEY `menu_key` (`menu_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_admin_menus`
--

LOCK TABLES `zen_admin_menus` WRITE;
/*!40000 ALTER TABLE `zen_admin_menus` DISABLE KEYS */;
INSERT INTO `zen_admin_menus` VALUES ('configuration','BOX_HEADING_CONFIGURATION',1),('catalog','BOX_HEADING_CATALOG',2),('modules','BOX_HEADING_MODULES',3),('customers','BOX_HEADING_CUSTOMERS',4),('taxes','BOX_HEADING_LOCATION_AND_TAXES',5),('localization','BOX_HEADING_LOCALIZATION',6),('reports','BOX_HEADING_REPORTS',7),('tools','BOX_HEADING_TOOLS',8),('gv','BOX_HEADING_GV_ADMIN',9),('access','BOX_HEADING_ADMIN_ACCESS',10),('extras','BOX_HEADING_EXTRAS',11);
/*!40000 ALTER TABLE `zen_admin_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_admin_pages`
--

DROP TABLE IF EXISTS `zen_admin_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_admin_pages` (
  `page_key` varchar(32) NOT NULL default '',
  `language_key` varchar(255) NOT NULL default '',
  `main_page` varchar(64) NOT NULL default '',
  `page_params` varchar(64) NOT NULL default '',
  `menu_key` varchar(32) NOT NULL default '',
  `display_on_menu` char(1) NOT NULL default 'N',
  `sort_order` int(11) NOT NULL default '0',
  UNIQUE KEY `page_key` (`page_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_admin_pages`
--

LOCK TABLES `zen_admin_pages` WRITE;
/*!40000 ALTER TABLE `zen_admin_pages` DISABLE KEYS */;
INSERT INTO `zen_admin_pages` VALUES ('configMyStore','BOX_CONFIGURATION_MY_STORE','FILENAME_CONFIGURATION','gID=1','configuration','Y',1),('configMinimumValues','BOX_CONFIGURATION_MINIMUM_VALUES','FILENAME_CONFIGURATION','gID=2','configuration','Y',2),('configMaximumValues','BOX_CONFIGURATION_MAXIMUM_VALUES','FILENAME_CONFIGURATION','gID=3','configuration','Y',3),('configImages','BOX_CONFIGURATION_IMAGES','FILENAME_CONFIGURATION','gID=4','configuration','Y',4),('configCustomerDetails','BOX_CONFIGURATION_CUSTOMER_DETAILS','FILENAME_CONFIGURATION','gID=5','configuration','Y',5),('configShipping','BOX_CONFIGURATION_SHIPPING_PACKAGING','FILENAME_CONFIGURATION','gID=7','configuration','Y',6),('configProductListing','BOX_CONFIGURATION_PRODUCT_LISTING','FILENAME_CONFIGURATION','gID=8','configuration','Y',7),('configStock','BOX_CONFIGURATION_STOCK','FILENAME_CONFIGURATION','gID=9','configuration','Y',8),('configLogging','BOX_CONFIGURATION_LOGGING','FILENAME_CONFIGURATION','gID=10','configuration','Y',9),('configEmail','BOX_CONFIGURATION_EMAIL_OPTIONS','FILENAME_CONFIGURATION','gID=12','configuration','Y',10),('configAttributes','BOX_CONFIGURATION_ATTRIBUTE_OPTIONS','FILENAME_CONFIGURATION','gID=13','configuration','Y',11),('configGzipCompression','BOX_CONFIGURATION_GZIP_COMPRESSION','FILENAME_CONFIGURATION','gID=14','configuration','Y',12),('configSessions','BOX_CONFIGURATION_SESSIONS','FILENAME_CONFIGURATION','gID=15','configuration','Y',13),('configRegulations','BOX_CONFIGURATION_REGULATIONS','FILENAME_CONFIGURATION','gID=11','configuration','Y',14),('configGvCoupons','BOX_CONFIGURATION_GV_COUPONS','FILENAME_CONFIGURATION','gID=16','configuration','Y',15),('configCreditCards','BOX_CONFIGURATION_CREDIT_CARDS','FILENAME_CONFIGURATION','gID=17','configuration','Y',16),('configProductInfo','BOX_CONFIGURATION_PRODUCT_INFO','FILENAME_CONFIGURATION','gID=18','configuration','Y',17),('configLayoutSettings','BOX_CONFIGURATION_LAYOUT_SETTINGS','FILENAME_CONFIGURATION','gID=19','configuration','Y',18),('configWebsiteMaintenance','BOX_CONFIGURATION_WEBSITE_MAINTENANCE','FILENAME_CONFIGURATION','gID=20','configuration','Y',19),('configNewListing','BOX_CONFIGURATION_NEW_LISTING','FILENAME_CONFIGURATION','gID=21','configuration','Y',20),('configFeaturedListing','BOX_CONFIGURATION_FEATURED_LISTING','FILENAME_CONFIGURATION','gID=22','configuration','Y',21),('configAllListing','BOX_CONFIGURATION_ALL_LISTING','FILENAME_CONFIGURATION','gID=23','configuration','Y',22),('configIndexListing','BOX_CONFIGURATION_INDEX_LISTING','FILENAME_CONFIGURATION','gID=24','configuration','Y',23),('configDefinePageStatus','BOX_CONFIGURATION_DEFINE_PAGE_STATUS','FILENAME_CONFIGURATION','gID=25','configuration','Y',24),('configEzPagesSettings','BOX_CONFIGURATION_EZPAGES_SETTINGS','FILENAME_CONFIGURATION','gID=30','configuration','Y',25),('categories','BOX_CATALOG_CATEGORIES_PRODUCTS','FILENAME_CATEGORIES','','catalog','Y',1),('productTypes','BOX_CATALOG_PRODUCT_TYPES','FILENAME_PRODUCT_TYPES','','catalog','Y',2),('priceManager','BOX_CATALOG_PRODUCTS_PRICE_MANAGER','FILENAME_PRODUCTS_PRICE_MANAGER','','catalog','Y',3),('optionNames','BOX_CATALOG_CATEGORIES_OPTIONS_NAME_MANAGER','FILENAME_OPTIONS_NAME_MANAGER','','catalog','Y',4),('optionValues','BOX_CATALOG_CATEGORIES_OPTIONS_VALUES_MANAGER','FILENAME_OPTIONS_VALUES_MANAGER','','catalog','Y',5),('attributes','BOX_CATALOG_CATEGORIES_ATTRIBUTES_CONTROLLER','FILENAME_ATTRIBUTES_CONTROLLER','','catalog','Y',6),('downloads','BOX_CATALOG_CATEGORIES_ATTRIBUTES_DOWNLOADS_MANAGER','FILENAME_DOWNLOADS_MANAGER','','catalog','Y',7),('optionNameSorter','BOX_CATALOG_PRODUCT_OPTIONS_NAME','FILENAME_PRODUCTS_OPTIONS_NAME','','catalog','Y',8),('optionValueSorter','BOX_CATALOG_PRODUCT_OPTIONS_VALUES','FILENAME_PRODUCTS_OPTIONS_VALUES','','catalog','Y',9),('manufacturers','BOX_CATALOG_MANUFACTURERS','FILENAME_MANUFACTURERS','','catalog','Y',10),('reviews','BOX_CATALOG_REVIEWS','FILENAME_REVIEWS','','catalog','Y',11),('specials','BOX_CATALOG_SPECIALS','FILENAME_SPECIALS','','catalog','Y',12),('featured','BOX_CATALOG_FEATURED','FILENAME_FEATURED','','catalog','Y',13),('salemaker','BOX_CATALOG_SALEMAKER','FILENAME_SALEMAKER','','catalog','Y',14),('productsExpected','BOX_CATALOG_PRODUCTS_EXPECTED','FILENAME_PRODUCTS_EXPECTED','','catalog','Y',15),('product','BOX_CATALOG_PRODUCT','FILENAME_PRODUCT','','catalog','N',16),('productsToCategories','BOX_CATALOG_PRODUCTS_TO_CATEGORIES','FILENAME_PRODUCTS_TO_CATEGORIES','','catalog','N',17),('payment','BOX_MODULES_PAYMENT','FILENAME_MODULES','set=payment','modules','Y',1),('shipping','BOX_MODULES_SHIPPING','FILENAME_MODULES','set=shipping','modules','Y',2),('orderTotal','BOX_MODULES_ORDER_TOTAL','FILENAME_MODULES','set=ordertotal','modules','Y',3),('customers','BOX_CUSTOMERS_CUSTOMERS','FILENAME_CUSTOMERS','','customers','Y',1),('orders','BOX_CUSTOMERS_ORDERS','FILENAME_ORDERS','','customers','Y',2),('groupPricing','BOX_CUSTOMERS_GROUP_PRICING','FILENAME_GROUP_PRICING','','customers','Y',3),('paypal','BOX_CUSTOMERS_PAYPAL','FILENAME_PAYPAL','','customers','Y',4),('invoice','BOX_CUSTOMERS_INVOICE','FILENAME_ORDERS_INVOICE','','customers','N',5),('packingslip','BOX_CUSTOMERS_PACKING_SLIP','FILENAME_ORDERS_PACKINGSLIP','','customers','N',6),('linkpointReview','BOX_CUSTOMERS_LINKPOINT_REVIEW','FILENAME_LINKPOINT_REVIEW','','customers','Y',7),('countries','BOX_TAXES_COUNTRIES','FILENAME_COUNTRIES','','taxes','Y',1),('zones','BOX_TAXES_ZONES','FILENAME_ZONES','','taxes','Y',2),('geoZones','BOX_TAXES_GEO_ZONES','FILENAME_GEO_ZONES','','taxes','Y',3),('taxClasses','BOX_TAXES_TAX_CLASSES','FILENAME_TAX_CLASSES','','taxes','Y',4),('taxRates','BOX_TAXES_TAX_RATES','FILENAME_TAX_RATES','','taxes','Y',5),('currencies','BOX_LOCALIZATION_CURRENCIES','FILENAME_CURRENCIES','','localization','Y',1),('languages','BOX_LOCALIZATION_LANGUAGES','FILENAME_LANGUAGES','','localization','Y',2),('ordersStatus','BOX_LOCALIZATION_ORDERS_STATUS','FILENAME_ORDERS_STATUS','','localization','Y',3),('reportCustomers','BOX_REPORTS_ORDERS_TOTAL','FILENAME_STATS_CUSTOMERS','','reports','Y',1),('reportReferrals','BOX_REPORTS_CUSTOMERS_REFERRALS','FILENAME_STATS_CUSTOMERS_REFERRALS','','reports','Y',2),('reportLowStock','BOX_REPORTS_PRODUCTS_LOWSTOCK','FILENAME_STATS_PRODUCTS_LOWSTOCK','','reports','Y',3),('reportProductsSold','BOX_REPORTS_PRODUCTS_PURCHASED','FILENAME_STATS_PRODUCTS_PURCHASED','','reports','Y',4),('reportProductsViewed','BOX_REPORTS_PRODUCTS_VIEWED','FILENAME_STATS_PRODUCTS_VIEWED','','reports','Y',5),('templateSelect','BOX_TOOLS_TEMPLATE_SELECT','FILENAME_TEMPLATE_SELECT','','tools','Y',1),('layoutController','BOX_TOOLS_LAYOUT_CONTROLLER','FILENAME_LAYOUT_CONTROLLER','','tools','Y',2),('banners','BOX_TOOLS_BANNER_MANAGER','FILENAME_BANNER_MANAGER','','tools','Y',3),('mail','BOX_TOOLS_MAIL','FILENAME_MAIL','','tools','Y',4),('newsletters','BOX_TOOLS_NEWSLETTER_MANAGER','FILENAME_NEWSLETTERS','','tools','Y',5),('server','BOX_TOOLS_SERVER_INFO','FILENAME_SERVER_INFO','','tools','Y',6),('whosOnline','BOX_TOOLS_WHOS_ONLINE','FILENAME_WHOS_ONLINE','','tools','Y',7),('storeManager','BOX_TOOLS_STORE_MANAGER','FILENAME_STORE_MANAGER','','tools','Y',9),('developersToolKit','BOX_TOOLS_DEVELOPERS_TOOL_KIT','FILENAME_DEVELOPERS_TOOL_KIT','','tools','Y',10),('ezpages','BOX_TOOLS_EZPAGES','FILENAME_EZPAGES_ADMIN','','tools','Y',11),('definePagesEditor','BOX_TOOLS_DEFINE_PAGES_EDITOR','FILENAME_DEFINE_PAGES_EDITOR','','tools','Y',12),('sqlPatch','BOX_TOOLS_SQLPATCH','FILENAME_SQLPATCH','','tools','Y',13),('couponAdmin','BOX_COUPON_ADMIN','FILENAME_COUPON_ADMIN','','gv','Y',1),('couponRestrict','BOX_COUPON_RESTRICT','FILENAME_COUPON_RESTRICT','','gv','N',1),('gvQueue','BOX_GV_ADMIN_QUEUE','FILENAME_GV_QUEUE','','gv','Y',2),('gvMail','BOX_GV_ADMIN_MAIL','FILENAME_GV_MAIL','','gv','Y',3),('gvSent','BOX_GV_ADMIN_SENT','FILENAME_GV_SENT','','gv','Y',4),('profiles','BOX_ADMIN_ACCESS_PROFILES','FILENAME_PROFILES','','access','Y',1),('users','BOX_ADMIN_ACCESS_USERS','FILENAME_USERS','','access','Y',2),('pageRegistration','BOX_ADMIN_ACCESS_PAGE_REGISTRATION','FILENAME_ADMIN_PAGE_REGISTRATION','','access','Y',3),('adminlogs','BOX_ADMIN_ACCESS_LOGS','FILENAME_ADMIN_ACTIVITY','','access','Y',4),('recordArtists','BOX_CATALOG_RECORD_ARTISTS','FILENAME_RECORD_ARTISTS','','extras','Y',1),('recordCompanies','BOX_CATALOG_RECORD_COMPANY','FILENAME_RECORD_COMPANY','','extras','Y',2),('musicGenre','BOX_CATALOG_MUSIC_GENRE','FILENAME_MUSIC_GENRE','','extras','Y',3),('mediaManager','BOX_CATALOG_MEDIA_MANAGER','FILENAME_MEDIA_MANAGER','','extras','Y',4),('mediaTypes','BOX_CATALOG_MEDIA_TYPES','FILENAME_MEDIA_TYPES','','extras','Y',5);
/*!40000 ALTER TABLE `zen_admin_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_admin_pages_to_profiles`
--

DROP TABLE IF EXISTS `zen_admin_pages_to_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_admin_pages_to_profiles` (
  `profile_id` int(11) NOT NULL default '0',
  `page_key` varchar(32) NOT NULL default '',
  UNIQUE KEY `profile_page` (`profile_id`,`page_key`),
  UNIQUE KEY `page_profile` (`page_key`,`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_admin_pages_to_profiles`
--

LOCK TABLES `zen_admin_pages_to_profiles` WRITE;
/*!40000 ALTER TABLE `zen_admin_pages_to_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_admin_pages_to_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_admin_profiles`
--

DROP TABLE IF EXISTS `zen_admin_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_admin_profiles` (
  `profile_id` int(11) NOT NULL auto_increment,
  `profile_name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`profile_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_admin_profiles`
--

LOCK TABLES `zen_admin_profiles` WRITE;
/*!40000 ALTER TABLE `zen_admin_profiles` DISABLE KEYS */;
INSERT INTO `zen_admin_profiles` VALUES (1,'Superuser');
/*!40000 ALTER TABLE `zen_admin_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_authorizenet`
--

DROP TABLE IF EXISTS `zen_authorizenet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_authorizenet` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL default '0',
  `order_id` int(11) NOT NULL default '0',
  `response_code` int(1) NOT NULL default '0',
  `response_text` varchar(255) NOT NULL default '',
  `authorization_type` varchar(50) NOT NULL default '',
  `transaction_id` bigint(20) default NULL,
  `sent` longtext NOT NULL,
  `received` longtext NOT NULL,
  `time` varchar(50) NOT NULL default '',
  `session_id` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_authorizenet`
--

LOCK TABLES `zen_authorizenet` WRITE;
/*!40000 ALTER TABLE `zen_authorizenet` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_authorizenet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_banners`
--

DROP TABLE IF EXISTS `zen_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_banners` (
  `banners_id` int(11) NOT NULL auto_increment,
  `banners_title` varchar(64) NOT NULL default '',
  `banners_url` varchar(255) NOT NULL default '',
  `banners_image` varchar(64) NOT NULL default '',
  `banners_group` varchar(15) NOT NULL default '',
  `banners_html_text` text,
  `expires_impressions` int(7) default '0',
  `expires_date` datetime default NULL,
  `date_scheduled` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `banners_open_new_windows` int(1) NOT NULL default '1',
  `banners_on_ssl` int(1) NOT NULL default '1',
  `banners_sort_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`banners_id`),
  KEY `idx_status_group_zen` (`status`,`banners_group`),
  KEY `idx_expires_date_zen` (`expires_date`),
  KEY `idx_date_scheduled_zen` (`date_scheduled`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_banners`
--

LOCK TABLES `zen_banners` WRITE;
/*!40000 ALTER TABLE `zen_banners` DISABLE KEYS */;
INSERT INTO `zen_banners` VALUES (1,'Zen Cart','http://www.zen-cart.com','banners/zencart_468_60_02.gif','Wide-Banners','',0,NULL,NULL,'2004-01-11 20:59:12',NULL,1,1,1,0),(2,'Zen Cart the art of e-commerce','http://www.zen-cart.com','banners/125zen_logo.gif','SideBox-Banners','',0,NULL,NULL,'2004-01-11 20:59:12',NULL,1,1,1,0),(3,'Zen Cart the art of e-commerce','http://www.zen-cart.com','banners/125x125_zen_logo.gif','SideBox-Banners','',0,NULL,NULL,'2004-01-11 20:59:12',NULL,1,1,1,0),(4,'if you have to think ... you haven\'t been Zenned!','http://www.zen-cart.com','banners/think_anim.gif','Wide-Banners','',0,NULL,NULL,'2004-01-12 20:53:18',NULL,1,1,1,0),(5,'Zen Cart the art of e-commerce','http://www.zen-cart.com','banners/bw_zen_88wide.gif','BannersAll','',0,NULL,NULL,'2005-05-13 10:54:38',NULL,1,1,1,10),(6,'Start Accepting Credit Cards For Your Business Today!','http://www.zen-cart.com/partners/payment','banners/cardsvcs_468x60.gif','Wide-Banners','',0,NULL,NULL,'2006-03-13 11:02:43',NULL,1,1,1,0),(7,'eStart Your Web Store with Zen Cart(R)','http://www.zen-cart.com/book','banners/big-book-ad.gif','Wide-Banners','',0,NULL,NULL,'2007-02-10 00:00:00',NULL,1,1,1,1),(8,'eStart Your Web Store with Zen Cart(R)','http://www.zen-cart.com/book','banners/tall-book.gif','SideBox-Banners','',0,NULL,NULL,'2007-02-10 00:00:00',NULL,1,1,1,1),(9,'eStart Your Web Store with Zen Cart(R)','http://www.zen-cart.com/book','banners/tall-book.gif','BannersAll','',0,NULL,NULL,'2007-02-10 00:00:00',NULL,1,1,1,15);
/*!40000 ALTER TABLE `zen_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_banners_history`
--

DROP TABLE IF EXISTS `zen_banners_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_banners_history` (
  `banners_history_id` int(11) NOT NULL auto_increment,
  `banners_id` int(11) NOT NULL default '0',
  `banners_shown` int(5) NOT NULL default '0',
  `banners_clicked` int(5) NOT NULL default '0',
  `banners_history_date` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`banners_history_id`),
  KEY `idx_banners_id_zen` (`banners_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_banners_history`
--

LOCK TABLES `zen_banners_history` WRITE;
/*!40000 ALTER TABLE `zen_banners_history` DISABLE KEYS */;
INSERT INTO `zen_banners_history` VALUES (1,8,5,0,'2013-03-02 10:44:53'),(2,5,4,0,'2013-03-02 10:44:54'),(3,9,4,0,'2013-03-02 10:44:54'),(4,8,5,0,'2013-03-02 10:44:54'),(5,1,2,0,'2013-03-02 10:44:54'),(6,6,2,0,'2013-03-02 10:45:03'),(7,3,1,0,'2013-03-02 10:45:15'),(8,3,1,0,'2013-03-02 10:45:15');
/*!40000 ALTER TABLE `zen_banners_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_categories`
--

DROP TABLE IF EXISTS `zen_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_categories` (
  `categories_id` int(11) NOT NULL auto_increment,
  `categories_image` varchar(64) default NULL,
  `parent_id` int(11) NOT NULL default '0',
  `sort_order` int(3) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  `categories_status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`categories_id`),
  KEY `idx_parent_id_cat_id_zen` (`parent_id`,`categories_id`),
  KEY `idx_status_zen` (`categories_status`),
  KEY `idx_sort_order_zen` (`sort_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_categories`
--

LOCK TABLES `zen_categories` WRITE;
/*!40000 ALTER TABLE `zen_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_categories_description`
--

DROP TABLE IF EXISTS `zen_categories_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_categories_description` (
  `categories_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `categories_name` varchar(32) NOT NULL default '',
  `categories_description` text NOT NULL,
  PRIMARY KEY  (`categories_id`,`language_id`),
  KEY `idx_categories_name_zen` (`categories_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_categories_description`
--

LOCK TABLES `zen_categories_description` WRITE;
/*!40000 ALTER TABLE `zen_categories_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_categories_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_configuration`
--

DROP TABLE IF EXISTS `zen_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_configuration` (
  `configuration_id` int(11) NOT NULL auto_increment,
  `configuration_title` text NOT NULL,
  `configuration_key` varchar(255) NOT NULL default '',
  `configuration_value` text NOT NULL,
  `configuration_description` text NOT NULL,
  `configuration_group_id` int(11) NOT NULL default '0',
  `sort_order` int(5) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `use_function` text,
  `set_function` text,
  PRIMARY KEY  (`configuration_id`),
  UNIQUE KEY `unq_config_key_zen` (`configuration_key`),
  KEY `idx_key_value_zen` (`configuration_key`,`configuration_value`(10)),
  KEY `idx_cfg_grp_id_zen` (`configuration_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=537 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_configuration`
--

LOCK TABLES `zen_configuration` WRITE;
/*!40000 ALTER TABLE `zen_configuration` DISABLE KEYS */;
INSERT INTO `zen_configuration` VALUES (1,'Store Name','STORE_NAME','Computers','The name of my store',1,1,NULL,'2013-03-02 10:43:57',NULL,NULL),(2,'Store Owner','STORE_OWNER','Adus Caeim','The name of my store owner',1,2,NULL,'2013-03-02 10:43:57',NULL,NULL),(3,'Telephone - Customer Service','STORE_TELEPHONE_CUSTSERVICE','','Enter a telephone number for customers to reach your Customer Service department. This number may be sent as part of payment transaction details.',1,3,NULL,'2013-03-02 10:43:57',NULL,NULL),(4,'Country','STORE_COUNTRY','223','The country my store is located in <br /><br /><strong>Note: Please remember to update the store zone.</strong>',1,6,NULL,'2013-03-02 10:43:57','zen_get_country_name','zen_cfg_pull_down_country_list('),(5,'Zone','STORE_ZONE','4','The zone my store is located in',1,7,NULL,'2013-03-02 10:43:57','zen_cfg_get_zone_name','zen_cfg_pull_down_zone_list('),(6,'Expected Sort Order','EXPECTED_PRODUCTS_SORT','desc','This is the sort order used in the expected products box.',1,8,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'asc\', \'desc\'), '),(7,'Expected Sort Field','EXPECTED_PRODUCTS_FIELD','date_expected','The column to sort by in the expected products box.',1,9,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'products_name\', \'date_expected\'), '),(8,'Switch To Default Language Currency','USE_DEFAULT_LANGUAGE_CURRENCY','false','Automatically switch to the language\'s currency when it is changed',1,10,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(9,'Language Selector','LANGUAGE_DEFAULT_SELECTOR','Default','Should the default language be based on the Store preferences, or the customer\'s browser settings?<br /><br />Default: Store\'s default settings',1,11,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'Default\', \'Browser\'), '),(10,'Use Search-Engine Safe URLs (still in development)','SEARCH_ENGINE_FRIENDLY_URLS','false','Use search-engine safe urls for all site links',6,12,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(11,'Display Cart After Adding Product','DISPLAY_CART','true','Display the shopping cart after adding a product (or return back to their origin)',1,14,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(12,'Default Search Operator','ADVANCED_SEARCH_DEFAULT_OPERATOR','and','Default search operators',1,17,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'and\', \'or\'), '),(13,'Store Address and Phone','STORE_NAME_ADDRESS','2451 N Seminary Chicago il 60614','This is the Store Name, Address and Phone used on printable documents and displayed online',1,7,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_textarea('),(14,'Show Category Counts','SHOW_COUNTS','true','Count recursively how many products are in each category',1,19,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(15,'Tax Decimal Places','TAX_DECIMAL_PLACES','0','Pad the tax value this amount of decimal places',1,20,NULL,'2013-03-02 10:43:57',NULL,NULL),(16,'Display Prices with Tax','DISPLAY_PRICE_WITH_TAX','false','Display prices with tax included (true) or add the tax at the end (false)',1,21,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(17,'Display Prices with Tax in Admin','DISPLAY_PRICE_WITH_TAX_ADMIN','false','Display prices with tax included (true) or add the tax at the end (false) in Admin(Invoices)',1,21,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(18,'Basis of Product Tax','STORE_PRODUCT_TAX_BASIS','Shipping','On what basis is Product Tax calculated. Options are<br />Shipping - Based on customers Shipping Address<br />Billing Based on customers Billing address<br />Store - Based on Store address if Billing/Shipping Zone equals Store zone',1,21,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'Shipping\', \'Billing\', \'Store\'), '),(19,'Basis of Shipping Tax','STORE_SHIPPING_TAX_BASIS','Shipping','On what basis is Shipping Tax calculated. Options are<br />Shipping - Based on customers Shipping Address<br />Billing Based on customers Billing address<br />Store - Based on Store address if Billing/Shipping Zone equals Store zone - Can be overriden by correctly written Shipping Module',1,21,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'Shipping\', \'Billing\', \'Store\'), '),(20,'Sales Tax Display Status','STORE_TAX_DISPLAY_STATUS','0','Always show Sales Tax even when amount is $0.00?<br />0= Off<br />1= On',1,21,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(21,'Show Split Tax Lines','SHOW_SPLIT_TAX_CHECKOUT','false','If multiple tax rates apply, show each rate as a separate line at checkout',1,22,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(22,'Admin Session Time Out in Seconds','SESSION_TIMEOUT_ADMIN','900','Enter the time in seconds.<br />Max allowed is 900 for PCI Compliance Reasons.<br /> Default=900<br />Example: 900= 15 min <br /><br />Note: Too few seconds can result in timeout issues when adding/editing products',1,40,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'900\', \'600\', \'300\'), '),(23,'Admin Set max_execution_time for processes','GLOBAL_SET_TIME_LIMIT','60','Enter the time in seconds for how long the max_execution_time of processes should be. Default=60<br />Example: 60= 1 minute<br /><br />Note: Changing the time limit is only needed if you are having problems with the execution time of a process',1,42,NULL,'2013-03-02 10:43:57',NULL,NULL),(24,'Show if version update available','SHOW_VERSION_UPDATE_IN_HEADER','false','Automatically check to see if a new version of Zen Cart is available. Enabling this can sometimes slow down the loading of Admin pages. (Displayed on main Index page after login, and Server Info page.)',1,44,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(25,'Store Status','STORE_STATUS','0','What is your Store Status<br />0= Normal Store<br />1= Showcase no prices<br />2= Showcase with prices',1,25,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(26,'Server Uptime','DISPLAY_SERVER_UPTIME','true','Displaying Server uptime can cause entries in error logs on some servers. (true = Display, false = don\'t display)',1,46,'2003-11-08 20:24:47','0001-01-01 00:00:00','','zen_cfg_select_option(array(\'true\', \'false\'),'),(27,'Missing Page Check','MISSING_PAGE_CHECK','Page Not Found','Zen Cart can check for missing pages in the URL and redirect to Index page. For debugging you may want to turn this off. <br /><br /><strong>Default=On</strong><br />On = Send missing pages to \'index\'<br />Off = Don\'t check for missing pages<br />Page Not Found = display the Page-Not-Found page',1,48,'2003-11-08 20:24:47','0001-01-01 00:00:00','','zen_cfg_select_option(array(\'On\', \'Off\', \'Page Not Found\'),'),(28,'cURL Proxy Status','CURL_PROXY_REQUIRED','False','Does your host require that you use a proxy for cURL communication?',6,50,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(29,'cURL Proxy Address','CURL_PROXY_SERVER_DETAILS','','If you have a hosting service that requires use of a proxy to talk to external sites via cURL, enter their proxy address here.<br />format: address:port<br />ie: 127.0.0.1:3128',6,51,NULL,'2013-03-02 10:43:57',NULL,NULL),(30,'HTML Editor','HTML_EDITOR_PREFERENCE','NONE','Please select the HTML/Rich-Text editor you wish to use for composing Admin-related emails, newsletters, and product descriptions',1,110,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_pull_down_htmleditors('),(31,'Enable phpBB linkage?','PHPBB_LINKS_ENABLED','false','Should Zen Cart synchronize new account information to your (already-installed) phpBB forum?',1,120,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(32,'Show Category Counts - Admin','SHOW_COUNTS_ADMIN','true','Show Category Counts in Admin?',1,19,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(33,'Currency Conversion Ratio','CURRENCY_UPLIFT_RATIO','1.05','When auto-updating currencies, what \"uplift\" ratio should be used to calculate the exchange rate used by your store?<br />ie: the bank rate is obtained from the currency-exchange servers; how much extra do you want to charge in order to make up the difference between the bank rate and the consumer rate?<br /><br /><strong>Default: 1.05 </strong><br />This will cause the published bank rate to be multiplied by 1.05 to set the currency rates in your store.',1,55,NULL,'2013-03-02 10:43:57',NULL,NULL),(34,'First Name','ENTRY_FIRST_NAME_MIN_LENGTH','2','Minimum length of first name',2,1,NULL,'2013-03-02 10:43:57',NULL,NULL),(35,'Last Name','ENTRY_LAST_NAME_MIN_LENGTH','2','Minimum length of last name',2,2,NULL,'2013-03-02 10:43:57',NULL,NULL),(36,'Date of Birth','ENTRY_DOB_MIN_LENGTH','10','Minimum length of date of birth',2,3,NULL,'2013-03-02 10:43:57',NULL,NULL),(37,'E-Mail Address','ENTRY_EMAIL_ADDRESS_MIN_LENGTH','6','Minimum length of e-mail address',2,4,NULL,'2013-03-02 10:43:57',NULL,NULL),(38,'Street Address','ENTRY_STREET_ADDRESS_MIN_LENGTH','5','Minimum length of street address',2,5,NULL,'2013-03-02 10:43:57',NULL,NULL),(39,'Company','ENTRY_COMPANY_MIN_LENGTH','0','Minimum length of company name',2,6,NULL,'2013-03-02 10:43:57',NULL,NULL),(40,'Post Code','ENTRY_POSTCODE_MIN_LENGTH','4','Minimum length of post code',2,7,NULL,'2013-03-02 10:43:57',NULL,NULL),(41,'City','ENTRY_CITY_MIN_LENGTH','2','Minimum length of city',2,8,NULL,'2013-03-02 10:43:57',NULL,NULL),(42,'State','ENTRY_STATE_MIN_LENGTH','2','Minimum length of state',2,9,NULL,'2013-03-02 10:43:57',NULL,NULL),(43,'Telephone Number','ENTRY_TELEPHONE_MIN_LENGTH','3','Minimum length of telephone number',2,10,NULL,'2013-03-02 10:43:57',NULL,NULL),(44,'Password','ENTRY_PASSWORD_MIN_LENGTH','7','Minimum length of password',2,11,NULL,'2013-03-02 10:43:57',NULL,NULL),(45,'Credit Card Owner Name','CC_OWNER_MIN_LENGTH','3','Minimum length of credit card owner name',2,12,NULL,'2013-03-02 10:43:57',NULL,NULL),(46,'Credit Card Number','CC_NUMBER_MIN_LENGTH','10','Minimum length of credit card number',2,13,NULL,'2013-03-02 10:43:57',NULL,NULL),(47,'Credit Card CVV Number','CC_CVV_MIN_LENGTH','3','Minimum length of credit card CVV number',2,13,NULL,'2013-03-02 10:43:57',NULL,NULL),(48,'Product Review Text','REVIEW_TEXT_MIN_LENGTH','50','Minimum length of product review text',2,14,NULL,'2013-03-02 10:43:57',NULL,NULL),(49,'Best Sellers','MIN_DISPLAY_BESTSELLERS','1','Minimum number of best sellers to display',2,15,NULL,'2013-03-02 10:43:57',NULL,NULL),(50,'Also Purchased Products','MIN_DISPLAY_ALSO_PURCHASED','1','Minimum number of products to display in the \'This Customer Also Purchased\' box',2,16,NULL,'2013-03-02 10:43:57',NULL,NULL),(51,'Nick Name','ENTRY_NICK_MIN_LENGTH','3','Minimum length of Nick Name',2,1,NULL,'2013-03-02 10:43:57',NULL,NULL),(52,'Address Book Entries','MAX_ADDRESS_BOOK_ENTRIES','5','Maximum address book entries a customer is allowed to have',3,1,NULL,'2013-03-02 10:43:57',NULL,NULL),(53,'Admin Search Results Per Page','MAX_DISPLAY_SEARCH_RESULTS','20','Number of products to list on an Admin search result page',3,2,NULL,'2013-03-02 10:43:57',NULL,NULL),(54,'Prev/Next Navigation Page Links','MAX_DISPLAY_PAGE_LINKS','5','Number of \'number\' links use for page-sets',3,3,NULL,'2013-03-02 10:43:57',NULL,NULL),(55,'Products on Special ','MAX_DISPLAY_SPECIAL_PRODUCTS','9','Number of products on special to display',3,4,NULL,'2013-03-02 10:43:57',NULL,NULL),(56,'New Products Module','MAX_DISPLAY_NEW_PRODUCTS','9','Number of new products to display in a category',3,5,NULL,'2013-03-02 10:43:57',NULL,NULL),(57,'Upcoming Products ','MAX_DISPLAY_UPCOMING_PRODUCTS','10','Number of \'upcoming\' products to display',3,6,NULL,'2013-03-02 10:43:57',NULL,NULL),(58,'Manufacturers List - Scroll Box Size/Style','MAX_MANUFACTURERS_LIST','3','Number of manufacturers names to be displayed in the scroll box window. Setting this to 1 or 0 will display a dropdown list.',3,7,NULL,'2013-03-02 10:43:57',NULL,NULL),(59,'Manufacturers List - Verify Product Exist','PRODUCTS_MANUFACTURERS_STATUS','1','Verify that at least 1 product exists and is active for the manufacturer name to show<br /><br />Note: When this feature is ON it can produce slower results on sites with a large number of products and/or manufacturers<br />0= off 1= on',3,7,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(60,'Music Genre List - Scroll Box Size/Style','MAX_MUSIC_GENRES_LIST','3','Number of music genre names to be displayed in the scroll box window. Setting this to 1 or 0 will display a dropdown list.',3,7,NULL,'2013-03-02 10:43:57',NULL,NULL),(61,'Record Company List - Scroll Box Size/Style','MAX_RECORD_COMPANY_LIST','3','Number of record company names to be displayed in the scroll box window. Setting this to 1 or 0 will display a dropdown list.',3,7,NULL,'2013-03-02 10:43:57',NULL,NULL),(62,'Length of Record Company Name','MAX_DISPLAY_RECORD_COMPANY_NAME_LEN','15','Used in record companies box; maximum length of record company name to display. Longer names will be truncated.',3,8,NULL,'2013-03-02 10:43:57',NULL,NULL),(63,'Length of Music Genre Name','MAX_DISPLAY_MUSIC_GENRES_NAME_LEN','15','Used in music genres box; maximum length of music genre name to display. Longer names will be truncated.',3,8,NULL,'2013-03-02 10:43:57',NULL,NULL),(64,'Length of Manufacturers Name','MAX_DISPLAY_MANUFACTURER_NAME_LEN','15','Used in manufacturers box; maximum length of manufacturers name to display. Longer names will be truncated.',3,8,NULL,'2013-03-02 10:43:57',NULL,NULL),(65,'New Product Reviews Per Page','MAX_DISPLAY_NEW_REVIEWS','6','Number of new reviews to display on each page',3,9,NULL,'2013-03-02 10:43:57',NULL,NULL),(66,'Random Product Reviews for SideBox','MAX_RANDOM_SELECT_REVIEWS','1','Number of random product REVIEWS to rotate in the sidebox<br />Enter the number of products to display in this sidebox at one time.<br /><br />How many products do you want to display in this sidebox?',3,10,NULL,'2013-03-02 10:43:57',NULL,NULL),(67,'Random New Products for SideBox','MAX_RANDOM_SELECT_NEW','3','Number of random NEW products to rotate in the sidebox<br />Enter the number of products to display in this sidebox at one time.<br /><br />How many products do you want to display in this sidebox?',3,11,NULL,'2013-03-02 10:43:57',NULL,NULL),(68,'Random Products On Special for SideBox','MAX_RANDOM_SELECT_SPECIALS','2','Number of random products on SPECIAL to rotate in the sidebox<br />Enter the number of products to display in this sidebox at one time.<br /><br />How many products do you want to display in this sidebox?',3,12,NULL,'2013-03-02 10:43:57',NULL,NULL),(69,'Categories To List Per Row','MAX_DISPLAY_CATEGORIES_PER_ROW','3','How many categories to list per row',3,13,NULL,'2013-03-02 10:43:57',NULL,NULL),(70,'New Products Listing- Number Per Page','MAX_DISPLAY_PRODUCTS_NEW','10','Number of new products listed per page',3,14,NULL,'2013-03-02 10:43:57',NULL,NULL),(71,'Best Sellers For Box','MAX_DISPLAY_BESTSELLERS','10','Number of best sellers to display in box',3,15,NULL,'2013-03-02 10:43:57',NULL,NULL),(72,'Also Purchased Products','MAX_DISPLAY_ALSO_PURCHASED','6','Number of products to display in the \'This Customer Also Purchased\' box',3,16,NULL,'2013-03-02 10:43:57',NULL,NULL),(73,'Recent Purchases Box- NOTE: box is disabled ','MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX','6','Number of products to display in the recent purchases box',3,17,NULL,'2013-03-02 10:43:57',NULL,NULL),(74,'Customer Order History List Per Page','MAX_DISPLAY_ORDER_HISTORY','10','Number of orders to display in the order history list in \'My Account\'',3,18,NULL,'2013-03-02 10:43:57',NULL,NULL),(75,'Maximum Display of Customers on Customers Page','MAX_DISPLAY_SEARCH_RESULTS_CUSTOMER','20','',3,19,NULL,'2013-03-02 10:43:57',NULL,NULL),(76,'Maximum Display of Orders on Orders Page','MAX_DISPLAY_SEARCH_RESULTS_ORDERS','20','',3,20,NULL,'2013-03-02 10:43:57',NULL,NULL),(77,'Maximum Display of Products on Reports','MAX_DISPLAY_SEARCH_RESULTS_REPORTS','20','',3,21,NULL,'2013-03-02 10:43:57',NULL,NULL),(78,'Maximum Categories Products Display List','MAX_DISPLAY_RESULTS_CATEGORIES','10','Number of products to list per screen',3,22,NULL,'2013-03-02 10:43:57',NULL,NULL),(79,'Products Listing- Number Per Page','MAX_DISPLAY_PRODUCTS_LISTING','10','Maximum Number of Products to list per page on main page',3,30,NULL,'2013-03-02 10:43:57',NULL,NULL),(80,'Products Attributes - Option Names and Values Display','MAX_ROW_LISTS_OPTIONS','10','Maximum number of option names and values to display in the products attributes page',3,24,NULL,'2013-03-02 10:43:57',NULL,NULL),(81,'Products Attributes - Attributes Controller Display','MAX_ROW_LISTS_ATTRIBUTES_CONTROLLER','30','Maximum number of attributes to display in the Attributes Controller page',3,25,NULL,'2013-03-02 10:43:57',NULL,NULL),(82,'Products Attributes - Downloads Manager Display','MAX_DISPLAY_SEARCH_RESULTS_DOWNLOADS_MANAGER','30','Maximum number of attributes downloads to display in the Downloads Manager page',3,26,NULL,'2013-03-02 10:43:57',NULL,NULL),(83,'Featured Products - Number to Display Admin','MAX_DISPLAY_SEARCH_RESULTS_FEATURED_ADMIN','10','Number of featured products to list per screen - Admin',3,27,NULL,'2013-03-02 10:43:57',NULL,NULL),(84,'Maximum Display of Featured Products - Main Page','MAX_DISPLAY_SEARCH_RESULTS_FEATURED','9','Number of featured products to list on main page',3,28,NULL,'2013-03-02 10:43:57',NULL,NULL),(85,'Maximum Display of Featured Products Page','MAX_DISPLAY_PRODUCTS_FEATURED_PRODUCTS','10','Number of featured products to list per screen',3,29,NULL,'2013-03-02 10:43:57',NULL,NULL),(86,'Random Featured Products for SideBox','MAX_RANDOM_SELECT_FEATURED_PRODUCTS','2','Number of random FEATURED products to rotate in the sidebox<br />Enter the number of products to display in this sidebox at one time.<br /><br />How many products do you want to display in this sidebox?',3,30,NULL,'2013-03-02 10:43:57',NULL,NULL),(87,'Maximum Display of Specials Products - Main Page','MAX_DISPLAY_SPECIAL_PRODUCTS_INDEX','9','Number of special products to list on main page',3,31,NULL,'2013-03-02 10:43:57',NULL,NULL),(88,'New Product Listing - Limited to ...','SHOW_NEW_PRODUCTS_LIMIT','0','Limit the New Product Listing to<br />0= All Products<br />1= Current Month<br />7= 7 Days<br />14= 14 Days<br />30= 30 Days<br />60= 60 Days<br />90= 90 Days<br />120= 120 Days',3,40,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'7\', \'14\', \'30\', \'60\', \'90\', \'120\'), '),(89,'Maximum Display of Products All Page','MAX_DISPLAY_PRODUCTS_ALL','10','Number of products to list per screen',3,45,NULL,'2013-03-02 10:43:57',NULL,NULL),(90,'Maximum Display of Language Flags in Language Side Box','MAX_LANGUAGE_FLAGS_COLUMNS','3','Number of Language Flags per Row',3,50,NULL,'2013-03-02 10:43:57',NULL,NULL),(91,'Maximum File Upload Size','MAX_FILE_UPLOAD_SIZE','2048000','What is the Maximum file size for uploads?<br />Default= 2048000',3,60,NULL,'2013-03-02 10:43:57',NULL,NULL),(92,'Allowed Filename Extensions for uploading','UPLOAD_FILENAME_EXTENSIONS','jpg,jpeg,gif,png,eps,cdr,ai,pdf,tif,tiff,bmp,zip','List the permissible filetypes (filename extensions) to be allowed when files are uploaded to your site by customers. Separate multiple values with commas(,). Do not include the dot(.).<br /><br />Suggested setting: \"jpg,jpeg,gif,png,eps,cdr,ai,pdf,tif,tiff,bmp,zip\"',3,61,NULL,'2013-03-02 10:43:57',NULL,'zen_cfg_textarea('),(93,'Maximum Orders Detail Display on Admin Orders Listing','MAX_DISPLAY_RESULTS_ORDERS_DETAILS_LISTING','0','Maximum number of Order Details<br />0 = Unlimited',3,65,NULL,'2013-03-02 10:43:57',NULL,NULL),(94,'Maximum PayPal IPN Display on Admin Listing','MAX_DISPLAY_SEARCH_RESULTS_PAYPAL_IPN','20','Maximum number of PayPal IPN Lisings in Admin<br />Default is 20',3,66,NULL,'2013-03-02 10:43:58',NULL,NULL),(95,'Maximum Display Columns Products to Multiple Categories Manager','MAX_DISPLAY_PRODUCTS_TO_CATEGORIES_COLUMNS','3','Maximum Display Columns Products to Multiple Categories Manager<br />3 = Default',3,70,NULL,'2013-03-02 10:43:58',NULL,NULL),(96,'Maximum Display EZ-Pages','MAX_DISPLAY_SEARCH_RESULTS_EZPAGE','20','Maximum Display EZ-Pages<br />20 = Default',3,71,NULL,'2013-03-02 10:43:58',NULL,NULL),(97,'Small Image Width','SMALL_IMAGE_WIDTH','100','The pixel width of small images',4,1,NULL,'2013-03-02 10:43:58',NULL,NULL),(98,'Small Image Height','SMALL_IMAGE_HEIGHT','80','The pixel height of small images',4,2,NULL,'2013-03-02 10:43:58',NULL,NULL),(99,'Heading Image Width - Admin','HEADING_IMAGE_WIDTH','57','The pixel width of heading images in the Admin<br />NOTE: Presently, this adjusts the spacing on the pages in the Admin Pages or could be used to add images to the heading in the Admin',4,3,NULL,'2013-03-02 10:43:58',NULL,NULL),(100,'Heading Image Height - Admin','HEADING_IMAGE_HEIGHT','40','The pixel height of heading images in the Admin<br />NOTE: Presently, this adjusts the spacing on the pages in the Admin Pages or could be used to add images to the heading in the Admin',4,4,NULL,'2013-03-02 10:43:58',NULL,NULL),(101,'Subcategory Image Width','SUBCATEGORY_IMAGE_WIDTH','100','The pixel width of subcategory images',4,5,NULL,'2013-03-02 10:43:58',NULL,NULL),(102,'Subcategory Image Height','SUBCATEGORY_IMAGE_HEIGHT','57','The pixel height of subcategory images',4,6,NULL,'2013-03-02 10:43:58',NULL,NULL),(103,'Calculate Image Size','CONFIG_CALCULATE_IMAGE_SIZE','true','Calculate the size of images?',4,7,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(104,'Image Required','IMAGE_REQUIRED','true','Enable to display broken images. Good for development.',4,8,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(105,'Image - Shopping Cart Status','IMAGE_SHOPPING_CART_STATUS','1','Show product image in the shopping cart?<br />0= off 1= on',4,9,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(106,'Image - Shopping Cart Width','IMAGE_SHOPPING_CART_WIDTH','50','Default = 50',4,10,NULL,'2013-03-02 10:43:58',NULL,NULL),(107,'Image - Shopping Cart Height','IMAGE_SHOPPING_CART_HEIGHT','40','Default = 40',4,11,NULL,'2013-03-02 10:43:58',NULL,NULL),(108,'Category Icon Image Width - Product Info Pages','CATEGORY_ICON_IMAGE_WIDTH','57','The pixel width of Category Icon heading images for Product Info Pages',4,13,NULL,'2013-03-02 10:43:58',NULL,NULL),(109,'Category Icon Image Height - Product Info Pages','CATEGORY_ICON_IMAGE_HEIGHT','40','The pixel height of Category Icon heading images for Product Info Pages',4,14,NULL,'2013-03-02 10:43:58',NULL,NULL),(110,'Top Subcategory Image Width','SUBCATEGORY_IMAGE_TOP_WIDTH','150','The pixel width of Top subcategory images<br />Top subcategory is when the Category contains subcategories',4,15,NULL,'2013-03-02 10:43:58',NULL,NULL),(111,'Top Subcategory Image Height','SUBCATEGORY_IMAGE_TOP_HEIGHT','85','The pixel height of Top subcategory images<br />Top subcategory is when the Category contains subcategories',4,16,NULL,'2013-03-02 10:43:58',NULL,NULL),(112,'Product Info - Image Width','MEDIUM_IMAGE_WIDTH','150','The pixel width of Product Info images',4,20,NULL,'2013-03-02 10:43:58',NULL,NULL),(113,'Product Info - Image Height','MEDIUM_IMAGE_HEIGHT','120','The pixel height of Product Info images',4,21,NULL,'2013-03-02 10:43:58',NULL,NULL),(114,'Product Info - Image Medium Suffix','IMAGE_SUFFIX_MEDIUM','_MED','Product Info Medium Image Suffix<br />Default = _MED',4,22,NULL,'2013-03-02 10:43:58',NULL,NULL),(115,'Product Info - Image Large Suffix','IMAGE_SUFFIX_LARGE','_LRG','Product Info Large Image Suffix<br />Default = _LRG',4,23,NULL,'2013-03-02 10:43:58',NULL,NULL),(116,'Product Info - Number of Additional Images per Row','IMAGES_AUTO_ADDED','3','Product Info - Enter the number of additional images to display per row<br />Default = 3',4,30,NULL,'2013-03-02 10:43:58',NULL,NULL),(117,'Image - Product Listing Width','IMAGE_PRODUCT_LISTING_WIDTH','100','Default = 100',4,40,NULL,'2013-03-02 10:43:58',NULL,NULL),(118,'Image - Product Listing Height','IMAGE_PRODUCT_LISTING_HEIGHT','80','Default = 80',4,41,NULL,'2013-03-02 10:43:58',NULL,NULL),(119,'Image - Product New Listing Width','IMAGE_PRODUCT_NEW_LISTING_WIDTH','100','Default = 100',4,42,NULL,'2013-03-02 10:43:58',NULL,NULL),(120,'Image - Product New Listing Height','IMAGE_PRODUCT_NEW_LISTING_HEIGHT','80','Default = 80',4,43,NULL,'2013-03-02 10:43:58',NULL,NULL),(121,'Image - New Products Width','IMAGE_PRODUCT_NEW_WIDTH','100','Default = 100',4,44,NULL,'2013-03-02 10:43:58',NULL,NULL),(122,'Image - New Products Height','IMAGE_PRODUCT_NEW_HEIGHT','80','Default = 80',4,45,NULL,'2013-03-02 10:43:58',NULL,NULL),(123,'Image - Featured Products Width','IMAGE_FEATURED_PRODUCTS_LISTING_WIDTH','100','Default = 100',4,46,NULL,'2013-03-02 10:43:58',NULL,NULL),(124,'Image - Featured Products Height','IMAGE_FEATURED_PRODUCTS_LISTING_HEIGHT','80','Default = 80',4,47,NULL,'2013-03-02 10:43:58',NULL,NULL),(125,'Image - Product All Listing Width','IMAGE_PRODUCT_ALL_LISTING_WIDTH','100','Default = 100',4,48,NULL,'2013-03-02 10:43:58',NULL,NULL),(126,'Image - Product All Listing Height','IMAGE_PRODUCT_ALL_LISTING_HEIGHT','80','Default = 80',4,49,NULL,'2013-03-02 10:43:58',NULL,NULL),(127,'Product Image - No Image Status','PRODUCTS_IMAGE_NO_IMAGE_STATUS','1','Use automatic No Image when none is added to product<br />0= off<br />1= On',4,60,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(128,'Product Image - No Image picture','PRODUCTS_IMAGE_NO_IMAGE','no_picture.gif','Use automatic No Image when none is added to product<br />Default = no_picture.gif',4,61,NULL,'2013-03-02 10:43:58',NULL,NULL),(129,'Image - Use Proportional Images on Products and Categories','PROPORTIONAL_IMAGES_STATUS','1','Use Proportional Images on Products and Categories?<br /><br />NOTE: Do not use 0 height or width settings for Proportion Images<br />0= off 1= on',4,75,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(130,'Email Salutation','ACCOUNT_GENDER','true','Display salutation choice during account creation and with account information',5,1,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(131,'Date of Birth','ACCOUNT_DOB','true','Display date of birth field during account creation and with account information<br />NOTE: Set Minimum Value Date of Birth to blank for not required<br />Set Minimum Value Date of Birth > 0 to require',5,2,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(132,'Company','ACCOUNT_COMPANY','true','Display company field during account creation and with account information',5,3,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(133,'Address Line 2','ACCOUNT_SUBURB','true','Display address line 2 field during account creation and with account information',5,4,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(134,'State','ACCOUNT_STATE','true','Display state field during account creation and with account information',5,5,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(135,'State - Always display as pulldown?','ACCOUNT_STATE_DRAW_INITIAL_DROPDOWN','false','When state field is displayed, should it always be a pulldown menu?',5,5,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(136,'Create Account Default Country ID','SHOW_CREATE_ACCOUNT_DEFAULT_COUNTRY','223','Set Create Account Default Country ID to:<br />Default is 223',5,6,NULL,'2013-03-02 10:43:58','zen_get_country_name','zen_cfg_pull_down_country_list_none('),(137,'Fax Number','ACCOUNT_FAX_NUMBER','true','Display fax number field during account creation and with account information',5,10,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(138,'Show Newsletter Checkbox','ACCOUNT_NEWSLETTER_STATUS','1','Show Newsletter Checkbox<br />0= off<br />1= Display Unchecked<br />2= Display Checked<br /><strong>Note: Defaulting this to accepted may be in violation of certain regulations for your state or country</strong>',5,45,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(139,'Customer Default Email Preference','ACCOUNT_EMAIL_PREFERENCE','0','Set the Default Customer Default Email Preference<br />0= Text<br />1= HTML<br />',5,46,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(140,'Customer Product Notification Status','CUSTOMERS_PRODUCTS_NOTIFICATION_STATUS','1','Customer should be asked about product notifications after checkout success and in account preferences<br />0= Never ask<br />1= Ask (ignored on checkout if has already selected global notifications)<br /><br />Note: Sidebox must be turned off separately',5,50,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(141,'Customer Shop Status - View Shop and Prices','CUSTOMERS_APPROVAL','0','Customer must be approved to shop<br />0= Not required<br />1= Must login to browse<br />2= May browse but no prices unless logged in<br />3= Showroom Only<br /><br />It is recommended that Option 2 be used for the purposes of Spiders if you wish customers to login to see prices.',5,55,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(142,'Customer Approval Status - Authorization Pending','CUSTOMERS_APPROVAL_AUTHORIZATION','0','Customer must be Authorized to shop<br />0= Not required<br />1= Must be Authorized to Browse<br />2= May browse but no prices unless Authorized<br />3= Customer May Browse and May see Prices but Must be Authorized to Buy<br /><br />It is recommended that Option 2 or 3 be used for the purposes of Spiders',5,65,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(143,'Customer Authorization: filename','CUSTOMERS_AUTHORIZATION_FILENAME','customers_authorization','Customer Authorization filename<br />Note: Do not include the extension<br />Default=customers_authorization',5,66,NULL,'2013-03-02 10:43:58',NULL,''),(144,'Customer Authorization: Hide Header','CUSTOMERS_AUTHORIZATION_HEADER_OFF','false','Customer Authorization: Hide Header <br />(true=hide false=show)',5,67,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(145,'Customer Authorization: Hide Column Left','CUSTOMERS_AUTHORIZATION_COLUMN_LEFT_OFF','false','Customer Authorization: Hide Column Left <br />(true=hide false=show)',5,68,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(146,'Customer Authorization: Hide Column Right','CUSTOMERS_AUTHORIZATION_COLUMN_RIGHT_OFF','false','Customer Authorization: Hide Column Right <br />(true=hide false=show)',5,69,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(147,'Customer Authorization: Hide Footer','CUSTOMERS_AUTHORIZATION_FOOTER_OFF','false','Customer Authorization: Hide Footer <br />(true=hide false=show)',5,70,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(148,'Customer Authorization: Hide Prices','CUSTOMERS_AUTHORIZATION_PRICES_OFF','false','Customer Authorization: Hide Prices <br />(true=hide false=show)',5,71,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(149,'Customers Referral Status','CUSTOMERS_REFERRAL_STATUS','0','Customers Referral Code is created from<br />0= Off<br />1= 1st Discount Coupon Code used<br />2= Customer can add during create account or edit if blank<br /><br />NOTE: Once the Customers Referral Code has been set it can only be changed in the Admin Customer',5,80,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(150,'Installed Modules','MODULE_PAYMENT_INSTALLED','freecharger.php;moneyorder.php','List of payment module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: freecharger.php;cod.php;paypal.php)',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(151,'Installed Modules','MODULE_ORDER_TOTAL_INSTALLED','ot_subtotal.php;ot_shipping.php;ot_coupon.php;ot_group_pricing.php;ot_tax.php;ot_loworderfee.php;ot_gv.php;ot_total.php','List of order_total module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php)',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(152,'Installed Modules','MODULE_SHIPPING_INSTALLED','flat.php;freeshipper.php;item.php;storepickup.php','List of shipping module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ups.php;flat.php;item.php)',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(153,'Enable Free Shipping','MODULE_SHIPPING_FREESHIPPER_STATUS','True','Do you want to offer Free shipping?',6,0,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(154,'Free Shipping Cost','MODULE_SHIPPING_FREESHIPPER_COST','0.00','What is the Shipping cost?',6,6,NULL,'2013-03-02 10:43:58',NULL,NULL),(155,'Handling Fee','MODULE_SHIPPING_FREESHIPPER_HANDLING','0','Handling fee for this shipping method.',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(156,'Tax Class','MODULE_SHIPPING_FREESHIPPER_TAX_CLASS','0','Use the following tax class on the shipping fee.',6,0,NULL,'2013-03-02 10:43:58','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes('),(157,'Shipping Zone','MODULE_SHIPPING_FREESHIPPER_ZONE','0','If a zone is selected, only enable this shipping method for that zone.',6,0,NULL,'2013-03-02 10:43:58','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes('),(158,'Sort Order','MODULE_SHIPPING_FREESHIPPER_SORT_ORDER','0','Sort order of display.',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(159,'Enable Store Pickup Shipping','MODULE_SHIPPING_STOREPICKUP_STATUS','True','Do you want to offer In Store rate shipping?',6,0,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(160,'Shipping Cost','MODULE_SHIPPING_STOREPICKUP_COST','0.00','The shipping cost for all orders using this shipping method.',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(161,'Tax Class','MODULE_SHIPPING_STOREPICKUP_TAX_CLASS','0','Use the following tax class on the shipping fee.',6,0,NULL,'2013-03-02 10:43:58','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes('),(162,'Tax Basis','MODULE_SHIPPING_STOREPICKUP_TAX_BASIS','Shipping','On what basis is Shipping Tax calculated. Options are<br />Shipping - Based on customers Shipping Address<br />Billing Based on customers Billing address<br />Store - Based on Store address if Billing/Shipping Zone equals Store zone',6,0,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'Shipping\', \'Billing\'), '),(163,'Shipping Zone','MODULE_SHIPPING_STOREPICKUP_ZONE','0','If a zone is selected, only enable this shipping method for that zone.',6,0,NULL,'2013-03-02 10:43:58','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes('),(164,'Sort Order','MODULE_SHIPPING_STOREPICKUP_SORT_ORDER','0','Sort order of display.',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(165,'Enable Item Shipping','MODULE_SHIPPING_ITEM_STATUS','True','Do you want to offer per item rate shipping?',6,0,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(166,'Shipping Cost','MODULE_SHIPPING_ITEM_COST','2.50','The shipping cost will be multiplied by the number of items in an order that uses this shipping method.',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(167,'Handling Fee','MODULE_SHIPPING_ITEM_HANDLING','0','Handling fee for this shipping method.',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(168,'Tax Class','MODULE_SHIPPING_ITEM_TAX_CLASS','0','Use the following tax class on the shipping fee.',6,0,NULL,'2013-03-02 10:43:58','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes('),(169,'Tax Basis','MODULE_SHIPPING_ITEM_TAX_BASIS','Shipping','On what basis is Shipping Tax calculated. Options are<br />Shipping - Based on customers Shipping Address<br />Billing Based on customers Billing address<br />Store - Based on Store address if Billing/Shipping Zone equals Store zone',6,0,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'Shipping\', \'Billing\', \'Store\'), '),(170,'Shipping Zone','MODULE_SHIPPING_ITEM_ZONE','0','If a zone is selected, only enable this shipping method for that zone.',6,0,NULL,'2013-03-02 10:43:58','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes('),(171,'Sort Order','MODULE_SHIPPING_ITEM_SORT_ORDER','0','Sort order of display.',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(172,'Enable Free Charge Module','MODULE_PAYMENT_FREECHARGER_STATUS','True','Do you want to accept Free Charge payments?',6,1,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(173,'Sort order of display.','MODULE_PAYMENT_FREECHARGER_SORT_ORDER','0','Sort order of display. Lowest is displayed first.',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(174,'Payment Zone','MODULE_PAYMENT_FREECHARGER_ZONE','0','If a zone is selected, only enable this payment method for that zone.',6,2,NULL,'2013-03-02 10:43:58','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes('),(175,'Set Order Status','MODULE_PAYMENT_FREECHARGER_ORDER_STATUS_ID','0','Set the status of orders made with this payment module to this value',6,0,NULL,'2013-03-02 10:43:58','zen_get_order_status_name','zen_cfg_pull_down_order_statuses('),(176,'Enable Check/Money Order Module','MODULE_PAYMENT_MONEYORDER_STATUS','True','Do you want to accept Check/Money Order payments?',6,1,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(177,'Make Payable to:','MODULE_PAYMENT_MONEYORDER_PAYTO','the Store Owner/Website Name','Who should payments be made payable to?',6,1,NULL,'2013-03-02 10:43:58',NULL,NULL),(178,'Sort order of display.','MODULE_PAYMENT_MONEYORDER_SORT_ORDER','0','Sort order of display. Lowest is displayed first.',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(179,'Payment Zone','MODULE_PAYMENT_MONEYORDER_ZONE','0','If a zone is selected, only enable this payment method for that zone.',6,2,NULL,'2013-03-02 10:43:58','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes('),(180,'Set Order Status','MODULE_PAYMENT_MONEYORDER_ORDER_STATUS_ID','0','Set the status of orders made with this payment module to this value',6,0,NULL,'2013-03-02 10:43:58','zen_get_order_status_name','zen_cfg_pull_down_order_statuses('),(181,'Include Tax','MODULE_ORDER_TOTAL_GROUP_PRICING_INC_TAX','false','Include Tax value in amount before discount calculation?',6,6,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(182,'This module is installed','MODULE_ORDER_TOTAL_GROUP_PRICING_STATUS','true','',6,1,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\'), '),(183,'Sort Order','MODULE_ORDER_TOTAL_GROUP_PRICING_SORT_ORDER','290','Sort order of display.',6,2,NULL,'2013-03-02 10:43:58',NULL,NULL),(184,'Include Shipping','MODULE_ORDER_TOTAL_GROUP_PRICING_INC_SHIPPING','false','Include Shipping value in amount before discount calculation?',6,5,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(185,'Re-calculate Tax','MODULE_ORDER_TOTAL_GROUP_PRICING_CALC_TAX','Standard','Re-Calculate Tax',6,7,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'None\', \'Standard\', \'Credit Note\'), '),(186,'Tax Class','MODULE_ORDER_TOTAL_GROUP_PRICING_TAX_CLASS','0','Use the following tax class when treating Group Discount as Credit Note.',6,0,NULL,'2013-03-02 10:43:58','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes('),(187,'Enable Flat Shipping','MODULE_SHIPPING_FLAT_STATUS','True','Do you want to offer flat rate shipping?',6,0,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(188,'Shipping Cost','MODULE_SHIPPING_FLAT_COST','5.00','The shipping cost for all orders using this shipping method.',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(189,'Tax Class','MODULE_SHIPPING_FLAT_TAX_CLASS','0','Use the following tax class on the shipping fee.',6,0,NULL,'2013-03-02 10:43:58','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes('),(190,'Tax Basis','MODULE_SHIPPING_FLAT_TAX_BASIS','Shipping','On what basis is Shipping Tax calculated. Options are<br />Shipping - Based on customers Shipping Address<br />Billing Based on customers Billing address<br />Store - Based on Store address if Billing/Shipping Zone equals Store zone',6,0,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'Shipping\', \'Billing\', \'Store\'), '),(191,'Shipping Zone','MODULE_SHIPPING_FLAT_ZONE','0','If a zone is selected, only enable this shipping method for that zone.',6,0,NULL,'2013-03-02 10:43:58','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes('),(192,'Sort Order','MODULE_SHIPPING_FLAT_SORT_ORDER','0','Sort order of display.',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(193,'Default Currency','DEFAULT_CURRENCY','USD','Default Currency',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(194,'Default Language','DEFAULT_LANGUAGE','en','Default Language',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(195,'Default Order Status For New Orders','DEFAULT_ORDERS_STATUS_ID','1','When a new order is created, this order status will be assigned to it.',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(196,'Admin configuration_key shows','ADMIN_CONFIGURATION_KEY_ON','0','Manually switch to value of 1 to see the configuration_key name in configuration displays',6,0,NULL,'2013-03-02 10:43:58',NULL,NULL),(197,'Country of Origin','SHIPPING_ORIGIN_COUNTRY','223','Select the country of origin to be used in shipping quotes.',7,1,NULL,'2013-03-02 10:43:58','zen_get_country_name','zen_cfg_pull_down_country_list('),(198,'Postal Code','SHIPPING_ORIGIN_ZIP','NONE','Enter the Postal Code (ZIP) of the Store to be used in shipping quotes. NOTE: For USA zip codes, only use your 5 digit zip code.',7,2,NULL,'2013-03-02 10:43:58',NULL,NULL),(199,'Enter the Maximum Package Weight you will ship','SHIPPING_MAX_WEIGHT','50','Carriers have a max weight limit for a single package. This is a common one for all.',7,3,NULL,'2013-03-02 10:43:58',NULL,NULL),(200,'Package Tare Small to Medium - added percentage:weight','SHIPPING_BOX_WEIGHT','0:3','What is the weight of typical packaging of small to medium packages?<br />Example: 10% + 1lb 10:1<br />10% + 0lbs 10:0<br />0% + 5lbs 0:5<br />0% + 0lbs 0:0',7,4,NULL,'2013-03-02 10:43:58',NULL,NULL),(201,'Larger packages - added packaging percentage:weight','SHIPPING_BOX_PADDING','10:0','What is the weight of typical packaging for Large packages?<br />Example: 10% + 1lb 10:1<br />10% + 0lbs 10:0<br />0% + 5lbs 0:5<br />0% + 0lbs 0:0',7,5,NULL,'2013-03-02 10:43:58',NULL,NULL),(202,'Display Number of Boxes and Weight Status','SHIPPING_BOX_WEIGHT_DISPLAY','3','Display Shipping Weight and Number of Boxes?<br /><br />0= off<br />1= Boxes Only<br />2= Weight Only<br />3= Both Boxes and Weight',7,15,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(203,'Shipping Estimator Display Settings for Shopping Cart','SHOW_SHIPPING_ESTIMATOR_BUTTON','1','<br />0= Off<br />1= Display as Button on Shopping Cart<br />2= Display as Listing on Shopping Cart Page',7,20,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(204,'Display Order Comments on Admin Invoice','ORDER_COMMENTS_INVOICE','1','Do you want to display the Order Comments on the Admin Invoice?<br />0= OFF<br />1= First Comment by Customer only<br />2= All Comments for the Order',7,25,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(205,'Display Order Comments on Admin Packing Slip','ORDER_COMMENTS_PACKING_SLIP','1','Do you want to display the Order Comments on the Admin Packing Slip?<br />0= OFF<br />1= First Comment by Customer only<br />2= All Comments for the Order',7,26,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(206,'Order Free Shipping 0 Weight Status','ORDER_WEIGHT_ZERO_STATUS','0','If there is no weight to the order, does the order have Free Shipping?<br />0= no<br />1= yes<br /><br />Note: When using Free Shipping, Enable the Free Shipping Module this will only show when shipping is free.',7,15,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(207,'Display Product Image','PRODUCT_LIST_IMAGE','1','Do you want to display the Product Image?',8,1,NULL,'2013-03-02 10:43:58',NULL,NULL),(208,'Display Product Manufacturer Name','PRODUCT_LIST_MANUFACTURER','0','Do you want to display the Product Manufacturer Name?',8,2,NULL,'2013-03-02 10:43:58',NULL,NULL),(209,'Display Product Model','PRODUCT_LIST_MODEL','0','Do you want to display the Product Model?',8,3,NULL,'2013-03-02 10:43:58',NULL,NULL),(210,'Display Product Name','PRODUCT_LIST_NAME','2','Do you want to display the Product Name?',8,4,NULL,'2013-03-02 10:43:58',NULL,NULL),(211,'Display Product Price/Add to Cart','PRODUCT_LIST_PRICE','3','Do you want to display the Product Price/Add to Cart',8,5,NULL,'2013-03-02 10:43:58',NULL,NULL),(212,'Display Product Quantity','PRODUCT_LIST_QUANTITY','0','Do you want to display the Product Quantity?',8,6,NULL,'2013-03-02 10:43:58',NULL,NULL),(213,'Display Product Weight','PRODUCT_LIST_WEIGHT','0','Do you want to display the Product Weight?',8,7,NULL,'2013-03-02 10:43:58',NULL,NULL),(214,'Display Product Price/Add to Cart Column Width','PRODUCTS_LIST_PRICE_WIDTH','125','Define the width of the Price/Add to Cart column<br />Default= 125',8,8,NULL,'2013-03-02 10:43:58',NULL,NULL),(215,'Display Category/Manufacturer Filter (0=off; 1=on)','PRODUCT_LIST_FILTER','1','Do you want to display the Category/Manufacturer Filter?',8,9,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(216,'Prev/Next Split Page Navigation (1-top, 2-bottom, 3-both)','PREV_NEXT_BAR_LOCATION','3','Sets the location of the Prev/Next Split Page Navigation',8,10,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\'), '),(217,'Display Product Listing Default Sort Order','PRODUCT_LISTING_DEFAULT_SORT_ORDER','','Product Listing Default sort order?<br />NOTE: Leave Blank for Product Sort Order. Sort the Product Listing in the order you wish for the default display to start in to get the sort order setting. Example: 2a',8,15,NULL,'2013-03-02 10:43:58',NULL,NULL),(218,'Display Product Add to Cart Button (0=off; 1=on; 2=on with Qty Box per Product)','PRODUCT_LIST_PRICE_BUY_NOW','1','Do you want to display the Add to Cart Button?<br /><br /><strong>NOTE:</strong> Turn OFF Display Multiple Products Qty Box Status to use Option 2 on with Qty Box per Product',8,20,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(219,'Display Multiple Products Qty Box Status and Set Button Location','PRODUCT_LISTING_MULTIPLE_ADD_TO_CART','3','Do you want to display Add Multiple Products Qty Box and Set Button Location?<br />0= off<br />1= Top<br />2= Bottom<br />3= Both',8,25,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(220,'Display Product Description','PRODUCT_LIST_DESCRIPTION','150','Do you want to display the Product Description?<br /><br />0= OFF<br />150= Suggested Length, or enter the maximum number of characters to display',8,30,NULL,'2013-03-02 10:43:58',NULL,NULL),(221,'Product Listing Ascending Sort Order','PRODUCT_LIST_SORT_ORDER_ASCENDING','+','What do you want to use to indicate Sort Order Ascending?<br />Default = +',8,40,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_textarea_small('),(222,'Product Listing Descending Sort Order','PRODUCT_LIST_SORT_ORDER_DESCENDING','-','What do you want to use to indicate Sort Order Descending?<br />Default = -',8,41,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_textarea_small('),(223,'Include Product Listing Alpha Sorter Dropdown','PRODUCT_LIST_ALPHA_SORTER','true','Do you want to include an Alpha Filter dropdown on the Product Listing?',8,50,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(224,'Include Product Listing Sub Categories Image','PRODUCT_LIST_CATEGORIES_IMAGE_STATUS','true','Do you want to include the Sub Categories Image on the Product Listing?',8,52,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(225,'Include Product Listing Top Categories Image','PRODUCT_LIST_CATEGORIES_IMAGE_STATUS_TOP','true','Do you want to include the Top Categories Image on the Product Listing?',8,53,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(226,'Show SubCategories on Main Page while navigating','PRODUCT_LIST_CATEGORY_ROW_STATUS','1','Show Sub-Categories on Main Page while navigating through Categories<br /><br />0= off<br />1= on',8,60,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(227,'Check stock level','STOCK_CHECK','true','Check to see if sufficent stock is available',9,1,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(228,'Subtract stock','STOCK_LIMITED','true','Subtract product in stock by product orders',9,2,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(229,'Allow Checkout','STOCK_ALLOW_CHECKOUT','true','Allow customer to checkout even if there is insufficient stock',9,3,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(230,'Mark product out of stock','STOCK_MARK_PRODUCT_OUT_OF_STOCK','***','Display something on screen so customer can see which product has insufficient stock',9,4,NULL,'2013-03-02 10:43:58',NULL,NULL),(231,'Stock Re-order level','STOCK_REORDER_LEVEL','5','Define when stock needs to be re-ordered',9,5,NULL,'2013-03-02 10:43:58',NULL,NULL),(232,'Products status in Catalog when out of stock should be set to','SHOW_PRODUCTS_SOLD_OUT','0','Show Products when out of stock<br /><br />0= set product status to OFF<br />1= leave product status ON',9,10,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(233,'Show Sold Out Image in place of Add to Cart','SHOW_PRODUCTS_SOLD_OUT_IMAGE','1','Show Sold Out Image instead of Add to Cart Button<br /><br />0= off<br />1= on',9,11,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(234,'Product Quantity Decimals','QUANTITY_DECIMALS','0','Allow how many decimals on Quantity<br /><br />0= off',9,15,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(235,'Show Shopping Cart - Delete Checkboxes or Delete Button','SHOW_SHOPPING_CART_DELETE','3','Show on Shopping Cart Delete Button and/or Checkboxes<br /><br />1= Delete Button Only<br />2= Checkbox Only<br />3= Both Delete Button and Checkbox',9,20,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\'), '),(236,'Show Shopping Cart - Update Cart Button Location','SHOW_SHOPPING_CART_UPDATE','3','Show on Shopping Cart Update Cart Button Location as:<br /><br />1= Next to each Qty Box<br />2= Below all Products<br />3= Both Next to each Qty Box and Below all Products',9,22,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\'), '),(237,'Show New Products on empty Shopping Cart Page','SHOW_SHOPPING_CART_EMPTY_NEW_PRODUCTS','1','Show New Products on empty Shopping Cart Page<br />0= off or set the sort order',9,30,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(238,'Show Featured Products on empty Shopping Cart Page','SHOW_SHOPPING_CART_EMPTY_FEATURED_PRODUCTS','2','Show Featured Products on empty Shopping Cart Page<br />0= off or set the sort order',9,31,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(239,'Show Special Products on empty Shopping Cart Page','SHOW_SHOPPING_CART_EMPTY_SPECIALS_PRODUCTS','3','Show Special Products on empty Shopping Cart Page<br />0= off or set the sort order',9,32,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(240,'Show Upcoming Products on empty Shopping Cart Page','SHOW_SHOPPING_CART_EMPTY_UPCOMING','4','Show Upcoming Products on empty Shopping Cart Page<br />0= off or set the sort order',9,33,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(241,'Show Notice of Combining Shopping Cart on Login','SHOW_SHOPPING_CART_COMBINED','1','When a customer logs in and has a previously stored shopping cart, the products are combined with the existing shopping cart.<br /><br />Do you wish to display a Notice to the customer?<br /><br />0= OFF, do not display a notice<br />1= Yes show notice and go to shopping cart<br />2= Yes show notice, but do not go to shopping cart',9,35,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(242,'Store Page Parse Time','STORE_PAGE_PARSE_TIME','false','Store the time it takes to parse a page',10,1,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(243,'Log Destination','STORE_PAGE_PARSE_TIME_LOG','/home/content/97/10467497/html/products/cache/page_parse_time.log','Directory and filename of the page parse time log',10,2,NULL,'2013-03-02 10:43:58',NULL,NULL),(244,'Log Date Format','STORE_PARSE_DATE_TIME_FORMAT','%d/%m/%Y %H:%M:%S','The date format',10,3,NULL,'2013-03-02 10:43:58',NULL,NULL),(245,'Display The Page Parse Time','DISPLAY_PAGE_PARSE_TIME','false','Display the page parse time on the bottom of each page<br />You do not need to store the times to display them in the Catalog',10,4,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(246,'Store Database Queries','STORE_DB_TRANSACTIONS','false','Store the database queries in the page parse time log (PHP4 only)',10,5,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(247,'E-Mail Transport Method','EMAIL_TRANSPORT','PHP','Defines the method for sending mail.<br /><strong>PHP</strong> is the default, and uses built-in PHP wrappers for processing.<br />Servers running on Windows and MacOS should change this setting to <strong>SMTP</strong>.<br /><br /><strong>SMTPAUTH</strong> should only be used if your server requires SMTP authorization to send messages. You must also configure your SMTPAUTH settings in the appropriate fields in this admin section.<br /><br /><strong>sendmail</strong> is for linux/unix hosts using the sendmail program on the server<br /><strong>\"sendmail-f\"</strong> is only for servers which require the use of the -f parameter to send mail. This is a security setting often used to prevent spoofing. Will cause errors if your host mailserver is not configured to use it.<br /><br /><strong>Qmail</strong> is used for linux/unix hosts running Qmail as sendmail wrapper at /var/qmail/bin/sendmail.',12,1,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'PHP\', \'sendmail\', \'sendmail-f\', \'smtp\', \'smtpauth\', \'Qmail\'),'),(248,'SMTP Email Account Mailbox','EMAIL_SMTPAUTH_MAILBOX','YourEmailAccountNameHere','Enter the mailbox account name (me@mydomain.com) supplied by your host. This is the account name that your host requires for SMTP authentication.<br />Only required if using SMTP Authentication for email.',12,101,NULL,'2013-03-02 10:43:58',NULL,NULL),(249,'SMTP Email Account Password','EMAIL_SMTPAUTH_PASSWORD','YourPasswordHere','Enter the password for your SMTP mailbox. <br />Only required if using SMTP Authentication for email.',12,101,NULL,'2013-03-02 10:43:58','zen_cfg_password_display',NULL),(250,'SMTP Email Mail Host','EMAIL_SMTPAUTH_MAIL_SERVER','mail.EnterYourDomain.com','Enter the DNS name of your SMTP mail server.<br />ie: mail.mydomain.com<br />or 55.66.77.88<br />Only required if using SMTP Authentication for email.',12,101,NULL,'2013-03-02 10:43:58',NULL,NULL),(251,'SMTP Email Mail Server Port','EMAIL_SMTPAUTH_MAIL_SERVER_PORT','25','Enter the IP port number that your SMTP mailserver operates on.<br />Only required if using SMTP Authentication for email.',12,101,NULL,'2013-03-02 10:43:58',NULL,NULL),(252,'E-Mail Linefeeds','EMAIL_LINEFEED','LF','Defines the character sequence used to separate mail headers.',12,2,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'LF\', \'CRLF\'),'),(253,'Use MIME HTML When Sending Emails','EMAIL_USE_HTML','false','Send e-mails in HTML format',12,3,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(254,'Verify E-Mail Addresses Through DNS','ENTRY_EMAIL_ADDRESS_CHECK','false','Verify e-mail address through a DNS server',6,6,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(255,'Send E-Mails','SEND_EMAILS','true','Send out e-mails',12,5,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(256,'Email Archiving Active?','EMAIL_ARCHIVE','false','If you wish to have email messages archived/stored when sent, set this to \"true\".',12,6,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(257,'E-Mail Friendly-Errors','EMAIL_FRIENDLY_ERRORS','true','Do you want to display friendly errors if emails fail?  Setting this to false will display PHP errors and likely cause the script to fail. Only set to false while troubleshooting, and true for a live shop.',12,7,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(258,'Email Address (Displayed to Contact you)','STORE_OWNER_EMAIL_ADDRESS','silverbladesite@gmail.com','Email address of Store Owner.  Used as \"display only\" when informing customers of how to contact you.',12,10,NULL,'2013-03-02 10:43:58',NULL,NULL),(259,'Email Address (sent FROM)','EMAIL_FROM','silverbladesite@gmail.com','Address from which email messages will be \"sent\" by default. Can be over-ridden at compose-time in admin modules.',12,11,NULL,'2013-03-02 10:43:58',NULL,NULL),(260,'Emails must send from known domain?','EMAIL_SEND_MUST_BE_STORE','Yes','Does your mailserver require that all outgoing emails have their \"from\" address match a known domain that exists on your webserver?<br /><br />This is often required in order to prevent spoofing and spam broadcasts.  If set to Yes, this will cause the email address (sent FROM) to be used as the \"from\" address on all outgoing mail.',12,11,NULL,'0001-01-01 00:00:00',NULL,'zen_cfg_select_option(array(\'No\', \'Yes\'), '),(261,'Email Admin Format?','ADMIN_EXTRA_EMAIL_FORMAT','TEXT','Please select the Admin extra email format',12,12,NULL,'0001-01-01 00:00:00',NULL,'zen_cfg_select_option(array(\'TEXT\', \'HTML\'), '),(262,'Send Copy of Order Confirmation Emails To','SEND_EXTRA_ORDER_EMAILS_TO','silverbladesite@gmail.com','Send COPIES of order confirmation emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',12,12,NULL,'2013-03-02 10:43:58',NULL,NULL),(263,'Send Copy of Create Account Emails To - Status','SEND_EXTRA_CREATE_ACCOUNT_EMAILS_TO_STATUS','0','Send copy of Create Account Status<br />0= off 1= on',12,13,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(264,'Send Copy of Create Account Emails To','SEND_EXTRA_CREATE_ACCOUNT_EMAILS_TO','silverbladesite@gmail.com','Send copy of Create Account emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',12,14,NULL,'2013-03-02 10:43:58',NULL,NULL),(265,'Send Copy of Customer GV Send Emails To - Status','SEND_EXTRA_GV_CUSTOMER_EMAILS_TO_STATUS','0','Send copy of Customer GV Send Status<br />0= off 1= on',12,17,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(266,'Send Copy of Customer GV Send Emails To','SEND_EXTRA_GV_CUSTOMER_EMAILS_TO','silverbladesite@gmail.com','Send copy of Customer GV Send emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',12,18,NULL,'2013-03-02 10:43:58',NULL,NULL),(267,'Send Copy of Admin GV Mail Emails To - Status','SEND_EXTRA_GV_ADMIN_EMAILS_TO_STATUS','0','Send copy of Admin GV Mail Status<br />0= off 1= on',12,19,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(268,'Send Copy of Customer Admin GV Mail Emails To','SEND_EXTRA_GV_ADMIN_EMAILS_TO','silverbladesite@gmail.com','Send copy of Admin GV Mail emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',12,20,NULL,'2013-03-02 10:43:58',NULL,NULL),(269,'Send Copy of Admin Discount Coupon Mail Emails To - Status','SEND_EXTRA_DISCOUNT_COUPON_ADMIN_EMAILS_TO_STATUS','0','Send copy of Admin Discount Coupon Mail Status<br />0= off 1= on',12,21,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(270,'Send Copy of Customer Admin Discount Coupon Mail Emails To','SEND_EXTRA_DISCOUNT_COUPON_ADMIN_EMAILS_TO','silverbladesite@gmail.com','Send copy of Admin Discount Coupon Mail emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',12,22,NULL,'2013-03-02 10:43:58',NULL,NULL),(271,'Send Copy of Admin Orders Status Emails To - Status','SEND_EXTRA_ORDERS_STATUS_ADMIN_EMAILS_TO_STATUS','0','Send copy of Admin Orders Status Status<br />0= off 1= on',12,23,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(272,'Send Copy of Admin Orders Status Emails To','SEND_EXTRA_ORDERS_STATUS_ADMIN_EMAILS_TO','silverbladesite@gmail.com','Send copy of Admin Orders Status emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',12,24,NULL,'2013-03-02 10:43:58',NULL,NULL),(273,'Send Notice of Pending Reviews Emails To - Status','SEND_EXTRA_REVIEW_NOTIFICATION_EMAILS_TO_STATUS','0','Send copy of Pending Reviews Status<br />0= off 1= on',12,25,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(274,'Send Notice of Pending Reviews Emails To','SEND_EXTRA_REVIEW_NOTIFICATION_EMAILS_TO','silverbladesite@gmail.com','Send copy of Pending Reviews emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',12,26,NULL,'2013-03-02 10:43:58',NULL,NULL),(275,'Set \"Contact Us\" Email Dropdown List','CONTACT_US_LIST','','On the \"Contact Us\" Page, set the list of email addresses , in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',12,40,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_textarea('),(276,'Contact Us - Show Store Name and Address','CONTACT_US_STORE_NAME_ADDRESS','1','Include Store Name and Address<br />0= off 1= on',12,50,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(277,'Send Low Stock Emails','SEND_LOWSTOCK_EMAIL','0','When stock level is at or below low stock level send an email<br />0= off<br />1= on',12,60,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(278,'Send Low Stock Emails To','SEND_EXTRA_LOW_STOCK_EMAILS_TO','silverbladesite@gmail.com','When stock level is at or below low stock level send an email to this address, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',12,61,NULL,'2013-03-02 10:43:58',NULL,NULL),(279,'Display \"Newsletter Unsubscribe\" Link?','SHOW_NEWSLETTER_UNSUBSCRIBE_LINK','true','Show \"Newsletter Unsubscribe\" link in the \"Information\" side-box?',12,70,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(280,'Audience-Select Count Display','AUDIENCE_SELECT_DISPLAY_COUNTS','true','When displaying lists of available audiences/recipients, should the recipients-count be included? <br /><em>(This may make things slower if you have a lot of customers or complex audience queries)</em>',12,90,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(281,'Enable Downloads','DOWNLOAD_ENABLED','true','Enable the products download functions.',13,1,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(282,'Download by Redirect','DOWNLOAD_BY_REDIRECT','true','Use browser redirection for download. Disable on non-Unix systems.<br /><br />Note: Set /pub to 777 when redirect is true',13,2,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(283,'Download by streaming','DOWNLOAD_IN_CHUNKS','false','If download-by-redirect is disabled, and your PHP memory_limit setting is under 8 MB, you might need to enable this setting so that files are streamed in smaller segments to the browser.<br /><br />Has no effect if Download By Redirect is enabled.',13,2,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(284,'Download Expiration (Number of Days)','DOWNLOAD_MAX_DAYS','7','Set number of days before the download link expires. 0 means no limit.',13,3,NULL,'2013-03-02 10:43:58',NULL,''),(285,'Number of Downloads Allowed - Per Product','DOWNLOAD_MAX_COUNT','5','Set the maximum number of downloads. 0 means no download authorized.',13,4,NULL,'2013-03-02 10:43:58',NULL,''),(286,'Downloads Controller Update Status Value','DOWNLOADS_ORDERS_STATUS_UPDATED_VALUE','4','What orders_status resets the Download days and Max Downloads - Default is 4',13,10,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,NULL),(287,'Downloads Controller Order Status Value >= lower value','DOWNLOADS_CONTROLLER_ORDERS_STATUS','2','Downloads Controller Order Status Value - Default >= 2<br /><br />Downloads are available for checkout based on the orders status. Orders with orders status greater than this value will be available for download. The orders status is set for an order by the Payment Modules. Set the lower range for this range.',13,12,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,NULL),(288,'Downloads Controller Order Status Value <= upper value','DOWNLOADS_CONTROLLER_ORDERS_STATUS_END','4','Downloads Controller Order Status Value - Default <= 4<br /><br />Downloads are available for checkout based on the orders status. Orders with orders status less than this value will be available for download. The orders status is set for an order by the Payment Modules.  Set the upper range for this range.',13,13,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,NULL),(289,'Enable Price Factor','ATTRIBUTES_ENABLED_PRICE_FACTOR','true','Enable the Attributes Price Factor.',13,25,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(290,'Enable Qty Price Discount','ATTRIBUTES_ENABLED_QTY_PRICES','true','Enable the Attributes Quantity Price Discounts.',13,26,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(291,'Enable Attribute Images','ATTRIBUTES_ENABLED_IMAGES','true','Enable the Attributes Images.',13,28,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(292,'Enable Text Pricing by word or letter','ATTRIBUTES_ENABLED_TEXT_PRICES','true','Enable the Attributes Text Pricing by word or letter.',13,35,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(293,'Text Pricing - Spaces are Free','TEXT_SPACES_FREE','1','On Text pricing Spaces are Free<br /><br />0= off 1= on',13,36,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(294,'Read Only option type - Ignore for Add to Cart','PRODUCTS_OPTIONS_TYPE_READONLY_IGNORED','1','When a Product only uses READONLY attributes, should the Add to Cart button be On or Off?<br />0= OFF<br />1= ON',13,37,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(295,'Enable GZip Compression','GZIP_LEVEL','0','0= off 1= on',14,1,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(296,'Session Directory','SESSION_WRITE_DIRECTORY','/home/content/97/10467497/html/products/cache','If sessions are file based, store them in this directory.',15,1,NULL,'2013-03-02 10:43:58',NULL,NULL),(297,'Cookie Domain','SESSION_USE_FQDN','True','If True the full domain name will be used to store the cookie, e.g. www.mydomain.com. If False only a partial domain name will be used, e.g. mydomain.com. If you are unsure about this, always leave set to true.',15,2,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(298,'Force Cookie Use','SESSION_FORCE_COOKIE_USE','False','Force the use of sessions when cookies are only enabled.',15,2,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(299,'Check SSL Session ID','SESSION_CHECK_SSL_SESSION_ID','False','Validate the SSL_SESSION_ID on every secure HTTPS page request.',15,3,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(300,'Check User Agent','SESSION_CHECK_USER_AGENT','False','Validate the clients browser user agent on every page request.',15,4,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(301,'Check IP Address','SESSION_CHECK_IP_ADDRESS','False','Validate the clients IP address on every page request.',15,5,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(302,'Prevent Spider Sessions','SESSION_BLOCK_SPIDERS','True','Prevent known spiders from starting a session.',15,6,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(303,'Recreate Session','SESSION_RECREATE','True','Recreate the session to generate a new session ID when the customer logs on or creates an account (PHP >=4.1 needed).',15,7,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(304,'IP to Host Conversion Status','SESSION_IP_TO_HOST_ADDRESS','true','Convert IP Address to Host Address<br /><br />Note: on some servers this can slow down the initial start of a session or execution of Emails',15,10,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(305,'Length of the redeem code','SECURITY_CODE_LENGTH','10','Enter the length of the redeem code<br />The longer the more secure',16,1,NULL,'2013-03-02 10:43:58',NULL,NULL),(306,'Default Order Status For Zero Balance Orders','DEFAULT_ZERO_BALANCE_ORDERS_STATUS_ID','2','When an order\'s balance is zero, this order status will be assigned to it.',16,0,NULL,'2013-03-02 10:43:58','zen_get_order_status_name','zen_cfg_pull_down_order_statuses('),(307,'New Signup Discount Coupon ID#','NEW_SIGNUP_DISCOUNT_COUPON','','Select the coupon<br />',16,75,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_coupon_id('),(308,'New Signup Gift Voucher Amount','NEW_SIGNUP_GIFT_VOUCHER_AMOUNT','','Leave blank for none<br />Or enter an amount ie. 10 for $10.00',16,76,NULL,'2013-03-02 10:43:58',NULL,NULL),(309,'Maximum Discount Coupons Per Page','MAX_DISPLAY_SEARCH_RESULTS_DISCOUNT_COUPONS','20','Number of Discount Coupons to list per Page',16,81,NULL,'2013-03-02 10:43:58',NULL,NULL),(310,'Maximum Discount Coupon Report Results Per Page','MAX_DISPLAY_SEARCH_RESULTS_DISCOUNT_COUPONS_REPORTS','20','Number of Discount Coupons to list on Reports Page',16,81,NULL,'2013-03-02 10:43:58',NULL,NULL),(311,'Credit Card Enable Status - VISA','CC_ENABLED_VISA','1','Accept VISA 0= off 1= on',17,1,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(312,'Credit Card Enable Status - MasterCard','CC_ENABLED_MC','1','Accept MasterCard 0= off 1= on',17,2,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(313,'Credit Card Enable Status - AmericanExpress','CC_ENABLED_AMEX','0','Accept AmericanExpress 0= off 1= on',17,3,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(314,'Credit Card Enable Status - Diners Club','CC_ENABLED_DINERS_CLUB','0','Accept Diners Club 0= off 1= on',17,4,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(315,'Credit Card Enable Status - Discover Card','CC_ENABLED_DISCOVER','0','Accept Discover Card 0= off 1= on',17,5,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(316,'Credit Card Enable Status - JCB','CC_ENABLED_JCB','0','Accept JCB 0= off 1= on',17,6,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(317,'Credit Card Enable Status - AUSTRALIAN BANKCARD','CC_ENABLED_AUSTRALIAN_BANKCARD','0','Accept AUSTRALIAN BANKCARD 0= off 1= on',17,7,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(318,'Credit Card Enable Status - SOLO','CC_ENABLED_SOLO','0','Accept SOLO Card 0= off 1= on',17,8,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(319,'Credit Card Enable Status - Switch','CC_ENABLED_SWITCH','0','Accept SWITCH Card 0= off 1= on',17,9,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(320,'Credit Card Enable Status - Maestro','CC_ENABLED_MAESTRO','0','Accept MAESTRO Card 0= off 1= on',17,10,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(321,'Credit Card Enabled - Show on Payment','SHOW_ACCEPTED_CREDIT_CARDS','0','Show accepted credit cards on Payment page?<br />0= off<br />1= As Text<br />2= As Images<br /><br />Note: images and text must be defined in both the database and language file for specific credit card types.',17,50,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(322,'This module is installed','MODULE_ORDER_TOTAL_GV_STATUS','true','',6,1,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'true\'),'),(323,'Sort Order','MODULE_ORDER_TOTAL_GV_SORT_ORDER','840','Sort order of display.',6,2,NULL,'2003-10-30 22:16:40',NULL,NULL),(324,'Queue Purchases','MODULE_ORDER_TOTAL_GV_QUEUE','true','Do you want to queue purchases of the Gift Voucher?',6,3,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(325,'Include Shipping','MODULE_ORDER_TOTAL_GV_INC_SHIPPING','true','Include Shipping in calculation',6,5,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(326,'Include Tax','MODULE_ORDER_TOTAL_GV_INC_TAX','true','Include Tax in calculation.',6,6,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(327,'Re-calculate Tax','MODULE_ORDER_TOTAL_GV_CALC_TAX','None','Re-Calculate Tax',6,7,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'None\', \'Standard\', \'Credit Note\'),'),(328,'Tax Class','MODULE_ORDER_TOTAL_GV_TAX_CLASS','0','Use the following tax class when treating Gift Voucher as Credit Note.',6,0,NULL,'2003-10-30 22:16:40','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes('),(329,'Credit including Tax','MODULE_ORDER_TOTAL_GV_CREDIT_TAX','false','Add tax to purchased Gift Voucher when crediting to Account',6,8,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(330,'Set Order Status','MODULE_ORDER_TOTAL_GV_ORDER_STATUS_ID','0','Set the status of orders made where GV covers full payment',6,0,NULL,'2013-03-02 10:43:58','zen_get_order_status_name','zen_cfg_pull_down_order_statuses('),(331,'This module is installed','MODULE_ORDER_TOTAL_LOWORDERFEE_STATUS','true','',6,1,NULL,'2003-10-30 22:16:43',NULL,'zen_cfg_select_option(array(\'true\'),'),(332,'Sort Order','MODULE_ORDER_TOTAL_LOWORDERFEE_SORT_ORDER','400','Sort order of display.',6,2,NULL,'2003-10-30 22:16:43',NULL,NULL),(333,'Allow Low Order Fee','MODULE_ORDER_TOTAL_LOWORDERFEE_LOW_ORDER_FEE','false','Do you want to allow low order fees?',6,3,NULL,'2003-10-30 22:16:43',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(334,'Order Fee For Orders Under','MODULE_ORDER_TOTAL_LOWORDERFEE_ORDER_UNDER','50','Add the low order fee to orders under this amount.',6,4,NULL,'2003-10-30 22:16:43','currencies->format',NULL),(335,'Order Fee','MODULE_ORDER_TOTAL_LOWORDERFEE_FEE','5','For Percentage Calculation - include a % Example: 10%<br />For a flat amount just enter the amount - Example: 5 for $5.00',6,5,NULL,'2003-10-30 22:16:43','',NULL),(336,'Attach Low Order Fee On Orders Made','MODULE_ORDER_TOTAL_LOWORDERFEE_DESTINATION','both','Attach low order fee for orders sent to the set destination.',6,6,NULL,'2003-10-30 22:16:43',NULL,'zen_cfg_select_option(array(\'national\', \'international\', \'both\'),'),(337,'Tax Class','MODULE_ORDER_TOTAL_LOWORDERFEE_TAX_CLASS','0','Use the following tax class on the low order fee.',6,7,NULL,'2003-10-30 22:16:43','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes('),(338,'No Low Order Fee on Virtual Products','MODULE_ORDER_TOTAL_LOWORDERFEE_VIRTUAL','false','Do not charge Low Order Fee when cart is Virtual Products Only',6,8,NULL,'2004-04-20 22:16:43',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(339,'No Low Order Fee on Gift Vouchers','MODULE_ORDER_TOTAL_LOWORDERFEE_GV','false','Do not charge Low Order Fee when cart is Gift Vouchers Only',6,9,NULL,'2004-04-20 22:16:43',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(340,'This module is installed','MODULE_ORDER_TOTAL_SHIPPING_STATUS','true','',6,1,NULL,'2003-10-30 22:16:46',NULL,'zen_cfg_select_option(array(\'true\'),'),(341,'Sort Order','MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER','200','Sort order of display.',6,2,NULL,'2003-10-30 22:16:46',NULL,NULL),(342,'Allow Free Shipping','MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING','false','Do you want to allow free shipping?',6,3,NULL,'2003-10-30 22:16:46',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(343,'Free Shipping For Orders Over','MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER','50','Provide free shipping for orders over the set amount.',6,4,NULL,'2003-10-30 22:16:46','currencies->format',NULL),(344,'Provide Free Shipping For Orders Made','MODULE_ORDER_TOTAL_SHIPPING_DESTINATION','national','Provide free shipping for orders sent to the set destination.',6,5,NULL,'2003-10-30 22:16:46',NULL,'zen_cfg_select_option(array(\'national\', \'international\', \'both\'),'),(345,'This module is installed','MODULE_ORDER_TOTAL_SUBTOTAL_STATUS','true','',6,1,NULL,'2003-10-30 22:16:49',NULL,'zen_cfg_select_option(array(\'true\'),'),(346,'Sort Order','MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER','100','Sort order of display.',6,2,NULL,'2003-10-30 22:16:49',NULL,NULL),(347,'This module is installed','MODULE_ORDER_TOTAL_TAX_STATUS','true','',6,1,NULL,'2003-10-30 22:16:52',NULL,'zen_cfg_select_option(array(\'true\'),'),(348,'Sort Order','MODULE_ORDER_TOTAL_TAX_SORT_ORDER','300','Sort order of display.',6,2,NULL,'2003-10-30 22:16:52',NULL,NULL),(349,'This module is installed','MODULE_ORDER_TOTAL_TOTAL_STATUS','true','',6,1,NULL,'2003-10-30 22:16:55',NULL,'zen_cfg_select_option(array(\'true\'),'),(350,'Sort Order','MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER','999','Sort order of display.',6,2,NULL,'2003-10-30 22:16:55',NULL,NULL),(351,'Tax Class','MODULE_ORDER_TOTAL_COUPON_TAX_CLASS','0','Use the following tax class when treating Discount Coupon as Credit Note.',6,0,NULL,'2003-10-30 22:16:36','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes('),(352,'Include Tax','MODULE_ORDER_TOTAL_COUPON_INC_TAX','false','Include Tax in calculation.',6,6,NULL,'2003-10-30 22:16:36',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(353,'Sort Order','MODULE_ORDER_TOTAL_COUPON_SORT_ORDER','280','Sort order of display.',6,2,NULL,'2003-10-30 22:16:36',NULL,NULL),(354,'Include Shipping','MODULE_ORDER_TOTAL_COUPON_INC_SHIPPING','false','Include Shipping in calculation',6,5,NULL,'2003-10-30 22:16:36',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(355,'This module is installed','MODULE_ORDER_TOTAL_COUPON_STATUS','true','',6,1,NULL,'2003-10-30 22:16:36',NULL,'zen_cfg_select_option(array(\'true\'),'),(356,'Re-calculate Tax','MODULE_ORDER_TOTAL_COUPON_CALC_TAX','Standard','Re-Calculate Tax',6,7,NULL,'2003-10-30 22:16:36',NULL,'zen_cfg_select_option(array(\'None\', \'Standard\', \'Credit Note\'),'),(357,'Admin Demo Status','ADMIN_DEMO','0','Admin Demo should be on?<br />0= off 1= on',6,0,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(358,'Product option type Select','PRODUCTS_OPTIONS_TYPE_SELECT','0','The number representing the Select type of product option.',0,NULL,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,NULL),(359,'Text product option type','PRODUCTS_OPTIONS_TYPE_TEXT','1','Numeric value of the text product option type',6,NULL,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,NULL),(360,'Radio button product option type','PRODUCTS_OPTIONS_TYPE_RADIO','2','Numeric value of the radio button product option type',6,NULL,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,NULL),(361,'Check box product option type','PRODUCTS_OPTIONS_TYPE_CHECKBOX','3','Numeric value of the check box product option type',6,NULL,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,NULL),(362,'File product option type','PRODUCTS_OPTIONS_TYPE_FILE','4','Numeric value of the file product option type',6,NULL,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,NULL),(363,'ID for text and file products options values','PRODUCTS_OPTIONS_VALUES_TEXT_ID','0','Numeric value of the products_options_values_id used by the text and file attributes.',6,NULL,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,NULL),(364,'Upload prefix','UPLOAD_PREFIX','upload_','Prefix used to differentiate between upload options and other options',0,NULL,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,NULL),(365,'Text prefix','TEXT_PREFIX','txt_','Prefix used to differentiate between text option values and other option values',0,NULL,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,NULL),(366,'Read Only option type','PRODUCTS_OPTIONS_TYPE_READONLY','5','Numeric value of the file product option type',6,NULL,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,NULL),(367,'login mode https','SSLPWSTATUSCHECK','','System setting. Do not edit.',6,99,NULL,'2013-03-02 10:43:58',NULL,NULL),(368,'Products Info - Products Option Name Sort Order','PRODUCTS_OPTIONS_SORT_ORDER','0','Sort order of Option Names for Products Info<br />0= Sort Order, Option Name<br />1= Option Name',18,35,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(369,'Products Info - Product Option Value of Attributes Sort Order','PRODUCTS_OPTIONS_SORT_BY_PRICE','1','Sort order of Product Option Values of Attributes for Products Info<br />0= Sort Order, Price<br />1= Sort Order, Option Value Name',18,36,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(370,'Product Info - Show Option Values Name Below Attributes Image','PRODUCT_IMAGES_ATTRIBUTES_NAMES','1','Product Info - Show the name of the Option Value beneath the Attribute Image?<br />0= off 1= on',18,41,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(371,'Product Info - Show Sales Discount Savings Status','SHOW_SALE_DISCOUNT_STATUS','1','Product Info - Show the amount of discount savings?<br />0= off 1= on',18,45,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(372,'Product Info - Show Sales Discount Savings Dollars or Percentage','SHOW_SALE_DISCOUNT','1','Product Info - Show the amount of discount savings display as:<br />1= % off 2= $amount off',18,46,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'1\', \'2\'), '),(373,'Product Info - Show Sales Discount Savings Percentage Decimals','SHOW_SALE_DISCOUNT_DECIMALS','0','Product Info - Show discount savings display as a Percentage with how many decimals?:<br />Default= 0',18,47,NULL,'2013-03-02 10:43:58',NULL,NULL),(374,'Product Info - Price is Free Image or Text Status','OTHER_IMAGE_PRICE_IS_FREE_ON','1','Product Info - Show the Price is Free Image or Text on Displayed Price<br />0= Text<br />1= Image',18,50,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(375,'Product Info - Price is Call for Price Image or Text Status','PRODUCTS_PRICE_IS_CALL_IMAGE_ON','1','Product Info - Show the Price is Call for Price Image or Text on Displayed Price<br />0= Text<br />1= Image',18,51,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(376,'Product Quantity Box Status - Adding New Products','PRODUCTS_QTY_BOX_STATUS','1','What should the Default Quantity Box Status be set to when adding New Products?<br /><br />0= off<br />1= on<br />NOTE: This will show a Qty Box when ON and default the Add to Cart to 1',18,55,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(377,'Product Reviews Require Approval','REVIEWS_APPROVAL','1','Do product reviews require approval?<br /><br />Note: When Review Status is off, it will also not show<br /><br />0= off 1= on',18,62,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(378,'Meta Tags - Include Product Model in Title','META_TAG_INCLUDE_MODEL','1','Do you want to include the Product Model in the Meta Tag Title?<br /><br />0= off 1= on',18,69,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(379,'Meta Tags - Include Product Price in Title','META_TAG_INCLUDE_PRICE','1','Do you want to include the Product Price in the Meta Tag Title?<br /><br />0= off 1= on',18,70,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(380,'Meta Tags Generated Description Maximum Length?','MAX_META_TAG_DESCRIPTION_LENGTH','50','Set Generated Meta Tag Description Maximum Length to (words) Default 50:',18,71,NULL,'2013-03-02 10:43:58','',''),(381,'Also Purchased Products Columns per Row','SHOW_PRODUCT_INFO_COLUMNS_ALSO_PURCHASED_PRODUCTS','3','Also Purchased Products Columns per Row<br />0= off or set the sort order',18,72,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), '),(382,'Previous Next - Navigation Bar Position','PRODUCT_INFO_PREVIOUS_NEXT','1','Location of Previous/Next Navigation Bar<br />0= off<br />1= Top of Page<br />2= Bottom of Page<br />3= Both Top and Bottom of Page',18,21,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Off\'), array(\'id\'=>\'1\', \'text\'=>\'Top of Page\'), array(\'id\'=>\'2\', \'text\'=>\'Bottom of Page\'), array(\'id\'=>\'3\', \'text\'=>\'Both Top & Bottom of Page\')),'),(383,'Previous Next - Sort Order','PRODUCT_INFO_PREVIOUS_NEXT_SORT','1','Products Display Order by<br />0= Product ID<br />1= Product Name<br />2= Model<br />3= Price, Product Name<br />4= Price, Model<br />5= Product Name, Model<br />6= Product Sort Order',18,22,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Product ID\'), array(\'id\'=>\'1\', \'text\'=>\'Name\'), array(\'id\'=>\'2\', \'text\'=>\'Product Model\'), array(\'id\'=>\'3\', \'text\'=>\'Product Price - Name\'), array(\'id\'=>\'4\', \'text\'=>\'Product Price - Model\'), array(\'id\'=>\'5\', \'text\'=>\'Product Name - Model\'), array(\'id\'=>\'6\', \'text\'=>\'Product Sort Order\')),'),(384,'Previous Next - Button and Image Status','SHOW_PREVIOUS_NEXT_STATUS','0','Button and Product Image status settings are:<br />0= Off<br />1= On',18,20,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Off\'), array(\'id\'=>\'1\', \'text\'=>\'On\')),'),(385,'Previous Next - Button and Image Settings','SHOW_PREVIOUS_NEXT_IMAGES','0','Show Previous/Next Button and Product Image Settings<br />0= Button Only<br />1= Button and Product Image<br />2= Product Image Only',18,21,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Button Only\'), array(\'id\'=>\'1\', \'text\'=>\'Button and Product Image\'), array(\'id\'=>\'2\', \'text\'=>\'Product Image Only\')),'),(386,'Previous Next - Image Width?','PREVIOUS_NEXT_IMAGE_WIDTH','50','Previous/Next Image Width?',18,22,NULL,'2013-03-02 10:43:58','',''),(387,'Previous Next - Image Height?','PREVIOUS_NEXT_IMAGE_HEIGHT','40','Previous/Next Image Height?',18,23,NULL,'2013-03-02 10:43:58','',''),(388,'Previous Next - Navigation Includes Category Position','PRODUCT_INFO_CATEGORIES','1','Product\'s Category Image and Name Alignment Above Previous/Next Navigation Bar<br />0= off<br />1= Align Left<br />2= Align Center<br />3= Align Right',18,20,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Off\'), array(\'id\'=>\'1\', \'text\'=>\'Align Left\'), array(\'id\'=>\'2\', \'text\'=>\'Align Center\'), array(\'id\'=>\'3\', \'text\'=>\'Align Right\')),'),(389,'Previous Next - Navigation Includes Category Name and Image Status','PRODUCT_INFO_CATEGORIES_IMAGE_STATUS','2','Product\'s Category Image and Name Status<br />0= Category Name and Image always shows<br />1= Category Name only<br />2= Category Name and Image when not blank',18,20,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Category Name and Image Always\'), array(\'id\'=>\'1\', \'text\'=>\'Category Name only\'), array(\'id\'=>\'2\', \'text\'=>\'Category Name and Image when not blank\')),'),(390,'Column Width - Left Boxes','BOX_WIDTH_LEFT','150px','Width of the Left Column Boxes<br />px may be included<br />Default = 150px',19,1,NULL,'2003-11-21 22:16:36',NULL,NULL),(391,'Column Width - Right Boxes','BOX_WIDTH_RIGHT','150px','Width of the Right Column Boxes<br />px may be included<br />Default = 150px',19,2,NULL,'2003-11-21 22:16:36',NULL,NULL),(392,'Bread Crumbs Navigation Separator','BREAD_CRUMBS_SEPARATOR','&nbsp;::&nbsp;','Enter the separator symbol to appear between the Navigation Bread Crumb trail<br />Note: Include spaces with the &amp;nbsp; symbol if you want them part of the separator.<br />Default = &amp;nbsp;::&amp;nbsp;',19,3,NULL,'2003-11-21 22:16:36',NULL,'zen_cfg_textarea_small('),(393,'Define Breadcrumb Status','DEFINE_BREADCRUMB_STATUS','1','Enable the Breadcrumb Trail Links?<br />0= OFF<br />1= ON<br />2= Off for Home Page Only',19,4,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(394,'Bestsellers - Number Padding','BEST_SELLERS_FILLER','&nbsp;','What do you want to Pad the numbers with?<br />Default = &amp;nbsp;',19,5,NULL,'2003-11-21 22:16:36',NULL,'zen_cfg_textarea_small('),(395,'Bestsellers - Truncate Product Names','BEST_SELLERS_TRUNCATE','35','What size do you want to truncate the Product Names?<br />Default = 35',19,6,NULL,'2003-11-21 22:16:36',NULL,NULL),(396,'Bestsellers - Truncate Product Names followed by ...','BEST_SELLERS_TRUNCATE_MORE','true','When truncated Product Names follow with ...<br />Default = true',19,7,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(397,'Categories Box - Show Specials Link','SHOW_CATEGORIES_BOX_SPECIALS','true','Show Specials Link in the Categories Box',19,8,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(398,'Categories Box - Show Products New Link','SHOW_CATEGORIES_BOX_PRODUCTS_NEW','true','Show Products New Link in the Categories Box',19,9,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(399,'Shopping Cart Box Status','SHOW_SHOPPING_CART_BOX_STATUS','1','Shopping Cart Shows<br />0= Always<br />1= Only when full<br />2= Only when full but not when viewing the Shopping Cart',19,10,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(400,'Categories Box - Show Featured Products Link','SHOW_CATEGORIES_BOX_FEATURED_PRODUCTS','true','Show Featured Products Link in the Categories Box',19,11,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(401,'Categories Box - Show Products All Link','SHOW_CATEGORIES_BOX_PRODUCTS_ALL','true','Show Products All Link in the Categories Box',19,12,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(402,'Column Left Status - Global','COLUMN_LEFT_STATUS','1','Show Column Left, unless page override exists?<br />0= Column Left is always off<br />1= Column Left is on, unless page override',19,15,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(403,'Column Right Status - Global','COLUMN_RIGHT_STATUS','1','Show Column Right, unless page override exists?<br />0= Column Right is always off<br />1= Column Right is on, unless page override',19,16,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(404,'Column Width - Left','COLUMN_WIDTH_LEFT','150px','Width of the Left Column<br />px may be included<br />Default = 150px',19,20,NULL,'2003-11-21 22:16:36',NULL,NULL),(405,'Column Width - Right','COLUMN_WIDTH_RIGHT','150px','Width of the Right Column<br />px may be included<br />Default = 150px',19,21,NULL,'2003-11-21 22:16:36',NULL,NULL),(406,'Categories Separator between links Status','SHOW_CATEGORIES_SEPARATOR_LINK','1','Show Category Separator between Category Names and Links?<br />0= off<br />1= on',19,24,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(407,'Categories Separator between the Category Name and Count','CATEGORIES_SEPARATOR','-&gt;','What separator do you want between the Category name and the count?<br />Default = -&amp;gt;',19,25,NULL,'2003-11-21 22:16:36',NULL,'zen_cfg_textarea_small('),(408,'Categories Separator between the Category Name and Sub Categories','CATEGORIES_SEPARATOR_SUBS','|_&nbsp;','What separator do you want between the Category name and Sub Category Name?<br />Default = |_&amp;nbsp;',19,26,NULL,'2004-03-25 22:16:36',NULL,'zen_cfg_textarea_small('),(409,'Categories Count Prefix','CATEGORIES_COUNT_PREFIX','&nbsp;(','What do you want to Prefix the count with?<br />Default= (',19,27,NULL,'2003-01-21 22:16:36',NULL,'zen_cfg_textarea_small('),(410,'Categories Count Suffix','CATEGORIES_COUNT_SUFFIX',')','What do you want as a Suffix to the count?<br />Default= )',19,28,NULL,'2003-01-21 22:16:36',NULL,'zen_cfg_textarea_small('),(411,'Categories SubCategories Indent','CATEGORIES_SUBCATEGORIES_INDENT','&nbsp;&nbsp;','What do you want to use as the subcategories indent?<br />Default= &nbsp;&nbsp;',19,29,NULL,'2004-06-24 22:16:36',NULL,'zen_cfg_textarea_small('),(412,'Categories with 0 Products Status','CATEGORIES_COUNT_ZERO','0','Show Category Count for 0 Products?<br />0= off<br />1= on',19,30,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(413,'Split Categories Box','CATEGORIES_SPLIT_DISPLAY','True','Split the categories box display by product type',19,31,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(414,'Shopping Cart - Show Totals','SHOW_TOTALS_IN_CART','1','Show Totals Above Shopping Cart?<br />0= off<br />1= on: Items Weight Amount<br />2= on: Items Weight Amount, but no weight when 0<br />3= on: Items Amount',19,31,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(415,'Customer Greeting - Show on Index Page','SHOW_CUSTOMER_GREETING','1','Always Show Customer Greeting on Index?<br />0= off<br />1= on',19,40,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(416,'Categories - Always Show on Main Page','SHOW_CATEGORIES_ALWAYS','0','Always Show Categories on Main Page<br />0= off<br />1= on<br />Default category can be set to Top Level or a Specific Top Level',19,45,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(417,'Main Page - Opens with Category','CATEGORIES_START_MAIN','0','0= Top Level Categories<br />Or enter the Category ID#<br />Note: Sub Categories can also be used Example: 3_10',19,46,NULL,'2013-03-02 10:43:58','',''),(418,'Categories - Always Open to Show SubCategories','SHOW_CATEGORIES_SUBCATEGORIES_ALWAYS','1','Always Show Categories and SubCategories<br />0= off, just show Top Categories<br />1= on, Always show Categories and SubCategories when selected',19,47,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(419,'Banner Display Groups - Header Position 1','SHOW_BANNERS_GROUP_SET1','','The Banner Display Groups can be from 1 Banner Group or Multiple Banner Groups<br /><br />For Multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br /><br />What Banner Group(s) do you want to use in the Header Position 1?<br />Leave blank for none',19,55,NULL,'2013-03-02 10:43:58','',''),(420,'Banner Display Groups - Header Position 2','SHOW_BANNERS_GROUP_SET2','','The Banner Display Groups can be from 1 Banner Group or Multiple Banner Groups<br /><br />For Multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br /><br />What Banner Group(s) do you want to use in the Header Position 2?<br />Leave blank for none',19,56,NULL,'2013-03-02 10:43:58','',''),(421,'Banner Display Groups - Header Position 3','SHOW_BANNERS_GROUP_SET3','','The Banner Display Groups can be from 1 Banner Group or Multiple Banner Groups<br /><br />For Multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br /><br />What Banner Group(s) do you want to use in the Header Position 3?<br />Leave blank for none',19,57,NULL,'2013-03-02 10:43:58','',''),(422,'Banner Display Groups - Footer Position 1','SHOW_BANNERS_GROUP_SET4','','The Banner Display Groups can be from 1 Banner Group or Multiple Banner Groups<br /><br />For Multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br /><br />What Banner Group(s) do you want to use in the Footer Position 1?<br />Leave blank for none',19,65,NULL,'2013-03-02 10:43:58','',''),(423,'Banner Display Groups - Footer Position 2','SHOW_BANNERS_GROUP_SET5','','The Banner Display Groups can be from 1 Banner Group or Multiple Banner Groups<br /><br />For Multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br /><br />What Banner Group(s) do you want to use in the Footer Position 2?<br />Leave blank for none',19,66,NULL,'2013-03-02 10:43:58','',''),(424,'Banner Display Groups - Footer Position 3','SHOW_BANNERS_GROUP_SET6','Wide-Banners','The Banner Display Groups can be from 1 Banner Group or Multiple Banner Groups<br /><br />For Multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br /><br />Default Group is Wide-Banners<br /><br />What Banner Group(s) do you want to use in the Footer Position 3?<br />Leave blank for none',19,67,NULL,'2013-03-02 10:43:58','',''),(425,'Banner Display Groups - Side Box banner_box','SHOW_BANNERS_GROUP_SET7','SideBox-Banners','The Banner Display Groups can be from 1 Banner Group or Multiple Banner Groups<br /><br />For Multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br />Default Group is SideBox-Banners<br /><br />What Banner Group(s) do you want to use in the Side Box - banner_box?<br />Leave blank for none',19,70,NULL,'2013-03-02 10:43:58','',''),(426,'Banner Display Groups - Side Box banner_box2','SHOW_BANNERS_GROUP_SET8','SideBox-Banners','The Banner Display Groups can be from 1 Banner Group or Multiple Banner Groups<br /><br />For Multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br />Default Group is SideBox-Banners<br /><br />What Banner Group(s) do you want to use in the Side Box - banner_box2?<br />Leave blank for none',19,71,NULL,'2013-03-02 10:43:58','',''),(427,'Banner Display Group - Side Box banner_box_all','SHOW_BANNERS_GROUP_SET_ALL','BannersAll','The Banner Display Group may only be from one (1) Banner Group for the Banner All sidebox<br /><br />Default Group is BannersAll<br /><br />What Banner Group do you want to use in the Side Box - banner_box_all?<br />Leave blank for none',19,72,NULL,'2013-03-02 10:43:58','',''),(428,'Footer - Show IP Address status','SHOW_FOOTER_IP','1','Show Customer IP Address in the Footer<br />0= off<br />1= on<br />Should the Customer IP Address show in the footer?',19,80,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(429,'Product Discount Quantities - Add how many blank discounts?','DISCOUNT_QTY_ADD','5','How many blank discount quantities should be added for Product Pricing?',19,90,NULL,'2013-03-02 10:43:58','',''),(430,'Product Discount Quantities - Display how many per row?','DISCOUNT_QUANTITY_PRICES_COLUMN','5','How many discount quantities should show per row on Product Info Pages?',19,95,NULL,'2013-03-02 10:43:58','',''),(431,'Categories/Products Display Sort Order','CATEGORIES_PRODUCTS_SORT_ORDER','0','Categories/Products Display Sort Order<br />0= Categories/Products Sort Order/Name<br />1= Categories/Products Name<br />2= Products Model<br />3= Products Qty+, Products Name<br />4= Products Qty-, Products Name<br />5= Products Price+, Products Name<br />6= Products Price-, Products Name',19,100,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\', \'5\', \'6\'), '),(432,'Option Names and Values Global Add, Copy and Delete Features Status','OPTION_NAMES_VALUES_GLOBAL_STATUS','1','Option Names and Values Global Add, Copy and Delete Features Status<br />0= Hide Features<br />1= Show Features<br />(Default=1)',19,110,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(433,'Categories-Tabs Menu ON/OFF','CATEGORIES_TABS_STATUS','1','Categories-Tabs<br />This enables the display of your store\'s categories as a menu across the top of your header. There are many potential creative uses for this.<br />0= Hide Categories Tabs<br />1= Show Categories Tabs',19,112,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(434,'Site Map - include My Account Links?','SHOW_ACCOUNT_LINKS_ON_SITE_MAP','No','Should the links to My Account show up on the site-map?<br />Note: Spiders will try to index this page, and likely should not be sent to secure pages, since there is no benefit in indexing a login page.<br /><br />Default: false',19,115,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'Yes\', \'No\'), '),(435,'Skip 1-prod Categories','SKIP_SINGLE_PRODUCT_CATEGORIES','True','Skip single-product categories<br />If this option is set to True, then if the customer clicks on a link to a category which only contains a single item, then Zen Cart will take them directly to that product-page, rather than present them with another link to click in order to see the product.<br />Default: True',19,120,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(436,'Use split-login page','USE_SPLIT_LOGIN_MODE','False','The login page can be displayed in two modes: Split or Vertical.<br />In Split mode, the create-account options are accessed by clicking a button to get to the create-account page.  In Vertical mode, the create-account input fields are all displayed inline, below the login field, making one less click for the customer to create their account.<br />Default: False',19,121,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(437,'CSS Buttons','IMAGE_USE_CSS_BUTTONS','No','CSS Buttons<br />Use CSS buttons instead of images (GIF/JPG)?<br />Button styles must be configured in the stylesheet if you enable this option.',19,147,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'No\', \'Yes\'), '),(438,'<strong>Down for Maintenance: ON/OFF</strong>','DOWN_FOR_MAINTENANCE','false','Down for Maintenance <br />(true=on false=off)',20,1,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(439,'Down for Maintenance: filename','DOWN_FOR_MAINTENANCE_FILENAME','down_for_maintenance','Down for Maintenance filename<br />Note: Do not include the extension<br />Default=down_for_maintenance',20,2,NULL,'2013-03-02 10:43:58',NULL,''),(440,'Down for Maintenance: Hide Header','DOWN_FOR_MAINTENANCE_HEADER_OFF','false','Down for Maintenance: Hide Header <br />(true=hide false=show)',20,3,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(441,'Down for Maintenance: Hide Column Left','DOWN_FOR_MAINTENANCE_COLUMN_LEFT_OFF','false','Down for Maintenance: Hide Column Left <br />(true=hide false=show)',20,4,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(442,'Down for Maintenance: Hide Column Right','DOWN_FOR_MAINTENANCE_COLUMN_RIGHT_OFF','false','Down for Maintenance: Hide Column Right <br />(true=hide false=show)',20,5,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(443,'Down for Maintenance: Hide Footer','DOWN_FOR_MAINTENANCE_FOOTER_OFF','false','Down for Maintenance: Hide Footer <br />(true=hide false=show)',20,6,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(444,'Down for Maintenance: Hide Prices','DOWN_FOR_MAINTENANCE_PRICES_OFF','false','Down for Maintenance: Hide Prices <br />(true=hide false=show)',20,7,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(445,'Down For Maintenance (exclude this IP-Address)','EXCLUDE_ADMIN_IP_FOR_MAINTENANCE','your IP (ADMIN)','This IP Address is able to access the website while it is Down For Maintenance (like webmaster)<br />To enter multiple IP Addresses, separate with a comma. If you do not know your IP Address, check in the Footer of your Shop.',20,8,'2003-03-21 13:43:22','2003-03-21 21:20:07',NULL,NULL),(446,'NOTICE PUBLIC Before going Down for Maintenance: ON/OFF','WARN_BEFORE_DOWN_FOR_MAINTENANCE','false','Give a WARNING some time before you put your website Down for Maintenance<br />(true=on false=off)<br />If you set the \'Down For Maintenance: ON/OFF\' to true this will automaticly be updated to false',20,9,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(447,'Date and hours for notice before maintenance','PERIOD_BEFORE_DOWN_FOR_MAINTENANCE','15/05/2003  2-3 PM','Date and hours for notice before maintenance website, enter date and hours for maintenance website',20,10,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,NULL),(448,'Display when webmaster has enabled maintenance','DISPLAY_MAINTENANCE_TIME','false','Display when Webmaster has enabled maintenance <br />(true=on false=off)<br />',20,11,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(449,'Display website maintenance period','DISPLAY_MAINTENANCE_PERIOD','false','Display Website maintenance period <br />(true=on false=off)<br />',20,12,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(450,'Website maintenance period','TEXT_MAINTENANCE_PERIOD_TIME','2h00','Enter Website Maintenance period (hh:mm)',20,13,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,NULL),(451,'Confirm Terms and Conditions During Checkout Procedure','DISPLAY_CONDITIONS_ON_CHECKOUT','false','Show the Terms and Conditions during the checkout procedure which the customer must agree to.',11,1,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(452,'Confirm Privacy Notice During Account Creation Procedure','DISPLAY_PRIVACY_CONDITIONS','false','Show the Privacy Notice during the account creation procedure which the customer must agree to.',11,2,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(453,'Display Product Image','PRODUCT_NEW_LIST_IMAGE','1102','Do you want to display the Product Image?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',21,1,NULL,'2013-03-02 10:43:58',NULL,NULL),(454,'Display Product Quantity','PRODUCT_NEW_LIST_QUANTITY','1202','Do you want to display the Product Quantity?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',21,2,NULL,'2013-03-02 10:43:58',NULL,NULL),(455,'Display Product Buy Now Button','PRODUCT_NEW_BUY_NOW','1300','Do you want to display the Product Buy Now Button<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',21,3,NULL,'2013-03-02 10:43:58',NULL,NULL),(456,'Display Product Name','PRODUCT_NEW_LIST_NAME','2101','Do you want to display the Product Name?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',21,4,NULL,'2013-03-02 10:43:58',NULL,NULL),(457,'Display Product Model','PRODUCT_NEW_LIST_MODEL','2201','Do you want to display the Product Model?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',21,5,NULL,'2013-03-02 10:43:58',NULL,NULL),(458,'Display Product Manufacturer Name','PRODUCT_NEW_LIST_MANUFACTURER','2302','Do you want to display the Product Manufacturer Name?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',21,6,NULL,'2013-03-02 10:43:58',NULL,NULL),(459,'Display Product Price','PRODUCT_NEW_LIST_PRICE','2402','Do you want to display the Product Price<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',21,7,NULL,'2013-03-02 10:43:58',NULL,NULL),(460,'Display Product Weight','PRODUCT_NEW_LIST_WEIGHT','2502','Do you want to display the Product Weight?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',21,8,NULL,'2013-03-02 10:43:58',NULL,NULL),(461,'Display Product Date Added','PRODUCT_NEW_LIST_DATE_ADDED','2601','Do you want to display the Product Date Added?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',21,9,NULL,'2013-03-02 10:43:58',NULL,NULL),(462,'Display Product Description','PRODUCT_NEW_LIST_DESCRIPTION','150','How many characters do you want to display of the Product Description?<br /><br />0= OFF<br />150= Suggested Length, or enter the maximum number of characters to display',21,10,NULL,'2013-03-02 10:43:58',NULL,NULL),(463,'Display Product Display - Default Sort Order','PRODUCT_NEW_LIST_SORT_DEFAULT','6','What Sort Order Default should be used for New Products Display?<br />Default= 6 for Date New to Old<br /><br />1= Products Name<br />2= Products Name Desc<br />3= Price low to high, Products Name<br />4= Price high to low, Products Name<br />5= Model<br />6= Date Added desc<br />7= Date Added<br />8= Product Sort Order',21,11,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\'), '),(464,'Default Products New Group ID','PRODUCT_NEW_LIST_GROUP_ID','21','Warning: Only change this if your Products New Group ID has changed from the default of 21<br />What is the configuration_group_id for New Products Listings?',21,12,NULL,'2013-03-02 10:43:58',NULL,NULL),(465,'Display Multiple Products Qty Box Status and Set Button Location','PRODUCT_NEW_LISTING_MULTIPLE_ADD_TO_CART','3','Do you want to display Add Multiple Products Qty Box and Set Button Location?<br />0= off<br />1= Top<br />2= Bottom<br />3= Both',21,25,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(466,'Mask Upcoming Products from being include as New Products','SHOW_NEW_PRODUCTS_UPCOMING_MASKED','0','Do you want to mask Upcoming Products from being included as New Products in Listing, Sideboxes and Centerbox?<br />0= off<br />1= on',21,30,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(467,'Display Product Image','PRODUCT_FEATURED_LIST_IMAGE','1102','Do you want to display the Product Image?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',22,1,NULL,'2013-03-02 10:43:58',NULL,NULL),(468,'Display Product Quantity','PRODUCT_FEATURED_LIST_QUANTITY','1202','Do you want to display the Product Quantity?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',22,2,NULL,'2013-03-02 10:43:58',NULL,NULL),(469,'Display Product Buy Now Button','PRODUCT_FEATURED_BUY_NOW','1300','Do you want to display the Product Buy Now Button<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',22,3,NULL,'2013-03-02 10:43:58',NULL,NULL),(470,'Display Product Name','PRODUCT_FEATURED_LIST_NAME','2101','Do you want to display the Product Name?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',22,4,NULL,'2013-03-02 10:43:58',NULL,NULL),(471,'Display Product Model','PRODUCT_FEATURED_LIST_MODEL','2201','Do you want to display the Product Model?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',22,5,NULL,'2013-03-02 10:43:58',NULL,NULL),(472,'Display Product Manufacturer Name','PRODUCT_FEATURED_LIST_MANUFACTURER','2302','Do you want to display the Product Manufacturer Name?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',22,6,NULL,'2013-03-02 10:43:58',NULL,NULL),(473,'Display Product Price','PRODUCT_FEATURED_LIST_PRICE','2402','Do you want to display the Product Price<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',22,7,NULL,'2013-03-02 10:43:58',NULL,NULL),(474,'Display Product Weight','PRODUCT_FEATURED_LIST_WEIGHT','2502','Do you want to display the Product Weight?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',22,8,NULL,'2013-03-02 10:43:58',NULL,NULL),(475,'Display Product Date Added','PRODUCT_FEATURED_LIST_DATE_ADDED','2601','Do you want to display the Product Date Added?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',22,9,NULL,'2013-03-02 10:43:58',NULL,NULL),(476,'Display Product Description','PRODUCT_FEATURED_LIST_DESCRIPTION','150','How many characters do you want to display of the Product Description?<br /><br />0= OFF<br />150= Suggested Length, or enter the maximum number of characters to display',22,10,NULL,'2013-03-02 10:43:58',NULL,NULL),(477,'Display Product Display - Default Sort Order','PRODUCT_FEATURED_LIST_SORT_DEFAULT','1','What Sort Order Default should be used for Featured Product Display?<br />Default= 1 for Product Name<br /><br />1= Products Name<br />2= Products Name Desc<br />3= Price low to high, Products Name<br />4= Price high to low, Products Name<br />5= Model<br />6= Date Added desc<br />7= Date Added<br />8= Product Sort Order',22,11,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\'), '),(478,'Default Featured Products Group ID','PRODUCT_FEATURED_LIST_GROUP_ID','22','Warning: Only change this if your Featured Products Group ID has changed from the default of 22<br />What is the configuration_group_id for Featured Products Listings?',22,12,NULL,'2013-03-02 10:43:58',NULL,NULL),(479,'Display Multiple Products Qty Box Status and Set Button Location','PRODUCT_FEATURED_LISTING_MULTIPLE_ADD_TO_CART','3','Do you want to display Add Multiple Products Qty Box and Set Button Location?<br />0= off<br />1= Top<br />2= Bottom<br />3= Both',22,25,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(480,'Display Product Image','PRODUCT_ALL_LIST_IMAGE','1102','Do you want to display the Product Image?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',23,1,NULL,'2013-03-02 10:43:58',NULL,NULL),(481,'Display Product Quantity','PRODUCT_ALL_LIST_QUANTITY','1202','Do you want to display the Product Quantity?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',23,2,NULL,'2013-03-02 10:43:58',NULL,NULL),(482,'Display Product Buy Now Button','PRODUCT_ALL_BUY_NOW','1300','Do you want to display the Product Buy Now Button<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',23,3,NULL,'2013-03-02 10:43:58',NULL,NULL),(483,'Display Product Name','PRODUCT_ALL_LIST_NAME','2101','Do you want to display the Product Name?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',23,4,NULL,'2013-03-02 10:43:58',NULL,NULL),(484,'Display Product Model','PRODUCT_ALL_LIST_MODEL','2201','Do you want to display the Product Model?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',23,5,NULL,'2013-03-02 10:43:58',NULL,NULL),(485,'Display Product Manufacturer Name','PRODUCT_ALL_LIST_MANUFACTURER','2302','Do you want to display the Product Manufacturer Name?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',23,6,NULL,'2013-03-02 10:43:58',NULL,NULL),(486,'Display Product Price','PRODUCT_ALL_LIST_PRICE','2402','Do you want to display the Product Price<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',23,7,NULL,'2013-03-02 10:43:58',NULL,NULL),(487,'Display Product Weight','PRODUCT_ALL_LIST_WEIGHT','2502','Do you want to display the Product Weight?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',23,8,NULL,'2013-03-02 10:43:58',NULL,NULL),(488,'Display Product Date Added','PRODUCT_ALL_LIST_DATE_ADDED','2601','Do you want to display the Product Date Added?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />',23,9,NULL,'2013-03-02 10:43:58',NULL,NULL),(489,'Display Product Description','PRODUCT_ALL_LIST_DESCRIPTION','150','How many characters do you want to display of the Product Description?<br /><br />0= OFF<br />150= Suggested Length, or enter the maximum number of characters to display',23,10,NULL,'2013-03-02 10:43:58',NULL,NULL),(490,'Display Product Display - Default Sort Order','PRODUCT_ALL_LIST_SORT_DEFAULT','1','What Sort Order Default should be used for All Products Display?<br />Default= 1 for Product Name<br /><br />1= Products Name<br />2= Products Name Desc<br />3= Price low to high, Products Name<br />4= Price high to low, Products Name<br />5= Model<br />6= Date Added desc<br />7= Date Added<br />8= Product Sort Order',23,11,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\'), '),(491,'Default Products All Group ID','PRODUCT_ALL_LIST_GROUP_ID','23','Warning: Only change this if your Products All Group ID has changed from the default of 23<br />What is the configuration_group_id for Products All Listings?',23,12,NULL,'2013-03-02 10:43:58',NULL,NULL),(492,'Display Multiple Products Qty Box Status and Set Button Location','PRODUCT_ALL_LISTING_MULTIPLE_ADD_TO_CART','3','Do you want to display Add Multiple Products Qty Box and Set Button Location?<br />0= off<br />1= Top<br />2= Bottom<br />3= Both',23,25,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(493,'Show New Products on Main Page','SHOW_PRODUCT_INFO_MAIN_NEW_PRODUCTS','1','Show New Products on Main Page<br />0= off or set the sort order',24,65,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(494,'Show Featured Products on Main Page','SHOW_PRODUCT_INFO_MAIN_FEATURED_PRODUCTS','2','Show Featured Products on Main Page<br />0= off or set the sort order',24,66,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(495,'Show Special Products on Main Page','SHOW_PRODUCT_INFO_MAIN_SPECIALS_PRODUCTS','3','Show Special Products on Main Page<br />0= off or set the sort order',24,67,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(496,'Show Upcoming Products on Main Page','SHOW_PRODUCT_INFO_MAIN_UPCOMING','4','Show Upcoming Products on Main Page<br />0= off or set the sort order',24,68,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(497,'Show New Products on Main Page - Category with SubCategories','SHOW_PRODUCT_INFO_CATEGORY_NEW_PRODUCTS','1','Show New Products on Main Page - Category with SubCategories<br />0= off or set the sort order',24,70,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(498,'Show Featured Products on Main Page - Category with SubCategories','SHOW_PRODUCT_INFO_CATEGORY_FEATURED_PRODUCTS','2','Show Featured Products on Main Page - Category with SubCategories<br />0= off or set the sort order',24,71,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(499,'Show Special Products on Main Page - Category with SubCategories','SHOW_PRODUCT_INFO_CATEGORY_SPECIALS_PRODUCTS','3','Show Special Products on Main Page - Category with SubCategories<br />0= off or set the sort order',24,72,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(500,'Show Upcoming Products on Main Page - Category with SubCategories','SHOW_PRODUCT_INFO_CATEGORY_UPCOMING','4','Show Upcoming Products on Main Page - Category with SubCategories<br />0= off or set the sort order',24,73,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(501,'Show New Products on Main Page - Errors and Missing Products Page','SHOW_PRODUCT_INFO_MISSING_NEW_PRODUCTS','1','Show New Products on Main Page - Errors and Missing Product<br />0= off or set the sort order',24,75,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(502,'Show Featured Products on Main Page - Errors and Missing Products Page','SHOW_PRODUCT_INFO_MISSING_FEATURED_PRODUCTS','2','Show Featured Products on Main Page - Errors and Missing Product<br />0= off or set the sort order',24,76,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(503,'Show Special Products on Main Page - Errors and Missing Products Page','SHOW_PRODUCT_INFO_MISSING_SPECIALS_PRODUCTS','3','Show Special Products on Main Page - Errors and Missing Product<br />0= off or set the sort order',24,77,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(504,'Show Upcoming Products on Main Page - Errors and Missing Products Page','SHOW_PRODUCT_INFO_MISSING_UPCOMING','4','Show Upcoming Products on Main Page - Errors and Missing Product<br />0= off or set the sort order',24,78,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(505,'Show New Products - below Product Listing','SHOW_PRODUCT_INFO_LISTING_BELOW_NEW_PRODUCTS','1','Show New Products below Product Listing<br />0= off or set the sort order',24,85,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(506,'Show Featured Products - below Product Listing','SHOW_PRODUCT_INFO_LISTING_BELOW_FEATURED_PRODUCTS','2','Show Featured Products below Product Listing<br />0= off or set the sort order',24,86,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(507,'Show Special Products - below Product Listing','SHOW_PRODUCT_INFO_LISTING_BELOW_SPECIALS_PRODUCTS','3','Show Special Products below Product Listing<br />0= off or set the sort order',24,87,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(508,'Show Upcoming Products - below Product Listing','SHOW_PRODUCT_INFO_LISTING_BELOW_UPCOMING','4','Show Upcoming Products below Product Listing<br />0= off or set the sort order',24,88,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(509,'New Products Columns per Row','SHOW_PRODUCT_INFO_COLUMNS_NEW_PRODUCTS','3','New Products Columns per Row',24,95,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), '),(510,'Featured Products Columns per Row','SHOW_PRODUCT_INFO_COLUMNS_FEATURED_PRODUCTS','3','Featured Products Columns per Row',24,96,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), '),(511,'Special Products Columns per Row','SHOW_PRODUCT_INFO_COLUMNS_SPECIALS_PRODUCTS','3','Special Products Columns per Row',24,97,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), '),(512,'Filter Product Listing for Current Top Level Category When Enabled','SHOW_PRODUCT_INFO_ALL_PRODUCTS','1','Filter the products when Product Listing is enabled for current Main Category or show products from all categories?<br />0= Filter Off 1=Filter On ',24,100,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(513,'Define Main Page Status','DEFINE_MAIN_PAGE_STATUS','1','Enable the Defined Main Page Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF',25,60,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(514,'Define Contact Us Status','DEFINE_CONTACT_US_STATUS','1','Enable the Defined Contact Us Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF',25,61,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(515,'Define Privacy Status','DEFINE_PRIVACY_STATUS','1','Enable the Defined Privacy Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF',25,62,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(516,'Define Shipping & Returns','DEFINE_SHIPPINGINFO_STATUS','1','Enable the Defined Shipping & Returns Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF',25,63,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(517,'Define Conditions of Use','DEFINE_CONDITIONS_STATUS','1','Enable the Defined Conditions of Use Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF',25,64,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(518,'Define Checkout Success','DEFINE_CHECKOUT_SUCCESS_STATUS','1','Enable the Defined Checkout Success Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF',25,65,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(519,'Define Discount Coupon','DEFINE_DISCOUNT_COUPON_STATUS','1','Enable the Defined Discount Coupon Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF',25,66,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(520,'Define Site Map Status','DEFINE_SITE_MAP_STATUS','1','Enable the Defined Site Map Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF',25,67,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(521,'Define Page-Not-Found Status','DEFINE_PAGE_NOT_FOUND_STATUS','1','Enable the Defined Page-Not-Found Text from define-pages?<br />0= Define Text OFF<br />1= Define Text ON',25,67,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(522,'Define Page 2','DEFINE_PAGE_2_STATUS','1','Enable the Defined Page 2 Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF',25,82,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(523,'Define Page 3','DEFINE_PAGE_3_STATUS','1','Enable the Defined Page 3 Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF',25,83,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(524,'Define Page 4','DEFINE_PAGE_4_STATUS','1','Enable the Defined Page 4 Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF',25,84,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(525,'EZ-Pages Display Status - HeaderBar','EZPAGES_STATUS_HEADER','1','Display of EZ-Pages content can be Globally enabled/disabled for the Header Bar<br />0 = Off<br />1 = On<br />2= On ADMIN IP ONLY located in Website Maintenance<br />NOTE: Warning only shows to the Admin and not to the public',30,10,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(526,'EZ-Pages Display Status - FooterBar','EZPAGES_STATUS_FOOTER','1','Display of EZ-Pages content can be Globally enabled/disabled for the Footer Bar<br />0 = Off<br />1 = On<br />2= On ADMIN IP ONLY located in Website Maintenance<br />NOTE: Warning only shows to the Admin and not to the public',30,11,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(527,'EZ-Pages Display Status - Sidebox','EZPAGES_STATUS_SIDEBOX','1','Display of EZ-Pages content can be Globally enabled/disabled for the Sidebox<br />0 = Off<br />1 = On<br />2= On ADMIN IP ONLY located in Website Maintenance<br />NOTE: Warning only shows to the Admin and not to the public',30,12,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(528,'EZ-Pages Header Link Separator','EZPAGES_SEPARATOR_HEADER','&nbsp;::&nbsp;','EZ-Pages Header Link Separator<br />Default = &amp;nbsp;::&amp;nbsp;',30,20,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_textarea_small('),(529,'EZ-Pages Footer Link Separator','EZPAGES_SEPARATOR_FOOTER','&nbsp;::&nbsp;','EZ-Pages Footer Link Separator<br />Default = &amp;nbsp;::&amp;nbsp;',30,21,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_textarea_small('),(530,'EZ-Pages Prev/Next Buttons','EZPAGES_SHOW_PREV_NEXT_BUTTONS','2','Display Prev/Continue/Next buttons on EZ-Pages pages?<br />0=OFF (no buttons)<br />1=\"Continue\"<br />2=\"Prev/Continue/Next\"<br /><br />Default setting: 2.',30,30,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(531,'EZ-Pages Table of Contents for Chapters Status','EZPAGES_SHOW_TABLE_CONTENTS','1','Enable EZ-Pages Table of Contents for Chapters?<br />0= OFF<br />1= ON',30,35,'2013-03-02 10:43:58','2013-03-02 10:43:58',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(532,'EZ-Pages Pages to disable headers','EZPAGES_DISABLE_HEADER_DISPLAY_LIST','','EZ-Pages \"pages\" on which to NOT display the normal \"header\" for your site.<br />Simply list page ID numbers separated by commas with no spaces.<br />Page ID numbers can be obtained from the EZ-Pages screen under Admin->Tools.<br />ie: 1,5,2<br />or leave blank.',30,40,NULL,'2013-03-02 10:43:58',NULL,'zen_cfg_textarea_small('),(533,'EZ-Pages Pages to disable footers','EZPAGES_DISABLE_FOOTER_DISPLAY_LIST','','EZ-Pages \"pages\" on which to NOT display the normal \"footer\" for your site.<br />Simply list page ID numbers separated by commas with no spaces.<br />Page ID numbers can be obtained from the EZ-Pages screen under Admin->Tools.<br />ie: 3,7<br />or leave blank.',30,41,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_textarea_small('),(534,'EZ-Pages Pages to disable left-column','EZPAGES_DISABLE_LEFTCOLUMN_DISPLAY_LIST','','EZ-Pages \"pages\" on which to NOT display the normal \"left\" column (of sideboxes) for your site.<br />Simply list page ID numbers separated by commas with no spaces.<br />Page ID numbers can be obtained from the EZ-Pages screen under Admin->Tools.<br />ie: 21<br />or leave blank.',30,42,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_textarea_small('),(535,'EZ-Pages Pages to disable right-column','EZPAGES_DISABLE_RIGHTCOLUMN_DISPLAY_LIST','','EZ-Pages \"pages\" on which to NOT display the normal \"right\" column (of sideboxes) for your site.<br />Simply list page ID numbers separated by commas with no spaces.<br />Page ID numbers can be obtained from the EZ-Pages screen under Admin->Tools.<br />ie: 3,82,13<br />or leave blank.',30,43,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_textarea_small('),(536,'Convert currencies for Text emails','CURRENCIES_TRANSLATIONS','','What currency conversions do you need for Text emails?<br />Example = &amp;pound;,&pound;:&amp;euro;,&euro;',12,120,NULL,'2003-11-21 00:00:00',NULL,'zen_cfg_textarea_small(');
/*!40000 ALTER TABLE `zen_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_configuration_group`
--

DROP TABLE IF EXISTS `zen_configuration_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_configuration_group` (
  `configuration_group_id` int(11) NOT NULL auto_increment,
  `configuration_group_title` varchar(64) NOT NULL default '',
  `configuration_group_description` varchar(255) NOT NULL default '',
  `sort_order` int(5) default NULL,
  `visible` int(1) default '1',
  PRIMARY KEY  (`configuration_group_id`),
  KEY `idx_visible_zen` (`visible`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_configuration_group`
--

LOCK TABLES `zen_configuration_group` WRITE;
/*!40000 ALTER TABLE `zen_configuration_group` DISABLE KEYS */;
INSERT INTO `zen_configuration_group` VALUES (1,'My Store','General information about my store',1,1),(2,'Minimum Values','The minimum values for functions / data',2,1),(3,'Maximum Values','The maximum values for functions / data',3,1),(4,'Images','Image parameters',4,1),(5,'Customer Details','Customer account configuration',5,1),(6,'Module Options','Hidden from configuration',6,0),(7,'Shipping/Packaging','Shipping options available at my store',7,1),(8,'Product Listing','Product Listing configuration options',8,1),(9,'Stock','Stock configuration options',9,1),(10,'Logging','Logging configuration options',10,1),(11,'Regulations','Regulation options',16,1),(12,'E-Mail Options','General settings for E-Mail transport and HTML E-Mails',12,1),(13,'Attribute Settings','Configure products attributes settings',13,1),(14,'GZip Compression','GZip compression options',14,1),(15,'Sessions','Session options',15,1),(16,'GV Coupons','Gift Vouchers and Coupons',16,1),(17,'Credit Cards','Credit Cards Accepted',17,1),(18,'Product Info','Product Info Display Options',18,1),(19,'Layout Settings','Layout Options',19,1),(20,'Website Maintenance','Website Maintenance Options',20,1),(21,'New Listing','New Products Listing',21,1),(22,'Featured Listing','Featured Products Listing',22,1),(23,'All Listing','All Products Listing',23,1),(24,'Index Listing','Index Products Listing',24,1),(25,'Define Page Status','Define Main Pages and HTMLArea Options',25,1),(30,'EZ-Pages Settings','EZ-Pages Settings',30,1);
/*!40000 ALTER TABLE `zen_configuration_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_counter`
--

DROP TABLE IF EXISTS `zen_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_counter` (
  `startdate` char(8) default NULL,
  `counter` int(12) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_counter`
--

LOCK TABLES `zen_counter` WRITE;
/*!40000 ALTER TABLE `zen_counter` DISABLE KEYS */;
INSERT INTO `zen_counter` VALUES ('20130302',4);
/*!40000 ALTER TABLE `zen_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_counter_history`
--

DROP TABLE IF EXISTS `zen_counter_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_counter_history` (
  `startdate` char(8) NOT NULL default '',
  `counter` int(12) default NULL,
  `session_counter` int(12) default NULL,
  PRIMARY KEY  (`startdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_counter_history`
--

LOCK TABLES `zen_counter_history` WRITE;
/*!40000 ALTER TABLE `zen_counter_history` DISABLE KEYS */;
INSERT INTO `zen_counter_history` VALUES ('20130302',4,1);
/*!40000 ALTER TABLE `zen_counter_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_countries`
--

DROP TABLE IF EXISTS `zen_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_countries` (
  `countries_id` int(11) NOT NULL auto_increment,
  `countries_name` varchar(64) NOT NULL default '',
  `countries_iso_code_2` char(2) NOT NULL default '',
  `countries_iso_code_3` char(3) NOT NULL default '',
  `address_format_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`countries_id`),
  KEY `idx_countries_name_zen` (`countries_name`),
  KEY `idx_address_format_id_zen` (`address_format_id`),
  KEY `idx_iso_2_zen` (`countries_iso_code_2`),
  KEY `idx_iso_3_zen` (`countries_iso_code_3`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_countries`
--

LOCK TABLES `zen_countries` WRITE;
/*!40000 ALTER TABLE `zen_countries` DISABLE KEYS */;
INSERT INTO `zen_countries` VALUES (240,'Aaland Islands','AX','ALA',1),(1,'Afghanistan','AF','AFG',1),(2,'Albania','AL','ALB',1),(3,'Algeria','DZ','DZA',1),(4,'American Samoa','AS','ASM',1),(5,'Andorra','AD','AND',1),(6,'Angola','AO','AGO',1),(7,'Anguilla','AI','AIA',1),(8,'Antarctica','AQ','ATA',1),(9,'Antigua and Barbuda','AG','ATG',1),(10,'Argentina','AR','ARG',1),(11,'Armenia','AM','ARM',1),(12,'Aruba','AW','ABW',1),(13,'Australia','AU','AUS',1),(14,'Austria','AT','AUT',5),(15,'Azerbaijan','AZ','AZE',1),(16,'Bahamas','BS','BHS',1),(17,'Bahrain','BH','BHR',1),(18,'Bangladesh','BD','BGD',1),(19,'Barbados','BB','BRB',1),(20,'Belarus','BY','BLR',1),(21,'Belgium','BE','BEL',1),(22,'Belize','BZ','BLZ',1),(23,'Benin','BJ','BEN',1),(24,'Bermuda','BM','BMU',1),(25,'Bhutan','BT','BTN',1),(26,'Bolivia','BO','BOL',1),(27,'Bosnia and Herzegowina','BA','BIH',1),(28,'Botswana','BW','BWA',1),(29,'Bouvet Island','BV','BVT',1),(30,'Brazil','BR','BRA',1),(31,'British Indian Ocean Territory','IO','IOT',1),(32,'Brunei Darussalam','BN','BRN',1),(33,'Bulgaria','BG','BGR',1),(34,'Burkina Faso','BF','BFA',1),(35,'Burundi','BI','BDI',1),(36,'Cambodia','KH','KHM',1),(37,'Cameroon','CM','CMR',1),(38,'Canada','CA','CAN',2),(39,'Cape Verde','CV','CPV',1),(40,'Cayman Islands','KY','CYM',1),(41,'Central African Republic','CF','CAF',1),(42,'Chad','TD','TCD',1),(43,'Chile','CL','CHL',1),(44,'China','CN','CHN',1),(45,'Christmas Island','CX','CXR',1),(46,'Cocos (Keeling) Islands','CC','CCK',1),(47,'Colombia','CO','COL',1),(48,'Comoros','KM','COM',1),(49,'Congo','CG','COG',1),(50,'Cook Islands','CK','COK',1),(51,'Costa Rica','CR','CRI',1),(52,'Cote D\'Ivoire','CI','CIV',1),(53,'Croatia','HR','HRV',1),(54,'Cuba','CU','CUB',1),(55,'Cyprus','CY','CYP',1),(56,'Czech Republic','CZ','CZE',1),(57,'Denmark','DK','DNK',1),(58,'Djibouti','DJ','DJI',1),(59,'Dominica','DM','DMA',1),(60,'Dominican Republic','DO','DOM',1),(61,'Timor-Leste','TL','TLS',1),(62,'Ecuador','EC','ECU',1),(63,'Egypt','EG','EGY',1),(64,'El Salvador','SV','SLV',1),(65,'Equatorial Guinea','GQ','GNQ',1),(66,'Eritrea','ER','ERI',1),(67,'Estonia','EE','EST',1),(68,'Ethiopia','ET','ETH',1),(69,'Falkland Islands (Malvinas)','FK','FLK',1),(70,'Faroe Islands','FO','FRO',1),(71,'Fiji','FJ','FJI',1),(72,'Finland','FI','FIN',1),(73,'France','FR','FRA',1),(75,'French Guiana','GF','GUF',1),(76,'French Polynesia','PF','PYF',1),(77,'French Southern Territories','TF','ATF',1),(78,'Gabon','GA','GAB',1),(79,'Gambia','GM','GMB',1),(80,'Georgia','GE','GEO',1),(81,'Germany','DE','DEU',5),(82,'Ghana','GH','GHA',1),(83,'Gibraltar','GI','GIB',1),(84,'Greece','GR','GRC',1),(85,'Greenland','GL','GRL',1),(86,'Grenada','GD','GRD',1),(87,'Guadeloupe','GP','GLP',1),(88,'Guam','GU','GUM',1),(89,'Guatemala','GT','GTM',1),(90,'Guinea','GN','GIN',1),(91,'Guinea-bissau','GW','GNB',1),(92,'Guyana','GY','GUY',1),(93,'Haiti','HT','HTI',1),(94,'Heard and Mc Donald Islands','HM','HMD',1),(95,'Honduras','HN','HND',1),(96,'Hong Kong','HK','HKG',1),(97,'Hungary','HU','HUN',1),(98,'Iceland','IS','ISL',1),(99,'India','IN','IND',1),(100,'Indonesia','ID','IDN',1),(101,'Iran (Islamic Republic of)','IR','IRN',1),(102,'Iraq','IQ','IRQ',1),(103,'Ireland','IE','IRL',1),(104,'Israel','IL','ISR',1),(105,'Italy','IT','ITA',1),(106,'Jamaica','JM','JAM',1),(107,'Japan','JP','JPN',1),(108,'Jordan','JO','JOR',1),(109,'Kazakhstan','KZ','KAZ',1),(110,'Kenya','KE','KEN',1),(111,'Kiribati','KI','KIR',1),(112,'Korea, Democratic People\'s Republic of','KP','PRK',1),(113,'Korea, Republic of','KR','KOR',1),(114,'Kuwait','KW','KWT',1),(115,'Kyrgyzstan','KG','KGZ',1),(116,'Lao People\'s Democratic Republic','LA','LAO',1),(117,'Latvia','LV','LVA',1),(118,'Lebanon','LB','LBN',1),(119,'Lesotho','LS','LSO',1),(120,'Liberia','LR','LBR',1),(121,'Libyan Arab Jamahiriya','LY','LBY',1),(122,'Liechtenstein','LI','LIE',1),(123,'Lithuania','LT','LTU',1),(124,'Luxembourg','LU','LUX',1),(125,'Macao','MO','MAC',1),(126,'Macedonia, The Former Yugoslav Republic of','MK','MKD',1),(127,'Madagascar','MG','MDG',1),(128,'Malawi','MW','MWI',1),(129,'Malaysia','MY','MYS',1),(130,'Maldives','MV','MDV',1),(131,'Mali','ML','MLI',1),(132,'Malta','MT','MLT',1),(133,'Marshall Islands','MH','MHL',1),(134,'Martinique','MQ','MTQ',1),(135,'Mauritania','MR','MRT',1),(136,'Mauritius','MU','MUS',1),(137,'Mayotte','YT','MYT',1),(138,'Mexico','MX','MEX',1),(139,'Micronesia, Federated States of','FM','FSM',1),(140,'Moldova','MD','MDA',1),(141,'Monaco','MC','MCO',1),(142,'Mongolia','MN','MNG',1),(143,'Montserrat','MS','MSR',1),(144,'Morocco','MA','MAR',1),(145,'Mozambique','MZ','MOZ',1),(146,'Myanmar','MM','MMR',1),(147,'Namibia','NA','NAM',1),(148,'Nauru','NR','NRU',1),(149,'Nepal','NP','NPL',1),(150,'Netherlands','NL','NLD',1),(151,'Netherlands Antilles','AN','ANT',1),(152,'New Caledonia','NC','NCL',1),(153,'New Zealand','NZ','NZL',1),(154,'Nicaragua','NI','NIC',1),(155,'Niger','NE','NER',1),(156,'Nigeria','NG','NGA',1),(157,'Niue','NU','NIU',1),(158,'Norfolk Island','NF','NFK',1),(159,'Northern Mariana Islands','MP','MNP',1),(160,'Norway','NO','NOR',1),(161,'Oman','OM','OMN',1),(162,'Pakistan','PK','PAK',1),(163,'Palau','PW','PLW',1),(164,'Panama','PA','PAN',1),(165,'Papua New Guinea','PG','PNG',1),(166,'Paraguay','PY','PRY',1),(167,'Peru','PE','PER',1),(168,'Philippines','PH','PHL',1),(169,'Pitcairn','PN','PCN',1),(170,'Poland','PL','POL',1),(171,'Portugal','PT','PRT',1),(172,'Puerto Rico','PR','PRI',1),(173,'Qatar','QA','QAT',1),(174,'Reunion','RE','REU',1),(175,'Romania','RO','ROU',1),(176,'Russian Federation','RU','RUS',1),(177,'Rwanda','RW','RWA',1),(178,'Saint Kitts and Nevis','KN','KNA',1),(179,'Saint Lucia','LC','LCA',1),(180,'Saint Vincent and the Grenadines','VC','VCT',1),(181,'Samoa','WS','WSM',1),(182,'San Marino','SM','SMR',1),(183,'Sao Tome and Principe','ST','STP',1),(184,'Saudi Arabia','SA','SAU',1),(185,'Senegal','SN','SEN',1),(186,'Seychelles','SC','SYC',1),(187,'Sierra Leone','SL','SLE',1),(188,'Singapore','SG','SGP',4),(189,'Slovakia (Slovak Republic)','SK','SVK',1),(190,'Slovenia','SI','SVN',1),(191,'Solomon Islands','SB','SLB',1),(192,'Somalia','SO','SOM',1),(193,'South Africa','ZA','ZAF',1),(194,'South Georgia and the South Sandwich Islands','GS','SGS',1),(195,'Spain','ES','ESP',3),(196,'Sri Lanka','LK','LKA',1),(197,'St. Helena','SH','SHN',1),(198,'St. Pierre and Miquelon','PM','SPM',1),(199,'Sudan','SD','SDN',1),(200,'Suriname','SR','SUR',1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM',1),(202,'Swaziland','SZ','SWZ',1),(203,'Sweden','SE','SWE',1),(204,'Switzerland','CH','CHE',1),(205,'Syrian Arab Republic','SY','SYR',1),(206,'Taiwan','TW','TWN',1),(207,'Tajikistan','TJ','TJK',1),(208,'Tanzania, United Republic of','TZ','TZA',1),(209,'Thailand','TH','THA',1),(210,'Togo','TG','TGO',1),(211,'Tokelau','TK','TKL',1),(212,'Tonga','TO','TON',1),(213,'Trinidad and Tobago','TT','TTO',1),(214,'Tunisia','TN','TUN',1),(215,'Turkey','TR','TUR',1),(216,'Turkmenistan','TM','TKM',1),(217,'Turks and Caicos Islands','TC','TCA',1),(218,'Tuvalu','TV','TUV',1),(219,'Uganda','UG','UGA',1),(220,'Ukraine','UA','UKR',1),(221,'United Arab Emirates','AE','ARE',1),(222,'United Kingdom','GB','GBR',6),(223,'United States','US','USA',2),(224,'United States Minor Outlying Islands','UM','UMI',1),(225,'Uruguay','UY','URY',1),(226,'Uzbekistan','UZ','UZB',1),(227,'Vanuatu','VU','VUT',1),(228,'Vatican City State (Holy See)','VA','VAT',1),(229,'Venezuela','VE','VEN',1),(230,'Viet Nam','VN','VNM',1),(231,'Virgin Islands (British)','VG','VGB',1),(232,'Virgin Islands (U.S.)','VI','VIR',1),(233,'Wallis and Futuna Islands','WF','WLF',1),(234,'Western Sahara','EH','ESH',1),(235,'Yemen','YE','YEM',1),(236,'Serbia','RS','SRB',1),(238,'Zambia','ZM','ZMB',1),(239,'Zimbabwe','ZW','ZWE',1),(241,'Palestinian Territory','PS','PSE',1),(242,'Montenegro','ME','MNE',1),(243,'Guernsey','GG','GGY',1),(244,'Isle of Man','IM','IMN',1),(245,'Jersey','JE','JEY',1);
/*!40000 ALTER TABLE `zen_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_coupon_email_track`
--

DROP TABLE IF EXISTS `zen_coupon_email_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_coupon_email_track` (
  `unique_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL default '0',
  `customer_id_sent` int(11) NOT NULL default '0',
  `sent_firstname` varchar(32) default NULL,
  `sent_lastname` varchar(32) default NULL,
  `emailed_to` varchar(32) default NULL,
  `date_sent` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_coupon_id_zen` (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_coupon_email_track`
--

LOCK TABLES `zen_coupon_email_track` WRITE;
/*!40000 ALTER TABLE `zen_coupon_email_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_coupon_email_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_coupon_gv_customer`
--

DROP TABLE IF EXISTS `zen_coupon_gv_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_coupon_gv_customer` (
  `customer_id` int(5) NOT NULL default '0',
  `amount` decimal(15,4) NOT NULL default '0.0000',
  PRIMARY KEY  (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_coupon_gv_customer`
--

LOCK TABLES `zen_coupon_gv_customer` WRITE;
/*!40000 ALTER TABLE `zen_coupon_gv_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_coupon_gv_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_coupon_gv_queue`
--

DROP TABLE IF EXISTS `zen_coupon_gv_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_coupon_gv_queue` (
  `unique_id` int(5) NOT NULL auto_increment,
  `customer_id` int(5) NOT NULL default '0',
  `order_id` int(5) NOT NULL default '0',
  `amount` decimal(15,4) NOT NULL default '0.0000',
  `date_created` datetime NOT NULL default '0001-01-01 00:00:00',
  `ipaddr` varchar(45) NOT NULL default '',
  `release_flag` char(1) NOT NULL default 'N',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_cust_id_order_id_zen` (`customer_id`,`order_id`),
  KEY `idx_release_flag_zen` (`release_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_coupon_gv_queue`
--

LOCK TABLES `zen_coupon_gv_queue` WRITE;
/*!40000 ALTER TABLE `zen_coupon_gv_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_coupon_gv_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_coupon_redeem_track`
--

DROP TABLE IF EXISTS `zen_coupon_redeem_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_coupon_redeem_track` (
  `unique_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL default '0',
  `customer_id` int(11) NOT NULL default '0',
  `redeem_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `redeem_ip` varchar(45) NOT NULL default '',
  `order_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_coupon_id_zen` (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_coupon_redeem_track`
--

LOCK TABLES `zen_coupon_redeem_track` WRITE;
/*!40000 ALTER TABLE `zen_coupon_redeem_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_coupon_redeem_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_coupon_restrict`
--

DROP TABLE IF EXISTS `zen_coupon_restrict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_coupon_restrict` (
  `restrict_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  `category_id` int(11) NOT NULL default '0',
  `coupon_restrict` char(1) NOT NULL default 'N',
  PRIMARY KEY  (`restrict_id`),
  KEY `idx_coup_id_prod_id_zen` (`coupon_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_coupon_restrict`
--

LOCK TABLES `zen_coupon_restrict` WRITE;
/*!40000 ALTER TABLE `zen_coupon_restrict` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_coupon_restrict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_coupons`
--

DROP TABLE IF EXISTS `zen_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_coupons` (
  `coupon_id` int(11) NOT NULL auto_increment,
  `coupon_type` char(1) NOT NULL default 'F',
  `coupon_code` varchar(32) NOT NULL default '',
  `coupon_amount` decimal(15,4) NOT NULL default '0.0000',
  `coupon_minimum_order` decimal(15,4) NOT NULL default '0.0000',
  `coupon_start_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `coupon_expire_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `uses_per_coupon` int(5) NOT NULL default '1',
  `uses_per_user` int(5) NOT NULL default '0',
  `restrict_to_products` varchar(255) default NULL,
  `restrict_to_categories` varchar(255) default NULL,
  `restrict_to_customers` text,
  `coupon_active` char(1) NOT NULL default 'Y',
  `date_created` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `coupon_zone_restriction` int(11) NOT NULL default '0',
  PRIMARY KEY  (`coupon_id`),
  KEY `idx_active_type_zen` (`coupon_active`,`coupon_type`),
  KEY `idx_coupon_code_zen` (`coupon_code`),
  KEY `idx_coupon_type_zen` (`coupon_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_coupons`
--

LOCK TABLES `zen_coupons` WRITE;
/*!40000 ALTER TABLE `zen_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_coupons_description`
--

DROP TABLE IF EXISTS `zen_coupons_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_coupons_description` (
  `coupon_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '0',
  `coupon_name` varchar(32) NOT NULL default '',
  `coupon_description` text,
  PRIMARY KEY  (`coupon_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_coupons_description`
--

LOCK TABLES `zen_coupons_description` WRITE;
/*!40000 ALTER TABLE `zen_coupons_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_coupons_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_currencies`
--

DROP TABLE IF EXISTS `zen_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_currencies` (
  `currencies_id` int(11) NOT NULL auto_increment,
  `title` varchar(32) NOT NULL default '',
  `code` char(3) NOT NULL default '',
  `symbol_left` varchar(24) default NULL,
  `symbol_right` varchar(24) default NULL,
  `decimal_point` char(1) default NULL,
  `thousands_point` char(1) default NULL,
  `decimal_places` char(1) default NULL,
  `value` float(13,8) default NULL,
  `last_updated` datetime default NULL,
  PRIMARY KEY  (`currencies_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_currencies`
--

LOCK TABLES `zen_currencies` WRITE;
/*!40000 ALTER TABLE `zen_currencies` DISABLE KEYS */;
INSERT INTO `zen_currencies` VALUES (1,'US Dollar','USD','$','','.',',','2',1.00000000,'2013-03-02 10:43:59'),(2,'Euro','EUR','&euro;','','.',',','2',0.77300000,'2013-03-02 10:43:59'),(3,'GB Pound','GBP','&pound;','','.',',','2',0.67259997,'2013-03-02 10:43:59'),(4,'Canadian Dollar','CAD','$','','.',',','2',1.10420001,'2013-03-02 10:43:59'),(5,'Australian Dollar','AUD','$','','.',',','2',1.17890000,'2013-03-02 10:43:59');
/*!40000 ALTER TABLE `zen_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_customers`
--

DROP TABLE IF EXISTS `zen_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_customers` (
  `customers_id` int(11) NOT NULL auto_increment,
  `customers_gender` char(1) NOT NULL default '',
  `customers_firstname` varchar(32) NOT NULL default '',
  `customers_lastname` varchar(32) NOT NULL default '',
  `customers_dob` datetime NOT NULL default '0001-01-01 00:00:00',
  `customers_email_address` varchar(96) NOT NULL default '',
  `customers_nick` varchar(96) NOT NULL default '',
  `customers_default_address_id` int(11) NOT NULL default '0',
  `customers_telephone` varchar(32) NOT NULL default '',
  `customers_fax` varchar(32) default NULL,
  `customers_password` varchar(40) NOT NULL default '',
  `customers_newsletter` char(1) default NULL,
  `customers_group_pricing` int(11) NOT NULL default '0',
  `customers_email_format` varchar(4) NOT NULL default 'TEXT',
  `customers_authorization` int(1) NOT NULL default '0',
  `customers_referral` varchar(32) NOT NULL default '',
  `customers_paypal_payerid` varchar(20) NOT NULL default '',
  `customers_paypal_ec` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`customers_id`),
  KEY `idx_email_address_zen` (`customers_email_address`),
  KEY `idx_referral_zen` (`customers_referral`(10)),
  KEY `idx_grp_pricing_zen` (`customers_group_pricing`),
  KEY `idx_nick_zen` (`customers_nick`),
  KEY `idx_newsletter_zen` (`customers_newsletter`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_customers`
--

LOCK TABLES `zen_customers` WRITE;
/*!40000 ALTER TABLE `zen_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_customers_basket`
--

DROP TABLE IF EXISTS `zen_customers_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_customers_basket` (
  `customers_basket_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `products_id` tinytext NOT NULL,
  `customers_basket_quantity` float NOT NULL default '0',
  `final_price` decimal(15,4) NOT NULL default '0.0000',
  `customers_basket_date_added` varchar(8) default NULL,
  PRIMARY KEY  (`customers_basket_id`),
  KEY `idx_customers_id_zen` (`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_customers_basket`
--

LOCK TABLES `zen_customers_basket` WRITE;
/*!40000 ALTER TABLE `zen_customers_basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_customers_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_customers_basket_attributes`
--

DROP TABLE IF EXISTS `zen_customers_basket_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `products_id` tinytext NOT NULL,
  `products_options_id` varchar(64) NOT NULL default '0',
  `products_options_value_id` int(11) NOT NULL default '0',
  `products_options_value_text` blob,
  `products_options_sort_order` text NOT NULL,
  PRIMARY KEY  (`customers_basket_attributes_id`),
  KEY `idx_cust_id_prod_id_zen` (`customers_id`,`products_id`(36))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_customers_basket_attributes`
--

LOCK TABLES `zen_customers_basket_attributes` WRITE;
/*!40000 ALTER TABLE `zen_customers_basket_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_customers_basket_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_customers_info`
--

DROP TABLE IF EXISTS `zen_customers_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_customers_info` (
  `customers_info_id` int(11) NOT NULL default '0',
  `customers_info_date_of_last_logon` datetime default NULL,
  `customers_info_number_of_logons` int(5) default NULL,
  `customers_info_date_account_created` datetime default NULL,
  `customers_info_date_account_last_modified` datetime default NULL,
  `global_product_notifications` int(1) default '0',
  PRIMARY KEY  (`customers_info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_customers_info`
--

LOCK TABLES `zen_customers_info` WRITE;
/*!40000 ALTER TABLE `zen_customers_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_customers_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_db_cache`
--

DROP TABLE IF EXISTS `zen_db_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_db_cache` (
  `cache_entry_name` varchar(64) NOT NULL default '',
  `cache_data` mediumblob,
  `cache_entry_created` int(15) default NULL,
  PRIMARY KEY  (`cache_entry_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_db_cache`
--

LOCK TABLES `zen_db_cache` WRITE;
/*!40000 ALTER TABLE `zen_db_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_db_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_email_archive`
--

DROP TABLE IF EXISTS `zen_email_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_email_archive` (
  `archive_id` int(11) NOT NULL auto_increment,
  `email_to_name` varchar(96) NOT NULL default '',
  `email_to_address` varchar(96) NOT NULL default '',
  `email_from_name` varchar(96) NOT NULL default '',
  `email_from_address` varchar(96) NOT NULL default '',
  `email_subject` varchar(255) NOT NULL default '',
  `email_html` text NOT NULL,
  `email_text` text NOT NULL,
  `date_sent` datetime NOT NULL default '0001-01-01 00:00:00',
  `module` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`archive_id`),
  KEY `idx_email_to_address_zen` (`email_to_address`),
  KEY `idx_module_zen` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_email_archive`
--

LOCK TABLES `zen_email_archive` WRITE;
/*!40000 ALTER TABLE `zen_email_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_email_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_ezpages`
--

DROP TABLE IF EXISTS `zen_ezpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_ezpages` (
  `pages_id` int(11) NOT NULL auto_increment,
  `languages_id` int(11) NOT NULL default '1',
  `pages_title` varchar(64) NOT NULL default '',
  `alt_url` varchar(255) NOT NULL default '',
  `alt_url_external` varchar(255) NOT NULL default '',
  `pages_html_text` mediumtext,
  `status_header` int(1) NOT NULL default '1',
  `status_sidebox` int(1) NOT NULL default '1',
  `status_footer` int(1) NOT NULL default '1',
  `status_toc` int(1) NOT NULL default '1',
  `header_sort_order` int(3) NOT NULL default '0',
  `sidebox_sort_order` int(3) NOT NULL default '0',
  `footer_sort_order` int(3) NOT NULL default '0',
  `toc_sort_order` int(3) NOT NULL default '0',
  `page_open_new_window` int(1) NOT NULL default '0',
  `page_is_ssl` int(1) NOT NULL default '0',
  `toc_chapter` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pages_id`),
  KEY `idx_lang_id_zen` (`languages_id`),
  KEY `idx_ezp_status_header_zen` (`status_header`),
  KEY `idx_ezp_status_sidebox_zen` (`status_sidebox`),
  KEY `idx_ezp_status_footer_zen` (`status_footer`),
  KEY `idx_ezp_status_toc_zen` (`status_toc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_ezpages`
--

LOCK TABLES `zen_ezpages` WRITE;
/*!40000 ALTER TABLE `zen_ezpages` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_ezpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_featured`
--

DROP TABLE IF EXISTS `zen_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_featured` (
  `featured_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `featured_date_added` datetime default NULL,
  `featured_last_modified` datetime default NULL,
  `expires_date` date NOT NULL default '0001-01-01',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `featured_date_available` date NOT NULL default '0001-01-01',
  PRIMARY KEY  (`featured_id`),
  KEY `idx_status_zen` (`status`),
  KEY `idx_products_id_zen` (`products_id`),
  KEY `idx_date_avail_zen` (`featured_date_available`),
  KEY `idx_expires_date_zen` (`expires_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_featured`
--

LOCK TABLES `zen_featured` WRITE;
/*!40000 ALTER TABLE `zen_featured` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_files_uploaded`
--

DROP TABLE IF EXISTS `zen_files_uploaded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_files_uploaded` (
  `files_uploaded_id` int(11) NOT NULL auto_increment,
  `sesskey` varchar(32) default NULL,
  `customers_id` int(11) default NULL,
  `files_uploaded_name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`files_uploaded_id`),
  KEY `idx_customers_id_zen` (`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Must always have either a sesskey or customers_id';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_files_uploaded`
--

LOCK TABLES `zen_files_uploaded` WRITE;
/*!40000 ALTER TABLE `zen_files_uploaded` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_files_uploaded` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_geo_zones`
--

DROP TABLE IF EXISTS `zen_geo_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_geo_zones` (
  `geo_zone_id` int(11) NOT NULL auto_increment,
  `geo_zone_name` varchar(32) NOT NULL default '',
  `geo_zone_description` varchar(255) NOT NULL default '',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_geo_zones`
--

LOCK TABLES `zen_geo_zones` WRITE;
/*!40000 ALTER TABLE `zen_geo_zones` DISABLE KEYS */;
INSERT INTO `zen_geo_zones` VALUES (1,'Florida','Florida local sales tax zone',NULL,'2013-03-02 10:43:59');
/*!40000 ALTER TABLE `zen_geo_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_get_terms_to_filter`
--

DROP TABLE IF EXISTS `zen_get_terms_to_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_get_terms_to_filter` (
  `get_term_name` varchar(255) NOT NULL default '',
  `get_term_table` varchar(64) NOT NULL,
  `get_term_name_field` varchar(64) NOT NULL,
  PRIMARY KEY  (`get_term_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_get_terms_to_filter`
--

LOCK TABLES `zen_get_terms_to_filter` WRITE;
/*!40000 ALTER TABLE `zen_get_terms_to_filter` DISABLE KEYS */;
INSERT INTO `zen_get_terms_to_filter` VALUES ('manufacturers_id','TABLE_MANUFACTURERS','manufacturers_name'),('music_genre_id','TABLE_MUSIC_GENRE','music_genre_name'),('record_company_id','TABLE_RECORD_COMPANY','record_company_name');
/*!40000 ALTER TABLE `zen_get_terms_to_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_group_pricing`
--

DROP TABLE IF EXISTS `zen_group_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_group_pricing` (
  `group_id` int(11) NOT NULL auto_increment,
  `group_name` varchar(32) NOT NULL default '',
  `group_percentage` decimal(5,2) NOT NULL default '0.00',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_group_pricing`
--

LOCK TABLES `zen_group_pricing` WRITE;
/*!40000 ALTER TABLE `zen_group_pricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_group_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_languages`
--

DROP TABLE IF EXISTS `zen_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_languages` (
  `languages_id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL default '',
  `code` char(2) NOT NULL default '',
  `image` varchar(64) default NULL,
  `directory` varchar(32) default NULL,
  `sort_order` int(3) default NULL,
  PRIMARY KEY  (`languages_id`),
  KEY `idx_languages_name_zen` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_languages`
--

LOCK TABLES `zen_languages` WRITE;
/*!40000 ALTER TABLE `zen_languages` DISABLE KEYS */;
INSERT INTO `zen_languages` VALUES (1,'English','en','icon.gif','english',1);
/*!40000 ALTER TABLE `zen_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_layout_boxes`
--

DROP TABLE IF EXISTS `zen_layout_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_layout_boxes` (
  `layout_id` int(11) NOT NULL auto_increment,
  `layout_template` varchar(64) NOT NULL default '',
  `layout_box_name` varchar(64) NOT NULL default '',
  `layout_box_status` tinyint(1) NOT NULL default '0',
  `layout_box_location` tinyint(1) NOT NULL default '0',
  `layout_box_sort_order` int(11) NOT NULL default '0',
  `layout_box_sort_order_single` int(11) NOT NULL default '0',
  `layout_box_status_single` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`layout_id`),
  KEY `idx_name_template_zen` (`layout_template`,`layout_box_name`),
  KEY `idx_layout_box_status_zen` (`layout_box_status`),
  KEY `idx_layout_box_sort_order_zen` (`layout_box_sort_order`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_layout_boxes`
--

LOCK TABLES `zen_layout_boxes` WRITE;
/*!40000 ALTER TABLE `zen_layout_boxes` DISABLE KEYS */;
INSERT INTO `zen_layout_boxes` VALUES (1,'default_template_settings','banner_box_all.php',1,1,5,0,0),(2,'default_template_settings','banner_box.php',1,0,300,1,127),(3,'default_template_settings','banner_box2.php',1,1,15,1,15),(4,'default_template_settings','best_sellers.php',1,1,30,70,1),(5,'default_template_settings','categories.php',1,0,10,10,1),(6,'default_template_settings','currencies.php',0,1,80,60,0),(7,'default_template_settings','document_categories.php',1,0,0,0,0),(8,'default_template_settings','ezpages.php',1,1,-1,2,1),(9,'default_template_settings','featured.php',1,0,45,0,0),(10,'default_template_settings','information.php',1,0,50,40,1),(11,'default_template_settings','languages.php',0,1,70,50,0),(12,'default_template_settings','manufacturers.php',1,0,30,20,1),(13,'default_template_settings','manufacturer_info.php',1,1,35,95,1),(14,'default_template_settings','more_information.php',1,0,200,200,1),(15,'default_template_settings','music_genres.php',1,1,0,0,0),(16,'default_template_settings','order_history.php',1,1,0,0,0),(17,'default_template_settings','product_notifications.php',1,1,55,85,1),(18,'default_template_settings','record_companies.php',1,1,0,0,0),(19,'default_template_settings','reviews.php',1,0,40,0,0),(20,'default_template_settings','search.php',1,1,10,0,0),(21,'default_template_settings','search_header.php',0,0,0,0,1),(22,'default_template_settings','shopping_cart.php',1,1,20,30,1),(23,'default_template_settings','specials.php',1,1,45,0,0),(24,'default_template_settings','whats_new.php',1,0,20,0,0),(25,'default_template_settings','whos_online.php',1,1,200,200,1),(26,'template_default','banner_box_all.php',1,1,5,0,0),(27,'template_default','banner_box.php',1,0,300,1,127),(28,'template_default','banner_box2.php',1,1,15,1,15),(29,'template_default','best_sellers.php',1,1,30,70,1),(30,'template_default','categories.php',1,0,10,10,1),(31,'template_default','currencies.php',0,1,80,60,0),(32,'template_default','ezpages.php',1,1,-1,2,1),(33,'template_default','featured.php',1,0,45,0,0),(34,'template_default','information.php',1,0,50,40,1),(35,'template_default','languages.php',0,1,70,50,0),(36,'template_default','manufacturers.php',1,0,30,20,1),(37,'template_default','manufacturer_info.php',1,1,35,95,1),(38,'template_default','more_information.php',1,0,200,200,1),(39,'template_default','my_broken_box.php',1,0,0,0,0),(40,'template_default','order_history.php',1,1,0,0,0),(41,'template_default','product_notifications.php',1,1,55,85,1),(42,'template_default','reviews.php',1,0,40,0,0),(43,'template_default','search.php',1,1,10,0,0),(44,'template_default','search_header.php',0,0,0,0,1),(45,'template_default','shopping_cart.php',1,1,20,30,1),(46,'template_default','specials.php',1,1,45,0,0),(47,'template_default','whats_new.php',1,0,20,0,0),(48,'template_default','whos_online.php',1,1,200,200,1),(49,'classic','banner_box.php',1,0,300,1,127),(50,'classic','banner_box2.php',1,1,15,1,15),(51,'classic','banner_box_all.php',1,1,5,0,0),(52,'classic','best_sellers.php',1,1,30,70,1),(53,'classic','categories.php',1,0,10,10,1),(54,'classic','currencies.php',0,1,80,60,0),(55,'classic','document_categories.php',1,0,0,0,0),(56,'classic','ezpages.php',1,1,-1,2,1),(57,'classic','featured.php',1,0,45,0,0),(58,'classic','information.php',1,0,50,40,1),(59,'classic','languages.php',0,1,70,50,0),(60,'classic','manufacturers.php',1,0,30,20,1),(61,'classic','manufacturer_info.php',1,1,35,95,1),(62,'classic','more_information.php',1,0,200,200,1),(63,'classic','music_genres.php',1,1,0,0,0),(64,'classic','order_history.php',1,1,0,0,0),(65,'classic','product_notifications.php',1,1,55,85,1),(66,'classic','record_companies.php',1,1,0,0,0),(67,'classic','reviews.php',1,0,40,0,0),(68,'classic','search.php',1,1,10,0,0),(69,'classic','search_header.php',0,0,0,0,1),(70,'classic','shopping_cart.php',1,1,20,30,1),(71,'classic','specials.php',1,1,45,0,0),(72,'classic','whats_new.php',1,0,20,0,0),(73,'classic','whos_online.php',1,1,200,200,1);
/*!40000 ALTER TABLE `zen_layout_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_manufacturers`
--

DROP TABLE IF EXISTS `zen_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_manufacturers` (
  `manufacturers_id` int(11) NOT NULL auto_increment,
  `manufacturers_name` varchar(32) NOT NULL default '',
  `manufacturers_image` varchar(64) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`manufacturers_id`),
  KEY `idx_mfg_name_zen` (`manufacturers_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_manufacturers`
--

LOCK TABLES `zen_manufacturers` WRITE;
/*!40000 ALTER TABLE `zen_manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_manufacturers_info`
--

DROP TABLE IF EXISTS `zen_manufacturers_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `manufacturers_url` varchar(255) NOT NULL default '',
  `url_clicked` int(5) NOT NULL default '0',
  `date_last_click` datetime default NULL,
  PRIMARY KEY  (`manufacturers_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_manufacturers_info`
--

LOCK TABLES `zen_manufacturers_info` WRITE;
/*!40000 ALTER TABLE `zen_manufacturers_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_manufacturers_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_media_clips`
--

DROP TABLE IF EXISTS `zen_media_clips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_media_clips` (
  `clip_id` int(11) NOT NULL auto_increment,
  `media_id` int(11) NOT NULL default '0',
  `clip_type` smallint(6) NOT NULL default '0',
  `clip_filename` text NOT NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`clip_id`),
  KEY `idx_media_id_zen` (`media_id`),
  KEY `idx_clip_type_zen` (`clip_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_media_clips`
--

LOCK TABLES `zen_media_clips` WRITE;
/*!40000 ALTER TABLE `zen_media_clips` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_media_clips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_media_manager`
--

DROP TABLE IF EXISTS `zen_media_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_media_manager` (
  `media_id` int(11) NOT NULL auto_increment,
  `media_name` varchar(255) NOT NULL default '',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`media_id`),
  KEY `idx_media_name_zen` (`media_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_media_manager`
--

LOCK TABLES `zen_media_manager` WRITE;
/*!40000 ALTER TABLE `zen_media_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_media_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_media_to_products`
--

DROP TABLE IF EXISTS `zen_media_to_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_media_to_products` (
  `media_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  KEY `idx_media_product_zen` (`media_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_media_to_products`
--

LOCK TABLES `zen_media_to_products` WRITE;
/*!40000 ALTER TABLE `zen_media_to_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_media_to_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_media_types`
--

DROP TABLE IF EXISTS `zen_media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_media_types` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(64) NOT NULL default '',
  `type_ext` varchar(8) NOT NULL default '',
  PRIMARY KEY  (`type_id`),
  KEY `idx_type_name_zen` (`type_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_media_types`
--

LOCK TABLES `zen_media_types` WRITE;
/*!40000 ALTER TABLE `zen_media_types` DISABLE KEYS */;
INSERT INTO `zen_media_types` VALUES (1,'MP3','.mp3');
/*!40000 ALTER TABLE `zen_media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_meta_tags_categories_description`
--

DROP TABLE IF EXISTS `zen_meta_tags_categories_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_meta_tags_categories_description` (
  `categories_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL default '1',
  `metatags_title` varchar(255) NOT NULL default '',
  `metatags_keywords` text,
  `metatags_description` text,
  PRIMARY KEY  (`categories_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_meta_tags_categories_description`
--

LOCK TABLES `zen_meta_tags_categories_description` WRITE;
/*!40000 ALTER TABLE `zen_meta_tags_categories_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_meta_tags_categories_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_meta_tags_products_description`
--

DROP TABLE IF EXISTS `zen_meta_tags_products_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_meta_tags_products_description` (
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL default '1',
  `metatags_title` varchar(255) NOT NULL default '',
  `metatags_keywords` text,
  `metatags_description` text,
  PRIMARY KEY  (`products_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_meta_tags_products_description`
--

LOCK TABLES `zen_meta_tags_products_description` WRITE;
/*!40000 ALTER TABLE `zen_meta_tags_products_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_meta_tags_products_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_music_genre`
--

DROP TABLE IF EXISTS `zen_music_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_music_genre` (
  `music_genre_id` int(11) NOT NULL auto_increment,
  `music_genre_name` varchar(32) NOT NULL default '',
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`music_genre_id`),
  KEY `idx_music_genre_name_zen` (`music_genre_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_music_genre`
--

LOCK TABLES `zen_music_genre` WRITE;
/*!40000 ALTER TABLE `zen_music_genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_music_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_newsletters`
--

DROP TABLE IF EXISTS `zen_newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_newsletters` (
  `newsletters_id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `content_html` text NOT NULL,
  `module` varchar(255) NOT NULL default '',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_sent` datetime default NULL,
  `status` int(1) default NULL,
  `locked` int(1) default '0',
  PRIMARY KEY  (`newsletters_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_newsletters`
--

LOCK TABLES `zen_newsletters` WRITE;
/*!40000 ALTER TABLE `zen_newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_orders`
--

DROP TABLE IF EXISTS `zen_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_orders` (
  `orders_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `customers_name` varchar(64) NOT NULL default '',
  `customers_company` varchar(64) default NULL,
  `customers_street_address` varchar(64) NOT NULL default '',
  `customers_suburb` varchar(32) default NULL,
  `customers_city` varchar(32) NOT NULL default '',
  `customers_postcode` varchar(10) NOT NULL default '',
  `customers_state` varchar(32) default NULL,
  `customers_country` varchar(32) NOT NULL default '',
  `customers_telephone` varchar(32) NOT NULL default '',
  `customers_email_address` varchar(96) NOT NULL default '',
  `customers_address_format_id` int(5) NOT NULL default '0',
  `delivery_name` varchar(64) NOT NULL default '',
  `delivery_company` varchar(64) default NULL,
  `delivery_street_address` varchar(64) NOT NULL default '',
  `delivery_suburb` varchar(32) default NULL,
  `delivery_city` varchar(32) NOT NULL default '',
  `delivery_postcode` varchar(10) NOT NULL default '',
  `delivery_state` varchar(32) default NULL,
  `delivery_country` varchar(32) NOT NULL default '',
  `delivery_address_format_id` int(5) NOT NULL default '0',
  `billing_name` varchar(64) NOT NULL default '',
  `billing_company` varchar(64) default NULL,
  `billing_street_address` varchar(64) NOT NULL default '',
  `billing_suburb` varchar(32) default NULL,
  `billing_city` varchar(32) NOT NULL default '',
  `billing_postcode` varchar(10) NOT NULL default '',
  `billing_state` varchar(32) default NULL,
  `billing_country` varchar(32) NOT NULL default '',
  `billing_address_format_id` int(5) NOT NULL default '0',
  `payment_method` varchar(128) NOT NULL default '',
  `payment_module_code` varchar(32) NOT NULL default '',
  `shipping_method` varchar(128) NOT NULL default '',
  `shipping_module_code` varchar(32) NOT NULL default '',
  `coupon_code` varchar(32) NOT NULL default '',
  `cc_type` varchar(20) default NULL,
  `cc_owner` varchar(64) default NULL,
  `cc_number` varchar(32) default NULL,
  `cc_expires` varchar(4) default NULL,
  `cc_cvv` blob,
  `last_modified` datetime default NULL,
  `date_purchased` datetime default NULL,
  `orders_status` int(5) NOT NULL default '0',
  `orders_date_finished` datetime default NULL,
  `currency` char(3) default NULL,
  `currency_value` decimal(14,6) default NULL,
  `order_total` decimal(14,2) default NULL,
  `order_tax` decimal(14,2) default NULL,
  `paypal_ipn_id` int(11) NOT NULL default '0',
  `ip_address` varchar(96) NOT NULL default '',
  PRIMARY KEY  (`orders_id`),
  KEY `idx_status_orders_cust_zen` (`orders_status`,`orders_id`,`customers_id`),
  KEY `idx_date_purchased_zen` (`date_purchased`),
  KEY `idx_cust_id_orders_id_zen` (`customers_id`,`orders_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_orders`
--

LOCK TABLES `zen_orders` WRITE;
/*!40000 ALTER TABLE `zen_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_orders_products`
--

DROP TABLE IF EXISTS `zen_orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_orders_products` (
  `orders_products_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `products_id` int(11) NOT NULL default '0',
  `products_model` varchar(32) default NULL,
  `products_name` varchar(64) NOT NULL default '',
  `products_price` decimal(15,4) NOT NULL default '0.0000',
  `final_price` decimal(15,4) NOT NULL default '0.0000',
  `products_tax` decimal(7,4) NOT NULL default '0.0000',
  `products_quantity` float NOT NULL default '0',
  `onetime_charges` decimal(15,4) NOT NULL default '0.0000',
  `products_priced_by_attribute` tinyint(1) NOT NULL default '0',
  `product_is_free` tinyint(1) NOT NULL default '0',
  `products_discount_type` tinyint(1) NOT NULL default '0',
  `products_discount_type_from` tinyint(1) NOT NULL default '0',
  `products_prid` tinytext NOT NULL,
  PRIMARY KEY  (`orders_products_id`),
  KEY `idx_orders_id_prod_id_zen` (`orders_id`,`products_id`),
  KEY `idx_prod_id_orders_id_zen` (`products_id`,`orders_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_orders_products`
--

LOCK TABLES `zen_orders_products` WRITE;
/*!40000 ALTER TABLE `zen_orders_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_orders_products_attributes`
--

DROP TABLE IF EXISTS `zen_orders_products_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `orders_products_id` int(11) NOT NULL default '0',
  `products_options` varchar(32) NOT NULL default '',
  `products_options_values` text NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL default '0.0000',
  `price_prefix` char(1) NOT NULL default '',
  `product_attribute_is_free` tinyint(1) NOT NULL default '0',
  `products_attributes_weight` float NOT NULL default '0',
  `products_attributes_weight_prefix` char(1) NOT NULL default '',
  `attributes_discounted` tinyint(1) NOT NULL default '1',
  `attributes_price_base_included` tinyint(1) NOT NULL default '1',
  `attributes_price_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_qty_prices` text,
  `attributes_qty_prices_onetime` text,
  `attributes_price_words` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_words_free` int(4) NOT NULL default '0',
  `attributes_price_letters` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_letters_free` int(4) NOT NULL default '0',
  `products_options_id` int(11) NOT NULL default '0',
  `products_options_values_id` int(11) NOT NULL default '0',
  `products_prid` tinytext NOT NULL,
  PRIMARY KEY  (`orders_products_attributes_id`),
  KEY `idx_orders_id_prod_id_zen` (`orders_id`,`orders_products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_orders_products_attributes`
--

LOCK TABLES `zen_orders_products_attributes` WRITE;
/*!40000 ALTER TABLE `zen_orders_products_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_orders_products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_orders_products_download`
--

DROP TABLE IF EXISTS `zen_orders_products_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `orders_products_id` int(11) NOT NULL default '0',
  `orders_products_filename` varchar(255) NOT NULL default '',
  `download_maxdays` int(2) NOT NULL default '0',
  `download_count` int(2) NOT NULL default '0',
  `products_prid` tinytext NOT NULL,
  PRIMARY KEY  (`orders_products_download_id`),
  KEY `idx_orders_id_zen` (`orders_id`),
  KEY `idx_orders_products_id_zen` (`orders_products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_orders_products_download`
--

LOCK TABLES `zen_orders_products_download` WRITE;
/*!40000 ALTER TABLE `zen_orders_products_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_orders_products_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_orders_status`
--

DROP TABLE IF EXISTS `zen_orders_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_orders_status` (
  `orders_status_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `orders_status_name` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`orders_status_id`,`language_id`),
  KEY `idx_orders_status_name_zen` (`orders_status_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_orders_status`
--

LOCK TABLES `zen_orders_status` WRITE;
/*!40000 ALTER TABLE `zen_orders_status` DISABLE KEYS */;
INSERT INTO `zen_orders_status` VALUES (1,1,'Pending'),(2,1,'Processing'),(3,1,'Delivered'),(4,1,'Update');
/*!40000 ALTER TABLE `zen_orders_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_orders_status_history`
--

DROP TABLE IF EXISTS `zen_orders_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `orders_status_id` int(5) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `customer_notified` int(1) default '0',
  `comments` text,
  PRIMARY KEY  (`orders_status_history_id`),
  KEY `idx_orders_id_status_id_zen` (`orders_id`,`orders_status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_orders_status_history`
--

LOCK TABLES `zen_orders_status_history` WRITE;
/*!40000 ALTER TABLE `zen_orders_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_orders_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_orders_total`
--

DROP TABLE IF EXISTS `zen_orders_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_orders_total` (
  `orders_total_id` int(10) unsigned NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `text` varchar(255) NOT NULL default '',
  `value` decimal(15,4) NOT NULL default '0.0000',
  `class` varchar(32) NOT NULL default '',
  `sort_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`orders_total_id`),
  KEY `idx_ot_orders_id_zen` (`orders_id`),
  KEY `idx_ot_class_zen` (`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_orders_total`
--

LOCK TABLES `zen_orders_total` WRITE;
/*!40000 ALTER TABLE `zen_orders_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_orders_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_paypal`
--

DROP TABLE IF EXISTS `zen_paypal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_paypal` (
  `paypal_ipn_id` int(11) unsigned NOT NULL auto_increment,
  `order_id` int(11) unsigned NOT NULL default '0',
  `txn_type` varchar(40) NOT NULL default '',
  `module_name` varchar(40) NOT NULL default '',
  `module_mode` varchar(40) NOT NULL default '',
  `reason_code` varchar(40) default NULL,
  `payment_type` varchar(40) NOT NULL default '',
  `payment_status` varchar(32) NOT NULL default '',
  `pending_reason` varchar(32) default NULL,
  `invoice` varchar(128) default NULL,
  `mc_currency` char(3) NOT NULL default '',
  `first_name` varchar(32) NOT NULL default '',
  `last_name` varchar(32) NOT NULL default '',
  `payer_business_name` varchar(128) default NULL,
  `address_name` varchar(64) default NULL,
  `address_street` varchar(254) default NULL,
  `address_city` varchar(120) default NULL,
  `address_state` varchar(120) default NULL,
  `address_zip` varchar(10) default NULL,
  `address_country` varchar(64) default NULL,
  `address_status` varchar(11) default NULL,
  `payer_email` varchar(128) NOT NULL default '',
  `payer_id` varchar(32) NOT NULL default '',
  `payer_status` varchar(10) NOT NULL default '',
  `payment_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `business` varchar(128) NOT NULL default '',
  `receiver_email` varchar(128) NOT NULL default '',
  `receiver_id` varchar(32) NOT NULL default '',
  `txn_id` varchar(20) NOT NULL default '',
  `parent_txn_id` varchar(20) default NULL,
  `num_cart_items` tinyint(4) unsigned NOT NULL default '1',
  `mc_gross` decimal(7,2) NOT NULL default '0.00',
  `mc_fee` decimal(7,2) NOT NULL default '0.00',
  `payment_gross` decimal(7,2) default NULL,
  `payment_fee` decimal(7,2) default NULL,
  `settle_amount` decimal(7,2) default NULL,
  `settle_currency` char(3) default NULL,
  `exchange_rate` decimal(4,2) default NULL,
  `notify_version` varchar(6) NOT NULL default '',
  `verify_sign` varchar(128) NOT NULL default '',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `memo` text,
  PRIMARY KEY  (`paypal_ipn_id`,`txn_id`),
  KEY `idx_order_id_zen` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_paypal`
--

LOCK TABLES `zen_paypal` WRITE;
/*!40000 ALTER TABLE `zen_paypal` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_paypal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_paypal_payment_status`
--

DROP TABLE IF EXISTS `zen_paypal_payment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_paypal_payment_status` (
  `payment_status_id` int(11) NOT NULL auto_increment,
  `payment_status_name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`payment_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_paypal_payment_status`
--

LOCK TABLES `zen_paypal_payment_status` WRITE;
/*!40000 ALTER TABLE `zen_paypal_payment_status` DISABLE KEYS */;
INSERT INTO `zen_paypal_payment_status` VALUES (1,'Completed'),(2,'Pending'),(3,'Failed'),(4,'Denied'),(5,'Refunded'),(6,'Canceled_Reversal'),(7,'Reversed');
/*!40000 ALTER TABLE `zen_paypal_payment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_paypal_payment_status_history`
--

DROP TABLE IF EXISTS `zen_paypal_payment_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_paypal_payment_status_history` (
  `payment_status_history_id` int(11) NOT NULL auto_increment,
  `paypal_ipn_id` int(11) NOT NULL default '0',
  `txn_id` varchar(64) NOT NULL default '',
  `parent_txn_id` varchar(64) NOT NULL default '',
  `payment_status` varchar(17) NOT NULL default '',
  `pending_reason` varchar(14) default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`payment_status_history_id`),
  KEY `idx_paypal_ipn_id_zen` (`paypal_ipn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_paypal_payment_status_history`
--

LOCK TABLES `zen_paypal_payment_status_history` WRITE;
/*!40000 ALTER TABLE `zen_paypal_payment_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_paypal_payment_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_paypal_session`
--

DROP TABLE IF EXISTS `zen_paypal_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_paypal_session` (
  `unique_id` int(11) NOT NULL auto_increment,
  `session_id` text NOT NULL,
  `saved_session` mediumblob NOT NULL,
  `expiry` int(17) NOT NULL default '0',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_session_id_zen` (`session_id`(36))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_paypal_session`
--

LOCK TABLES `zen_paypal_session` WRITE;
/*!40000 ALTER TABLE `zen_paypal_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_paypal_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_paypal_testing`
--

DROP TABLE IF EXISTS `zen_paypal_testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_paypal_testing` (
  `paypal_ipn_id` int(11) unsigned NOT NULL auto_increment,
  `order_id` int(11) unsigned NOT NULL default '0',
  `custom` varchar(255) NOT NULL default '',
  `txn_type` varchar(40) NOT NULL default '',
  `module_name` varchar(40) NOT NULL default '',
  `module_mode` varchar(40) NOT NULL default '',
  `reason_code` varchar(40) default NULL,
  `payment_type` varchar(40) NOT NULL default '',
  `payment_status` varchar(32) NOT NULL default '',
  `pending_reason` varchar(32) default NULL,
  `invoice` varchar(128) default NULL,
  `mc_currency` char(3) NOT NULL default '',
  `first_name` varchar(32) NOT NULL default '',
  `last_name` varchar(32) NOT NULL default '',
  `payer_business_name` varchar(128) default NULL,
  `address_name` varchar(64) default NULL,
  `address_street` varchar(254) default NULL,
  `address_city` varchar(120) default NULL,
  `address_state` varchar(120) default NULL,
  `address_zip` varchar(10) default NULL,
  `address_country` varchar(64) default NULL,
  `address_status` varchar(11) default NULL,
  `payer_email` varchar(128) NOT NULL default '',
  `payer_id` varchar(32) NOT NULL default '',
  `payer_status` varchar(10) NOT NULL default '',
  `payment_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `business` varchar(128) NOT NULL default '',
  `receiver_email` varchar(128) NOT NULL default '',
  `receiver_id` varchar(32) NOT NULL default '',
  `txn_id` varchar(20) NOT NULL default '',
  `parent_txn_id` varchar(20) default NULL,
  `num_cart_items` tinyint(4) unsigned NOT NULL default '1',
  `mc_gross` decimal(7,2) NOT NULL default '0.00',
  `mc_fee` decimal(7,2) NOT NULL default '0.00',
  `payment_gross` decimal(7,2) default NULL,
  `payment_fee` decimal(7,2) default NULL,
  `settle_amount` decimal(7,2) default NULL,
  `settle_currency` char(3) default NULL,
  `exchange_rate` decimal(4,2) default NULL,
  `notify_version` decimal(2,1) NOT NULL default '0.0',
  `verify_sign` varchar(128) NOT NULL default '',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `memo` text,
  PRIMARY KEY  (`paypal_ipn_id`,`txn_id`),
  KEY `idx_order_id_zen` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_paypal_testing`
--

LOCK TABLES `zen_paypal_testing` WRITE;
/*!40000 ALTER TABLE `zen_paypal_testing` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_paypal_testing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_product_music_extra`
--

DROP TABLE IF EXISTS `zen_product_music_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_product_music_extra` (
  `products_id` int(11) NOT NULL default '0',
  `artists_id` int(11) NOT NULL default '0',
  `record_company_id` int(11) NOT NULL default '0',
  `music_genre_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_id`),
  KEY `idx_music_genre_id_zen` (`music_genre_id`),
  KEY `idx_artists_id_zen` (`artists_id`),
  KEY `idx_record_company_id_zen` (`record_company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_product_music_extra`
--

LOCK TABLES `zen_product_music_extra` WRITE;
/*!40000 ALTER TABLE `zen_product_music_extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_product_music_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_product_type_layout`
--

DROP TABLE IF EXISTS `zen_product_type_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_product_type_layout` (
  `configuration_id` int(11) NOT NULL auto_increment,
  `configuration_title` text NOT NULL,
  `configuration_key` varchar(255) NOT NULL default '',
  `configuration_value` text NOT NULL,
  `configuration_description` text NOT NULL,
  `product_type_id` int(11) NOT NULL default '0',
  `sort_order` int(5) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `use_function` text,
  `set_function` text,
  PRIMARY KEY  (`configuration_id`),
  UNIQUE KEY `unq_config_key_zen` (`configuration_key`),
  KEY `idx_key_value_zen` (`configuration_key`,`configuration_value`(10)),
  KEY `idx_type_id_sort_order_zen` (`product_type_id`,`sort_order`)
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_product_type_layout`
--

LOCK TABLES `zen_product_type_layout` WRITE;
/*!40000 ALTER TABLE `zen_product_type_layout` DISABLE KEYS */;
INSERT INTO `zen_product_type_layout` VALUES (1,'Show Model Number','SHOW_PRODUCT_INFO_MODEL','1','Display Model Number on Product Info 0= off 1= on',1,1,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(2,'Show Weight','SHOW_PRODUCT_INFO_WEIGHT','1','Display Weight on Product Info 0= off 1= on',1,2,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(3,'Show Attribute Weight','SHOW_PRODUCT_INFO_WEIGHT_ATTRIBUTES','1','Display Attribute Weight on Product Info 0= off 1= on',1,3,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(4,'Show Manufacturer','SHOW_PRODUCT_INFO_MANUFACTURER','1','Display Manufacturer Name on Product Info 0= off 1= on',1,4,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(5,'Show Quantity in Shopping Cart','SHOW_PRODUCT_INFO_IN_CART_QTY','1','Display Quantity in Current Shopping Cart on Product Info 0= off 1= on',1,5,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(6,'Show Quantity in Stock','SHOW_PRODUCT_INFO_QUANTITY','1','Display Quantity in Stock on Product Info 0= off 1= on',1,6,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(7,'Show Product Reviews Count','SHOW_PRODUCT_INFO_REVIEWS_COUNT','1','Display Product Reviews Count on Product Info 0= off 1= on',1,7,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(8,'Show Product Reviews Button','SHOW_PRODUCT_INFO_REVIEWS','1','Display Product Reviews Button on Product Info 0= off 1= on',1,8,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(9,'Show Date Available','SHOW_PRODUCT_INFO_DATE_AVAILABLE','1','Display Date Available on Product Info 0= off 1= on',1,9,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(10,'Show Date Added','SHOW_PRODUCT_INFO_DATE_ADDED','1','Display Date Added on Product Info 0= off 1= on',1,10,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(11,'Show Product URL','SHOW_PRODUCT_INFO_URL','1','Display URL on Product Info 0= off 1= on',1,11,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(12,'Show Product Additional Images','SHOW_PRODUCT_INFO_ADDITIONAL_IMAGES','1','Display Additional Images on Product Info 0= off 1= on',1,13,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(13,'Show Starting At text on Price','SHOW_PRODUCT_INFO_STARTING_AT','1','Display Starting At text on products with attributes Product Info 0= off 1= on',1,12,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(14,'Product Free Shipping Image Status - Catalog','SHOW_PRODUCT_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH','0','Show the Free Shipping image/text in the catalog?',1,16,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(15,'Product Price Tax Class Default - When adding new products?','DEFAULT_PRODUCT_TAX_CLASS_ID','0','What should the Product Price Tax Class Default ID be when adding new products?',1,100,NULL,'2013-03-02 10:43:59','',''),(16,'Product Virtual Default Status - Skip Shipping Address - When adding new products?','DEFAULT_PRODUCT_PRODUCTS_VIRTUAL','0','Default Virtual Product status to be ON when adding new products?',1,101,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(17,'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?','DEFAULT_PRODUCT_PRODUCTS_IS_ALWAYS_FREE_SHIPPING','0','What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping',1,102,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), '),(18,'Show Model Number','SHOW_PRODUCT_MUSIC_INFO_MODEL','1','Display Model Number on Product Info 0= off 1= on',2,1,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(19,'Show Weight','SHOW_PRODUCT_MUSIC_INFO_WEIGHT','0','Display Weight on Product Info 0= off 1= on',2,2,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(20,'Show Attribute Weight','SHOW_PRODUCT_MUSIC_INFO_WEIGHT_ATTRIBUTES','1','Display Attribute Weight on Product Info 0= off 1= on',2,3,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(21,'Show Artist','SHOW_PRODUCT_MUSIC_INFO_ARTIST','1','Display Artists Name on Product Info 0= off 1= on',2,4,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(22,'Show Music Genre','SHOW_PRODUCT_MUSIC_INFO_GENRE','1','Display Music Genre on Product Info 0= off 1= on',2,4,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(23,'Show Record Company','SHOW_PRODUCT_MUSIC_INFO_RECORD_COMPANY','1','Display Record Company on Product Info 0= off 1= on',2,4,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(24,'Show Quantity in Shopping Cart','SHOW_PRODUCT_MUSIC_INFO_IN_CART_QTY','1','Display Quantity in Current Shopping Cart on Product Info 0= off 1= on',2,5,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(25,'Show Quantity in Stock','SHOW_PRODUCT_MUSIC_INFO_QUANTITY','0','Display Quantity in Stock on Product Info 0= off 1= on',2,6,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(26,'Show Product Reviews Count','SHOW_PRODUCT_MUSIC_INFO_REVIEWS_COUNT','1','Display Product Reviews Count on Product Info 0= off 1= on',2,7,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(27,'Show Product Reviews Button','SHOW_PRODUCT_MUSIC_INFO_REVIEWS','1','Display Product Reviews Button on Product Info 0= off 1= on',2,8,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(28,'Show Date Available','SHOW_PRODUCT_MUSIC_INFO_DATE_AVAILABLE','1','Display Date Available on Product Info 0= off 1= on',2,9,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(29,'Show Date Added','SHOW_PRODUCT_MUSIC_INFO_DATE_ADDED','1','Display Date Added on Product Info 0= off 1= on',2,10,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(30,'Show Starting At text on Price','SHOW_PRODUCT_MUSIC_INFO_STARTING_AT','1','Display Starting At text on products with attributes Product Info 0= off 1= on',2,12,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(31,'Show Product Additional Images','SHOW_PRODUCT_MUSIC_INFO_ADDITIONAL_IMAGES','1','Display Additional Images on Product Info 0= off 1= on',2,13,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(32,'Product Free Shipping Image Status - Catalog','SHOW_PRODUCT_MUSIC_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH','0','Show the Free Shipping image/text in the catalog?',2,16,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(33,'Product Price Tax Class Default - When adding new products?','DEFAULT_PRODUCT_MUSIC_TAX_CLASS_ID','0','What should the Product Price Tax Class Default ID be when adding new products?',2,100,NULL,'2013-03-02 10:43:59','',''),(34,'Product Virtual Default Status - Skip Shipping Address - When adding new products?','DEFAULT_PRODUCT_MUSIC_PRODUCTS_VIRTUAL','0','Default Virtual Product status to be ON when adding new products?',2,101,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(35,'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?','DEFAULT_PRODUCT_MUSIC_PRODUCTS_IS_ALWAYS_FREE_SHIPPING','0','What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping',2,102,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), '),(36,'Show Product Reviews Count','SHOW_DOCUMENT_GENERAL_INFO_REVIEWS_COUNT','1','Display Product Reviews Count on Product Info 0= off 1= on',3,7,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(37,'Show Product Reviews Button','SHOW_DOCUMENT_GENERAL_INFO_REVIEWS','1','Display Product Reviews Button on Product Info 0= off 1= on',3,8,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(38,'Show Date Available','SHOW_DOCUMENT_GENERAL_INFO_DATE_AVAILABLE','1','Display Date Available on Product Info 0= off 1= on',3,9,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(39,'Show Date Added','SHOW_DOCUMENT_GENERAL_INFO_DATE_ADDED','1','Display Date Added on Product Info 0= off 1= on',3,10,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(40,'Show Product URL','SHOW_DOCUMENT_GENERAL_INFO_URL','1','Display URL on Product Info 0= off 1= on',3,11,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(41,'Show Product Additional Images','SHOW_DOCUMENT_GENERAL_INFO_ADDITIONAL_IMAGES','1','Display Additional Images on Product Info 0= off 1= on',3,13,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(42,'Show Model Number','SHOW_DOCUMENT_PRODUCT_INFO_MODEL','1','Display Model Number on Product Info 0= off 1= on',4,1,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(43,'Show Weight','SHOW_DOCUMENT_PRODUCT_INFO_WEIGHT','0','Display Weight on Product Info 0= off 1= on',4,2,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(44,'Show Attribute Weight','SHOW_DOCUMENT_PRODUCT_INFO_WEIGHT_ATTRIBUTES','1','Display Attribute Weight on Product Info 0= off 1= on',4,3,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(45,'Show Manufacturer','SHOW_DOCUMENT_PRODUCT_INFO_MANUFACTURER','1','Display Manufacturer Name on Product Info 0= off 1= on',4,4,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(46,'Show Quantity in Shopping Cart','SHOW_DOCUMENT_PRODUCT_INFO_IN_CART_QTY','1','Display Quantity in Current Shopping Cart on Product Info 0= off 1= on',4,5,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(47,'Show Quantity in Stock','SHOW_DOCUMENT_PRODUCT_INFO_QUANTITY','0','Display Quantity in Stock on Product Info 0= off 1= on',4,6,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(48,'Show Product Reviews Count','SHOW_DOCUMENT_PRODUCT_INFO_REVIEWS_COUNT','1','Display Product Reviews Count on Product Info 0= off 1= on',4,7,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(49,'Show Product Reviews Button','SHOW_DOCUMENT_PRODUCT_INFO_REVIEWS','1','Display Product Reviews Button on Product Info 0= off 1= on',4,8,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(50,'Show Date Available','SHOW_DOCUMENT_PRODUCT_INFO_DATE_AVAILABLE','1','Display Date Available on Product Info 0= off 1= on',4,9,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(51,'Show Date Added','SHOW_DOCUMENT_PRODUCT_INFO_DATE_ADDED','1','Display Date Added on Product Info 0= off 1= on',4,10,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(52,'Show Product URL','SHOW_DOCUMENT_PRODUCT_INFO_URL','1','Display URL on Product Info 0= off 1= on',4,11,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(53,'Show Product Additional Images','SHOW_DOCUMENT_PRODUCT_INFO_ADDITIONAL_IMAGES','1','Display Additional Images on Product Info 0= off 1= on',4,13,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(54,'Show Starting At text on Price','SHOW_DOCUMENT_PRODUCT_INFO_STARTING_AT','1','Display Starting At text on products with attributes Product Info 0= off 1= on',4,12,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(55,'Product Free Shipping Image Status - Catalog','SHOW_DOCUMENT_PRODUCT_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH','0','Show the Free Shipping image/text in the catalog?',4,16,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(56,'Product Price Tax Class Default - When adding new products?','DEFAULT_DOCUMENT_PRODUCT_TAX_CLASS_ID','0','What should the Product Price Tax Class Default ID be when adding new products?',4,100,NULL,'2013-03-02 10:43:59','',''),(57,'Product Virtual Default Status - Skip Shipping Address - When adding new products?','DEFAULT_DOCUMENT_PRODUCT_PRODUCTS_VIRTUAL','0','Default Virtual Product status to be ON when adding new products?',4,101,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(58,'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?','DEFAULT_DOCUMENT_PRODUCT_PRODUCTS_IS_ALWAYS_FREE_SHIPPING','0','What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping',4,102,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), '),(59,'Show Model Number','SHOW_PRODUCT_FREE_SHIPPING_INFO_MODEL','1','Display Model Number on Product Info 0= off 1= on',5,1,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(60,'Show Weight','SHOW_PRODUCT_FREE_SHIPPING_INFO_WEIGHT','0','Display Weight on Product Info 0= off 1= on',5,2,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(61,'Show Attribute Weight','SHOW_PRODUCT_FREE_SHIPPING_INFO_WEIGHT_ATTRIBUTES','1','Display Attribute Weight on Product Info 0= off 1= on',5,3,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(62,'Show Manufacturer','SHOW_PRODUCT_FREE_SHIPPING_INFO_MANUFACTURER','1','Display Manufacturer Name on Product Info 0= off 1= on',5,4,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(63,'Show Quantity in Shopping Cart','SHOW_PRODUCT_FREE_SHIPPING_INFO_IN_CART_QTY','1','Display Quantity in Current Shopping Cart on Product Info 0= off 1= on',5,5,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(64,'Show Quantity in Stock','SHOW_PRODUCT_FREE_SHIPPING_INFO_QUANTITY','1','Display Quantity in Stock on Product Info 0= off 1= on',5,6,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(65,'Show Product Reviews Count','SHOW_PRODUCT_FREE_SHIPPING_INFO_REVIEWS_COUNT','1','Display Product Reviews Count on Product Info 0= off 1= on',5,7,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(66,'Show Product Reviews Button','SHOW_PRODUCT_FREE_SHIPPING_INFO_REVIEWS','1','Display Product Reviews Button on Product Info 0= off 1= on',5,8,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(67,'Show Date Available','SHOW_PRODUCT_FREE_SHIPPING_INFO_DATE_AVAILABLE','0','Display Date Available on Product Info 0= off 1= on',5,9,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(68,'Show Date Added','SHOW_PRODUCT_FREE_SHIPPING_INFO_DATE_ADDED','1','Display Date Added on Product Info 0= off 1= on',5,10,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(69,'Show Product URL','SHOW_PRODUCT_FREE_SHIPPING_INFO_URL','1','Display URL on Product Info 0= off 1= on',5,11,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(70,'Show Product Additional Images','SHOW_PRODUCT_FREE_SHIPPING_INFO_ADDITIONAL_IMAGES','1','Display Additional Images on Product Info 0= off 1= on',5,13,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(71,'Show Starting At text on Price','SHOW_PRODUCT_FREE_SHIPPING_INFO_STARTING_AT','1','Display Starting At text on products with attributes Product Info 0= off 1= on',5,12,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(72,'Product Free Shipping Image Status - Catalog','SHOW_PRODUCT_FREE_SHIPPING_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH','1','Show the Free Shipping image/text in the catalog?',5,16,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(73,'Product Price Tax Class Default - When adding new products?','DEFAULT_PRODUCT_FREE_SHIPPING_TAX_CLASS_ID','0','What should the Product Price Tax Class Default ID be when adding new products?',5,100,NULL,'2013-03-02 10:43:59','',''),(74,'Product Virtual Default Status - Skip Shipping Address - When adding new products?','DEFAULT_PRODUCT_FREE_SHIPPING_PRODUCTS_VIRTUAL','0','Default Virtual Product status to be ON when adding new products?',5,101,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(75,'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?','DEFAULT_PRODUCT_FREE_SHIPPING_PRODUCTS_IS_ALWAYS_FREE_SHIPPING','1','What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping',5,102,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), '),(76,'Show Metatags Title Default - Product Title','SHOW_PRODUCT_INFO_METATAGS_TITLE_STATUS','1','Display Product Title in Meta Tags Title 0= off 1= on',1,50,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(77,'Show Metatags Title Default - Product Name','SHOW_PRODUCT_INFO_METATAGS_PRODUCTS_NAME_STATUS','1','Display Product Name in Meta Tags Title 0= off 1= on',1,51,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(78,'Show Metatags Title Default - Product Model','SHOW_PRODUCT_INFO_METATAGS_MODEL_STATUS','1','Display Product Model in Meta Tags Title 0= off 1= on',1,52,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(79,'Show Metatags Title Default - Product Price','SHOW_PRODUCT_INFO_METATAGS_PRICE_STATUS','1','Display Product Price in Meta Tags Title 0= off 1= on',1,53,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(80,'Show Metatags Title Default - Product Tagline','SHOW_PRODUCT_INFO_METATAGS_TITLE_TAGLINE_STATUS','1','Display Product Tagline in Meta Tags Title 0= off 1= on',1,54,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(81,'Show Metatags Title Default - Product Title','SHOW_PRODUCT_MUSIC_INFO_METATAGS_TITLE_STATUS','1','Display Product Title in Meta Tags Title 0= off 1= on',2,50,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(82,'Show Metatags Title Default - Product Name','SHOW_PRODUCT_MUSIC_INFO_METATAGS_PRODUCTS_NAME_STATUS','1','Display Product Name in Meta Tags Title 0= off 1= on',2,51,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(83,'Show Metatags Title Default - Product Model','SHOW_PRODUCT_MUSIC_INFO_METATAGS_MODEL_STATUS','1','Display Product Model in Meta Tags Title 0= off 1= on',2,52,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(84,'Show Metatags Title Default - Product Price','SHOW_PRODUCT_MUSIC_INFO_METATAGS_PRICE_STATUS','1','Display Product Price in Meta Tags Title 0= off 1= on',2,53,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(85,'Show Metatags Title Default - Product Tagline','SHOW_PRODUCT_MUSIC_INFO_METATAGS_TITLE_TAGLINE_STATUS','1','Display Product Tagline in Meta Tags Title 0= off 1= on',2,54,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(86,'Show Metatags Title Default - Document Title','SHOW_DOCUMENT_GENERAL_INFO_METATAGS_TITLE_STATUS','1','Display Document Title in Meta Tags Title 0= off 1= on',3,50,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(87,'Show Metatags Title Default - Document Name','SHOW_DOCUMENT_GENERAL_INFO_METATAGS_PRODUCTS_NAME_STATUS','1','Display Document Name in Meta Tags Title 0= off 1= on',3,51,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(88,'Show Metatags Title Default - Document Tagline','SHOW_DOCUMENT_GENERAL_INFO_METATAGS_TITLE_TAGLINE_STATUS','1','Display Document Tagline in Meta Tags Title 0= off 1= on',3,54,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(89,'Show Metatags Title Default - Document Title','SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_TITLE_STATUS','1','Display Document Title in Meta Tags Title 0= off 1= on',4,50,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(90,'Show Metatags Title Default - Document Name','SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_PRODUCTS_NAME_STATUS','1','Display Document Name in Meta Tags Title 0= off 1= on',4,51,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(91,'Show Metatags Title Default - Document Model','SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_MODEL_STATUS','1','Display Document Model in Meta Tags Title 0= off 1= on',4,52,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(92,'Show Metatags Title Default - Document Price','SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_PRICE_STATUS','1','Display Document Price in Meta Tags Title 0= off 1= on',4,53,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(93,'Show Metatags Title Default - Document Tagline','SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_TITLE_TAGLINE_STATUS','1','Display Document Tagline in Meta Tags Title 0= off 1= on',4,54,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(94,'Show Metatags Title Default - Product Title','SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_TITLE_STATUS','1','Display Product Title in Meta Tags Title 0= off 1= on',5,50,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(95,'Show Metatags Title Default - Product Name','SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_PRODUCTS_NAME_STATUS','1','Display Product Name in Meta Tags Title 0= off 1= on',5,51,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(96,'Show Metatags Title Default - Product Model','SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_MODEL_STATUS','1','Display Product Model in Meta Tags Title 0= off 1= on',5,52,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(97,'Show Metatags Title Default - Product Price','SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_PRICE_STATUS','1','Display Product Price in Meta Tags Title 0= off 1= on',5,53,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(98,'Show Metatags Title Default - Product Tagline','SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_TITLE_TAGLINE_STATUS','1','Display Product Tagline in Meta Tags Title 0= off 1= on',5,54,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(99,'PRODUCT Attribute is Display Only - Default','DEFAULT_PRODUCT_ATTRIBUTES_DISPLAY_ONLY','0','PRODUCT Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes',1,200,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(100,'PRODUCT Attribute is Free - Default','DEFAULT_PRODUCT_ATTRIBUTE_IS_FREE','1','PRODUCT Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes',1,201,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(101,'PRODUCT Attribute is Default - Default','DEFAULT_PRODUCT_ATTRIBUTES_DEFAULT','0','PRODUCT Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes',1,202,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(102,'PRODUCT Attribute is Discounted - Default','DEFAULT_PRODUCT_ATTRIBUTES_DISCOUNTED','1','PRODUCT Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes',1,203,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(103,'PRODUCT Attribute is Included in Base Price - Default','DEFAULT_PRODUCT_ATTRIBUTES_PRICE_BASE_INCLUDED','1','PRODUCT Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes',1,204,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(104,'PRODUCT Attribute is Required - Default','DEFAULT_PRODUCT_ATTRIBUTES_REQUIRED','0','PRODUCT Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes',1,205,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(105,'PRODUCT Attribute Price Prefix - Default','DEFAULT_PRODUCT_PRICE_PREFIX','1','PRODUCT Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -',1,206,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(106,'PRODUCT Attribute Weight Prefix - Default','DEFAULT_PRODUCT_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX','1','PRODUCT Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -',1,207,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(107,'MUSIC Attribute is Display Only - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_DISPLAY_ONLY','0','MUSIC Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes',2,200,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(108,'MUSIC Attribute is Free - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTE_IS_FREE','1','MUSIC Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes',2,201,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(109,'MUSIC Attribute is Default - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_DEFAULT','0','MUSIC Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes',2,202,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(110,'MUSIC Attribute is Discounted - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_DISCOUNTED','1','MUSIC Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes',2,203,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(111,'MUSIC Attribute is Included in Base Price - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_PRICE_BASE_INCLUDED','1','MUSIC Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes',2,204,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(112,'MUSIC Attribute is Required - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_REQUIRED','0','MUSIC Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes',2,205,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(113,'MUSIC Attribute Price Prefix - Default','DEFAULT_PRODUCT_MUSIC_PRICE_PREFIX','1','MUSIC Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -',2,206,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(114,'MUSIC Attribute Weight Prefix - Default','DEFAULT_PRODUCT_MUSIC_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX','1','MUSIC Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -',2,207,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(115,'DOCUMENT GENERAL Attribute is Display Only - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_DISPLAY_ONLY','0','DOCUMENT GENERAL Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes',3,200,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(116,'DOCUMENT GENERAL Attribute is Free - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTE_IS_FREE','1','DOCUMENT GENERAL Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes',3,201,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(117,'DOCUMENT GENERAL Attribute is Default - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_DEFAULT','0','DOCUMENT GENERAL Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes',3,202,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(118,'DOCUMENT GENERAL Attribute is Discounted - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_DISCOUNTED','1','DOCUMENT GENERAL Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes',3,203,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(119,'DOCUMENT GENERAL Attribute is Included in Base Price - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_PRICE_BASE_INCLUDED','1','DOCUMENT GENERAL Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes',3,204,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(120,'DOCUMENT GENERAL Attribute is Required - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_REQUIRED','0','DOCUMENT GENERAL Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes',3,205,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(121,'DOCUMENT GENERAL Attribute Price Prefix - Default','DEFAULT_DOCUMENT_GENERAL_PRICE_PREFIX','1','DOCUMENT GENERAL Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -',3,206,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(122,'DOCUMENT GENERAL Attribute Weight Prefix - Default','DEFAULT_DOCUMENT_GENERAL_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX','1','DOCUMENT GENERAL Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -',3,207,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(123,'DOCUMENT PRODUCT Attribute is Display Only - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_DISPLAY_ONLY','0','DOCUMENT PRODUCT Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes',4,200,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(124,'DOCUMENT PRODUCT Attribute is Free - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTE_IS_FREE','1','DOCUMENT PRODUCT Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes',4,201,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(125,'DOCUMENT PRODUCT Attribute is Default - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_DEFAULT','0','DOCUMENT PRODUCT Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes',4,202,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(126,'DOCUMENT PRODUCT Attribute is Discounted - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_DISCOUNTED','1','DOCUMENT PRODUCT Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes',4,203,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(127,'DOCUMENT PRODUCT Attribute is Included in Base Price - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_PRICE_BASE_INCLUDED','1','DOCUMENT PRODUCT Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes',4,204,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(128,'DOCUMENT PRODUCT Attribute is Required - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_REQUIRED','0','DOCUMENT PRODUCT Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes',4,205,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(129,'DOCUMENT PRODUCT Attribute Price Prefix - Default','DEFAULT_DOCUMENT_PRODUCT_PRICE_PREFIX','1','DOCUMENT PRODUCT Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -',4,206,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(130,'DOCUMENT PRODUCT Attribute Weight Prefix - Default','DEFAULT_DOCUMENT_PRODUCT_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX','1','DOCUMENT PRODUCT Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -',4,207,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(131,'PRODUCT FREE SHIPPING Attribute is Display Only - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_DISPLAY_ONLY','0','PRODUCT FREE SHIPPING Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes',5,201,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(132,'PRODUCT FREE SHIPPING Attribute is Free - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTE_IS_FREE','1','PRODUCT FREE SHIPPING Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes',5,201,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(133,'PRODUCT FREE SHIPPING Attribute is Default - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_DEFAULT','0','PRODUCT FREE SHIPPING Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes',5,202,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(134,'PRODUCT FREE SHIPPING Attribute is Discounted - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_DISCOUNTED','1','PRODUCT FREE SHIPPING Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes',5,203,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(135,'PRODUCT FREE SHIPPING Attribute is Included in Base Price - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_PRICE_BASE_INCLUDED','1','PRODUCT FREE SHIPPING Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes',5,204,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(136,'PRODUCT FREE SHIPPING Attribute is Required - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_REQUIRED','0','PRODUCT FREE SHIPPING Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes',5,205,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(137,'PRODUCT FREE SHIPPING Attribute Price Prefix - Default','DEFAULT_PRODUCT_FREE_SHIPPING_PRICE_PREFIX','1','PRODUCT FREE SHIPPING Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -',5,206,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(138,'PRODUCT FREE SHIPPING Attribute Weight Prefix - Default','DEFAULT_PRODUCT_FREE_SHIPPING_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX','1','PRODUCT FREE SHIPPING Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -',5,207,NULL,'2013-03-02 10:43:59',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), ');
/*!40000 ALTER TABLE `zen_product_type_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_product_types`
--

DROP TABLE IF EXISTS `zen_product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_product_types` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(255) NOT NULL default '',
  `type_handler` varchar(255) NOT NULL default '',
  `type_master_type` int(11) NOT NULL default '1',
  `allow_add_to_cart` char(1) NOT NULL default 'Y',
  `default_image` varchar(255) NOT NULL default '',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`type_id`),
  KEY `idx_type_master_type_zen` (`type_master_type`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_product_types`
--

LOCK TABLES `zen_product_types` WRITE;
/*!40000 ALTER TABLE `zen_product_types` DISABLE KEYS */;
INSERT INTO `zen_product_types` VALUES (1,'Product - General','product',1,'Y','','2013-03-02 10:43:59','2013-03-02 10:43:59'),(2,'Product - Music','product_music',1,'Y','','2013-03-02 10:43:59','2013-03-02 10:43:59'),(3,'Document - General','document_general',3,'N','','2013-03-02 10:43:59','2013-03-02 10:43:59'),(4,'Document - Product','document_product',3,'Y','','2013-03-02 10:43:59','2013-03-02 10:43:59'),(5,'Product - Free Shipping','product_free_shipping',1,'Y','','2013-03-02 10:43:59','2013-03-02 10:43:59');
/*!40000 ALTER TABLE `zen_product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_product_types_to_category`
--

DROP TABLE IF EXISTS `zen_product_types_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_product_types_to_category` (
  `product_type_id` int(11) NOT NULL default '0',
  `category_id` int(11) NOT NULL default '0',
  KEY `idx_category_id_zen` (`category_id`),
  KEY `idx_product_type_id_zen` (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_product_types_to_category`
--

LOCK TABLES `zen_product_types_to_category` WRITE;
/*!40000 ALTER TABLE `zen_product_types_to_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_product_types_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_products`
--

DROP TABLE IF EXISTS `zen_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_products` (
  `products_id` int(11) NOT NULL auto_increment,
  `products_type` int(11) NOT NULL default '1',
  `products_quantity` float NOT NULL default '0',
  `products_model` varchar(32) default NULL,
  `products_image` varchar(64) default NULL,
  `products_price` decimal(15,4) NOT NULL default '0.0000',
  `products_virtual` tinyint(1) NOT NULL default '0',
  `products_date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `products_last_modified` datetime default NULL,
  `products_date_available` datetime default NULL,
  `products_weight` float NOT NULL default '0',
  `products_status` tinyint(1) NOT NULL default '0',
  `products_tax_class_id` int(11) NOT NULL default '0',
  `manufacturers_id` int(11) default NULL,
  `products_ordered` float NOT NULL default '0',
  `products_quantity_order_min` float NOT NULL default '1',
  `products_quantity_order_units` float NOT NULL default '1',
  `products_priced_by_attribute` tinyint(1) NOT NULL default '0',
  `product_is_free` tinyint(1) NOT NULL default '0',
  `product_is_call` tinyint(1) NOT NULL default '0',
  `products_quantity_mixed` tinyint(1) NOT NULL default '0',
  `product_is_always_free_shipping` tinyint(1) NOT NULL default '0',
  `products_qty_box_status` tinyint(1) NOT NULL default '1',
  `products_quantity_order_max` float NOT NULL default '0',
  `products_sort_order` int(11) NOT NULL default '0',
  `products_discount_type` tinyint(1) NOT NULL default '0',
  `products_discount_type_from` tinyint(1) NOT NULL default '0',
  `products_price_sorter` decimal(15,4) NOT NULL default '0.0000',
  `master_categories_id` int(11) NOT NULL default '0',
  `products_mixed_discount_quantity` tinyint(1) NOT NULL default '1',
  `metatags_title_status` tinyint(1) NOT NULL default '0',
  `metatags_products_name_status` tinyint(1) NOT NULL default '0',
  `metatags_model_status` tinyint(1) NOT NULL default '0',
  `metatags_price_status` tinyint(1) NOT NULL default '0',
  `metatags_title_tagline_status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`products_id`),
  KEY `idx_products_date_added_zen` (`products_date_added`),
  KEY `idx_products_status_zen` (`products_status`),
  KEY `idx_products_date_available_zen` (`products_date_available`),
  KEY `idx_products_ordered_zen` (`products_ordered`),
  KEY `idx_products_model_zen` (`products_model`),
  KEY `idx_products_price_sorter_zen` (`products_price_sorter`),
  KEY `idx_master_categories_id_zen` (`master_categories_id`),
  KEY `idx_products_sort_order_zen` (`products_sort_order`),
  KEY `idx_manufacturers_id_zen` (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_products`
--

LOCK TABLES `zen_products` WRITE;
/*!40000 ALTER TABLE `zen_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_products_attributes`
--

DROP TABLE IF EXISTS `zen_products_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_products_attributes` (
  `products_attributes_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `options_id` int(11) NOT NULL default '0',
  `options_values_id` int(11) NOT NULL default '0',
  `options_values_price` decimal(15,4) NOT NULL default '0.0000',
  `price_prefix` char(1) NOT NULL default '',
  `products_options_sort_order` int(11) NOT NULL default '0',
  `product_attribute_is_free` tinyint(1) NOT NULL default '0',
  `products_attributes_weight` float NOT NULL default '0',
  `products_attributes_weight_prefix` char(1) NOT NULL default '',
  `attributes_display_only` tinyint(1) NOT NULL default '0',
  `attributes_default` tinyint(1) NOT NULL default '0',
  `attributes_discounted` tinyint(1) NOT NULL default '1',
  `attributes_image` varchar(64) default NULL,
  `attributes_price_base_included` tinyint(1) NOT NULL default '1',
  `attributes_price_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_qty_prices` text,
  `attributes_qty_prices_onetime` text,
  `attributes_price_words` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_words_free` int(4) NOT NULL default '0',
  `attributes_price_letters` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_letters_free` int(4) NOT NULL default '0',
  `attributes_required` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`products_attributes_id`),
  KEY `idx_id_options_id_values_zen` (`products_id`,`options_id`,`options_values_id`),
  KEY `idx_opt_sort_order_zen` (`products_options_sort_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_products_attributes`
--

LOCK TABLES `zen_products_attributes` WRITE;
/*!40000 ALTER TABLE `zen_products_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_products_attributes_download`
--

DROP TABLE IF EXISTS `zen_products_attributes_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL default '0',
  `products_attributes_filename` varchar(255) NOT NULL default '',
  `products_attributes_maxdays` int(2) default '0',
  `products_attributes_maxcount` int(2) default '0',
  PRIMARY KEY  (`products_attributes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_products_attributes_download`
--

LOCK TABLES `zen_products_attributes_download` WRITE;
/*!40000 ALTER TABLE `zen_products_attributes_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_products_attributes_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_products_description`
--

DROP TABLE IF EXISTS `zen_products_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_products_description` (
  `products_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL default '1',
  `products_name` varchar(64) NOT NULL default '',
  `products_description` text,
  `products_url` varchar(255) default NULL,
  `products_viewed` int(5) default '0',
  PRIMARY KEY  (`products_id`,`language_id`),
  KEY `idx_products_name_zen` (`products_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_products_description`
--

LOCK TABLES `zen_products_description` WRITE;
/*!40000 ALTER TABLE `zen_products_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_products_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_products_discount_quantity`
--

DROP TABLE IF EXISTS `zen_products_discount_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_products_discount_quantity` (
  `discount_id` int(4) NOT NULL default '0',
  `products_id` int(11) NOT NULL default '0',
  `discount_qty` float NOT NULL default '0',
  `discount_price` decimal(15,4) NOT NULL default '0.0000',
  KEY `idx_id_qty_zen` (`products_id`,`discount_qty`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_products_discount_quantity`
--

LOCK TABLES `zen_products_discount_quantity` WRITE;
/*!40000 ALTER TABLE `zen_products_discount_quantity` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_products_discount_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_products_notifications`
--

DROP TABLE IF EXISTS `zen_products_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_products_notifications` (
  `products_id` int(11) NOT NULL default '0',
  `customers_id` int(11) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`products_id`,`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_products_notifications`
--

LOCK TABLES `zen_products_notifications` WRITE;
/*!40000 ALTER TABLE `zen_products_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_products_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_products_options`
--

DROP TABLE IF EXISTS `zen_products_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_products_options` (
  `products_options_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `products_options_name` varchar(32) NOT NULL default '',
  `products_options_sort_order` int(11) NOT NULL default '0',
  `products_options_type` int(5) NOT NULL default '0',
  `products_options_length` smallint(2) NOT NULL default '32',
  `products_options_comment` varchar(64) default NULL,
  `products_options_size` smallint(2) NOT NULL default '32',
  `products_options_images_per_row` int(2) default '5',
  `products_options_images_style` int(1) default '0',
  `products_options_rows` smallint(2) NOT NULL default '1',
  PRIMARY KEY  (`products_options_id`,`language_id`),
  KEY `idx_lang_id_zen` (`language_id`),
  KEY `idx_products_options_sort_order_zen` (`products_options_sort_order`),
  KEY `idx_products_options_name_zen` (`products_options_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_products_options`
--

LOCK TABLES `zen_products_options` WRITE;
/*!40000 ALTER TABLE `zen_products_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_products_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_products_options_types`
--

DROP TABLE IF EXISTS `zen_products_options_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_products_options_types` (
  `products_options_types_id` int(11) NOT NULL default '0',
  `products_options_types_name` varchar(32) default NULL,
  PRIMARY KEY  (`products_options_types_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Track products_options_types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_products_options_types`
--

LOCK TABLES `zen_products_options_types` WRITE;
/*!40000 ALTER TABLE `zen_products_options_types` DISABLE KEYS */;
INSERT INTO `zen_products_options_types` VALUES (0,'Dropdown'),(1,'Text'),(2,'Radio'),(3,'Checkbox'),(4,'File'),(5,'Read Only');
/*!40000 ALTER TABLE `zen_products_options_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_products_options_values`
--

DROP TABLE IF EXISTS `zen_products_options_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_products_options_values` (
  `products_options_values_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `products_options_values_name` varchar(64) NOT NULL default '',
  `products_options_values_sort_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_options_values_id`,`language_id`),
  KEY `idx_products_options_values_name_zen` (`products_options_values_name`),
  KEY `idx_products_options_values_sort_order_zen` (`products_options_values_sort_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_products_options_values`
--

LOCK TABLES `zen_products_options_values` WRITE;
/*!40000 ALTER TABLE `zen_products_options_values` DISABLE KEYS */;
INSERT INTO `zen_products_options_values` VALUES (0,1,'TEXT',0);
/*!40000 ALTER TABLE `zen_products_options_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_products_options_values_to_products_options`
--

DROP TABLE IF EXISTS `zen_products_options_values_to_products_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL auto_increment,
  `products_options_id` int(11) NOT NULL default '0',
  `products_options_values_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_options_values_to_products_options_id`),
  KEY `idx_products_options_id_zen` (`products_options_id`),
  KEY `idx_products_options_values_id_zen` (`products_options_values_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_products_options_values_to_products_options`
--

LOCK TABLES `zen_products_options_values_to_products_options` WRITE;
/*!40000 ALTER TABLE `zen_products_options_values_to_products_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_products_options_values_to_products_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_products_to_categories`
--

DROP TABLE IF EXISTS `zen_products_to_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_products_to_categories` (
  `products_id` int(11) NOT NULL default '0',
  `categories_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_id`,`categories_id`),
  KEY `idx_cat_prod_id_zen` (`categories_id`,`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_products_to_categories`
--

LOCK TABLES `zen_products_to_categories` WRITE;
/*!40000 ALTER TABLE `zen_products_to_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_products_to_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_project_version`
--

DROP TABLE IF EXISTS `zen_project_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_project_version` (
  `project_version_id` tinyint(3) NOT NULL auto_increment,
  `project_version_key` varchar(40) NOT NULL default '',
  `project_version_major` varchar(20) NOT NULL default '',
  `project_version_minor` varchar(20) NOT NULL default '',
  `project_version_patch1` varchar(20) NOT NULL default '',
  `project_version_patch2` varchar(20) NOT NULL default '',
  `project_version_patch1_source` varchar(20) NOT NULL default '',
  `project_version_patch2_source` varchar(20) NOT NULL default '',
  `project_version_comment` varchar(250) NOT NULL default '',
  `project_version_date_applied` datetime NOT NULL default '0001-01-01 01:01:01',
  PRIMARY KEY  (`project_version_id`),
  UNIQUE KEY `idx_project_version_key_zen` (`project_version_key`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Database Version Tracking';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_project_version`
--

LOCK TABLES `zen_project_version` WRITE;
/*!40000 ALTER TABLE `zen_project_version` DISABLE KEYS */;
INSERT INTO `zen_project_version` VALUES (1,'Zen-Cart Main','1','5.1','','','','','New Installation','2013-03-02 10:43:59'),(2,'Zen-Cart Database','1','5.1','','','','','New Installation','2013-03-02 10:43:59');
/*!40000 ALTER TABLE `zen_project_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_project_version_history`
--

DROP TABLE IF EXISTS `zen_project_version_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_project_version_history` (
  `project_version_id` tinyint(3) NOT NULL auto_increment,
  `project_version_key` varchar(40) NOT NULL default '',
  `project_version_major` varchar(20) NOT NULL default '',
  `project_version_minor` varchar(20) NOT NULL default '',
  `project_version_patch` varchar(20) NOT NULL default '',
  `project_version_comment` varchar(250) NOT NULL default '',
  `project_version_date_applied` datetime NOT NULL default '0001-01-01 01:01:01',
  PRIMARY KEY  (`project_version_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Database Version Tracking History';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_project_version_history`
--

LOCK TABLES `zen_project_version_history` WRITE;
/*!40000 ALTER TABLE `zen_project_version_history` DISABLE KEYS */;
INSERT INTO `zen_project_version_history` VALUES (1,'Zen-Cart Main','1','5.1','','New Installation','2013-03-02 10:43:59'),(2,'Zen-Cart Database','1','5.1','','New Installation','2013-03-02 10:43:59');
/*!40000 ALTER TABLE `zen_project_version_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_query_builder`
--

DROP TABLE IF EXISTS `zen_query_builder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_query_builder` (
  `query_id` int(11) NOT NULL auto_increment,
  `query_category` varchar(40) NOT NULL default '',
  `query_name` varchar(80) NOT NULL default '',
  `query_description` text NOT NULL,
  `query_string` text NOT NULL,
  `query_keys_list` text NOT NULL,
  PRIMARY KEY  (`query_id`),
  UNIQUE KEY `query_name` (`query_name`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Stores queries for re-use in Admin email and report modules';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_query_builder`
--

LOCK TABLES `zen_query_builder` WRITE;
/*!40000 ALTER TABLE `zen_query_builder` DISABLE KEYS */;
INSERT INTO `zen_query_builder` VALUES (1,'email','All Customers','Returns all customers name and email address for sending mass emails (ie: for newsletters, coupons, GVs, messages, etc).','select customers_email_address, customers_firstname, customers_lastname from TABLE_CUSTOMERS order by customers_lastname, customers_firstname, customers_email_address',''),(2,'email,newsletters','All Newsletter Subscribers','Returns name and email address of newsletter subscribers','select customers_firstname, customers_lastname, customers_email_address from TABLE_CUSTOMERS where customers_newsletter = \'1\'',''),(3,'email,newsletters','Dormant Customers (>3months) (Subscribers)','Subscribers who HAVE purchased something, but have NOT purchased for at least three months.','select o.date_purchased, c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c, TABLE_ORDERS o WHERE c.customers_id = o.customers_id AND c.customers_newsletter = 1 GROUP BY c.customers_email_address HAVING max(o.date_purchased) <= subdate(now(),INTERVAL 3 MONTH) ORDER BY c.customers_lastname, c.customers_firstname ASC',''),(4,'email,newsletters','Active customers in past 3 months (Subscribers)','Newsletter subscribers who are also active customers (purchased something) in last 3 months.','select c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c, TABLE_ORDERS o where c.customers_newsletter = \'1\' AND c.customers_id = o.customers_id and o.date_purchased > subdate(now(),INTERVAL 3 MONTH) GROUP BY c.customers_email_address order by c.customers_lastname, c.customers_firstname ASC',''),(5,'email,newsletters','Active customers in past 3 months (Regardless of subscription status)','All active customers (purchased something) in last 3 months, ignoring newsletter-subscription status.','select c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c, TABLE_ORDERS o WHERE c.customers_id = o.customers_id and o.date_purchased > subdate(now(),INTERVAL 3 MONTH) GROUP BY c.customers_email_address order by c.customers_lastname, c.customers_firstname ASC',''),(6,'email,newsletters','Administrator','Just the email account of the current administrator','select \'ADMIN\' as customers_firstname, admin_name as customers_lastname, admin_email as customers_email_address from TABLE_ADMIN where admin_id = $SESSION:admin_id',''),(7,'email,newsletters','Customers who have never completed a purchase','For sending newsletter to all customers who registered but have never completed a purchase','SELECT DISTINCT c.customers_email_address as customers_email_address, c.customers_lastname as customers_lastname, c.customers_firstname as customers_firstname FROM TABLE_CUSTOMERS c LEFT JOIN  TABLE_ORDERS o ON c.customers_id=o.customers_id WHERE o.date_purchased IS NULL','');
/*!40000 ALTER TABLE `zen_query_builder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_record_artists`
--

DROP TABLE IF EXISTS `zen_record_artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_record_artists` (
  `artists_id` int(11) NOT NULL auto_increment,
  `artists_name` varchar(32) NOT NULL default '',
  `artists_image` varchar(64) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`artists_id`),
  KEY `idx_rec_artists_name_zen` (`artists_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_record_artists`
--

LOCK TABLES `zen_record_artists` WRITE;
/*!40000 ALTER TABLE `zen_record_artists` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_record_artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_record_artists_info`
--

DROP TABLE IF EXISTS `zen_record_artists_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_record_artists_info` (
  `artists_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `artists_url` varchar(255) NOT NULL default '',
  `url_clicked` int(5) NOT NULL default '0',
  `date_last_click` datetime default NULL,
  PRIMARY KEY  (`artists_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_record_artists_info`
--

LOCK TABLES `zen_record_artists_info` WRITE;
/*!40000 ALTER TABLE `zen_record_artists_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_record_artists_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_record_company`
--

DROP TABLE IF EXISTS `zen_record_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_record_company` (
  `record_company_id` int(11) NOT NULL auto_increment,
  `record_company_name` varchar(32) NOT NULL default '',
  `record_company_image` varchar(64) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`record_company_id`),
  KEY `idx_rec_company_name_zen` (`record_company_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_record_company`
--

LOCK TABLES `zen_record_company` WRITE;
/*!40000 ALTER TABLE `zen_record_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_record_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_record_company_info`
--

DROP TABLE IF EXISTS `zen_record_company_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_record_company_info` (
  `record_company_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `record_company_url` varchar(255) NOT NULL default '',
  `url_clicked` int(5) NOT NULL default '0',
  `date_last_click` datetime default NULL,
  PRIMARY KEY  (`record_company_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_record_company_info`
--

LOCK TABLES `zen_record_company_info` WRITE;
/*!40000 ALTER TABLE `zen_record_company_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_record_company_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_reviews`
--

DROP TABLE IF EXISTS `zen_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_reviews` (
  `reviews_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `customers_id` int(11) default NULL,
  `customers_name` varchar(64) NOT NULL default '',
  `reviews_rating` int(1) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  `reviews_read` int(5) NOT NULL default '0',
  `status` int(1) NOT NULL default '1',
  PRIMARY KEY  (`reviews_id`),
  KEY `idx_products_id_zen` (`products_id`),
  KEY `idx_customers_id_zen` (`customers_id`),
  KEY `idx_status_zen` (`status`),
  KEY `idx_date_added_zen` (`date_added`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_reviews`
--

LOCK TABLES `zen_reviews` WRITE;
/*!40000 ALTER TABLE `zen_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_reviews_description`
--

DROP TABLE IF EXISTS `zen_reviews_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_reviews_description` (
  `reviews_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `reviews_text` text NOT NULL,
  PRIMARY KEY  (`reviews_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_reviews_description`
--

LOCK TABLES `zen_reviews_description` WRITE;
/*!40000 ALTER TABLE `zen_reviews_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_reviews_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_salemaker_sales`
--

DROP TABLE IF EXISTS `zen_salemaker_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_salemaker_sales` (
  `sale_id` int(11) NOT NULL auto_increment,
  `sale_status` tinyint(4) NOT NULL default '0',
  `sale_name` varchar(30) NOT NULL default '',
  `sale_deduction_value` decimal(15,4) NOT NULL default '0.0000',
  `sale_deduction_type` tinyint(4) NOT NULL default '0',
  `sale_pricerange_from` decimal(15,4) NOT NULL default '0.0000',
  `sale_pricerange_to` decimal(15,4) NOT NULL default '0.0000',
  `sale_specials_condition` tinyint(4) NOT NULL default '0',
  `sale_categories_selected` text,
  `sale_categories_all` text,
  `sale_date_start` date NOT NULL default '0001-01-01',
  `sale_date_end` date NOT NULL default '0001-01-01',
  `sale_date_added` date NOT NULL default '0001-01-01',
  `sale_date_last_modified` date NOT NULL default '0001-01-01',
  `sale_date_status_change` date NOT NULL default '0001-01-01',
  PRIMARY KEY  (`sale_id`),
  KEY `idx_sale_status_zen` (`sale_status`),
  KEY `idx_sale_date_start_zen` (`sale_date_start`),
  KEY `idx_sale_date_end_zen` (`sale_date_end`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_salemaker_sales`
--

LOCK TABLES `zen_salemaker_sales` WRITE;
/*!40000 ALTER TABLE `zen_salemaker_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_salemaker_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_sessions`
--

DROP TABLE IF EXISTS `zen_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_sessions` (
  `sesskey` varchar(64) NOT NULL default '',
  `expiry` int(11) unsigned NOT NULL default '0',
  `value` mediumblob NOT NULL,
  PRIMARY KEY  (`sesskey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_sessions`
--

LOCK TABLES `zen_sessions` WRITE;
/*!40000 ALTER TABLE `zen_sessions` DISABLE KEYS */;
INSERT INTO `zen_sessions` VALUES ('701421ec885e62ebb77bfdcba8d4dacc',1362247759,'c2VjdXJpdHlUb2tlbnxzOjMyOiI2OTcwN2U3YjBiYjU2Mzk0ODE0NGVkOGM3NDU1OTEwZCI7Y3VzdG9tZXJzX2hvc3RfYWRkcmVzc3xzOjUzOiIyMDUtMTc4LTkyLTE0Mi5jMy0wLm53Yi11YnIxLmNoaS1ud2IuaWwuY2FibGUucmNuLmNvbSI7Y2FydElEfHM6MDoiIjtjYXJ0fE86MTI6InNob3BwaW5nQ2FydCI6ODp7czo4OiJjb250ZW50cyI7YTowOnt9czo1OiJ0b3RhbCI7aTowO3M6Njoid2VpZ2h0IjtpOjA7czo2OiJjYXJ0SUQiO047czoxMjoiY29udGVudF90eXBlIjtiOjA7czoxODoiZnJlZV9zaGlwcGluZ19pdGVtIjtpOjA7czoyMDoiZnJlZV9zaGlwcGluZ193ZWlnaHQiO2k6MDtzOjE5OiJmcmVlX3NoaXBwaW5nX3ByaWNlIjtpOjA7fW5hdmlnYXRpb258TzoxNzoibmF2aWdhdGlvbkhpc3RvcnkiOjI6e3M6NDoicGF0aCI7YTozOntpOjA7YTo0OntzOjQ6InBhZ2UiO3M6NToiaW5kZXgiO3M6NDoibW9kZSI7czo2OiJOT05TU0wiO3M6MzoiZ2V0IjtzOjA6IiI7czo0OiJwb3N0IjthOjA6e319aToxO2E6NDp7czo0OiJwYWdlIjtzOjEyOiJwcm9kdWN0c19hbGwiO3M6NDoibW9kZSI7czo2OiJOT05TU0wiO3M6MzoiZ2V0IjtzOjA6IiI7czo0OiJwb3N0IjthOjA6e319aToyO2E6NDp7czo0OiJwYWdlIjtzOjU6ImxvZ2luIjtzOjQ6Im1vZGUiO3M6NjoiTk9OU1NMIjtzOjM6ImdldCI7czowOiIiO3M6NDoicG9zdCI7YTowOnt9fX1zOjg6InNuYXBzaG90IjthOjA6e319Y2hlY2tfdmFsaWR8czo0OiJ0cnVlIjtsYW5ndWFnZXxzOjc6ImVuZ2xpc2giO2xhbmd1YWdlc19pZHxzOjE6IjEiO2xhbmd1YWdlc19jb2RlfHM6MjoiZW4iO2N1cnJlbmN5fHM6MzoiVVNEIjt0b2RheV9pc3xzOjEwOiIyMDEzLTAzLTAyIjt1cGRhdGVFeHBpcmF0aW9uc3xiOjE7c2Vzc2lvbl9jb3VudGVyfGI6MTtjdXN0b21lcnNfaXBfYWRkcmVzc3xzOjE0OiIyMDUuMTc4LjkyLjE0MiI7');
/*!40000 ALTER TABLE `zen_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_specials`
--

DROP TABLE IF EXISTS `zen_specials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_specials` (
  `specials_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `specials_new_products_price` decimal(15,4) NOT NULL default '0.0000',
  `specials_date_added` datetime default NULL,
  `specials_last_modified` datetime default NULL,
  `expires_date` date NOT NULL default '0001-01-01',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `specials_date_available` date NOT NULL default '0001-01-01',
  PRIMARY KEY  (`specials_id`),
  KEY `idx_status_zen` (`status`),
  KEY `idx_products_id_zen` (`products_id`),
  KEY `idx_date_avail_zen` (`specials_date_available`),
  KEY `idx_expires_date_zen` (`expires_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_specials`
--

LOCK TABLES `zen_specials` WRITE;
/*!40000 ALTER TABLE `zen_specials` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_specials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_tax_class`
--

DROP TABLE IF EXISTS `zen_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_tax_class` (
  `tax_class_id` int(11) NOT NULL auto_increment,
  `tax_class_title` varchar(32) NOT NULL default '',
  `tax_class_description` varchar(255) NOT NULL default '',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_tax_class`
--

LOCK TABLES `zen_tax_class` WRITE;
/*!40000 ALTER TABLE `zen_tax_class` DISABLE KEYS */;
INSERT INTO `zen_tax_class` VALUES (1,'Taxable Goods','The following types of products are included: non-food, services, etc',NULL,'2013-03-02 10:43:59');
/*!40000 ALTER TABLE `zen_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_tax_rates`
--

DROP TABLE IF EXISTS `zen_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_tax_rates` (
  `tax_rates_id` int(11) NOT NULL auto_increment,
  `tax_zone_id` int(11) NOT NULL default '0',
  `tax_class_id` int(11) NOT NULL default '0',
  `tax_priority` int(5) default '1',
  `tax_rate` decimal(7,4) NOT NULL default '0.0000',
  `tax_description` varchar(255) NOT NULL default '',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`tax_rates_id`),
  KEY `idx_tax_zone_id_zen` (`tax_zone_id`),
  KEY `idx_tax_class_id_zen` (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_tax_rates`
--

LOCK TABLES `zen_tax_rates` WRITE;
/*!40000 ALTER TABLE `zen_tax_rates` DISABLE KEYS */;
INSERT INTO `zen_tax_rates` VALUES (1,1,1,1,'7.0000','FL TAX 7.0%','2013-03-02 10:43:59','2013-03-02 10:43:59');
/*!40000 ALTER TABLE `zen_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_template_select`
--

DROP TABLE IF EXISTS `zen_template_select`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_template_select` (
  `template_id` int(11) NOT NULL auto_increment,
  `template_dir` varchar(64) NOT NULL default '',
  `template_language` varchar(64) NOT NULL default '0',
  PRIMARY KEY  (`template_id`),
  KEY `idx_tpl_lang_zen` (`template_language`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_template_select`
--

LOCK TABLES `zen_template_select` WRITE;
/*!40000 ALTER TABLE `zen_template_select` DISABLE KEYS */;
INSERT INTO `zen_template_select` VALUES (1,'classic','0');
/*!40000 ALTER TABLE `zen_template_select` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_upgrade_exceptions`
--

DROP TABLE IF EXISTS `zen_upgrade_exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_upgrade_exceptions` (
  `upgrade_exception_id` smallint(5) NOT NULL auto_increment,
  `sql_file` varchar(50) default NULL,
  `reason` varchar(200) default NULL,
  `errordate` datetime default '0001-01-01 00:00:00',
  `sqlstatement` text,
  PRIMARY KEY  (`upgrade_exception_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_upgrade_exceptions`
--

LOCK TABLES `zen_upgrade_exceptions` WRITE;
/*!40000 ALTER TABLE `zen_upgrade_exceptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `zen_upgrade_exceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_whos_online`
--

DROP TABLE IF EXISTS `zen_whos_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_whos_online` (
  `customer_id` int(11) default NULL,
  `full_name` varchar(64) NOT NULL default '',
  `session_id` varchar(128) NOT NULL default '',
  `ip_address` varchar(45) NOT NULL default '',
  `time_entry` varchar(14) NOT NULL default '',
  `time_last_click` varchar(14) NOT NULL default '',
  `last_page_url` varchar(255) NOT NULL default '',
  `host_address` text NOT NULL,
  `user_agent` varchar(255) NOT NULL default '',
  KEY `idx_ip_address_zen` (`ip_address`),
  KEY `idx_session_id_zen` (`session_id`),
  KEY `idx_customer_id_zen` (`customer_id`),
  KEY `idx_time_entry_zen` (`time_entry`),
  KEY `idx_time_last_click_zen` (`time_last_click`),
  KEY `idx_last_page_url_zen` (`last_page_url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_whos_online`
--

LOCK TABLES `zen_whos_online` WRITE;
/*!40000 ALTER TABLE `zen_whos_online` DISABLE KEYS */;
INSERT INTO `zen_whos_online` VALUES (0,'&yen;Guest','701421ec885e62ebb77bfdcba8d4dacc','205.178.92.142','1362246293','1362246319','/products/index.php?main_page=login','205-178-92-142.c3-0.nwb-ubr1.chi-nwb.il.cable.rcn.com','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.19 Safari/537.31');
/*!40000 ALTER TABLE `zen_whos_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_zones`
--

DROP TABLE IF EXISTS `zen_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_zones` (
  `zone_id` int(11) NOT NULL auto_increment,
  `zone_country_id` int(11) NOT NULL default '0',
  `zone_code` varchar(32) NOT NULL default '',
  `zone_name` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`zone_id`),
  KEY `idx_zone_country_id_zen` (`zone_country_id`),
  KEY `idx_zone_code_zen` (`zone_code`)
) ENGINE=MyISAM AUTO_INCREMENT=300 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_zones`
--

LOCK TABLES `zen_zones` WRITE;
/*!40000 ALTER TABLE `zen_zones` DISABLE KEYS */;
INSERT INTO `zen_zones` VALUES (1,223,'AL','Alabama'),(2,223,'AK','Alaska'),(3,223,'AS','American Samoa'),(4,223,'AZ','Arizona'),(5,223,'AR','Arkansas'),(7,223,'AA','Armed Forces Americas'),(9,223,'AE','Armed Forces Europe'),(11,223,'AP','Armed Forces Pacific'),(12,223,'CA','California'),(13,223,'CO','Colorado'),(14,223,'CT','Connecticut'),(15,223,'DE','Delaware'),(16,223,'DC','District of Columbia'),(17,223,'FM','Federated States Of Micronesia'),(18,223,'FL','Florida'),(19,223,'GA','Georgia'),(20,223,'GU','Guam'),(21,223,'HI','Hawaii'),(22,223,'ID','Idaho'),(23,223,'IL','Illinois'),(24,223,'IN','Indiana'),(25,223,'IA','Iowa'),(26,223,'KS','Kansas'),(27,223,'KY','Kentucky'),(28,223,'LA','Louisiana'),(29,223,'ME','Maine'),(30,223,'MH','Marshall Islands'),(31,223,'MD','Maryland'),(32,223,'MA','Massachusetts'),(33,223,'MI','Michigan'),(34,223,'MN','Minnesota'),(35,223,'MS','Mississippi'),(36,223,'MO','Missouri'),(37,223,'MT','Montana'),(38,223,'NE','Nebraska'),(39,223,'NV','Nevada'),(40,223,'NH','New Hampshire'),(41,223,'NJ','New Jersey'),(42,223,'NM','New Mexico'),(43,223,'NY','New York'),(44,223,'NC','North Carolina'),(45,223,'ND','North Dakota'),(46,223,'MP','Northern Mariana Islands'),(47,223,'OH','Ohio'),(48,223,'OK','Oklahoma'),(49,223,'OR','Oregon'),(50,163,'PW','Palau'),(51,223,'PA','Pennsylvania'),(52,223,'PR','Puerto Rico'),(53,223,'RI','Rhode Island'),(54,223,'SC','South Carolina'),(55,223,'SD','South Dakota'),(56,223,'TN','Tennessee'),(57,223,'TX','Texas'),(58,223,'UT','Utah'),(59,223,'VT','Vermont'),(60,223,'VI','Virgin Islands'),(61,223,'VA','Virginia'),(62,223,'WA','Washington'),(63,223,'WV','West Virginia'),(64,223,'WI','Wisconsin'),(65,223,'WY','Wyoming'),(66,38,'AB','Alberta'),(67,38,'BC','British Columbia'),(68,38,'MB','Manitoba'),(69,38,'NL','Newfoundland'),(70,38,'NB','New Brunswick'),(71,38,'NS','Nova Scotia'),(72,38,'NT','Northwest Territories'),(73,38,'NU','Nunavut'),(74,38,'ON','Ontario'),(75,38,'PE','Prince Edward Island'),(76,38,'QC','Quebec'),(77,38,'SK','Saskatchewan'),(78,38,'YT','Yukon Territory'),(79,81,'NDS','Niedersachsen'),(80,81,'BAW','Baden-Wurttemberg'),(81,81,'BAY','Bayern'),(82,81,'BER','Berlin'),(83,81,'BRG','Brandenburg'),(84,81,'BRE','Bremen'),(85,81,'HAM','Hamburg'),(86,81,'HES','Hessen'),(87,81,'MEC','Mecklenburg-Vorpommern'),(88,81,'NRW','Nordrhein-Westfalen'),(89,81,'RHE','Rheinland-Pfalz'),(90,81,'SAR','Saarland'),(91,81,'SAS','Sachsen'),(92,81,'SAC','Sachsen-Anhalt'),(93,81,'SCN','Schleswig-Holstein'),(94,81,'THE','Thringen'),(95,14,'WI','Wien'),(96,14,'NO','Niedersterreich'),(97,14,'OO','Obersterreich'),(98,14,'SB','Salzburg'),(99,14,'KN','Karnten'),(100,14,'ST','Steiermark'),(101,14,'TI','Tirol'),(102,14,'BL','Burgenland'),(103,14,'VB','Voralberg'),(104,204,'AG','Aargau'),(105,204,'AI','Appenzell Innerrhoden'),(106,204,'AR','Appenzell Ausserrhoden'),(107,204,'BE','Bern'),(108,204,'BL','Basel-Landschaft'),(109,204,'BS','Basel-Stadt'),(110,204,'FR','Freiburg'),(111,204,'GE','Genf'),(112,204,'GL','Glarus'),(113,204,'JU','Graubnden'),(114,204,'JU','Jura'),(115,204,'LU','Luzern'),(116,204,'NE','Neuenburg'),(117,204,'NW','Nidwalden'),(118,204,'OW','Obwalden'),(119,204,'SG','St. Gallen'),(120,204,'SH','Schaffhausen'),(121,204,'SO','Solothurn'),(122,204,'SZ','Schwyz'),(123,204,'TG','Thurgau'),(124,204,'TI','Tessin'),(125,204,'UR','Uri'),(126,204,'VD','Waadt'),(127,204,'VS','Wallis'),(128,204,'ZG','Zug'),(129,204,'ZH','Zurich'),(130,195,'A Coruna','A Coruna'),(131,195,'Alava','Alava'),(132,195,'Albacete','Albacete'),(133,195,'Alicante','Alicante'),(134,195,'Almeria','Almeria'),(135,195,'Asturias','Asturias'),(136,195,'Avila','Avila'),(137,195,'Badajoz','Badajoz'),(138,195,'Baleares','Baleares'),(139,195,'Barcelona','Barcelona'),(140,195,'Burgos','Burgos'),(141,195,'Caceres','Caceres'),(142,195,'Cadiz','Cadiz'),(143,195,'Cantabria','Cantabria'),(144,195,'Castellon','Castellon'),(145,195,'Ceuta','Ceuta'),(146,195,'Ciudad Real','Ciudad Real'),(147,195,'Cordoba','Cordoba'),(148,195,'Cuenca','Cuenca'),(149,195,'Girona','Girona'),(150,195,'Granada','Granada'),(151,195,'Guadalajara','Guadalajara'),(152,195,'Guipuzcoa','Guipuzcoa'),(153,195,'Huelva','Huelva'),(154,195,'Huesca','Huesca'),(155,195,'Jaen','Jaen'),(156,195,'La Rioja','La Rioja'),(157,195,'Las Palmas','Las Palmas'),(158,195,'Leon','Leon'),(159,195,'Lleida','Lleida'),(160,195,'Lugo','Lugo'),(161,195,'Madrid','Madrid'),(162,195,'Malaga','Malaga'),(163,195,'Melilla','Melilla'),(164,195,'Murcia','Murcia'),(165,195,'Navarra','Navarra'),(166,195,'Ourense','Ourense'),(167,195,'Palencia','Palencia'),(168,195,'Pontevedra','Pontevedra'),(169,195,'Salamanca','Salamanca'),(170,195,'Santa Cruz de Tenerife','Santa Cruz de Tenerife'),(171,195,'Segovia','Segovia'),(172,195,'Sevilla','Sevilla'),(173,195,'Soria','Soria'),(174,195,'Tarragona','Tarragona'),(175,195,'Teruel','Teruel'),(176,195,'Toledo','Toledo'),(177,195,'Valencia','Valencia'),(178,195,'Valladolid','Valladolid'),(179,195,'Vizcaya','Vizcaya'),(180,195,'Zamora','Zamora'),(181,195,'Zaragoza','Zaragoza'),(182,13,'ACT','Australian Capital Territory'),(183,13,'NSW','New South Wales'),(184,13,'NT','Northern Territory'),(185,13,'QLD','Queensland'),(186,13,'SA','South Australia'),(187,13,'TAS','Tasmania'),(188,13,'VIC','Victoria'),(189,13,'WA','Western Australia'),(190,105,'AG','Agrigento'),(191,105,'AL','Alessandria'),(192,105,'AN','Ancona'),(193,105,'AO','Aosta'),(194,105,'AR','Arezzo'),(195,105,'AP','Ascoli Piceno'),(196,105,'AT','Asti'),(197,105,'AV','Avellino'),(198,105,'BA','Bari'),(199,105,'BT','Barletta Andria Trani'),(200,105,'BL','Belluno'),(201,105,'BN','Benevento'),(202,105,'BG','Bergamo'),(203,105,'BI','Biella'),(204,105,'BO','Bologna'),(205,105,'BZ','Bolzano'),(206,105,'BS','Brescia'),(207,105,'BR','Brindisi'),(208,105,'CA','Cagliari'),(209,105,'CL','Caltanissetta'),(210,105,'CB','Campobasso'),(211,105,'CI','Carbonia-Iglesias'),(212,105,'CE','Caserta'),(213,105,'CT','Catania'),(214,105,'CZ','Catanzaro'),(215,105,'CH','Chieti'),(216,105,'CO','Como'),(217,105,'CS','Cosenza'),(218,105,'CR','Cremona'),(219,105,'KR','Crotone'),(220,105,'CN','Cuneo'),(221,105,'EN','Enna'),(222,105,'FM','Fermo'),(223,105,'FE','Ferrara'),(224,105,'FI','Firenze'),(225,105,'FG','Foggia'),(226,105,'FC','Forlì Cesena'),(227,105,'FR','Frosinone'),(228,105,'GE','Genova'),(229,105,'GO','Gorizia'),(230,105,'GR','Grosseto'),(231,105,'IM','Imperia'),(232,105,'IS','Isernia'),(233,105,'AQ','Aquila'),(234,105,'SP','La Spezia'),(235,105,'LT','Latina'),(236,105,'LE','Lecce'),(237,105,'LC','Lecco'),(238,105,'LI','Livorno'),(239,105,'LO','Lodi'),(240,105,'LU','Lucca'),(241,105,'MC','Macerata'),(242,105,'MN','Mantova'),(243,105,'MS','Massa Carrara'),(244,105,'MT','Matera'),(245,105,'VS','Medio Campidano'),(246,105,'ME','Messina'),(247,105,'MI','Milano'),(248,105,'MO','Modena'),(249,105,'MB','Monza e Brianza'),(250,105,'NA','Napoli'),(251,105,'NO','Novara'),(252,105,'NU','Nuoro'),(253,105,'OG','Ogliastra'),(254,105,'OT','Olbia-Tempio'),(255,105,'OR','Oristano'),(256,105,'PD','Padova'),(257,105,'PA','Palermo'),(258,105,'PR','Parma'),(259,105,'PG','Perugia'),(260,105,'PV','Pavia'),(261,105,'PU','Pesaro Urbino'),(262,105,'PE','Pescara'),(263,105,'PC','Piacenza'),(264,105,'PI','Pisa'),(265,105,'PT','Pistoia'),(266,105,'PN','Pordenone'),(267,105,'PZ','Potenza'),(268,105,'PO','Prato'),(269,105,'RG','Ragusa'),(270,105,'RA','Ravenna'),(271,105,'RC','Reggio Calabria'),(272,105,'RE','Reggio Emilia'),(273,105,'RI','Rieti'),(274,105,'RN','Rimini'),(275,105,'RM','Roma'),(276,105,'RO','Rovigo'),(277,105,'SA','Salerno'),(278,105,'SS','Sassari'),(279,105,'SV','Savona'),(280,105,'SI','Siena'),(281,105,'SR','Siracusa'),(282,105,'SO','Sondrio'),(283,105,'TA','Taranto'),(284,105,'TE','Teramo'),(285,105,'TR','Terni'),(286,105,'TO','Torino'),(287,105,'TP','Trapani'),(288,105,'TN','Trento'),(289,105,'TV','Treviso'),(290,105,'TS','Trieste'),(291,105,'UD','Udine'),(292,105,'VA','Varese'),(293,105,'VE','Venezia'),(294,105,'VB','Verbania'),(295,105,'VC','Vercelli'),(296,105,'VR','Verona'),(297,105,'VV','Vibo Valentia'),(298,105,'VI','Vicenza'),(299,105,'VT','Viterbo');
/*!40000 ALTER TABLE `zen_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zen_zones_to_geo_zones`
--

DROP TABLE IF EXISTS `zen_zones_to_geo_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zen_zones_to_geo_zones` (
  `association_id` int(11) NOT NULL auto_increment,
  `zone_country_id` int(11) NOT NULL default '0',
  `zone_id` int(11) default NULL,
  `geo_zone_id` int(11) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`association_id`),
  KEY `idx_zones_zen` (`geo_zone_id`,`zone_country_id`,`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zen_zones_to_geo_zones`
--

LOCK TABLES `zen_zones_to_geo_zones` WRITE;
/*!40000 ALTER TABLE `zen_zones_to_geo_zones` DISABLE KEYS */;
INSERT INTO `zen_zones_to_geo_zones` VALUES (1,223,18,1,NULL,'2013-03-02 10:43:59');
/*!40000 ALTER TABLE `zen_zones_to_geo_zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-02 10:48:33
