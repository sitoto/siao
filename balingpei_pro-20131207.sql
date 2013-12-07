-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: balingpei_pro
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
-- Table structure for table `ckeditor_assets`
--

DROP TABLE IF EXISTS `ckeditor_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ckeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ckeditor_assetable_type` (`assetable_type`,`type`,`assetable_id`),
  KEY `idx_ckeditor_assetable` (`assetable_type`,`assetable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckeditor_assets`
--

LOCK TABLES `ckeditor_assets` WRITE;
/*!40000 ALTER TABLE `ckeditor_assets` DISABLE KEYS */;
INSERT INTO `ckeditor_assets` VALUES (1,'o1.jpg','image/jpeg',83052,NULL,NULL,'Ckeditor::Picture',797,448,'2013-09-30 06:20:31','2013-09-30 06:20:31');
/*!40000 ALTER TABLE `ckeditor_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130821162805'),('20130821162806'),('20130821162807'),('20130821162808'),('20130821162809'),('20130821162810'),('20130821162811'),('20130821162812'),('20130821162813'),('20130821162814'),('20130821162815'),('20130821162816'),('20130821162817'),('20130821162818'),('20130821162819'),('20130821162820'),('20130821162821'),('20130821162822'),('20130821162823'),('20130821162824'),('20130821162825'),('20130821162826'),('20130821162827'),('20130821162828'),('20130821162829'),('20130821162830'),('20130821162831'),('20130821162832'),('20130821162833'),('20130821162834'),('20130821162835'),('20130821162836'),('20130821162837'),('20130821162838'),('20130821162839'),('20130821162840'),('20130821162841'),('20130821162842'),('20130821162843'),('20130821162844'),('20130821162845'),('20130821162846'),('20130821162847'),('20130821162848'),('20130821162849'),('20130821162850'),('20130821162851'),('20130821162852'),('20130821162853'),('20130821162854'),('20130821162855'),('20130821162856'),('20130821162857'),('20130821162858'),('20130821162859'),('20130821162860'),('20130821162861'),('20130821162862'),('20130821162863'),('20130821162864'),('20130821162865'),('20130821162866'),('20130821162867'),('20130821162868'),('20130821162869'),('20130821162870'),('20130821162871'),('20130821162872'),('20130821162873'),('20130821162874'),('20130821162875'),('20130821162876'),('20130821162877'),('20130821162878'),('20130821162879'),('20130821162880'),('20130821162881'),('20130821162882'),('20130821162883'),('20130821162884'),('20130821162885'),('20130821162886'),('20130821162887'),('20130821162888'),('20130912143159'),('20130912143160'),('20130912143161'),('20130912143162'),('20130912143163'),('20130912143164'),('20130912143165'),('20130912143166'),('20130912143167'),('20130912143168'),('20130912143169'),('20130914151256'),('20130923143048');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_activators`
--

DROP TABLE IF EXISTS `spree_activators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_activators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `match_policy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'all',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advertise` tinyint(1) DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_activators`
--

LOCK TABLES `spree_activators` WRITE;
/*!40000 ALTER TABLE `spree_activators` DISABLE KEYS */;
INSERT INTO `spree_activators` VALUES (1,'80pei.com 2013年10.1促销活动 : 9.8折优惠','2013-10-15 16:00:00','2013-09-25 16:00:00','VIP优惠券（9.8折优惠）','spree.checkout.coupon_code_added','Spree::Promotion',NULL,'all','80pei.com',1,'','2013-09-26 13:21:13','2013-09-26 13:32:00');
/*!40000 ALTER TABLE `spree_activators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_addresses`
--

DROP TABLE IF EXISTS `spree_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_firstname` (`firstname`),
  KEY `index_addresses_on_lastname` (`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_addresses`
--

LOCK TABLES `spree_addresses` WRITE;
/*!40000 ALTER TABLE `spree_addresses` DISABLE KEYS */;
INSERT INTO `spree_addresses` VALUES (1,'derable','derable','derable','','黑龙江','100000','02111',NULL,NULL,NULL,8,1,'2013-09-07 09:45:13','2013-09-07 09:45:13',NULL,NULL),(2,'derable','derable','derable','','黑龙江','100000','02111',NULL,NULL,NULL,8,1,'2013-09-07 09:45:13','2013-09-07 09:45:13',NULL,NULL),(3,'a','a','a','','a','10000','0000002',NULL,NULL,NULL,25,1,'2013-09-07 15:29:08','2013-09-07 15:29:08',NULL,NULL),(4,'a','a','a','','a','10000','0000002',NULL,NULL,NULL,25,1,'2013-09-07 15:29:08','2013-09-07 15:29:08',NULL,NULL),(5,'婷','李','武汉市洪山区南湖大道立信公寓','','武汉市','430000','13237100832',NULL,NULL,NULL,17,1,'2013-09-09 03:43:26','2013-09-09 03:43:26',NULL,NULL),(6,'婷','李','武汉市洪山区南湖大道立信公寓','','武汉市','430000','13237100832',NULL,NULL,NULL,17,1,'2013-09-09 03:43:26','2013-09-09 03:43:26',NULL,NULL),(7,'李','婷','武汉市洪山区南湖大道立信公寓','','武汉市','430000','13237100832',NULL,NULL,NULL,17,1,'2013-09-09 05:05:14','2013-09-09 05:05:14',NULL,NULL),(8,'李','婷','武汉市洪山区南湖大道立信公寓','','武汉市','430000','13237100832',NULL,NULL,NULL,17,1,'2013-09-09 05:05:14','2013-09-09 05:05:14',NULL,NULL),(9,'李婷','(VIP)','民族大道中南财经政法大学体育中心后面立信公寓3-3-602',NULL,'武汉','430000','13667178947',NULL,NULL,NULL,17,1,'2013-09-24 14:48:08','2013-09-24 14:48:09',2,NULL);
/*!40000 ALTER TABLE `spree_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_adjustments`
--

DROP TABLE IF EXISTS `spree_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjustable_id` int(11) DEFAULT NULL,
  `adjustable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `originator_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `eligible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_adjustments_on_order_id` (`adjustable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_adjustments`
--

LOCK TABLES `spree_adjustments` WRITE;
/*!40000 ALTER TABLE `spree_adjustments` DISABLE KEYS */;
INSERT INTO `spree_adjustments` VALUES (7,9,'Spree::Shipment',6,'Spree::Order',1,'Spree::ShippingMethod',0.00,'配送中',1,1,'2013-09-07 15:29:08','2013-09-07 15:29:08','open'),(8,10,'Spree::Shipment',12,'Spree::Order',1,'Spree::ShippingMethod',0.00,'配送中',1,1,'2013-09-09 03:43:26','2013-09-09 04:29:30','finalized'),(9,11,'Spree::Shipment',14,'Spree::Order',1,'Spree::ShippingMethod',0.00,'配送中',1,1,'2013-09-09 05:05:14','2013-09-26 13:13:01','finalized'),(11,13,'Spree::Shipment',55,'Spree::Order',1,'Spree::ShippingMethod',0.00,'配送中',1,1,'2013-09-24 14:49:19','2013-09-24 14:49:19','open'),(12,61,'Spree::Order',61,'Spree::Order',1,'Spree::PromotionAction',-4.00,'促销 (十一优惠券)',0,1,'2013-09-26 13:23:12','2013-09-26 13:23:12','open'),(13,14,'Spree::Shipment',61,'Spree::Order',1,'Spree::ShippingMethod',0.00,'配送中',1,1,'2013-09-26 13:32:40','2013-09-26 13:32:40','open'),(14,15,'Spree::Shipment',61,'Spree::Order',1,'Spree::ShippingMethod',0.00,'配送中',1,1,'2013-09-26 13:32:40','2013-09-26 13:32:40','open'),(19,20,'Spree::Shipment',74,'Spree::Order',1,'Spree::ShippingMethod',0.00,'配送中',1,1,'2013-09-29 23:04:40','2013-09-29 23:04:40','open'),(27,28,'Spree::Shipment',77,'Spree::Order',1,'Spree::ShippingMethod',0.00,'配送中',1,1,'2013-09-30 04:12:57','2013-10-11 11:34:43','finalized');
/*!40000 ALTER TABLE `spree_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_assets`
--

DROP TABLE IF EXISTS `spree_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewable_id` int(11) DEFAULT NULL,
  `viewable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_width` int(11) DEFAULT NULL,
  `attachment_height` int(11) DEFAULT NULL,
  `attachment_file_size` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `attachment_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_updated_at` datetime DEFAULT NULL,
  `alt` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_assets_on_viewable_id` (`viewable_id`),
  KEY `index_assets_on_viewable_type_and_type` (`viewable_type`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_assets`
--

LOCK TABLES `spree_assets` WRITE;
/*!40000 ALTER TABLE `spree_assets` DISABLE KEYS */;
INSERT INTO `spree_assets` VALUES (1,1,'Spree::Variant',204,204,9324,1,'image/jpeg','car_service_1.jpeg','Spree::Image','2013-09-07 15:24:25',''),(3,3,'Spree::Variant',225,225,6954,1,'image/png','carserver3.png','Spree::Image','2013-09-13 04:59:24',''),(4,4,'Spree::Variant',535,663,41382,1,'image/jpeg','H1-11W.jpg','Spree::Image','2013-09-14 04:42:08',''),(5,5,'Spree::Variant',490,439,44355,1,'image/jpeg','E92-10W宝马天使眼.jpg','Spree::Image','2013-09-14 05:22:21',''),(6,6,'Spree::Variant',595,446,51220,1,'image/jpeg','H8-E92-20W宝马天使眼.jpg','Spree::Image','2013-09-15 09:38:17','H8/E92宝马雾灯20W'),(7,7,'Spree::Variant',228,194,21880,1,'image/jpeg','双尖36MM-1.5W-5630.jpg','Spree::Image','2013-09-15 09:54:53','双尖36MM-1.5W-5630'),(9,13,'Spree::Variant',138,136,7788,1,'image/jpeg','1156-6W.jpg','Spree::Image','2013-09-16 05:39:54',''),(10,14,'Spree::Variant',711,321,115043,1,'image/png','G4-1.5W凹透镜-G4-1.5W铝头汽车灯.png','Spree::Image','2013-09-16 05:57:07',''),(11,15,'Spree::Variant',500,450,118408,1,'image/jpeg','CANBUS-36MM-3SMD-5050_散热片.jpg','Spree::Image','2013-09-17 11:04:34','CANBUS-36MM-3SMD-5050'),(12,16,'Spree::Variant',500,450,77140,1,'image/jpeg','CANBUS-31MM-2SMD-5050.jpg','Spree::Image','2013-09-18 03:56:13',''),(14,17,'Spree::Variant',500,450,94601,1,'image/jpeg','CANBUS-T10-3W大功率.jpg','Spree::Image','2013-09-18 04:05:55',''),(15,18,'Spree::Variant',500,450,104579,1,'image/jpeg','CANBUS-1156-27SMD-5050.jpg','Spree::Image','2013-09-18 04:14:18',''),(16,19,'Spree::Variant',500,450,111094,1,'image/jpeg','CANBUS-T10-2SMD-5050.jpg','Spree::Image','2013-09-18 04:27:05',''),(17,20,'Spree::Variant',500,450,75118,1,'image/jpeg','CANBUS-T10-4SMD_1W.jpg','Spree::Image','2013-09-18 04:42:26',''),(18,21,'Spree::Variant',500,450,95412,1,'image/jpeg','CANBUS-T10-8SMD-3528.jpg','Spree::Image','2013-09-18 04:49:15',''),(19,22,'Spree::Variant',500,450,69254,1,'image/jpeg','CANBUS-T10-4SMD-5050.jpg','Spree::Image','2013-09-18 05:07:12',''),(20,23,'Spree::Variant',500,450,64489,1,'image/jpeg','CANBUS-39MM-6SMD-5050_散热片.jpg','Spree::Image','2013-09-18 05:12:22',''),(21,24,'Spree::Variant',500,450,56150,1,'image/jpeg','CANBUS-36MM-6SMD-5050_散热片.jpg','Spree::Image','2013-09-18 05:32:57',''),(22,25,'Spree::Variant',500,450,43667,1,'image/jpeg','CANBUS-39MM-3SMD-5050_散热片.jpg','Spree::Image','2013-09-18 05:40:22',''),(23,26,'Spree::Variant',500,450,69768,1,'image/jpeg','CANBUS-42MM-8SMD-5050_散热片.jpg','Spree::Image','2013-09-18 05:53:25',''),(24,27,'Spree::Variant',360,360,36185,1,'image/jpeg','o3.jpg','Spree::Image','2013-09-30 06:00:33',''),(25,27,'Spree::Variant',800,533,155316,2,'image/jpeg','o2.jpg','Spree::Image','2013-09-30 06:00:49','');
/*!40000 ALTER TABLE `spree_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_calculators`
--

DROP TABLE IF EXISTS `spree_calculators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_calculators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calculable_id` int(11) DEFAULT NULL,
  `calculable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_calculators`
--

LOCK TABLES `spree_calculators` WRITE;
/*!40000 ALTER TABLE `spree_calculators` DISABLE KEYS */;
INSERT INTO `spree_calculators` VALUES (1,'Spree::Calculator::Shipping::FlatPercentItemTotal',1,'Spree::ShippingMethod','2013-09-07 09:47:29','2013-09-07 09:47:29'),(2,'Spree::Calculator::FlatPercentItemTotal',1,'Spree::PromotionAction','2013-09-26 13:22:14','2013-09-26 13:22:14');
/*!40000 ALTER TABLE `spree_calculators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_configurations`
--

DROP TABLE IF EXISTS `spree_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_configurations_on_name_and_type` (`name`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_configurations`
--

LOCK TABLES `spree_configurations` WRITE;
/*!40000 ALTER TABLE `spree_configurations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_countries`
--

DROP TABLE IF EXISTS `spree_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  `states_required` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_countries`
--

LOCK TABLES `spree_countries` WRITE;
/*!40000 ALTER TABLE `spree_countries` DISABLE KEYS */;
INSERT INTO `spree_countries` VALUES (1,'CHINA','CN','CHN','中国',156,1);
/*!40000 ALTER TABLE `spree_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_credit_cards`
--

DROP TABLE IF EXISTS `spree_credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_credit_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_digits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `gateway_customer_profile_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway_payment_profile_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_credit_cards`
--

LOCK TABLES `spree_credit_cards` WRITE;
/*!40000 ALTER TABLE `spree_credit_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_gateways`
--

DROP TABLE IF EXISTS `spree_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'development',
  `server` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'test',
  `test_mode` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_gateways`
--

LOCK TABLES `spree_gateways` WRITE;
/*!40000 ALTER TABLE `spree_gateways` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_inventory_units`
--

DROP TABLE IF EXISTS `spree_inventory_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_inventory_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `return_authorization_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pending` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_inventory_units_on_order_id` (`order_id`),
  KEY `index_inventory_units_on_shipment_id` (`shipment_id`),
  KEY `index_inventory_units_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_inventory_units`
--

LOCK TABLES `spree_inventory_units` WRITE;
/*!40000 ALTER TABLE `spree_inventory_units` DISABLE KEYS */;
INSERT INTO `spree_inventory_units` VALUES (39,'on_hand',1,6,9,NULL,'2013-09-07 15:29:08','2013-09-07 15:29:08',1),(40,'shipped',1,12,10,NULL,'2013-09-09 03:43:26','2013-09-09 04:29:30',0),(41,'shipped',1,14,11,NULL,'2013-09-09 05:05:14','2013-09-26 13:13:01',0),(43,'backordered',5,55,13,NULL,'2013-09-24 14:49:19','2013-09-24 14:49:19',1),(44,'on_hand',1,61,14,NULL,'2013-09-26 13:32:40','2013-09-26 13:32:40',1),(45,'on_hand',1,61,14,NULL,'2013-09-26 13:32:40','2013-09-26 13:32:40',1),(46,'on_hand',1,61,14,NULL,'2013-09-26 13:32:40','2013-09-26 13:32:40',1),(47,'on_hand',1,61,14,NULL,'2013-09-26 13:32:40','2013-09-26 13:32:40',1),(48,'on_hand',1,61,14,NULL,'2013-09-26 13:32:40','2013-09-26 13:32:40',1),(49,'on_hand',1,61,14,NULL,'2013-09-26 13:32:40','2013-09-26 13:32:40',1),(50,'on_hand',1,61,14,NULL,'2013-09-26 13:32:40','2013-09-26 13:32:40',1),(51,'on_hand',1,61,14,NULL,'2013-09-26 13:32:40','2013-09-26 13:32:40',1),(52,'on_hand',1,61,14,NULL,'2013-09-26 13:32:40','2013-09-26 13:32:40',1),(53,'on_hand',1,61,14,NULL,'2013-09-26 13:32:40','2013-09-26 13:32:40',1),(54,'backordered',15,61,15,NULL,'2013-09-26 13:32:40','2013-09-26 13:32:40',1),(55,'backordered',15,61,15,NULL,'2013-09-26 13:32:40','2013-09-26 13:32:40',1),(62,'backordered',5,74,20,NULL,'2013-09-29 23:04:40','2013-09-29 23:04:40',1),(63,'backordered',16,74,20,NULL,'2013-09-29 23:04:40','2013-09-29 23:04:40',1),(64,'backordered',16,74,20,NULL,'2013-09-29 23:04:40','2013-09-29 23:04:40',1),(65,'backordered',18,74,20,NULL,'2013-09-29 23:04:40','2013-09-29 23:04:40',1),(75,'shipped',1,77,28,NULL,'2013-09-30 04:12:57','2013-10-11 11:34:43',0);
/*!40000 ALTER TABLE `spree_inventory_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_line_items`
--

DROP TABLE IF EXISTS `spree_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost_price` decimal(8,2) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_line_items_on_order_id` (`order_id`),
  KEY `index_spree_line_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_line_items`
--

LOCK TABLES `spree_line_items` WRITE;
/*!40000 ALTER TABLE `spree_line_items` DISABLE KEYS */;
INSERT INTO `spree_line_items` VALUES (2,1,6,1,10.00,'2013-09-07 15:28:03','2013-09-07 15:28:03','CNY',10.00,NULL),(3,1,7,3,10.00,'2013-09-07 15:38:51','2013-09-09 04:26:40','CNY',10.00,NULL),(4,1,12,1,10.00,'2013-09-09 03:38:23','2013-09-09 03:41:52','CNY',10.00,NULL),(5,1,14,1,10.00,'2013-09-09 05:03:38','2013-09-09 05:03:38','CNY',10.00,NULL),(6,5,26,1,35.00,'2013-09-14 05:25:17','2013-09-14 05:25:17','CNY',25.00,NULL),(7,5,28,1,35.00,'2013-09-15 05:21:52','2013-09-15 05:21:52','CNY',25.00,NULL),(8,8,48,2,80.00,'2013-09-22 11:46:19','2013-09-22 11:46:33','CNY',NULL,NULL),(9,15,54,1,50.00,'2013-09-24 04:57:53','2013-09-24 04:57:53','CNY',40.00,NULL),(10,5,55,1,35.00,'2013-09-24 14:41:47','2013-09-24 14:41:47','CNY',25.00,NULL),(12,1,61,10,10.00,'2013-09-26 13:24:25','2013-09-26 13:32:29','CNY',10.00,NULL),(15,15,61,2,50.00,'2013-09-26 13:29:34','2013-09-26 13:29:34','CNY',40.00,NULL),(16,5,74,1,35.00,'2013-09-29 13:55:19','2013-09-29 23:04:04','CNY',25.00,NULL),(17,16,74,2,55.00,'2013-09-29 13:59:07','2013-09-29 23:04:04','CNY',40.00,NULL),(18,5,72,1,35.00,'2013-09-29 14:16:26','2013-09-29 14:16:26','CNY',25.00,NULL),(19,18,74,1,45.00,'2013-09-29 23:01:18','2013-09-29 23:01:18','CNY',30.00,NULL),(21,1,77,1,10.00,'2013-09-30 04:10:43','2013-09-30 04:12:46','CNY',10.00,NULL),(22,5,98,1,35.00,'2013-10-11 14:38:24','2013-10-11 14:38:24','CNY',25.00,NULL),(23,3,98,1,580.00,'2013-10-11 14:38:42','2013-10-11 14:38:42','CNY',450.00,NULL),(24,4,115,1,30.00,'2013-10-19 07:12:26','2013-10-19 07:12:26','CNY',20.00,NULL),(25,5,149,112,35.00,'2013-12-07 13:27:31','2013-12-07 13:27:31','CNY',25.00,NULL);
/*!40000 ALTER TABLE `spree_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_log_entries`
--

DROP TABLE IF EXISTS `spree_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_log_entries`
--

LOCK TABLES `spree_log_entries` WRITE;
/*!40000 ALTER TABLE `spree_log_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_mail_methods`
--

DROP TABLE IF EXISTS `spree_mail_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_mail_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_mail_methods`
--

LOCK TABLES `spree_mail_methods` WRITE;
/*!40000 ALTER TABLE `spree_mail_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_mail_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_new_adjustments`
--

DROP TABLE IF EXISTS `spree_new_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_new_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_new_adjustments`
--

LOCK TABLES `spree_new_adjustments` WRITE;
/*!40000 ALTER TABLE `spree_new_adjustments` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_new_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types`
--

DROP TABLE IF EXISTS `spree_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types`
--

LOCK TABLES `spree_option_types` WRITE;
/*!40000 ALTER TABLE `spree_option_types` DISABLE KEYS */;
INSERT INTO `spree_option_types` VALUES (5,'led-car','适配车型',1,'2013-09-06 07:48:32','2013-09-06 07:48:32'),(6,'led-color','颜色分类',2,'2013-09-06 07:48:32','2013-09-06 07:48:32');
/*!40000 ALTER TABLE `spree_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types_prototypes`
--

DROP TABLE IF EXISTS `spree_option_types_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types_prototypes`
--

LOCK TABLES `spree_option_types_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_option_types_prototypes` DISABLE KEYS */;
INSERT INTO `spree_option_types_prototypes` VALUES (1,6);
/*!40000 ALTER TABLE `spree_option_types_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values`
--

DROP TABLE IF EXISTS `spree_option_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values`
--

LOCK TABLES `spree_option_values` WRITE;
/*!40000 ALTER TABLE `spree_option_values` DISABLE KEYS */;
INSERT INTO `spree_option_values` VALUES (1,1,'white','白色',6,'2013-09-14 04:56:01','2013-09-14 04:56:01'),(2,2,'red','红色',6,'2013-09-14 04:56:26','2013-09-14 04:56:26'),(3,3,'hupo','琥珀色',6,'2013-09-14 04:57:23','2013-09-14 05:02:27'),(4,4,'binglan','冰蓝',6,'2013-09-14 04:57:23','2013-09-14 04:57:23'),(5,5,'yellow','黄色',6,'2013-09-14 05:03:15','2013-09-14 05:03:15'),(6,6,'green','绿色',6,'2013-09-14 05:03:15','2013-09-14 05:03:15');
/*!40000 ALTER TABLE `spree_option_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values_variants`
--

DROP TABLE IF EXISTS `spree_option_values_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values_variants` (
  `variant_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  KEY `index_option_values_variants_on_variant_id_and_option_value_id` (`variant_id`,`option_value_id`),
  KEY `index_spree_option_values_variants_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values_variants`
--

LOCK TABLES `spree_option_values_variants` WRITE;
/*!40000 ALTER TABLE `spree_option_values_variants` DISABLE KEYS */;
INSERT INTO `spree_option_values_variants` VALUES (8,1),(9,2),(10,4),(11,6);
/*!40000 ALTER TABLE `spree_option_values_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_orders`
--

DROP TABLE IF EXISTS `spree_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjustment_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `user_id` int(11) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `payment_total` decimal(10,2) DEFAULT '0.00',
  `shipping_method_id` int(11) DEFAULT NULL,
  `shipment_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special_instructions` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_orders_on_number` (`number`),
  KEY `index_spree_orders_on_completed_at` (`completed_at`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_orders`
--

LOCK TABLES `spree_orders` WRITE;
/*!40000 ALTER TABLE `spree_orders` DISABLE KEYS */;
INSERT INTO `spree_orders` VALUES (1,'R255546335',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-04 03:29:41','2013-09-04 03:29:41','USD',NULL,NULL),(2,'R448526567',0.00,0.00,'cart',0.00,1,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'76729530@qq.com',NULL,'2013-09-04 15:06:17','2013-09-04 15:06:17','USD',NULL,1),(6,'R625808026',10.00,10.00,'payment',0.00,NULL,NULL,3,4,0.00,NULL,'pending','balance_due','76729530@qq.com',NULL,'2013-09-07 15:28:03','2013-09-07 15:29:17','CNY','106.187.94.133',NULL),(7,'R670280802',30.00,30.00,'address',0.00,2,NULL,NULL,NULL,0.00,NULL,NULL,'balance_due','lehazi@163.com',NULL,'2013-09-07 15:38:50','2013-09-07 15:39:04','CNY','106.187.94.133',NULL),(8,'R742232223',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-07 16:47:06','2013-09-07 16:47:06','CNY',NULL,NULL),(9,'R116431430',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-07 18:56:38','2013-09-07 18:56:38','CNY',NULL,NULL),(10,'R582413735',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-08 16:47:07','2013-09-08 16:47:07','CNY',NULL,NULL),(12,'R315663437',10.00,10.00,'complete',0.00,NULL,'2013-09-09 03:49:19',5,6,10.00,NULL,'shipped','paid','417058936@qq.com',NULL,'2013-09-09 03:38:23','2013-09-09 03:49:19','CNY','106.187.94.133',NULL),(14,'R526007013',10.00,10.00,'complete',0.00,NULL,'2013-09-09 05:07:04',7,8,10.00,NULL,'shipped','paid','417058936@qq.com',NULL,'2013-09-09 05:03:38','2013-09-09 05:07:04','CNY','106.187.94.133',NULL),(15,'R554870870',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-09 16:47:09','2013-09-09 16:47:09','CNY',NULL,NULL),(16,'R221383486',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-10 16:46:23','2013-09-10 16:46:23','CNY',NULL,NULL),(17,'R185653027',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-11 03:21:14','2013-09-11 03:21:14','CNY',NULL,NULL),(18,'R244474832',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-11 16:46:07','2013-09-11 16:46:07','CNY',NULL,NULL),(19,'R267668571',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-12 00:21:32','2013-09-12 00:21:32','CNY',NULL,NULL),(21,'R775472518',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-12 16:47:18','2013-09-12 16:47:18','CNY',NULL,NULL),(22,'R738004451',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-12 21:52:14','2013-09-12 21:52:14','CNY',NULL,NULL),(24,'R842182361',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-13 16:44:55','2013-09-13 16:44:55','CNY',NULL,NULL),(25,'R782471420',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-13 21:26:14','2013-09-13 21:26:14','CNY',NULL,NULL),(26,'R121053531',35.00,35.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'balance_due',NULL,NULL,'2013-09-14 05:25:17','2013-09-14 05:25:17','CNY',NULL,NULL),(27,'R420171813',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-14 16:45:31','2013-09-14 16:45:31','CNY',NULL,NULL),(28,'R733703425',35.00,35.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'balance_due',NULL,NULL,'2013-09-15 05:21:51','2013-09-15 05:22:04','CNY','106.187.94.133',NULL),(29,'R364220847',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-15 16:47:39','2013-09-15 16:47:39','CNY',NULL,NULL),(32,'R145205080',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-16 16:46:03','2013-09-16 16:46:03','CNY',NULL,NULL),(34,'R068287103',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-17 09:51:54','2013-09-17 09:51:54','CNY',NULL,NULL),(36,'R174264684',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-17 16:47:44','2013-09-17 16:47:44','CNY',NULL,NULL),(40,'R373722027',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-18 07:17:19','2013-09-18 07:17:19','CNY',NULL,NULL),(41,'R313068613',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-18 16:46:59','2013-09-18 16:46:59','CNY',NULL,NULL),(42,'R028255333',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-19 03:17:54','2013-09-19 03:17:54','CNY',NULL,NULL),(43,'R082322731',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-19 16:46:46','2013-09-19 16:46:46','CNY',NULL,NULL),(44,'R231253631',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-20 16:46:11','2013-09-20 16:46:11','CNY',NULL,NULL),(45,'R757522763',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-21 04:08:39','2013-09-21 04:08:39','CNY',NULL,NULL),(46,'R558575527',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-21 05:01:01','2013-09-21 05:01:01','CNY',NULL,NULL),(47,'R047053877',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-21 16:46:58','2013-09-21 16:46:58','CNY',NULL,NULL),(48,'R337352617',160.00,160.00,'cart',0.00,2,NULL,NULL,NULL,0.00,NULL,NULL,'balance_due','lehazi@163.com',NULL,'2013-09-22 11:46:19','2013-09-22 11:46:33','CNY','27.19.152.206',NULL),(49,'R468073457',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-22 12:48:40','2013-09-22 12:48:40','CNY',NULL,2),(51,'R384445555',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-22 16:45:48','2013-09-22 16:45:48','CNY',NULL,NULL),(52,'R635478326',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-23 03:54:51','2013-09-23 03:54:51','CNY',NULL,NULL),(53,'R406541523',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-23 16:46:26','2013-09-23 16:46:26','CNY',NULL,NULL),(54,'R473863447',50.00,50.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'balance_due',NULL,NULL,'2013-09-24 04:57:53','2013-09-24 04:57:53','CNY',NULL,NULL),(55,'R632247788',35.00,35.00,'payment',0.00,2,NULL,9,9,0.00,NULL,'backorder','balance_due','lehazi@163.com',NULL,'2013-09-24 14:41:47','2013-09-24 14:48:20','CNY','111.174.8.117',NULL),(56,'R747283032',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-24 15:24:33','2013-09-24 15:24:33','CNY',NULL,NULL),(57,'R358673236',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-24 16:48:08','2013-09-24 16:48:08','CNY',NULL,NULL),(58,'R302556384',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-25 16:46:52','2013-09-25 16:46:52','CNY',NULL,NULL),(60,'R805022302',0.00,0.00,'cart',0.00,3,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'417058936@qq.com',NULL,'2013-09-26 13:17:07','2013-09-26 13:17:07','CNY',NULL,3),(61,'R176084006',200.00,196.00,'delivery',-4.00,2,NULL,9,9,0.00,NULL,'backorder','balance_due','lehazi@163.com',NULL,'2013-09-26 13:18:41','2013-09-26 13:32:40','CNY','59.174.105.244',NULL),(62,'R076086212',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-26 16:47:13','2013-09-26 16:47:13','CNY',NULL,NULL),(63,'R342644624',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-27 02:10:45','2013-09-27 02:10:45','CNY',NULL,NULL),(64,'R003583616',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-27 04:02:17','2013-09-27 04:02:17','CNY',NULL,NULL),(66,'R428205468',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-27 05:32:48','2013-09-27 05:32:48','CNY',NULL,NULL),(67,'R617884747',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-27 09:46:29','2013-09-27 09:46:29','CNY',NULL,NULL),(68,'R351138145',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-27 16:47:50','2013-09-27 16:47:50','CNY',NULL,NULL),(69,'R578545572',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-28 16:46:26','2013-09-28 16:46:26','CNY',NULL,NULL),(70,'R142152084',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-29 01:53:11','2013-09-29 01:53:11','CNY',NULL,NULL),(71,'R724764542',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-29 03:33:08','2013-09-29 03:33:08','CNY',NULL,NULL),(72,'R113840442',35.00,35.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'balance_due',NULL,NULL,'2013-09-29 14:16:26','2013-09-29 14:16:26','CNY',NULL,NULL),(73,'R632177366',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-29 16:47:27','2013-09-29 16:47:27','CNY',NULL,NULL),(74,'R467852481',190.00,190.00,'payment',0.00,2,NULL,9,9,0.00,NULL,'backorder','balance_due','lehazi@163.com',NULL,'2013-09-29 23:01:18','2013-09-29 23:21:02','CNY','106.187.94.133',NULL),(76,'R344352764',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-30 02:13:13','2013-09-30 02:13:13','CNY',NULL,NULL),(77,'R215567602',10.00,10.00,'complete',0.00,2,'2013-09-30 04:16:59',9,9,10.00,NULL,'shipped','paid','lehazi@163.com',NULL,'2013-09-30 04:10:43','2013-09-30 04:17:00','CNY','106.187.94.133',NULL),(79,'R640110130',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-30 16:46:37','2013-09-30 16:46:37','CNY',NULL,NULL),(80,'R867210707',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-01 14:22:46','2013-10-01 14:22:46','CNY',NULL,NULL),(81,'R342676466',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-01 16:47:27','2013-10-01 16:47:27','CNY',NULL,NULL),(82,'R674025307',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-02 16:46:45','2013-10-02 16:46:45','CNY',NULL,NULL),(83,'R401368538',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-03 16:45:46','2013-10-03 16:45:46','CNY',NULL,NULL),(84,'R388831505',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-03 19:52:12','2013-10-03 19:52:12','CNY',NULL,NULL),(85,'R218523200',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-04 01:28:02','2013-10-04 01:28:02','CNY',NULL,NULL),(86,'R843531004',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-04 16:46:45','2013-10-04 16:46:45','CNY',NULL,NULL),(87,'R826888280',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-05 12:03:01','2013-10-05 12:03:01','CNY',NULL,NULL),(88,'R275875578',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-05 16:45:50','2013-10-05 16:45:50','CNY',NULL,NULL),(89,'R166318861',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-06 07:37:51','2013-10-06 07:37:51','CNY',NULL,NULL),(90,'R661681456',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-06 16:46:04','2013-10-06 16:46:04','CNY',NULL,NULL),(91,'R061203776',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-07 12:48:41','2013-10-07 12:48:41','CNY',NULL,NULL),(92,'R447883686',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-07 16:45:58','2013-10-07 16:45:58','CNY',NULL,NULL),(93,'R174542554',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-08 16:45:49','2013-10-08 16:45:49','CNY',NULL,NULL),(94,'R246637478',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-09 16:46:39','2013-10-09 16:46:39','CNY',NULL,NULL),(95,'R760744832',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-09 19:42:03','2013-10-09 19:42:03','CNY',NULL,NULL),(96,'R145672775',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-10 16:45:18','2013-10-10 16:45:18','CNY',NULL,NULL),(98,'R031748865',615.00,615.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'balance_due',NULL,NULL,'2013-10-11 14:38:24','2013-10-11 14:38:24','CNY',NULL,NULL),(99,'R258187601',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-11 16:46:29','2013-10-11 16:46:29','CNY',NULL,NULL),(100,'R758280576',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-11 19:58:56','2013-10-11 19:58:56','CNY',NULL,NULL),(101,'R678366440',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-12 03:59:58','2013-10-12 03:59:58','CNY',NULL,NULL),(102,'R700230340',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-12 16:46:03','2013-10-12 16:46:03','CNY',NULL,NULL),(103,'R638448555',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-13 09:24:19','2013-10-13 09:24:19','CNY',NULL,NULL),(104,'R250585360',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-13 16:46:58','2013-10-13 16:46:58','CNY',NULL,NULL),(105,'R773215777',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-14 16:45:57','2013-10-14 16:45:57','CNY',NULL,NULL),(106,'R760278058',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-15 16:46:04','2013-10-15 16:46:04','CNY',NULL,NULL),(107,'R121212047',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-16 04:10:39','2013-10-16 04:10:39','CNY',NULL,NULL),(108,'R344623842',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-16 05:51:35','2013-10-16 05:51:35','CNY',NULL,NULL),(109,'R312678483',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-16 16:45:59','2013-10-16 16:45:59','CNY',NULL,NULL),(110,'R724005382',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-16 20:11:16','2013-10-16 20:11:16','CNY',NULL,NULL),(111,'R626780232',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-17 16:46:56','2013-10-17 16:46:56','CNY',NULL,NULL),(112,'R831080557',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-17 22:44:48','2013-10-17 22:44:48','CNY',NULL,NULL),(113,'R046404063',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-18 06:38:59','2013-10-18 06:38:59','CNY',NULL,NULL),(114,'R636004427',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-18 17:58:12','2013-10-18 17:58:12','CNY',NULL,NULL),(115,'R230583132',30.00,30.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'balance_due',NULL,NULL,'2013-10-19 07:12:26','2013-10-19 07:12:30','CNY','106.187.94.133',NULL),(116,'R087041533',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-19 15:18:49','2013-10-19 15:18:49','CNY',NULL,NULL),(117,'R778521278',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-20 07:21:44','2013-10-20 07:21:44','CNY',NULL,NULL),(118,'R752808167',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-23 09:29:35','2013-10-23 09:29:35','CNY',NULL,NULL),(119,'R476547783',0.00,0.00,'cart',0.00,4,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'aghuahz@163.com',NULL,'2013-10-24 02:23:43','2013-10-24 02:23:43','CNY',NULL,4),(120,'R887452075',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-24 23:18:07','2013-10-24 23:18:07','CNY',NULL,NULL),(121,'R732834662',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-25 12:00:45','2013-10-25 12:00:45','CNY',NULL,NULL),(122,'R208417524',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-25 12:25:47','2013-10-25 12:25:47','CNY',NULL,NULL),(123,'R624223745',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-25 12:44:06','2013-10-25 12:44:06','CNY',NULL,NULL),(124,'R001367761',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-25 13:07:10','2013-10-25 13:07:10','CNY',NULL,NULL),(125,'R042372125',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-26 21:23:32','2013-10-26 21:23:32','CNY',NULL,NULL),(126,'R166320822',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-30 02:00:31','2013-10-30 02:00:31','CNY',NULL,NULL),(127,'R871444343',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-31 16:50:09','2013-10-31 16:50:09','CNY',NULL,NULL),(128,'R617224122',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-03 18:34:07','2013-11-03 18:34:07','CNY',NULL,NULL),(129,'R656481211',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-05 14:27:25','2013-11-05 14:27:25','CNY',NULL,NULL),(130,'R242575238',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-06 23:18:51','2013-11-06 23:18:51','CNY',NULL,NULL),(131,'R846326613',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-08 03:17:36','2013-11-08 03:17:36','CNY',NULL,NULL),(132,'R584061062',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-10 13:21:27','2013-11-10 13:21:27','CNY',NULL,NULL),(133,'R335415616',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-11 14:58:28','2013-11-11 14:58:28','CNY',NULL,NULL),(134,'R524124656',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-13 15:28:19','2013-11-13 15:28:19','CNY',NULL,NULL),(135,'R652003083',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-14 10:05:20','2013-11-14 10:05:20','CNY',NULL,NULL),(136,'R111568400',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-18 02:24:36','2013-11-18 02:24:36','CNY',NULL,NULL),(137,'R638068050',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-18 05:41:25','2013-11-18 05:41:25','CNY',NULL,NULL),(138,'R231645004',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-19 07:19:00','2013-11-19 07:19:00','CNY',NULL,NULL),(139,'R788057805',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-21 05:02:20','2013-11-21 05:02:20','CNY',NULL,NULL),(140,'R338674258',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-21 22:29:49','2013-11-21 22:29:49','CNY',NULL,NULL),(141,'R466075766',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-22 21:26:04','2013-11-22 21:26:04','CNY',NULL,NULL),(142,'R054675875',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-26 15:19:25','2013-11-26 15:19:25','CNY',NULL,NULL),(143,'R871755458',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-11-27 11:50:30','2013-11-27 11:50:30','CNY',NULL,NULL),(144,'R731861856',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-12-02 12:50:31','2013-12-02 12:50:31','CNY',NULL,NULL),(145,'R575450014',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-12-03 00:17:44','2013-12-03 00:17:44','CNY',NULL,NULL),(146,'R465226722',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-12-03 08:59:40','2013-12-03 08:59:40','CNY',NULL,NULL),(147,'R664306360',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-12-03 18:58:20','2013-12-03 18:58:20','CNY',NULL,NULL),(148,'R237071442',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-12-06 14:11:03','2013-12-06 14:11:03','CNY',NULL,NULL),(149,'R225884733',3920.00,3920.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'balance_due',NULL,NULL,'2013-12-07 13:27:31','2013-12-07 13:27:31','CNY',NULL,NULL),(150,'R574535751',0.00,0.00,'cart',0.00,2,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'lehazi@163.com',NULL,'2013-12-07 13:29:25','2013-12-07 13:29:25','CNY',NULL,2);
/*!40000 ALTER TABLE `spree_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_pages`
--

DROP TABLE IF EXISTS `spree_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `show_in_header` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_footer` tinyint(1) NOT NULL DEFAULT '0',
  `foreign_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `visible` tinyint(1) DEFAULT '1',
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_in_sidebar` tinyint(1) NOT NULL DEFAULT '0',
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `render_layout_as_partial` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_pages_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_pages`
--

LOCK TABLES `spree_pages` WRITE;
/*!40000 ALTER TABLE `spree_pages` DISABLE KEYS */;
INSERT INTO `spree_pages` VALUES (1,'汽车LED灯','<p>1</p>','','2013-09-12 15:24:34','2013-09-30 06:06:53',1,0,'/t/ledqi-che-deng',1,1,'','','',0,'',0),(2,' 购物配送','<p><strong>购物流程</strong></p>\r\n\r\n<p>1。注册用户购买，</p>\r\n\r\n<p>2。登记邮箱地址，匿名购买。&nbsp;</p>\r\n\r\n<p><strong>配送服务查询</strong></p>\r\n\r\n<p>请选择您要配送到的地址，选择后可以查看本地址支持的配送服务和时间。</p>\r\n\r\n<p><strong>免运费政策</strong></p>\r\n\r\n<p>全场免运费：商品配送、自提全场免运费。</p>\r\n\r\n<p><strong>额外服务运费说明</strong></p>\r\n\r\n<p>这里主要指的是您配送的地点已经超出苏宁配送范围。<br />\r\n另外，如果您的所在地是较偏远的地区，选购的商品是生产厂家为您提供安装服务的，厂家在为您提供安装服务时，可能会收取一定的远程费用，请您事先了解。</p>\r\n','shopping','2013-09-15 09:23:33','2013-10-11 12:00:11',0,1,'',2,1,' 购物配送',' 购物配送','application',0,' 购物配送',0),(3,'售后服务','<p><strong>购物和售后服务</strong></p>\r\n<p>1.收货：收货人在快递单上签字，并当场开箱验货，验货内容包括：数量和配件是否齐全、产品外观是否损坏等。如果发现物品缺失或者损坏，可直接在签收单上注明&ldquo;内件损坏，本人拒收&rdquo;字样，由快递再返回公司，公司和快递协商赔偿事宜。我们会处理并承担由此而产生的运输费用，客户不需要付费。<br /> <br />2.货物签收后，将视为发出商品外观与数量等没有问题。如果此后您需要退换可按退换货规定处理。如果签收后未当面开封，产品出现问题，公司很难和快递公司协商赔偿，为了客户的利益，希望各商户能够执行并理解。</p>\r\n<p>3.八零配出售的每个灯都是经过厂家严格把关并检测合格后，才准予发货的。但由于运输造成的，或在使用过程中对产品的不了解，尚有不满意或者意见，请先与我们的客服联系沟通下，我们一定会认真的给您满意的答复和解决方案。</p>\r\n<p>4.寄回产品时，请不要寄邮政普快和平邮。同时，请勿选择 &ldquo;到付邮费&rdquo;，&ldquo;到付邮费&rdquo;的包裹一概拒收.邮费自行承担，请将网站用户名，产品的问题描述，您的地址、姓名、手机号，详细填写在纸上寄来，以便于我们及时准确给您的回复。</p>\r\n<p>5.因本店发货错误或产品与描述严重不符而造成的退货，运费由本店承担。除此之外的一般退换货，运费由买家承担。敬请谅解！</p>\r\n<p>6.公司周末不上班，周末只接单，周一早上发货.望您谅解！</p>\r\n<p><strong>额外服务</strong></p>\r\n<p>对于在八零配所购买的汽车零配件，安装时原包装以外的材料均需收费，安装具体由各地合作修理厂和修理技师代为安装。</p>\r\n<p><strong>关于退换货</strong></p>\r\n<p>为了保障您的权益，收到配件打开包装时，请不要把包装盒和泡沫垫片丢掉，要把所有的原包装材料都放回原外包装箱里，暂存放7天。避免出现换货、退货时，外包装不完整，或发回来包装不好路上损坏，给您带来损失！</p>','after-sales-service','2013-09-27 08:30:33','2013-09-30 06:19:17',0,1,'',3,1,'售后服务','售后服务','application',0,'售后服务',0),(4,'标准灯泡','','','2013-09-30 06:06:41','2013-09-30 06:07:08',1,0,'/t/biao-zhun-qi-che-deng-pao',4,1,'','','',0,'',0);
/*!40000 ALTER TABLE `spree_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payment_methods`
--

DROP TABLE IF EXISTS `spree_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'development',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `display_on` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payment_methods`
--

LOCK TABLES `spree_payment_methods` WRITE;
/*!40000 ALTER TABLE `spree_payment_methods` DISABLE KEYS */;
INSERT INTO `spree_payment_methods` VALUES (1,'Spree::BillingIntegration::Alipay','支付宝','',1,'production',NULL,'2013-09-07 05:24:02','2013-09-07 05:24:02','');
/*!40000 ALTER TABLE `spree_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payments`
--

DROP TABLE IF EXISTS `spree_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avs_response` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvv_response_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvv_response_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_payments_on_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payments`
--

LOCK TABLES `spree_payments` WRITE;
/*!40000 ALTER TABLE `spree_payments` DISABLE KEYS */;
INSERT INTO `spree_payments` VALUES (4,10.00,6,NULL,NULL,1,'checkout',NULL,NULL,'2013-09-07 15:29:21','2013-09-07 15:29:21','852Y8CLG',NULL,NULL),(5,10.00,12,NULL,NULL,1,'completed',NULL,NULL,'2013-09-09 03:43:55','2013-09-09 03:49:18','QJ6EANNC',NULL,NULL),(6,10.00,14,NULL,NULL,1,'completed',NULL,NULL,'2013-09-09 05:05:40','2013-09-09 05:07:04','XDNASWR4',NULL,NULL),(7,35.00,55,NULL,NULL,1,'checkout',NULL,NULL,'2013-09-24 14:48:23','2013-09-24 14:48:23','25KE49AE',NULL,NULL),(9,190.00,74,NULL,NULL,1,'invalid',NULL,NULL,'2013-09-29 23:05:09','2013-09-29 23:05:38','LAWGKC3F',NULL,NULL),(10,190.00,74,NULL,NULL,1,'invalid',NULL,NULL,'2013-09-29 23:05:38','2013-09-29 23:06:21','T72V2D8F',NULL,NULL),(11,190.00,74,NULL,NULL,1,'invalid',NULL,NULL,'2013-09-29 23:06:21','2013-09-29 23:21:09','L98CAGYH',NULL,NULL),(12,190.00,74,NULL,NULL,1,'invalid',NULL,NULL,'2013-09-29 23:21:09','2013-09-29 23:21:37','REBN5P4N',NULL,NULL),(13,190.00,74,NULL,NULL,1,'checkout',NULL,NULL,'2013-09-29 23:21:37','2013-09-29 23:21:37','3CJ5LXRM',NULL,NULL),(15,10.00,77,NULL,NULL,1,'completed',NULL,NULL,'2013-09-30 04:13:06','2013-09-30 04:16:59','GKKM6JUB',NULL,NULL);
/*!40000 ALTER TABLE `spree_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_preferences`
--

DROP TABLE IF EXISTS `spree_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text COLLATE utf8_unicode_ci,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_preferences_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_preferences`
--

LOCK TABLES `spree_preferences` WRITE;
/*!40000 ALTER TABLE `spree_preferences` DISABLE KEYS */;
INSERT INTO `spree_preferences` VALUES (1,'帮你配 汽车服务网','spree/app_configuration/site_name','string','2013-09-03 13:53:51','2013-10-11 14:16:59'),(2,'0','spree/app_configuration/allow_ssl_in_staging','boolean','2013-09-04 15:02:20','2013-10-11 14:16:59'),(3,'0','spree/app_configuration/allow_ssl_in_production','boolean','2013-09-04 15:02:20','2013-10-11 14:16:59'),(4,'2013-11-01T02:45:23+08:00','spree/app_configuration/last_check_for_spree_alerts','string','2013-09-04 15:04:42','2013-10-31 18:45:23'),(5,'1','spree/app_configuration/default_country_id','integer','2013-09-06 07:19:54','2013-09-06 07:19:54'),(6,'八零配 ','spree/app_configuration/default_seo_title','string','2013-09-06 07:25:19','2013-09-07 15:24:04'),(7,'汽车服务,汽车零配件,帮你配','spree/app_configuration/default_meta_keywords','string','2013-09-06 07:25:19','2013-09-07 15:24:04'),(8,'八零配-帮你配汽车服务网，您身边的汽配专家。','spree/app_configuration/default_meta_description','string','2013-09-06 07:25:19','2013-09-07 15:24:04'),(9,'www.80pei.coom','spree/app_configuration/site_url','string','2013-09-06 07:25:19','2013-09-07 15:24:04'),(10,'0','spree/app_configuration/allow_ssl_in_development_and_test','boolean','2013-09-06 07:25:19','2013-09-07 15:24:04'),(11,'1','spree/app_configuration/check_for_spree_alerts','boolean','2013-09-06 07:25:19','2013-09-07 15:24:04'),(12,'0','spree/app_configuration/display_currency','boolean','2013-09-06 07:25:19','2013-09-07 15:24:04'),(13,'0','spree/app_configuration/hide_cents','boolean','2013-09-06 07:25:19','2013-09-07 15:24:04'),(14,'CNY','spree/app_configuration/currency','string','2013-09-06 07:25:19','2013-10-11 14:16:59'),(15,'after','spree/app_configuration/currency_symbol_position','string','2013-09-06 07:25:19','2013-09-07 15:24:04'),(16,'.','spree/app_configuration/currency_decimal_mark','string','2013-09-06 07:25:19','2013-09-07 15:24:04'),(17,',','spree/app_configuration/currency_thousands_separator','string','2013-09-06 07:25:19','2013-09-07 15:24:04'),(18,'2088002008598112','spree/billing_integration/alipay/partner/1','string','2013-09-07 05:24:37','2013-09-07 05:24:37'),(19,'9padxisajw5awbkr4lth4881psup7g9d','spree/billing_integration/alipay/sign/1','string','2013-09-07 05:24:37','2013-09-07 05:24:37'),(20,'sitotohuangwei@sohu.com','spree/billing_integration/alipay/email/1','string','2013-09-07 05:24:37','2013-09-07 05:24:37'),(21,'0','spree/billing_integration/alipay/using_direct_pay_service/1','boolean','2013-09-07 05:24:37','2013-09-07 05:24:37'),(22,'test','spree/billing_integration/alipay/server/1','string','2013-09-07 05:24:37','2013-09-07 05:24:37'),(23,'1','spree/billing_integration/alipay/test_mode/1','boolean','2013-09-07 05:24:37','2013-09-07 05:24:37'),(24,'0.0','spree/calculator/shipping/flat_percent_item_total/flat_percent/1','decimal','2013-09-07 09:47:36','2013-09-26 13:34:56'),(25,'store/logo.png','spree/app_configuration/logo','string','2013-09-08 12:08:08','2013-10-11 14:16:59'),(26,'store/logo.png','spree/app_configuration/admin_interface_logo','string','2013-09-08 12:08:08','2013-10-11 14:16:59'),(27,'1','spree/app_configuration/enable_mail_delivery','boolean','2013-09-09 05:19:00','2013-09-22 15:20:59'),(28,'lehazi@163.com','spree/app_configuration/mails_from','string','2013-09-09 05:19:00','2013-09-22 15:20:59'),(29,'76729530@qq.com','spree/app_configuration/mail_bcc','string','2013-09-09 05:19:00','2013-09-22 15:20:59'),(30,'','spree/app_configuration/intercept_email','string','2013-09-09 05:19:00','2013-09-22 15:20:59'),(31,'smtp.163.com','spree/app_configuration/mail_domain','string','2013-09-09 05:19:00','2013-09-22 15:20:59'),(32,'smtp.163.com','spree/app_configuration/mail_host','string','2013-09-09 05:19:00','2013-09-22 15:20:59'),(33,'25','spree/app_configuration/mail_port','integer','2013-09-09 05:19:00','2013-09-22 15:20:59'),(34,'没有','spree/app_configuration/secure_connection_type','string','2013-09-09 05:19:00','2013-09-22 15:20:59'),(35,'plain','spree/app_configuration/mail_auth_type','string','2013-09-09 05:19:00','2013-09-22 15:20:59'),(36,'lehazi@163.com','spree/app_configuration/smtp_username','string','2013-09-09 05:19:00','2013-09-22 15:20:59'),(37,'hw3385225','spree/app_configuration/smtp_password','string','2013-09-09 05:19:00','2013-09-22 15:20:59'),(38,'1','spree/app_configuration/show_raw_product_description','boolean','2013-09-14 07:38:29','2013-10-11 14:16:59'),(39,'1','spree/address_book_configuration/disable_bill_address','boolean','2013-09-24 14:26:07','2013-10-11 14:16:59'),(40,'2.0','spree/calculator/flat_percent_item_total/flat_percent/2','decimal','2013-09-26 13:22:46','2013-09-26 13:31:53'),(41,'CKEditor','spree/editor_configuration/current_editor','string','2013-09-30 06:19:52','2013-09-30 06:19:52'),(42,'1','spree/editor_configuration/enabled','boolean','2013-09-30 06:19:53','2013-09-30 06:19:53'),(43,'product_description page_body','spree/editor_configuration/ids','text','2013-09-30 06:19:53','2013-09-30 06:19:53');
/*!40000 ALTER TABLE `spree_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prices`
--

DROP TABLE IF EXISTS `spree_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prices`
--

LOCK TABLES `spree_prices` WRITE;
/*!40000 ALTER TABLE `spree_prices` DISABLE KEYS */;
INSERT INTO `spree_prices` VALUES (1,1,10.00,'CNY'),(3,3,580.00,'CNY'),(4,4,30.00,'CNY'),(5,5,35.00,'CNY'),(6,6,80.00,'CNY'),(7,7,80.00,'CNY'),(8,8,80.00,'CNY'),(9,9,80.00,'CNY'),(10,10,80.00,'CNY'),(11,11,80.00,'CNY'),(13,13,45.00,'CNY'),(14,14,55.00,'CNY'),(15,15,50.00,'CNY'),(16,16,55.00,'CNY'),(17,17,40.00,'CNY'),(18,18,45.00,'CNY'),(19,19,55.00,'CNY'),(20,20,60.00,'CNY'),(21,21,60.00,'CNY'),(22,22,35.00,'CNY'),(23,23,40.00,'CNY'),(24,24,40.00,'CNY'),(25,25,45.00,'CNY'),(26,26,50.00,'CNY'),(27,27,5.00,'CNY');
/*!40000 ALTER TABLE `spree_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_option_types`
--

DROP TABLE IF EXISTS `spree_product_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_option_types`
--

LOCK TABLES `spree_product_option_types` WRITE;
/*!40000 ALTER TABLE `spree_product_option_types` DISABLE KEYS */;
INSERT INTO `spree_product_option_types` VALUES (3,1,7,6,'2013-09-15 09:52:38','2013-09-15 09:52:38'),(5,1,9,6,'2013-09-16 05:36:41','2013-09-16 05:36:41'),(6,1,10,6,'2013-09-16 05:55:06','2013-09-16 05:55:06'),(7,1,11,6,'2013-09-17 11:02:05','2013-09-17 11:02:05'),(8,1,12,6,'2013-09-18 03:52:52','2013-09-18 03:52:52'),(9,1,13,6,'2013-09-18 03:59:50','2013-09-18 03:59:50'),(10,1,14,6,'2013-09-18 04:10:53','2013-09-18 04:10:53'),(11,1,15,6,'2013-09-18 04:25:08','2013-09-18 04:25:08'),(12,1,16,6,'2013-09-18 04:40:58','2013-09-18 04:40:58'),(13,1,17,6,'2013-09-18 04:47:19','2013-09-18 04:47:19'),(14,1,18,6,'2013-09-18 05:06:00','2013-09-18 05:06:00'),(15,1,19,6,'2013-09-18 05:10:55','2013-09-18 05:10:55'),(16,1,20,6,'2013-09-18 05:31:32','2013-09-18 05:31:32'),(17,1,21,6,'2013-09-18 05:38:57','2013-09-18 05:38:57'),(18,1,22,6,'2013-09-18 05:52:25','2013-09-18 05:52:25');
/*!40000 ALTER TABLE `spree_product_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_properties`
--

DROP TABLE IF EXISTS `spree_product_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_product_properties_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_properties`
--

LOCK TABLES `spree_product_properties` WRITE;
/*!40000 ALTER TABLE `spree_product_properties` DISABLE KEYS */;
INSERT INTO `spree_product_properties` VALUES (2,'h1-11w',4,2,'2013-09-14 05:08:17','2013-09-14 05:08:17',0),(3,'白色',4,1,'2013-09-14 05:13:17','2013-09-14 05:13:17',0),(5,'6*12/CREE',4,3,'2013-09-14 05:13:17','2013-09-14 05:13:17',0),(6,'5颗',4,4,'2013-09-14 05:13:17','2013-09-14 05:13:17',0),(7,'H1',4,5,'2013-09-14 05:13:17','2013-09-14 05:13:17',0),(8,'11W',4,6,'2013-09-14 05:13:17','2013-09-14 05:13:17',0),(9,'600LM',4,7,'2013-09-14 05:13:17','2013-09-14 05:13:17',0),(10,'360°',4,8,'2013-09-14 05:13:17','2013-09-14 05:13:17',0),(11,'DC12-24V',4,9,'2013-09-14 05:13:17','2013-09-14 05:13:17',0),(12,'保修一年',4,10,'2013-09-14 05:13:17','2013-09-14 05:13:17',0),(13,'白色',5,1,'2013-09-14 05:17:32','2013-09-14 05:24:52',0),(14,'E92-10W',5,2,'2013-09-14 05:17:32','2013-09-14 05:24:52',0),(15,'CREE',5,3,'2013-09-14 05:17:32','2013-09-14 05:24:52',0),(16,'2颗',5,4,'2013-09-14 05:17:32','2013-09-14 05:24:52',0),(17,'H8 E92',5,5,'2013-09-14 05:17:32','2013-09-14 05:24:52',0),(18,'10W',5,6,'2013-09-14 05:17:32','2013-09-14 05:24:52',0),(19,'400LM',5,7,'2013-09-14 05:17:32','2013-09-14 05:24:52',0),(20,'360°',5,8,'2013-09-14 05:17:32','2013-09-14 05:24:52',0),(21,'DC12-24V',5,9,'2013-09-14 05:17:32','2013-09-14 05:24:52',0),(22,'保修一年',5,10,'2013-09-14 05:17:32','2013-09-14 05:24:52',0),(23,'白色',6,1,'2013-09-15 09:29:08','2013-09-15 09:45:37',0),(24,'E92',6,2,'2013-09-15 09:29:08','2013-09-15 09:45:37',0),(25,'CREE',6,3,'2013-09-15 09:29:08','2013-09-15 09:45:37',0),(26,'1',6,4,'2013-09-15 09:29:08','2013-09-15 09:45:37',0),(27,'H8',6,5,'2013-09-15 09:29:08','2013-09-15 09:45:37',0),(28,'20W',6,6,'2013-09-15 09:29:08','2013-09-15 09:45:37',0),(29,'800LM',6,7,'2013-09-15 09:29:08','2013-09-15 09:45:37',0),(30,'360',6,8,'2013-09-15 09:29:08','2013-09-15 09:45:37',0),(31,'12',6,9,'2013-09-15 09:29:08','2013-09-15 09:45:37',0),(32,'保修一年',6,10,'2013-09-15 09:29:08','2013-09-15 09:45:37',0),(33,'白，红，蓝，绿等',7,1,'2013-09-15 09:52:38','2013-09-15 09:58:07',0),(34,'5630',7,2,'2013-09-15 09:52:38','2013-09-15 09:58:07',0),(35,'S8.5双尖',7,3,'2013-09-15 09:52:38','2013-09-16 14:37:20',0),(36,'3',7,4,'2013-09-15 09:52:38','2013-09-15 09:58:07',0),(37,'S8.5双尖',7,5,'2013-09-15 09:52:38','2013-09-16 14:38:00',0),(38,'1.5W',7,6,'2013-09-15 09:52:38','2013-09-15 09:58:07',0),(39,'',7,7,'2013-09-15 09:52:38','2013-09-15 09:58:07',0),(40,'180',7,8,'2013-09-15 09:52:38','2013-09-15 09:58:07',0),(41,'12',7,9,'2013-09-15 09:52:38','2013-09-15 09:58:07',0),(42,'保修一年',7,10,'2013-09-15 09:52:38','2013-09-15 09:58:07',0),(53,'白色',9,1,'2013-09-16 05:36:41','2013-09-16 05:41:52',0),(54,'1156-6W-5630',9,2,'2013-09-16 05:36:41','2013-09-16 05:41:52',0),(55,'5630',9,3,'2013-09-16 05:36:41','2013-09-16 05:41:52',0),(56,'12颗',9,4,'2013-09-16 05:36:41','2013-09-16 05:41:52',0),(57,'1156',9,5,'2013-09-16 05:36:41','2013-09-16 05:41:52',0),(58,'6W',9,6,'2013-09-16 05:36:41','2013-09-16 05:41:52',0),(59,'280LM',9,7,'2013-09-16 05:36:41','2013-09-16 05:41:52',0),(60,'360°',9,8,'2013-09-16 05:36:41','2013-09-16 05:41:52',0),(61,'AC12-24V',9,9,'2013-09-16 05:36:41','2013-09-16 05:41:52',0),(62,'正常使用下保修一年',9,10,'2013-09-16 05:36:41','2013-09-16 05:41:52',0),(63,'白色',10,1,'2013-09-16 05:55:06','2013-09-16 05:59:01',0),(64,'G4-1.5W大功率',10,2,'2013-09-16 05:55:06','2013-09-16 05:59:01',0),(65,'S8.5大功率',10,3,'2013-09-16 05:55:06','2013-09-16 05:59:01',0),(66,'1颗',10,4,'2013-09-16 05:55:06','2013-09-16 05:59:01',0),(67,'G4',10,5,'2013-09-16 05:55:06','2013-09-16 05:59:01',0),(68,'1.5W',10,6,'2013-09-16 05:55:06','2013-09-16 05:59:01',0),(69,'120LM',10,7,'2013-09-16 05:55:06','2013-09-16 05:59:01',0),(70,'360°',10,8,'2013-09-16 05:55:06','2013-09-16 05:59:01',0),(71,'DC12-14V',10,9,'2013-09-16 05:55:06','2013-09-16 05:59:01',0),(72,'正常使用下保修一年',10,10,'2013-09-16 05:55:06','2013-09-16 05:59:01',0),(73,'白色',11,1,'2013-09-17 11:02:05','2013-09-17 11:06:54',0),(74,'5050',11,2,'2013-09-17 11:02:05','2013-09-17 11:06:54',0),(75,'S8.5双尖',11,3,'2013-09-17 11:02:05','2013-09-17 11:06:54',0),(76,'3',11,4,'2013-09-17 11:02:05','2013-09-17 11:06:54',0),(77,'S8.5双尖',11,5,'2013-09-17 11:02:05','2013-09-17 11:06:54',0),(78,'2.52W',11,6,'2013-09-17 11:02:05','2013-09-17 11:06:54',0),(79,'45LM',11,7,'2013-09-17 11:02:05','2013-09-17 11:06:54',0),(80,'180',11,8,'2013-09-17 11:02:05','2013-09-17 11:06:54',0),(81,'12',11,9,'2013-09-17 11:02:05','2013-09-17 11:06:54',0),(82,'保修一年',11,10,'2013-09-17 11:02:05','2013-09-17 11:06:54',0),(83,'白色',12,1,'2013-09-18 03:52:52','2013-09-18 03:57:52',0),(84,'CANBUS-31MM-2SMD-5050',12,2,'2013-09-18 03:52:52','2013-09-18 03:57:52',0),(85,'5050',12,3,'2013-09-18 03:52:52','2013-09-18 03:57:52',0),(86,'2颗',12,4,'2013-09-18 03:52:52','2013-09-18 03:57:52',0),(87,'PCB',12,5,'2013-09-18 03:52:52','2013-09-18 03:57:52',0),(88,'1.68W',12,6,'2013-09-18 03:52:52','2013-09-18 03:57:52',0),(89,'30LM',12,7,'2013-09-18 03:52:52','2013-09-18 03:57:52',0),(90,'180°',12,8,'2013-09-18 03:52:52','2013-09-18 03:57:52',0),(91,'DC12-14V',12,9,'2013-09-18 03:52:52','2013-09-18 03:57:52',0),(92,'正常使用下保修一年',12,10,'2013-09-18 03:52:52','2013-09-18 03:57:52',0),(93,'白色',13,1,'2013-09-18 03:59:50','2013-09-18 04:07:03',0),(94,'CANBUS-T10-3W大功率',13,2,'2013-09-18 03:59:50','2013-09-18 04:07:03',0),(95,'3W大功率',13,3,'2013-09-18 03:59:50','2013-09-18 04:07:03',0),(96,'1颗',13,4,'2013-09-18 03:59:50','2013-09-18 04:07:03',0),(97,'T10',13,5,'2013-09-18 03:59:50','2013-09-18 04:07:03',0),(98,'3W',13,6,'2013-09-18 03:59:50','2013-09-18 04:07:03',0),(99,'200LM',13,7,'2013-09-18 03:59:50','2013-09-18 04:07:03',0),(100,'180°',13,8,'2013-09-18 03:59:50','2013-09-18 04:07:03',0),(101,'AC12-14V',13,9,'2013-09-18 03:59:50','2013-09-18 04:07:03',0),(102,'正常使用下保修一年',13,10,'2013-09-18 03:59:50','2013-09-18 04:07:03',0),(103,'白色',14,1,'2013-09-18 04:10:53','2013-09-18 04:15:31',0),(104,'CANBUS-1156-27SMD-5050',14,2,'2013-09-18 04:10:53','2013-09-18 04:15:31',0),(105,'5050',14,3,'2013-09-18 04:10:53','2013-09-18 04:15:31',0),(106,'27颗',14,4,'2013-09-18 04:10:53','2013-09-18 04:15:31',0),(107,'1156',14,5,'2013-09-18 04:10:53','2013-09-18 04:15:31',0),(108,'5.1W',14,6,'2013-09-18 04:10:53','2013-09-18 04:15:31',0),(109,'405LM',14,7,'2013-09-18 04:10:53','2013-09-18 04:15:31',0),(110,'360°',14,8,'2013-09-18 04:10:53','2013-09-18 04:15:31',0),(111,'DC12-14V',14,9,'2013-09-18 04:10:53','2013-09-18 04:15:31',0),(112,'正常使用下保修一年',14,10,'2013-09-18 04:10:53','2013-09-18 04:15:31',0),(113,'白色',15,1,'2013-09-18 04:25:08','2013-09-18 04:28:38',0),(114,'CANBUS-T10-2SMD-5050',15,2,'2013-09-18 04:25:08','2013-09-18 04:28:38',0),(115,'5050',15,3,'2013-09-18 04:25:08','2013-09-18 04:28:38',0),(116,'2颗',15,4,'2013-09-18 04:25:08','2013-09-18 04:28:38',0),(117,'T10',15,5,'2013-09-18 04:25:08','2013-09-18 04:28:38',0),(118,'1.68W',15,6,'2013-09-18 04:25:08','2013-09-18 04:28:38',0),(119,'30LM',15,7,'2013-09-18 04:25:08','2013-09-18 04:28:38',0),(120,'两面发光',15,8,'2013-09-18 04:25:08','2013-09-18 04:28:38',0),(121,'DC12-14V',15,9,'2013-09-18 04:25:08','2013-09-18 04:28:38',0),(122,'正常使用下保修一年',15,10,'2013-09-18 04:25:08','2013-09-18 04:28:38',0),(123,'白色',16,1,'2013-09-18 04:40:58','2013-09-18 04:43:32',0),(124,'CANBUS-T10-4SMD+1W',16,2,'2013-09-18 04:40:58','2013-09-18 04:43:32',0),(125,'3528+1W大功率',16,3,'2013-09-18 04:40:58','2013-09-18 04:43:32',0),(126,'4颗3528+1颗大功率',16,4,'2013-09-18 04:40:58','2013-09-18 04:43:32',0),(127,'T10',16,5,'2013-09-18 04:40:58','2013-09-18 04:43:32',0),(128,'2.94W',16,6,'2013-09-18 04:40:58','2013-09-18 04:43:32',0),(129,'120LM',16,7,'2013-09-18 04:40:58','2013-09-18 04:43:32',0),(130,'三面发光',16,8,'2013-09-18 04:40:58','2013-09-18 04:43:32',0),(131,'DC12-14V',16,9,'2013-09-18 04:40:58','2013-09-18 04:43:32',0),(132,'正常使用下保修一年',16,10,'2013-09-18 04:40:58','2013-09-18 04:43:32',0),(133,'白色',17,1,'2013-09-18 04:47:19','2013-09-18 04:50:27',0),(134,'CANBUS-T10-8SMD-3528',17,2,'2013-09-18 04:47:19','2013-09-18 04:50:27',0),(135,'3528',17,3,'2013-09-18 04:47:19','2013-09-18 04:50:27',0),(136,'8颗',17,4,'2013-09-18 04:47:19','2013-09-18 04:50:27',0),(137,'T10',17,5,'2013-09-18 04:47:19','2013-09-18 04:50:27',0),(138,'2.94W',17,6,'2013-09-18 04:47:19','2013-09-18 04:50:27',0),(139,'40LM',17,7,'2013-09-18 04:47:19','2013-09-18 04:50:27',0),(140,'三面发光',17,8,'2013-09-18 04:47:19','2013-09-18 04:50:27',0),(141,'DC12-14V',17,9,'2013-09-18 04:47:19','2013-09-18 04:50:27',0),(142,'正常使用下保修一年',17,10,'2013-09-18 04:47:19','2013-09-18 04:50:27',0),(143,'白色',18,1,'2013-09-18 05:06:00','2013-09-18 05:08:25',0),(144,'CANBUS-T10-4SMD-5050',18,2,'2013-09-18 05:06:00','2013-09-18 05:08:25',0),(145,'5050',18,3,'2013-09-18 05:06:00','2013-09-18 05:08:25',0),(146,'4颗',18,4,'2013-09-18 05:06:00','2013-09-18 05:08:25',0),(147,'T10',18,5,'2013-09-18 05:06:00','2013-09-18 05:08:25',0),(148,'2.52W',18,6,'2013-09-18 05:06:00','2013-09-18 05:08:25',0),(149,'60LM',18,7,'2013-09-18 05:06:00','2013-09-18 05:08:25',0),(150,'360°',18,8,'2013-09-18 05:06:00','2013-09-18 05:08:25',0),(151,'DC12-14V',18,9,'2013-09-18 05:06:00','2013-09-18 05:08:25',0),(152,'正常使用下保修一年',18,10,'2013-09-18 05:06:00','2013-09-18 05:08:25',0),(153,'白色',19,1,'2013-09-18 05:10:55','2013-09-18 05:14:01',0),(154,'CANBUS-39MM-6SMD-5050 +散热片',19,2,'2013-09-18 05:10:55','2013-09-18 05:14:01',0),(155,'5050',19,3,'2013-09-18 05:10:55','2013-09-18 05:14:01',0),(156,'6颗',19,4,'2013-09-18 05:10:55','2013-09-18 05:14:01',0),(157,'S8.5',19,5,'2013-09-18 05:10:55','2013-09-18 05:14:01',0),(158,'2.94W',19,6,'2013-09-18 05:10:55','2013-09-18 05:14:01',0),(159,'90LM',19,7,'2013-09-18 05:10:55','2013-09-18 05:14:01',0),(160,'180°',19,8,'2013-09-18 05:10:55','2013-09-18 05:14:01',0),(161,'AC12-14V',19,9,'2013-09-18 05:10:55','2013-09-18 05:14:01',0),(162,'正常使用下保修一年',19,10,'2013-09-18 05:10:55','2013-09-18 05:14:01',0),(163,'白色',20,1,'2013-09-18 05:31:32','2013-09-18 05:34:17',0),(164,'CANBUS-36MM-6SMD-5050+散热片',20,2,'2013-09-18 05:31:32','2013-09-18 05:34:17',0),(165,'5050',20,3,'2013-09-18 05:31:32','2013-09-18 05:34:17',0),(166,'6颗',20,4,'2013-09-18 05:31:32','2013-09-18 05:34:17',0),(167,'S8.5',20,5,'2013-09-18 05:31:32','2013-09-18 05:34:17',0),(168,'2.94W',20,6,'2013-09-18 05:31:32','2013-09-18 05:34:17',0),(169,'90LM',20,7,'2013-09-18 05:31:32','2013-09-18 05:34:17',0),(170,'180°',20,8,'2013-09-18 05:31:32','2013-09-18 05:34:17',0),(171,'AC12-14V',20,9,'2013-09-18 05:31:32','2013-09-18 05:34:17',0),(172,'正常使用下保修一年 ',20,10,'2013-09-18 05:31:32','2013-09-18 05:34:17',0),(173,'白色',21,1,'2013-09-18 05:38:57','2013-09-18 05:41:32',0),(174,'CANBUS-39MM-3SMD-5050+散热片',21,2,'2013-09-18 05:38:57','2013-09-18 05:41:32',0),(175,'5050',21,3,'2013-09-18 05:38:57','2013-09-18 05:41:32',0),(176,'3颗',21,4,'2013-09-18 05:38:57','2013-09-18 05:41:32',0),(177,'S8.5',21,5,'2013-09-18 05:38:57','2013-09-18 05:41:32',0),(178,'2.52W',21,6,'2013-09-18 05:38:57','2013-09-18 05:41:32',0),(179,'45LM',21,7,'2013-09-18 05:38:57','2013-09-18 05:41:32',0),(180,'180°',21,8,'2013-09-18 05:38:57','2013-09-18 05:41:32',0),(181,'AC12-14V',21,9,'2013-09-18 05:38:57','2013-09-18 05:41:32',0),(182,'正常使用下保修一年',21,10,'2013-09-18 05:38:57','2013-09-18 05:41:32',0),(183,'白色',22,1,'2013-09-18 05:52:25','2013-09-18 05:54:39',0),(184,'CANBUS-42MM-8SMD-5050+散热片',22,2,'2013-09-18 05:52:25','2013-09-18 05:54:39',0),(185,'5050',22,3,'2013-09-18 05:52:25','2013-09-18 05:54:39',0),(186,'8颗',22,4,'2013-09-18 05:52:25','2013-09-18 05:54:39',0),(187,'S8.5',22,5,'2013-09-18 05:52:25','2013-09-18 05:54:39',0),(188,'3.36W',22,6,'2013-09-18 05:52:25','2013-09-18 05:54:39',0),(189,'120LM',22,7,'2013-09-18 05:52:25','2013-09-18 05:54:39',0),(190,'180°',22,8,'2013-09-18 05:52:25','2013-09-18 05:54:39',0),(191,'AC12-14V',22,9,'2013-09-18 05:52:25','2013-09-18 05:54:39',0),(192,'正常使用下保修一年',22,10,'2013-09-18 05:52:25','2013-09-18 05:54:39',0),(193,'普通黄光色（3200K）',23,1,'2013-09-30 06:04:22','2013-09-30 06:04:22',0),(194,'7506 COM',23,2,'2013-09-30 06:04:22','2013-09-30 06:04:22',0),(195,'P21W',23,3,'2013-09-30 06:04:22','2013-09-30 06:04:22',0),(196,'BA15S',23,5,'2013-09-30 06:04:22','2013-09-30 06:04:22',0),(197,'21W',23,6,'2013-09-30 06:04:22','2013-09-30 06:04:22',0),(198,'12V',23,9,'2013-09-30 06:04:22','2013-09-30 06:04:22',0);
/*!40000 ALTER TABLE `spree_product_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products`
--

DROP TABLE IF EXISTS `spree_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `available_on` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permalink_idx_unique` (`permalink`),
  KEY `index_spree_products_on_available_on` (`available_on`),
  KEY `index_spree_products_on_deleted_at` (`deleted_at`),
  KEY `index_spree_products_on_name` (`name`),
  KEY `index_spree_products_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products`
--

LOCK TABLES `spree_products` WRITE;
/*!40000 ALTER TABLE `spree_products` DISABLE KEYS */;
INSERT INTO `spree_products` VALUES (1,'八零配 会员汽车服务年费','','2013-09-06 16:00:00',NULL,'bang-ni-pei-hui-yuan-qi-che-fu-wu-nian-fei','八零配汽车服务','汽车服务',NULL,1,'2013-09-07 08:55:07','2013-09-07 15:24:26'),(2,'八零配 会员汽车终身服务费','','2013-09-06 16:00:00','2013-09-13 03:42:57','vip-zhongsheng','八零配汽车服务','汽车终身服务',NULL,1,'2013-09-13 01:48:00','2013-09-13 03:42:57'),(3,'八零配 会员汽车终身服务费','','2013-09-12 16:00:00',NULL,'ba-ling-pei-hui-yuan-qi-che-zhong-shen-fu-wu-fei','八零配汽车服务','汽车终身服务',NULL,1,'2013-09-13 04:58:36','2013-09-13 04:59:24'),(4,'H1-11W','<p>产品简介：</p>\r\n<p>1、型号：H1-11W大功率 <br />2、颜色：白色 <br />3、LED规格：6*12/CREE <br />4、灯数：5颗 <br />5、灯座：H1 <br />6、功率：11W <br />7、亮度：600LM <br />8、发光角度：360&deg; <br />9、使用电压：DC12-24V <br />10、外形尺寸：12MM <br />11、包装方式：防静电袋、吸塑卡纸 <br />12、保修期：正常使用下保修一年 &nbsp;</p>\r\n<p>产品优点及特性：</p>\r\n<p>1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。 <br />2、结构设计结实、美观，防震、耐撞击。 <br />3、发光穿透力强，反应速度快，微妙内即可发光。 <br />4、寿命长，平均寿命达到50000小时以上。 &nbsp;</p>\r\n<p>用途（适用范围）：汽车雾灯，刹车灯，转向灯等。</p>','2013-09-13 16:00:00',NULL,'h1-11w','led  h1 汽车雾灯，刹车灯，转向灯','led  h1 汽车雾灯，刹车灯，转向灯',NULL,1,'2013-09-14 04:37:15','2013-09-14 07:48:56'),(5,'E92-10W宝马天使眼','<p>E92-10W宝马天使眼 &nbsp;</p>\r\n<p>产品简介：</p>\r\n<p>1、型号：E92-10W <br />2、颜色：白色 <br />3、LED规格：CREE <br />4、灯数：2颗 <br />5、灯座：H8 E92 <br />6、功率：10W <br />7、亮度：400LM <br />8、发光角度：360&deg; <br />9、使用电压：DC12-24V <br />10、外形尺寸：18MM <br />11、包装方式：防静电袋、吸塑卡盒 <br />12、保修期：正常使用下保修一年 &nbsp;</p>\r\n<p>产品优点及特性：</p>\r\n<p>1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。 <br />2、结构设计结实、美观，防震、耐撞击。 <br />3、发光穿透力强，反应速度快，微妙内即可发光。 <br />4、寿命长，平均寿命达到50000小时以上。 &nbsp;</p>\r\n<p>用途（适用范围）：E92等宝马汽车雾灯等。</p>','2013-09-13 16:00:00',NULL,'e92-10wbao-ma-tian-shi-yan','E92-10W宝马天使眼','E92-10W，宝马天使眼',NULL,1,'2013-09-14 05:17:32','2013-09-14 07:47:24'),(6,'H8-E92-20W宝马天使眼','<p>&nbsp;</p>\r\n<p>新DTEC H8 V2 20瓦的天使眼让你的车前灯增白和明亮</p>\r\n<p>DTEC H8 V2使用4块CREE超高亮led</p>\r\n<p>&nbsp;</p>','2013-09-14 16:00:00',NULL,'h8-e92-20wbao-ma-tian-shi-yan','H8/E92宝马雾灯/E60/E39/E90灯 LED宝马天使眼20W','H8/E92宝马雾灯,LED宝马天使眼20W',NULL,1,'2013-09-15 09:29:08','2013-09-15 09:45:50'),(7,'双尖36MM-1.5W-5630','<p>产品名称：双尖36MM-1.5W-5630<br />产品性能：<br />1此款产品由3颗5630组成<br />2此光源采用进口芯片，质量稳定，使用寿命长<br />3此产品功率只为传统卤素灯的1/20，使用更节能环保<br />4此产品均能适用多种宝马汽车，奥迪，奔驰等<br />5具有汽车报警纠错解码功能，</p>\r\n<p>产品简介<br />1此产品颜色：白，红，蓝，绿等均可按客户要求<br />2光源：5630&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />3功率：1.5W<br />4色温：6000-6500K<br />5发光角度：180&deg;<br />6灯座：S8.5<br />7工作电压：12V DC无极性使用<br />8防静电袋包装或者吸塑卡装<br />9保修期：正常使用下</p>\r\n<p><br />用途：<br />汽车仪表灯，阅读灯，牌照灯，车厢灯</p>','2013-09-14 16:00:00',NULL,'shuang-jian-36mm-1-dot-5w-5630','汽车仪表灯，阅读灯，牌照灯，车厢灯','双尖36MM-1.5W-5630',NULL,1,'2013-09-15 09:52:38','2013-09-16 14:38:00'),(8,'双尖36MM-1.5W-5630','<p>&nbsp;产品性能：</p>\r\n<p>1此款产品由3颗5630组成</p>\r\n<p>2此光源采用进口芯片，质量稳定，使用寿命长</p>\r\n<p>3此产品功率只为传统卤素灯的1/20，使用更节能环保</p>\r\n<p>4此产品均能适用多种宝马汽车，奥迪，奔驰等</p>\r\n<p>5具有汽车报警纠错解码功能，</p>\r\n<p>产品简介</p>\r\n<p>1此产品颜色：白，红，蓝，绿等均可按客户要求</p>\r\n<p>2.光源:5630&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n<p>3功率：1.5W</p>\r\n<p>4色温：6000-6500K</p>\r\n<p>5发光角度：180&deg;</p>\r\n<p>6灯座：S8.5</p>\r\n<p>7工作电压：12V DC无极性使用</p>\r\n<p>8防静电袋包装或者吸塑卡装</p>\r\n<p>9保修期：正常使用下一年</p>\r\n<p>用途： 汽车仪表灯，阅读灯，牌照灯，车厢灯 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>','2013-09-15 16:00:00','2013-09-16 06:03:48','shuang-jian-36mm-1-dot-5w-5630-5631','','汽车仪表灯，阅读灯，牌照灯，车厢灯',NULL,1,'2013-09-16 05:18:03','2013-09-16 06:03:48'),(9,'1156-6W-5630','<p>产品简介：</p>\r\n<p>1、型号：1156-6W-5630<br />2、颜色：白色 <br />3、LED规格：5630<br />4、灯数：12颗<br />5、灯座：1156<br />6、功率：6W<br />7、亮度：280LM<br />8、发光角度：360&deg;<br />9、使用电压：AC12-24V<br />10、外形尺寸：16MM<br />11、包装方式：防静电袋、吸塑卡纸<br />12、保修期：正常使用下保修一年<br /> <br />产品优点及特性：</p>\r\n<p>1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。<br />2、结构设计结实、美观，防震、耐撞击。<br />3、发光穿透力强，反应速度快，微妙内即可发光。<br />4、寿命长，平均寿命达到50000小时以上。<br /> <br />用途（适用范围）：汽车倒车灯，刹车灯，雾灯等。</p>','2013-09-15 16:00:00',NULL,'1156-6w','','汽车倒车灯，刹车灯，雾灯',NULL,1,'2013-09-16 05:36:41','2013-09-16 14:35:03'),(10,'G4-1.5W凹透镜/G4-1.5W铝头汽车灯','<p>产品简介：<br />1、型号：G4-1.5W大功率<br />2、颜色：白色<br />3、LED规格：S8.5大功率<br />4、灯数：1颗<br />5、灯座：G4<br />6、功率：1.5W<br />7、亮度：120LM<br />8、发光角度：360&deg;<br />9、使用电压：DC12-14V<br />10、外形尺寸：12MM<br />11、包装方式：防静电袋、吸塑卡纸<br />12、保修期：正常使用下保修一年<br />&nbsp;<br />产品优点及特性：<br />1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。<br />2、结构设计结实、美观，防震、耐撞击。<br />3、发光穿透力强，反应速度快，微妙内即可发光。<br />4、寿命长，平均寿命达到50000小时以上。<br />&nbsp;<br />用途（适用范围）：汽车G4灯、轮船G4灯等。<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />&nbsp;</p>','2013-09-15 16:00:00',NULL,'g4-1-dot-5wao-tou-jing-slash-g4-1-dot-5wlu-tou-qi-che-deng','','汽车G4灯、轮船G4灯',NULL,1,'2013-09-16 05:55:06','2013-09-16 14:35:54'),(11,'CANBUS-36MM-3SMD-5050','<p>1、型号：CANBUS-36MM-3SMD-5050+散热片<br />2、颜色：白色<br />3、LED规格：5050<br />4、灯数：3颗<br />5、灯座：S8.5<br />6、功率：2.52W<br />7、亮度：45LM<br />8、发光角度：180&deg;<br />9、使用电压：AC12-14V<br />10、外形尺寸：10MM</p>\r\n<p>产品优点及特性：<br />1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。<br />2、结构设计结实、美观，防震、耐撞击。<br />3、发光穿透力强，反应速度快，微妙内即可发光。<br />4、寿命长，平均寿命达到50000小时以上。<br />5、具有CANBUS解码防报警功能。<br />&nbsp;<br />用途（适用范围）：汽车解码灯、仪表灯、示宽灯、指示灯、牌照灯等。</p>','2013-09-16 16:00:00',NULL,'canbus-36mm-3smd-5050','汽车解码灯、仪表灯、示宽灯、指示灯、牌照灯等。','汽车解码灯、仪表灯、示宽灯、指示灯、牌照灯等。',NULL,1,'2013-09-17 11:02:05','2013-09-18 04:38:33'),(12,'CANBUS-31MM-2SMD-5050','<p>产品简介：<br />1、型号：CANBUS-31MM-2SMD-5050<br />2、颜色：白色<br />3、LED规格：5050<br />4、灯数：2颗<br />5、灯座：PCB<br />6、功率：1.68W<br />7、亮度：30LM<br />8、发光角度：180&deg;<br />9、使用电压：DC12-14V<br />10、外形尺寸：10MM<br />11、包装方式：防静电袋、吸塑卡纸<br />12、保修期：正常使用下保修一年<br />&nbsp;<br />产品优点及特性：<br />1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。<br />2、结构设计结实、美观，防震、耐撞击。<br />3、发光穿透力强，反应速度快，微妙内即可发光。<br />4、寿命长，平均寿命达到50000小时以上。<br />5、具有恒流CANBUS解码防报警功能。<br />&nbsp;</p>\r\n<p>用途（适用范围）：汽车解码灯、仪表灯、示宽灯、指示灯等。</p>','2013-09-17 16:00:00',NULL,'canbus-31mm-2smd-5050','','汽车解码灯、仪表灯、示宽灯、指示灯',NULL,1,'2013-09-18 03:52:51','2013-09-18 04:44:35'),(13,'CANBUS-T10-3W大功率','<p>产品简介：<br />1、型号：CANBUS-T10-3W大功率<br />2、颜色：白色<br />3、LED规格：3W大功率<br />4、灯数：1颗<br />5、灯座：T10<br />6、功率：3W<br />7、亮度：200LM<br />8、发光角度：180&deg;<br />9、使用电压：AC12-14V<br />10、外形尺寸：10MM<br />11、包装方式：防静电袋、吸塑卡纸<br />12、保修期：正常使用下保修一年<br />&nbsp;<br />产品优点及特性：<br />1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。<br />2、结构设计结实、美观，防震、耐撞击。<br />3、发光穿透力强，反应速度快，微妙内即可发光。<br />4、寿命长，平均寿命达到50000小时以上。<br />5、具有CANBUS解码防报警功能。<br />&nbsp;<br />用途（适用范围）：汽车解码灯、仪表灯、示宽灯、指示灯等。</p>','2013-09-17 16:00:00',NULL,'canbus-t10-3wda-gong-lu','','汽车解码灯、仪表灯、示宽灯、指示灯',NULL,1,'2013-09-18 03:59:50','2013-09-18 04:36:27'),(14,'CANBUS-1156-27SMD-5050','<p>产品简介：<br />1、型号：CANBUS-1156-27SMD-5050<br />2、颜色：白色<br />3、LED规格：5050<br />4、灯数：27颗<br />5、灯座：1156<br />6、功率：5.1W<br />7、亮度：405LM<br />8、发光角度：360&deg;<br />9、使用电压：DC12-14V<br />10、外形尺寸：20MM<br />11、包装方式：防静电袋、吸塑卡纸<br />12、保修期：正常使用下保修一年<br />&nbsp;<br />产品优点及特性：<br />1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。<br />2、结构设计结实、美观，防震、耐撞击。<br />3、发光穿透力强，反应速度快，微妙内即可发光。<br />4、寿命长，平均寿命达到50000小时以上。<br />5、具有CANBUS解码防报警功能。<br />&nbsp;<br />用途（适用范围）：汽车刹车灯、倒车灯、转向灯、雾灯灯等。</p>','2013-09-17 16:00:00',NULL,'canbus-1156-27smd-5050','汽车刹车灯、倒车灯、转向灯、雾灯灯','汽车刹车灯、倒车灯、转向灯、雾灯灯',NULL,1,'2013-09-18 04:10:53','2013-09-18 04:15:31'),(15,'CANBUS-T10-2SMD-5050','<p>产品简介：<br />1、型号：CANBUS-T10-2SMD-5050<br />2、颜色：白色<br />3、LED规格：5050<br />4、灯数：2颗<br />5、灯座：T10<br />6、功率：1.68W<br />7、亮度：30LM<br />8、发光角度：两面发光<br />9、使用电压：DC12-14V<br />10、外形尺寸：10MM<br />11、包装方式：防静电袋、吸塑卡纸<br />12、保修期：正常使用下保修一年<br />&nbsp;<br />产品优点及特性：<br />1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。<br />2、结构设计结实、美观，防震、耐撞击。<br />3、发光穿透力强，反应速度快，微妙内即可发光。<br />4、寿命长，平均寿命达到50000小时以上。<br />5、具有恒流CANBUS解码防报警功能。<br />&nbsp;<br />用途（适用范围）：汽车解码灯、仪表灯、示宽灯、指示灯等。</p>','2013-09-17 16:00:00',NULL,'canbus-t10-2smd-5050','','汽车解码灯、仪表灯、示宽灯、指示灯',NULL,1,'2013-09-18 04:25:08','2013-09-18 04:35:54'),(16,'  CANBUS-T10-4SMD+1W','<p>产品简介：<br />1、型号：CANBUS-T10-4SMD+1W<br />2、颜色：白色<br />3、LED规格：3528+1W大功率<br />4、灯数：4颗3528+1颗大功率<br />5、灯座：T10<br />6、功率：2.94W<br />7、亮度：120LM<br />8、发光角度：三面发光<br />9、使用电压：DC12-14V<br />10、外形尺寸：10MM<br />11、包装方式：防静电袋、吸塑卡纸<br />12、保修期：正常使用下保修一年<br />&nbsp;<br />产品优点及特性：<br />1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。<br />2、结构设计结实、美观，防震、耐撞击。<br />3、发光穿透力强，反应速度快，微妙内即可发光。<br />4、寿命长，平均寿命达到50000小时以上。<br />5、具有恒流CANBUS解码防报警功能。<br />&nbsp;<br />用途（适用范围）：汽车解码灯、仪表灯、示宽灯、指示灯等。</p>','2013-09-17 16:00:00',NULL,'canbus-t10-4smd-plus-1w','汽车解码灯、仪表灯、示宽灯、指示灯','汽车解码灯、仪表灯、示宽灯、指示灯',NULL,1,'2013-09-18 04:40:58','2013-09-18 04:43:32'),(17,'CANBUS-T10-8SMD-3528','<p>产品简介：<br />1、型号：CANBUS-T10-8SMD-3528<br />2、颜色：白色<br />3、LED规格：3528<br />4、灯数：8颗<br />5、灯座：T10<br />6、功率：2.94W<br />7、亮度：40LM<br />8、发光角度：三面发光<br />9、使用电压：DC12-14V<br />10、外形尺寸：10MM<br />11、包装方式：防静电袋、吸塑卡纸<br />12、保修期：正常使用下保修一年<br />&nbsp;<br />产品优点及特性：<br />1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。<br />2、结构设计结实、美观，防震、耐撞击。<br />3、发光穿透力强，反应速度快，微妙内即可发光。<br />4、寿命长，平均寿命达到50000小时以上。<br />5、具有恒流CANBUS解码防报警功能。<br />&nbsp;<br />用途（适用范围）：汽车解码灯、仪表灯、示宽灯、指示灯等。</p>','2013-09-17 16:00:00',NULL,'canbus-t10-8smd-3528','','汽车解码灯、仪表灯、示宽灯、指示灯',NULL,1,'2013-09-18 04:47:19','2013-09-18 05:25:59'),(18,'CANBUS-T10-4SMD-5050','<p>&nbsp;<br /> 产品简介：<br />1、型号：CANBUS-T10-4SMD-5050<br />2、颜色：白色<br />3、LED规格：5050<br />4、灯数：4颗<br />5、灯座：T10<br />6、功率：2.52W<br />7、亮度：60LM<br />8、发光角度：360&deg;<br />9、使用电压：DC12-14V<br />10、外形尺寸：10MM<br />11、包装方式：防静电袋、吸塑卡纸<br />12、保修期：正常使用下保修一年<br />&nbsp;<br />产品优点及特性：<br />1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。<br />2、结构设计结实、美观，防震、耐撞击。<br />3、发光穿透力强，反应速度快，微妙内即可发光。<br />4、寿命长，平均寿命达到50000小时以上。<br />5、具有恒流CANBUS解码防报警功能。<br />&nbsp;<br />用途（适用范围）：汽车解码灯、仪表灯、示宽灯、指示灯等。</p>','2013-09-17 16:00:00',NULL,'canbus-t10-4smd-5050','汽车解码灯、仪表灯、示宽灯、指示灯','汽车解码灯、仪表灯、示宽灯、指示灯',NULL,1,'2013-09-18 05:06:00','2013-09-18 05:25:47'),(19,'CANBUS-39MM-6SMD-5050+散热片','<p>产品简介：<br />1、型号：CANBUS-39MM-6SMD-5050 +散热片<br />2、颜色：白色<br />3、LED规格：5050<br />4、灯数：6颗<br />5、灯座：S8.5<br />6、功率：2.94W<br />7、亮度：90LM<br />8、发光角度：180&deg;<br />9、使用电压：AC12-14V<br />10、外形尺寸：10MM<br />11、包装方式：防静电袋、吸塑卡纸<br />12、保修期：正常使用下保修一年<br />&nbsp;<br />产品优点及特性：<br />1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。<br />2、结构设计结实、美观，防震、耐撞击。<br />3、发光穿透力强，反应速度快，微妙内即可发光。<br />4、寿命长，平均寿命达到50000小时以上。<br />5、具有CANBUS解码防报警功能。<br />&nbsp;<br />用途（适用范围）：汽车解码灯、仪表灯、示宽灯、指示灯、牌照灯等。<br /> </p>','2013-09-17 16:00:00',NULL,'canbus-39mm-6smd-5050-plus-san-re-pian','汽车解码灯、仪表灯、示宽灯、指示灯、牌照灯','汽车解码灯、仪表灯、示宽灯、指示灯、牌照灯',NULL,1,'2013-09-18 05:10:55','2013-09-18 05:14:01'),(20,'CANBUS-36MM-6SMD-5050+散热片','<p>产品简介：<br />1、型号：CANBUS-36MM-6SMD-5050+散热片<br />2、颜色：白色<br />3、LED规格：5050<br />4、灯数：6颗<br />5、灯座：S8.5<br />6、功率：2.94W<br />7、亮度：90LM<br />8、发光角度：180&deg;<br />9、使用电压：AC12-14V<br />10、外形尺寸：10MM<br />11、包装方式：防静电袋、吸塑卡纸<br />12、保修期：正常使用下保修一年<br />&nbsp;<br />产品优点及特性：<br />1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。<br />2、结构设计结实、美观，防震、耐撞击。<br />3、发光穿透力强，反应速度快，微妙内即可发光。<br />4、寿命长，平均寿命达到50000小时以上。<br />5、具有CANBUS解码防报警功能。<br />&nbsp;<br />用途（适用范围）：汽车解码灯、仪表灯、示宽灯、指示灯、牌照灯等。</p>','2013-09-17 16:00:00',NULL,'canbus-36mm-6smd-5050-plus-san-re-pian','汽车解码灯、仪表灯、示宽灯、指示灯、牌照灯','汽车解码灯、仪表灯、示宽灯、指示灯、牌照灯',NULL,1,'2013-09-18 05:31:32','2013-09-18 05:34:17'),(21,'CANBUS-39MM-3SMD-5050+散热片','<p>产品简介：<br />1、型号：CANBUS-39MM-3SMD-5050+散热片<br />2、颜色：白色<br />3、LED规格：5050<br />4、灯数：3颗<br />5、灯座：S8.5<br />6、功率：2.52W<br />7、亮度：45LM<br />8、发光角度：180&deg;<br />9、使用电压：AC12-14V<br />10、外形尺寸：10MM<br />11、包装方式：防静电袋、吸塑卡纸<br />12、保修期：正常使用下保修一年<br />&nbsp;<br />产品优点及特性：<br />1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。<br />2、结构设计结实、美观，防震、耐撞击。<br />3、发光穿透力强，反应速度快，微妙内即可发光。<br />4、寿命长，平均寿命达到50000小时以上。<br />5、具有CANBUS解码防报警功能。<br />&nbsp;<br />用途（适用范围）：汽车解码灯、仪表灯、示宽灯、指示灯、牌照灯等。</p>','2013-09-17 16:00:00',NULL,'canbus-39mm-3smd-5050-plus-san-re-pian','','汽车解码灯、仪表灯、示宽灯、指示灯、牌照灯',NULL,1,'2013-09-18 05:38:57','2013-09-18 05:41:32'),(22,'CANBUS-42MM-8SMD-5050+散热片','<p>产品简介：<br />1、型号：CANBUS-42MM-8SMD-5050+散热片<br />2、颜色：白色<br />3、LED规格：5050<br />4、灯数：8颗<br />5、灯座：S8.5<br />6、功率：3.36W<br />7、亮度：120LM<br />8、发光角度：180&deg;<br />9、使用电压：AC12-14V<br />10、外形尺寸：10MM<br />11、包装方式：防静电袋、吸塑卡纸<br />12、保修期：正常使用下保修一年<br />&nbsp;<br />产品优点及特性：<br />1、环保、节能，相同亮度耗电相当于传统钨丝灯的1/10。<br />2、结构设计结实、美观，防震、耐撞击。<br />3、发光穿透力强，反应速度快，微妙内即可发光。<br />4、寿命长，平均寿命达到50000小时以上。<br />5、具有CANBUS解码防报警功能。<br />&nbsp;<br />用途（适用范围）：汽车解码灯、仪表灯、示宽灯、指示灯、牌照灯等。</p>','2013-09-17 16:00:00',NULL,'canbus-42mm-8smd-5050-plus-san-re-pian','','汽车解码灯、仪表灯、示宽灯、指示灯、牌照灯',NULL,1,'2013-09-18 05:52:25','2013-09-18 05:54:39'),(23,'欧司朗7506 P21W-进口','<p>编号:7506<br />\r\n规格:P21W<br />\r\n标准:12V 21W<br />\r\n灯座:BA15S<br />\r\n产地:斯洛伐克 Made in slovakia<br />\r\n光色:普通黄光色（3200K）</p>\r\n\r\n<p><img alt=\"\" src=\"/ckeditor_assets/pictures/1/content_o1.jpg\" /></p>\r\n','2013-09-29 16:00:00',NULL,'ou-si-lang-7506-p21w-jin-kou','欧司朗,汽车灯泡','欧司朗,汽车灯泡',NULL,1,'2013-09-30 05:52:15','2013-09-30 06:22:03');
/*!40000 ALTER TABLE `spree_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_promotion_rules`
--

DROP TABLE IF EXISTS `spree_products_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_promotion_rules` (
  `product_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_products_promotion_rules_on_product_id` (`product_id`),
  KEY `index_products_promotion_rules_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_promotion_rules`
--

LOCK TABLES `spree_products_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_products_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_products_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_taxons`
--

DROP TABLE IF EXISTS `spree_products_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_taxons` (
  `product_id` int(11) DEFAULT NULL,
  `taxon_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `index_spree_products_taxons_on_product_id` (`product_id`),
  KEY `index_spree_products_taxons_on_taxon_id` (`taxon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_taxons`
--

LOCK TABLES `spree_products_taxons` WRITE;
/*!40000 ALTER TABLE `spree_products_taxons` DISABLE KEYS */;
INSERT INTO `spree_products_taxons` VALUES (1,1,1),(3,1,3),(5,3,5),(4,3,7),(4,4,8),(4,5,9),(6,3,11),(9,2,13),(9,4,14),(9,3,15),(10,2,16),(7,7,17),(11,7,18),(11,2,19),(12,2,20),(13,2,21),(14,2,22),(14,4,23),(14,6,24),(14,5,25),(14,3,26),(15,2,27),(15,9,28),(15,10,29),(15,11,30),(15,12,31),(13,9,32),(13,10,33),(13,11,34),(13,12,35),(11,9,36),(11,10,37),(11,11,38),(11,12,39),(12,9,40),(12,10,41),(12,11,42),(12,12,43),(16,9,44),(16,10,45),(16,11,46),(16,12,47),(17,9,48),(17,10,49),(17,11,50),(17,12,51),(18,9,52),(18,10,53),(18,11,54),(18,12,55),(19,2,56),(19,9,57),(19,10,58),(19,11,59),(19,12,60),(19,7,61),(18,2,62),(17,2,63),(20,2,64),(20,9,65),(20,10,66),(20,11,67),(20,12,68),(20,7,69),(21,2,70),(21,7,71),(21,9,72),(21,10,73),(21,11,74),(21,12,75),(22,2,76),(22,9,77),(22,10,78),(22,11,79),(22,12,80),(22,7,81),(23,15,82),(23,16,83);
/*!40000 ALTER TABLE `spree_products_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_action_line_items`
--

DROP TABLE IF EXISTS `spree_promotion_action_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_action_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_action_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_action_line_items`
--

LOCK TABLES `spree_promotion_action_line_items` WRITE;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_actions`
--

DROP TABLE IF EXISTS `spree_promotion_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activator_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_actions`
--

LOCK TABLES `spree_promotion_actions` WRITE;
/*!40000 ALTER TABLE `spree_promotion_actions` DISABLE KEYS */;
INSERT INTO `spree_promotion_actions` VALUES (1,1,NULL,'Spree::Promotion::Actions::CreateAdjustment');
/*!40000 ALTER TABLE `spree_promotion_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules`
--

DROP TABLE IF EXISTS `spree_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activator_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_promotion_rules_on_product_group_id` (`product_group_id`),
  KEY `index_promotion_rules_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules`
--

LOCK TABLES `spree_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules_users`
--

DROP TABLE IF EXISTS `spree_promotion_rules_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules_users` (
  `user_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_promotion_rules_users_on_promotion_rule_id` (`promotion_rule_id`),
  KEY `index_promotion_rules_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules_users`
--

LOCK TABLES `spree_promotion_rules_users` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties`
--

DROP TABLE IF EXISTS `spree_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties`
--

LOCK TABLES `spree_properties` WRITE;
/*!40000 ALTER TABLE `spree_properties` DISABLE KEYS */;
INSERT INTO `spree_properties` VALUES (1,'color','颜色','2013-09-14 04:45:22','2013-09-14 04:45:22'),(2,'xinghao','型号','2013-09-14 04:48:47','2013-09-14 04:48:47'),(3,'guige','规格','2013-09-14 04:49:05','2013-09-14 04:49:05'),(4,'dengshu','灯数','2013-09-14 04:49:37','2013-09-14 04:49:37'),(5,'dengzuo','灯座','2013-09-14 04:49:56','2013-09-14 04:49:56'),(6,'edinggonglv','额定功率','2013-09-14 04:50:30','2013-09-14 04:53:01'),(7,'liangdu','亮度','2013-09-14 04:50:43','2013-09-14 04:50:43'),(8,'faguangjiaodu','发光角度','2013-09-14 04:51:05','2013-09-14 04:51:05'),(9,'edingdianya','额定电压','2013-09-14 04:51:30','2013-09-14 04:51:30'),(10,'baoxiuzhengce','保修政策','2013-09-14 04:52:14','2013-09-14 04:52:14');
/*!40000 ALTER TABLE `spree_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties_prototypes`
--

DROP TABLE IF EXISTS `spree_properties_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties_prototypes`
--

LOCK TABLES `spree_properties_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_properties_prototypes` DISABLE KEYS */;
INSERT INTO `spree_properties_prototypes` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(2,1),(2,2),(2,3),(2,5),(2,6),(2,9);
/*!40000 ALTER TABLE `spree_properties_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prototypes`
--

DROP TABLE IF EXISTS `spree_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prototypes`
--

LOCK TABLES `spree_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_prototypes` DISABLE KEYS */;
INSERT INTO `spree_prototypes` VALUES (1,'LED汽车灯','2013-09-06 07:48:32','2013-09-06 07:48:32'),(2,'标准灯泡','2013-09-30 06:02:56','2013-09-30 06:02:56');
/*!40000 ALTER TABLE `spree_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_authorizations`
--

DROP TABLE IF EXISTS `spree_return_authorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_authorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_authorizations`
--

LOCK TABLES `spree_return_authorizations` WRITE;
/*!40000 ALTER TABLE `spree_return_authorizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_return_authorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles`
--

DROP TABLE IF EXISTS `spree_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles`
--

LOCK TABLES `spree_roles` WRITE;
/*!40000 ALTER TABLE `spree_roles` DISABLE KEYS */;
INSERT INTO `spree_roles` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `spree_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles_users`
--

DROP TABLE IF EXISTS `spree_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_spree_roles_users_on_role_id` (`role_id`),
  KEY `index_spree_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles_users`
--

LOCK TABLES `spree_roles_users` WRITE;
/*!40000 ALTER TABLE `spree_roles_users` DISABLE KEYS */;
INSERT INTO `spree_roles_users` VALUES (1,2);
/*!40000 ALTER TABLE `spree_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipments`
--

DROP TABLE IF EXISTS `spree_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shipments_on_number` (`number`),
  KEY `index_spree_shipments_on_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipments`
--

LOCK TABLES `spree_shipments` WRITE;
/*!40000 ALTER TABLE `spree_shipments` DISABLE KEYS */;
INSERT INTO `spree_shipments` VALUES (9,NULL,'H13155812057',NULL,NULL,6,NULL,'pending','2013-09-07 15:29:08','2013-09-07 15:29:08',1),(10,NULL,'H26552057261',NULL,'2013-09-09 04:29:30',12,NULL,'shipped','2013-09-09 03:43:26','2013-09-09 04:29:30',1),(11,NULL,'H18855225638',NULL,'2013-09-26 13:13:04',14,NULL,'shipped','2013-09-09 05:05:14','2013-09-26 13:13:04',1),(13,NULL,'H50582768021',NULL,NULL,55,NULL,'pending','2013-09-24 14:49:19','2013-09-24 14:49:19',1),(14,NULL,'H37763488274',NULL,NULL,61,NULL,'pending','2013-09-26 13:32:40','2013-09-26 13:32:40',1),(15,NULL,'H67538172367',NULL,NULL,61,NULL,'pending','2013-09-26 13:32:40','2013-09-26 13:32:40',1),(20,NULL,'H55710173823',NULL,NULL,74,NULL,'pending','2013-09-29 23:04:40','2013-09-29 23:04:40',1),(28,NULL,'H04621270337',NULL,'2013-10-11 11:34:45',77,NULL,'shipped','2013-09-30 04:12:57','2013-10-11 11:34:45',1);
/*!40000 ALTER TABLE `spree_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_categories`
--

DROP TABLE IF EXISTS `spree_shipping_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_categories`
--

LOCK TABLES `spree_shipping_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_categories` VALUES (1,'默认配送','2013-09-07 08:54:35','2013-09-07 08:54:35');
/*!40000 ALTER TABLE `spree_shipping_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_method_categories`
--

DROP TABLE IF EXISTS `spree_shipping_method_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_method_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_shipping_method_categories_on_shipping_method_id` (`shipping_method_id`),
  KEY `index_spree_shipping_method_categories_on_shipping_category_id` (`shipping_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_method_categories`
--

LOCK TABLES `spree_shipping_method_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_method_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_method_categories` VALUES (1,1,1,'2013-09-07 09:47:29','2013-09-07 09:47:29');
/*!40000 ALTER TABLE `spree_shipping_method_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods`
--

DROP TABLE IF EXISTS `spree_shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_on` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `tracking_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods`
--

LOCK TABLES `spree_shipping_methods` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods` VALUES (1,'中国大陆城市','',NULL,'2013-09-07 09:47:29','2013-09-26 13:34:56','');
/*!40000 ALTER TABLE `spree_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods_zones`
--

DROP TABLE IF EXISTS `spree_shipping_methods_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods_zones` (
  `shipping_method_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods_zones`
--

LOCK TABLES `spree_shipping_methods_zones` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods_zones` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods_zones` VALUES (1,1);
/*!40000 ALTER TABLE `spree_shipping_methods_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_rates`
--

DROP TABLE IF EXISTS `spree_shipping_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `selected` tinyint(1) DEFAULT '0',
  `cost` decimal(8,2) DEFAULT '0.00',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `spree_shipping_rates_join_index` (`shipment_id`,`shipping_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_rates`
--

LOCK TABLES `spree_shipping_rates` WRITE;
/*!40000 ALTER TABLE `spree_shipping_rates` DISABLE KEYS */;
INSERT INTO `spree_shipping_rates` VALUES (8,9,1,1,0.00,'2013-09-09 01:42:43','2013-09-09 01:42:43'),(12,10,1,1,0.00,'2013-09-09 04:29:24','2013-09-09 04:29:24'),(15,13,1,1,0.00,'2013-09-24 14:49:19','2013-09-24 14:49:19'),(18,11,1,1,0.00,'2013-09-26 13:12:55','2013-09-26 13:12:55'),(19,14,1,1,0.00,'2013-09-26 13:32:40','2013-09-26 13:32:40'),(20,15,1,1,0.00,'2013-09-26 13:32:40','2013-09-26 13:32:40'),(25,20,1,1,0.00,'2013-09-29 23:04:40','2013-09-29 23:21:02'),(35,28,1,1,0.00,'2013-10-11 11:34:39','2013-10-11 11:34:39');
/*!40000 ALTER TABLE `spree_shipping_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_state_changes`
--

DROP TABLE IF EXISTS `spree_state_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_state_changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previous_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stateful_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stateful_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `next_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=436 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_state_changes`
--

LOCK TABLES `spree_state_changes` WRITE;
/*!40000 ALTER TABLE `spree_state_changes` DISABLE KEYS */;
INSERT INTO `spree_state_changes` VALUES (1,'payment',NULL,4,2,'Spree::Order','balance_due','2013-09-07 09:43:55','2013-09-07 09:43:55'),(2,'shipment',NULL,4,2,'Spree::Order',NULL,'2013-09-07 09:43:55','2013-09-07 09:43:55'),(3,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:44:59','2013-09-07 09:44:59'),(4,'shipment',NULL,4,2,'Spree::Order',NULL,'2013-09-07 09:44:59','2013-09-07 09:44:59'),(9,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:47:42','2013-09-07 09:47:42'),(10,'shipment',NULL,4,2,'Spree::Order','pending','2013-09-07 09:47:42','2013-09-07 09:47:42'),(11,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:47:42','2013-09-07 09:47:42'),(12,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:47:42','2013-09-07 09:47:42'),(13,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:48:26','2013-09-07 09:48:26'),(14,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:48:26','2013-09-07 09:48:26'),(15,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:48:26','2013-09-07 09:48:26'),(16,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:48:27','2013-09-07 09:48:27'),(17,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:48:38','2013-09-07 09:48:38'),(18,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:48:38','2013-09-07 09:48:38'),(19,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:48:53','2013-09-07 09:48:53'),(20,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:48:53','2013-09-07 09:48:53'),(21,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:48:53','2013-09-07 09:48:53'),(22,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:48:54','2013-09-07 09:48:54'),(23,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:48:54','2013-09-07 09:48:54'),(24,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:48:54','2013-09-07 09:48:54'),(25,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:48:54','2013-09-07 09:48:54'),(26,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:48:54','2013-09-07 09:48:54'),(27,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:48:56','2013-09-07 09:48:56'),(28,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:48:56','2013-09-07 09:48:56'),(29,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:48:56','2013-09-07 09:48:56'),(30,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:48:56','2013-09-07 09:48:56'),(31,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:48:56','2013-09-07 09:48:56'),(32,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:48:56','2013-09-07 09:48:56'),(33,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:49:00','2013-09-07 09:49:00'),(34,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:49:00','2013-09-07 09:49:00'),(35,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:49:00','2013-09-07 09:49:00'),(36,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:49:00','2013-09-07 09:49:00'),(37,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:49:00','2013-09-07 09:49:00'),(38,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:49:00','2013-09-07 09:49:00'),(39,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:49:03','2013-09-07 09:49:03'),(40,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:49:03','2013-09-07 09:49:03'),(41,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:49:03','2013-09-07 09:49:03'),(42,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:49:03','2013-09-07 09:49:03'),(43,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:49:07','2013-09-07 09:49:07'),(44,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:49:07','2013-09-07 09:49:07'),(45,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:49:07','2013-09-07 09:49:07'),(46,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:49:07','2013-09-07 09:49:07'),(47,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:55:03','2013-09-07 09:55:03'),(48,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:55:03','2013-09-07 09:55:03'),(49,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:55:03','2013-09-07 09:55:03'),(50,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:55:03','2013-09-07 09:55:03'),(51,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:55:03','2013-09-07 09:55:03'),(52,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:55:03','2013-09-07 09:55:03'),(53,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:55:09','2013-09-07 09:55:09'),(54,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:55:09','2013-09-07 09:55:09'),(55,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:55:09','2013-09-07 09:55:09'),(56,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:55:09','2013-09-07 09:55:09'),(57,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:55:09','2013-09-07 09:55:09'),(58,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:55:09','2013-09-07 09:55:09'),(59,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:55:11','2013-09-07 09:55:11'),(60,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:55:11','2013-09-07 09:55:11'),(61,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:55:11','2013-09-07 09:55:11'),(62,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:55:11','2013-09-07 09:55:11'),(63,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:55:13','2013-09-07 09:55:13'),(64,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:55:13','2013-09-07 09:55:13'),(65,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 09:55:13','2013-09-07 09:55:13'),(66,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 09:55:13','2013-09-07 09:55:13'),(67,'payment',NULL,5,2,'Spree::Order','balance_due','2013-09-07 15:04:58','2013-09-07 15:04:58'),(68,'shipment',NULL,5,2,'Spree::Order',NULL,'2013-09-07 15:04:58','2013-09-07 15:04:58'),(69,'payment','balance_due',4,2,'Spree::Order','balance_due','2013-09-07 15:04:58','2013-09-07 15:04:58'),(70,'shipment','pending',4,2,'Spree::Order','pending','2013-09-07 15:04:58','2013-09-07 15:04:58'),(71,'payment','balance_due',5,2,'Spree::Order','balance_due','2013-09-07 15:05:55','2013-09-07 15:05:55'),(72,'shipment',NULL,5,2,'Spree::Order',NULL,'2013-09-07 15:05:55','2013-09-07 15:05:55'),(73,'payment',NULL,6,NULL,'Spree::Order','balance_due','2013-09-07 15:28:03','2013-09-07 15:28:03'),(74,'shipment',NULL,6,NULL,'Spree::Order',NULL,'2013-09-07 15:28:03','2013-09-07 15:28:03'),(75,'payment','balance_due',6,NULL,'Spree::Order','balance_due','2013-09-07 15:29:08','2013-09-07 15:29:08'),(76,'shipment',NULL,6,NULL,'Spree::Order','pending','2013-09-07 15:29:08','2013-09-07 15:29:08'),(77,'payment','balance_due',6,NULL,'Spree::Order','balance_due','2013-09-07 15:29:08','2013-09-07 15:29:08'),(78,'shipment','pending',6,NULL,'Spree::Order','pending','2013-09-07 15:29:08','2013-09-07 15:29:08'),(79,'payment','balance_due',6,NULL,'Spree::Order','balance_due','2013-09-07 15:29:16','2013-09-07 15:29:16'),(80,'shipment','pending',6,NULL,'Spree::Order','pending','2013-09-07 15:29:16','2013-09-07 15:29:16'),(81,'payment','balance_due',6,NULL,'Spree::Order','balance_due','2013-09-07 15:29:16','2013-09-07 15:29:16'),(82,'shipment','pending',6,NULL,'Spree::Order','pending','2013-09-07 15:29:16','2013-09-07 15:29:16'),(83,'payment','balance_due',6,NULL,'Spree::Order','balance_due','2013-09-07 15:29:21','2013-09-07 15:29:21'),(84,'shipment','pending',6,NULL,'Spree::Order','pending','2013-09-07 15:29:21','2013-09-07 15:29:21'),(85,'payment',NULL,7,NULL,'Spree::Order','balance_due','2013-09-07 15:38:51','2013-09-07 15:38:51'),(86,'shipment',NULL,7,NULL,'Spree::Order',NULL,'2013-09-07 15:38:51','2013-09-07 15:38:51'),(87,'payment','balance_due',6,NULL,'Spree::Order','balance_due','2013-09-09 01:42:43','2013-09-09 01:42:43'),(88,'shipment','pending',6,NULL,'Spree::Order','pending','2013-09-09 01:42:43','2013-09-09 01:42:43'),(89,'payment','balance_due',6,NULL,'Spree::Order','balance_due','2013-09-09 01:42:44','2013-09-09 01:42:44'),(90,'shipment','pending',6,NULL,'Spree::Order','pending','2013-09-09 01:42:44','2013-09-09 01:42:44'),(91,'payment',NULL,11,2,'Spree::Order','balance_due','2013-09-09 01:43:50','2013-09-09 01:43:50'),(92,'shipment',NULL,11,2,'Spree::Order',NULL,'2013-09-09 01:43:50','2013-09-09 01:43:50'),(93,'payment',NULL,12,NULL,'Spree::Order','balance_due','2013-09-09 03:38:24','2013-09-09 03:38:24'),(94,'shipment',NULL,12,NULL,'Spree::Order',NULL,'2013-09-09 03:38:24','2013-09-09 03:38:24'),(95,'payment','balance_due',12,NULL,'Spree::Order','balance_due','2013-09-09 03:40:37','2013-09-09 03:40:37'),(96,'shipment',NULL,12,NULL,'Spree::Order',NULL,'2013-09-09 03:40:37','2013-09-09 03:40:37'),(97,'payment','balance_due',12,NULL,'Spree::Order','balance_due','2013-09-09 03:41:52','2013-09-09 03:41:52'),(98,'shipment',NULL,12,NULL,'Spree::Order',NULL,'2013-09-09 03:41:52','2013-09-09 03:41:52'),(99,'payment','balance_due',12,NULL,'Spree::Order','balance_due','2013-09-09 03:43:26','2013-09-09 03:43:26'),(100,'shipment',NULL,12,NULL,'Spree::Order','pending','2013-09-09 03:43:26','2013-09-09 03:43:26'),(101,'payment','balance_due',12,NULL,'Spree::Order','balance_due','2013-09-09 03:43:26','2013-09-09 03:43:26'),(102,'shipment','pending',12,NULL,'Spree::Order','pending','2013-09-09 03:43:26','2013-09-09 03:43:26'),(103,'payment','balance_due',12,NULL,'Spree::Order','balance_due','2013-09-09 03:43:44','2013-09-09 03:43:44'),(104,'shipment','pending',12,NULL,'Spree::Order','pending','2013-09-09 03:43:44','2013-09-09 03:43:44'),(105,'payment','balance_due',12,NULL,'Spree::Order','balance_due','2013-09-09 03:43:44','2013-09-09 03:43:44'),(106,'shipment','pending',12,NULL,'Spree::Order','pending','2013-09-09 03:43:44','2013-09-09 03:43:44'),(107,'payment','balance_due',12,NULL,'Spree::Order','balance_due','2013-09-09 03:43:55','2013-09-09 03:43:55'),(108,'shipment','pending',12,NULL,'Spree::Order','pending','2013-09-09 03:43:55','2013-09-09 03:43:55'),(109,'payment','balance_due',12,NULL,'Spree::Order','paid','2013-09-09 03:49:18','2013-09-09 03:49:18'),(110,'shipment','pending',12,NULL,'Spree::Order','pending','2013-09-09 03:49:19','2013-09-09 03:49:19'),(111,'payment','balance_due',12,NULL,'Spree::Order','balance_due','2013-09-09 03:49:19','2013-09-09 03:49:19'),(112,'shipment','pending',12,NULL,'Spree::Order','pending','2013-09-09 03:49:19','2013-09-09 03:49:19'),(113,'order','cart',12,NULL,'Spree::Order','complete','2013-09-09 03:49:19','2013-09-09 03:49:19'),(114,'payment','balance_due',7,NULL,'Spree::Order','balance_due','2013-09-09 04:26:40','2013-09-09 04:26:40'),(115,'shipment',NULL,7,NULL,'Spree::Order',NULL,'2013-09-09 04:26:40','2013-09-09 04:26:40'),(116,'payment','balance_due',11,2,'Spree::Order','balance_due','2013-09-09 04:26:40','2013-09-09 04:26:40'),(117,'shipment',NULL,11,2,'Spree::Order',NULL,'2013-09-09 04:26:40','2013-09-09 04:26:40'),(118,'payment','paid',12,NULL,'Spree::Order','paid','2013-09-09 04:27:00','2013-09-09 04:27:00'),(119,'shipment','pending',12,NULL,'Spree::Order','ready','2013-09-09 04:27:00','2013-09-09 04:27:00'),(120,'payment','paid',12,NULL,'Spree::Order','paid','2013-09-09 04:27:01','2013-09-09 04:27:01'),(121,'shipment','pending',12,NULL,'Spree::Order','ready','2013-09-09 04:27:01','2013-09-09 04:27:01'),(122,'payment','paid',12,NULL,'Spree::Order','paid','2013-09-09 04:28:46','2013-09-09 04:28:46'),(123,'shipment','ready',12,NULL,'Spree::Order','ready','2013-09-09 04:28:46','2013-09-09 04:28:46'),(124,'payment','paid',12,NULL,'Spree::Order','paid','2013-09-09 04:28:46','2013-09-09 04:28:46'),(125,'shipment','ready',12,NULL,'Spree::Order','ready','2013-09-09 04:28:46','2013-09-09 04:28:46'),(126,'payment','paid',12,NULL,'Spree::Order','paid','2013-09-09 04:29:24','2013-09-09 04:29:24'),(127,'shipment','ready',12,NULL,'Spree::Order','ready','2013-09-09 04:29:24','2013-09-09 04:29:24'),(128,'payment','paid',12,NULL,'Spree::Order','paid','2013-09-09 04:29:24','2013-09-09 04:29:24'),(129,'shipment','ready',12,NULL,'Spree::Order','ready','2013-09-09 04:29:24','2013-09-09 04:29:24'),(130,'payment','paid',12,NULL,'Spree::Order','paid','2013-09-09 04:29:30','2013-09-09 04:29:30'),(131,'shipment','ready',12,NULL,'Spree::Order','ready','2013-09-09 04:29:30','2013-09-09 04:29:30'),(132,'payment','paid',12,NULL,'Spree::Order','paid','2013-09-09 04:29:30','2013-09-09 04:29:30'),(133,'shipment','ready',12,NULL,'Spree::Order','ready','2013-09-09 04:29:30','2013-09-09 04:29:30'),(134,'payment','paid',12,NULL,'Spree::Order','paid','2013-09-09 04:29:30','2013-09-09 04:29:30'),(135,'shipment','ready',12,NULL,'Spree::Order','shipped','2013-09-09 04:29:30','2013-09-09 04:29:30'),(136,'payment','paid',12,NULL,'Spree::Order','paid','2013-09-09 04:29:30','2013-09-09 04:29:30'),(137,'shipment','shipped',12,NULL,'Spree::Order','shipped','2013-09-09 04:29:30','2013-09-09 04:29:30'),(138,'payment','paid',12,NULL,'Spree::Order','paid','2013-09-09 04:29:30','2013-09-09 04:29:30'),(139,'shipment','shipped',12,NULL,'Spree::Order','shipped','2013-09-09 04:29:30','2013-09-09 04:29:30'),(140,'payment',NULL,14,NULL,'Spree::Order','balance_due','2013-09-09 05:03:38','2013-09-09 05:03:38'),(141,'shipment',NULL,14,NULL,'Spree::Order',NULL,'2013-09-09 05:03:38','2013-09-09 05:03:38'),(142,'payment','balance_due',14,NULL,'Spree::Order','balance_due','2013-09-09 05:05:14','2013-09-09 05:05:14'),(143,'shipment',NULL,14,NULL,'Spree::Order','pending','2013-09-09 05:05:14','2013-09-09 05:05:14'),(144,'payment','balance_due',14,NULL,'Spree::Order','balance_due','2013-09-09 05:05:14','2013-09-09 05:05:14'),(145,'shipment','pending',14,NULL,'Spree::Order','pending','2013-09-09 05:05:14','2013-09-09 05:05:14'),(146,'payment','balance_due',14,NULL,'Spree::Order','balance_due','2013-09-09 05:05:26','2013-09-09 05:05:26'),(147,'shipment','pending',14,NULL,'Spree::Order','pending','2013-09-09 05:05:26','2013-09-09 05:05:26'),(148,'payment','balance_due',14,NULL,'Spree::Order','balance_due','2013-09-09 05:05:26','2013-09-09 05:05:26'),(149,'shipment','pending',14,NULL,'Spree::Order','pending','2013-09-09 05:05:26','2013-09-09 05:05:26'),(150,'payment','balance_due',14,NULL,'Spree::Order','balance_due','2013-09-09 05:05:40','2013-09-09 05:05:40'),(151,'shipment','pending',14,NULL,'Spree::Order','pending','2013-09-09 05:05:40','2013-09-09 05:05:40'),(152,'payment','balance_due',14,NULL,'Spree::Order','paid','2013-09-09 05:07:04','2013-09-09 05:07:04'),(153,'shipment','pending',14,NULL,'Spree::Order','pending','2013-09-09 05:07:04','2013-09-09 05:07:04'),(154,'payment','balance_due',14,NULL,'Spree::Order','balance_due','2013-09-09 05:07:04','2013-09-09 05:07:04'),(155,'shipment','pending',14,NULL,'Spree::Order','pending','2013-09-09 05:07:04','2013-09-09 05:07:04'),(156,'order','cart',14,NULL,'Spree::Order','complete','2013-09-09 05:07:04','2013-09-09 05:07:04'),(157,'payment',NULL,26,NULL,'Spree::Order','balance_due','2013-09-14 05:25:17','2013-09-14 05:25:17'),(158,'shipment',NULL,26,NULL,'Spree::Order',NULL,'2013-09-14 05:25:17','2013-09-14 05:25:17'),(159,'payment',NULL,28,NULL,'Spree::Order','balance_due','2013-09-15 05:21:52','2013-09-15 05:21:52'),(160,'shipment',NULL,28,NULL,'Spree::Order',NULL,'2013-09-15 05:21:52','2013-09-15 05:21:52'),(161,'payment',NULL,48,NULL,'Spree::Order','balance_due','2013-09-22 11:46:19','2013-09-22 11:46:19'),(162,'shipment',NULL,48,NULL,'Spree::Order',NULL,'2013-09-22 11:46:19','2013-09-22 11:46:19'),(163,'payment','balance_due',48,NULL,'Spree::Order','balance_due','2013-09-22 11:46:33','2013-09-22 11:46:33'),(164,'shipment',NULL,48,NULL,'Spree::Order',NULL,'2013-09-22 11:46:33','2013-09-22 11:46:33'),(165,'payment',NULL,54,NULL,'Spree::Order','balance_due','2013-09-24 04:57:53','2013-09-24 04:57:53'),(166,'shipment',NULL,54,NULL,'Spree::Order',NULL,'2013-09-24 04:57:53','2013-09-24 04:57:53'),(167,'payment',NULL,55,NULL,'Spree::Order','balance_due','2013-09-24 14:41:47','2013-09-24 14:41:47'),(168,'shipment',NULL,55,NULL,'Spree::Order',NULL,'2013-09-24 14:41:48','2013-09-24 14:41:48'),(169,'payment','balance_due',55,2,'Spree::Order','balance_due','2013-09-24 14:48:08','2013-09-24 14:48:08'),(170,'shipment',NULL,55,2,'Spree::Order','backorder','2013-09-24 14:48:08','2013-09-24 14:48:08'),(171,'payment','balance_due',55,2,'Spree::Order','balance_due','2013-09-24 14:48:08','2013-09-24 14:48:08'),(172,'shipment','backorder',55,2,'Spree::Order','backorder','2013-09-24 14:48:08','2013-09-24 14:48:08'),(173,'payment','balance_due',55,2,'Spree::Order','balance_due','2013-09-24 14:48:20','2013-09-24 14:48:20'),(174,'shipment','backorder',55,2,'Spree::Order','backorder','2013-09-24 14:48:20','2013-09-24 14:48:20'),(175,'payment','balance_due',55,2,'Spree::Order','balance_due','2013-09-24 14:48:20','2013-09-24 14:48:20'),(176,'shipment','backorder',55,2,'Spree::Order','backorder','2013-09-24 14:48:20','2013-09-24 14:48:20'),(177,'payment','balance_due',55,2,'Spree::Order','balance_due','2013-09-24 14:48:23','2013-09-24 14:48:23'),(178,'shipment','backorder',55,2,'Spree::Order','backorder','2013-09-24 14:48:23','2013-09-24 14:48:23'),(179,'payment','balance_due',55,2,'Spree::Order','balance_due','2013-09-24 14:49:18','2013-09-24 14:49:18'),(180,'shipment','backorder',55,2,'Spree::Order','pending','2013-09-24 14:49:18','2013-09-24 14:49:18'),(181,'payment','balance_due',55,2,'Spree::Order','balance_due','2013-09-24 14:49:19','2013-09-24 14:49:19'),(182,'shipment','pending',55,2,'Spree::Order','backorder','2013-09-24 14:49:19','2013-09-24 14:49:19'),(183,'payment','balance_due',55,2,'Spree::Order','balance_due','2013-09-24 14:49:19','2013-09-24 14:49:19'),(184,'shipment','backorder',55,2,'Spree::Order','backorder','2013-09-24 14:49:19','2013-09-24 14:49:19'),(185,'payment','paid',14,NULL,'Spree::Order','paid','2013-09-26 13:10:13','2013-09-26 13:10:13'),(186,'shipment','pending',14,NULL,'Spree::Order','ready','2013-09-26 13:10:13','2013-09-26 13:10:13'),(187,'payment','paid',14,NULL,'Spree::Order','paid','2013-09-26 13:10:13','2013-09-26 13:10:13'),(188,'shipment','pending',14,NULL,'Spree::Order','ready','2013-09-26 13:10:13','2013-09-26 13:10:13'),(189,'payment','paid',14,NULL,'Spree::Order','paid','2013-09-26 13:12:17','2013-09-26 13:12:17'),(190,'shipment','ready',14,NULL,'Spree::Order','ready','2013-09-26 13:12:17','2013-09-26 13:12:17'),(191,'payment','paid',14,NULL,'Spree::Order','paid','2013-09-26 13:12:17','2013-09-26 13:12:17'),(192,'shipment','ready',14,NULL,'Spree::Order','ready','2013-09-26 13:12:17','2013-09-26 13:12:17'),(193,'payment','paid',14,NULL,'Spree::Order','paid','2013-09-26 13:12:56','2013-09-26 13:12:56'),(194,'shipment','ready',14,NULL,'Spree::Order','ready','2013-09-26 13:12:56','2013-09-26 13:12:56'),(195,'payment','paid',14,NULL,'Spree::Order','paid','2013-09-26 13:12:56','2013-09-26 13:12:56'),(196,'shipment','ready',14,NULL,'Spree::Order','ready','2013-09-26 13:12:56','2013-09-26 13:12:56'),(197,'payment','paid',14,NULL,'Spree::Order','paid','2013-09-26 13:13:01','2013-09-26 13:13:01'),(198,'shipment','ready',14,NULL,'Spree::Order','ready','2013-09-26 13:13:01','2013-09-26 13:13:01'),(199,'payment','paid',14,NULL,'Spree::Order','paid','2013-09-26 13:13:01','2013-09-26 13:13:01'),(200,'shipment','ready',14,NULL,'Spree::Order','ready','2013-09-26 13:13:01','2013-09-26 13:13:01'),(201,'payment','paid',14,NULL,'Spree::Order','paid','2013-09-26 13:13:01','2013-09-26 13:13:01'),(202,'shipment','ready',14,NULL,'Spree::Order','shipped','2013-09-26 13:13:01','2013-09-26 13:13:01'),(203,'payment','paid',14,NULL,'Spree::Order','paid','2013-09-26 13:13:01','2013-09-26 13:13:01'),(204,'shipment','shipped',14,NULL,'Spree::Order','shipped','2013-09-26 13:13:01','2013-09-26 13:13:01'),(205,'payment','paid',14,NULL,'Spree::Order','paid','2013-09-26 13:13:01','2013-09-26 13:13:01'),(206,'shipment','shipped',14,NULL,'Spree::Order','shipped','2013-09-26 13:13:01','2013-09-26 13:13:01'),(207,'payment',NULL,61,NULL,'Spree::Order','balance_due','2013-09-26 13:23:03','2013-09-26 13:23:03'),(208,'shipment',NULL,61,NULL,'Spree::Order',NULL,'2013-09-26 13:23:03','2013-09-26 13:23:03'),(209,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:23:13','2013-09-26 13:23:13'),(210,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:23:13','2013-09-26 13:23:13'),(211,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:24:25','2013-09-26 13:24:25'),(212,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:24:25','2013-09-26 13:24:25'),(213,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:25:41','2013-09-26 13:25:41'),(214,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:25:41','2013-09-26 13:25:41'),(215,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:26:44','2013-09-26 13:26:44'),(216,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:26:44','2013-09-26 13:26:44'),(217,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:26:50','2013-09-26 13:26:50'),(218,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:26:50','2013-09-26 13:26:50'),(219,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:26:54','2013-09-26 13:26:54'),(220,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:26:54','2013-09-26 13:26:54'),(221,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:26:55','2013-09-26 13:26:55'),(222,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:26:55','2013-09-26 13:26:55'),(223,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:27:00','2013-09-26 13:27:00'),(224,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:27:00','2013-09-26 13:27:00'),(225,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:27:00','2013-09-26 13:27:00'),(226,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:27:00','2013-09-26 13:27:00'),(227,'payment','balance_due',61,2,'Spree::Order','credit_owed','2013-09-26 13:27:04','2013-09-26 13:27:04'),(228,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:27:04','2013-09-26 13:27:04'),(229,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:27:04','2013-09-26 13:27:04'),(230,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:27:04','2013-09-26 13:27:04'),(231,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:27:22','2013-09-26 13:27:22'),(232,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:27:22','2013-09-26 13:27:22'),(233,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:27:29','2013-09-26 13:27:29'),(234,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:27:29','2013-09-26 13:27:29'),(235,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:28:08','2013-09-26 13:28:08'),(236,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:28:08','2013-09-26 13:28:08'),(237,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:28:12','2013-09-26 13:28:12'),(238,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:28:12','2013-09-26 13:28:12'),(239,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:29:34','2013-09-26 13:29:34'),(240,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:29:34','2013-09-26 13:29:34'),(241,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:30:36','2013-09-26 13:30:36'),(242,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:30:36','2013-09-26 13:30:36'),(243,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:30:46','2013-09-26 13:30:46'),(244,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:30:46','2013-09-26 13:30:46'),(245,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:32:20','2013-09-26 13:32:20'),(246,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:32:20','2013-09-26 13:32:20'),(247,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:32:29','2013-09-26 13:32:29'),(248,'shipment',NULL,61,2,'Spree::Order',NULL,'2013-09-26 13:32:29','2013-09-26 13:32:29'),(249,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:32:40','2013-09-26 13:32:40'),(250,'shipment',NULL,61,2,'Spree::Order','pending','2013-09-26 13:32:40','2013-09-26 13:32:40'),(251,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:32:40','2013-09-26 13:32:40'),(252,'shipment','pending',61,2,'Spree::Order','pending','2013-09-26 13:32:40','2013-09-26 13:32:40'),(253,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:32:40','2013-09-26 13:32:40'),(254,'shipment','pending',61,2,'Spree::Order','backorder','2013-09-26 13:32:40','2013-09-26 13:32:40'),(255,'payment','balance_due',61,2,'Spree::Order','balance_due','2013-09-26 13:32:40','2013-09-26 13:32:40'),(256,'shipment','backorder',61,2,'Spree::Order','backorder','2013-09-26 13:32:40','2013-09-26 13:32:40'),(257,'payment',NULL,65,2,'Spree::Order','balance_due','2013-09-29 13:55:19','2013-09-29 13:55:19'),(258,'shipment',NULL,65,2,'Spree::Order',NULL,'2013-09-29 13:55:19','2013-09-29 13:55:19'),(259,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:55:26','2013-09-29 13:55:26'),(260,'shipment',NULL,65,2,'Spree::Order','backorder','2013-09-29 13:55:26','2013-09-29 13:55:26'),(261,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:55:26','2013-09-29 13:55:26'),(262,'shipment','backorder',65,2,'Spree::Order','backorder','2013-09-29 13:55:26','2013-09-29 13:55:26'),(263,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:55:33','2013-09-29 13:55:33'),(264,'shipment','backorder',65,2,'Spree::Order','backorder','2013-09-29 13:55:33','2013-09-29 13:55:33'),(265,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:55:33','2013-09-29 13:55:33'),(266,'shipment','backorder',65,2,'Spree::Order','backorder','2013-09-29 13:55:33','2013-09-29 13:55:33'),(267,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:55:55','2013-09-29 13:55:55'),(268,'shipment','backorder',65,2,'Spree::Order','pending','2013-09-29 13:55:55','2013-09-29 13:55:55'),(269,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:55:55','2013-09-29 13:55:55'),(270,'shipment','pending',65,2,'Spree::Order','backorder','2013-09-29 13:55:55','2013-09-29 13:55:55'),(271,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:55:55','2013-09-29 13:55:55'),(272,'shipment','backorder',65,2,'Spree::Order','backorder','2013-09-29 13:55:55','2013-09-29 13:55:55'),(273,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:55:59','2013-09-29 13:55:59'),(274,'shipment','backorder',65,2,'Spree::Order','pending','2013-09-29 13:55:59','2013-09-29 13:55:59'),(275,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:55:59','2013-09-29 13:55:59'),(276,'shipment','pending',65,2,'Spree::Order','backorder','2013-09-29 13:55:59','2013-09-29 13:55:59'),(277,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:55:59','2013-09-29 13:55:59'),(278,'shipment','backorder',65,2,'Spree::Order','backorder','2013-09-29 13:55:59','2013-09-29 13:55:59'),(279,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:56:02','2013-09-29 13:56:02'),(280,'shipment','backorder',65,2,'Spree::Order','backorder','2013-09-29 13:56:02','2013-09-29 13:56:02'),(281,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:56:02','2013-09-29 13:56:02'),(282,'shipment','backorder',65,2,'Spree::Order','backorder','2013-09-29 13:56:02','2013-09-29 13:56:02'),(283,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:56:07','2013-09-29 13:56:07'),(284,'shipment','backorder',65,2,'Spree::Order','backorder','2013-09-29 13:56:07','2013-09-29 13:56:07'),(285,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:59:07','2013-09-29 13:59:07'),(286,'shipment','backorder',65,2,'Spree::Order','backorder','2013-09-29 13:59:07','2013-09-29 13:59:07'),(287,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:59:07','2013-09-29 13:59:07'),(288,'shipment','backorder',65,2,'Spree::Order','pending','2013-09-29 13:59:07','2013-09-29 13:59:07'),(289,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:59:07','2013-09-29 13:59:07'),(290,'shipment','pending',65,2,'Spree::Order','backorder','2013-09-29 13:59:07','2013-09-29 13:59:07'),(291,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 13:59:08','2013-09-29 13:59:08'),(292,'shipment','backorder',65,2,'Spree::Order','backorder','2013-09-29 13:59:08','2013-09-29 13:59:08'),(293,'payment',NULL,72,NULL,'Spree::Order','balance_due','2013-09-29 14:16:26','2013-09-29 14:16:26'),(294,'shipment',NULL,72,NULL,'Spree::Order',NULL,'2013-09-29 14:16:26','2013-09-29 14:16:26'),(295,'payment',NULL,74,NULL,'Spree::Order','balance_due','2013-09-29 23:01:18','2013-09-29 23:01:18'),(296,'shipment',NULL,74,NULL,'Spree::Order',NULL,'2013-09-29 23:01:18','2013-09-29 23:01:18'),(297,'payment','balance_due',74,NULL,'Spree::Order','balance_due','2013-09-29 23:04:04','2013-09-29 23:04:04'),(298,'shipment',NULL,74,NULL,'Spree::Order',NULL,'2013-09-29 23:04:04','2013-09-29 23:04:04'),(299,'payment','balance_due',74,NULL,'Spree::Order','balance_due','2013-09-29 23:04:04','2013-09-29 23:04:04'),(300,'shipment',NULL,74,NULL,'Spree::Order',NULL,'2013-09-29 23:04:04','2013-09-29 23:04:04'),(301,'payment','balance_due',65,2,'Spree::Order','balance_due','2013-09-29 23:04:05','2013-09-29 23:04:05'),(302,'shipment','backorder',65,2,'Spree::Order','pending','2013-09-29 23:04:05','2013-09-29 23:04:05'),(303,'payment','balance_due',74,2,'Spree::Order','balance_due','2013-09-29 23:04:40','2013-09-29 23:04:40'),(304,'shipment',NULL,74,2,'Spree::Order','backorder','2013-09-29 23:04:40','2013-09-29 23:04:40'),(305,'payment','balance_due',74,2,'Spree::Order','balance_due','2013-09-29 23:04:40','2013-09-29 23:04:40'),(306,'shipment','backorder',74,2,'Spree::Order','backorder','2013-09-29 23:04:40','2013-09-29 23:04:40'),(307,'payment','balance_due',74,2,'Spree::Order','balance_due','2013-09-29 23:05:02','2013-09-29 23:05:02'),(308,'shipment','backorder',74,2,'Spree::Order','backorder','2013-09-29 23:05:02','2013-09-29 23:05:02'),(309,'payment','balance_due',74,2,'Spree::Order','balance_due','2013-09-29 23:05:02','2013-09-29 23:05:02'),(310,'shipment','backorder',74,2,'Spree::Order','backorder','2013-09-29 23:05:02','2013-09-29 23:05:02'),(311,'payment','balance_due',74,2,'Spree::Order','balance_due','2013-09-29 23:05:09','2013-09-29 23:05:09'),(312,'shipment','backorder',74,2,'Spree::Order','backorder','2013-09-29 23:05:09','2013-09-29 23:05:09'),(313,'payment','balance_due',74,2,'Spree::Order','balance_due','2013-09-29 23:05:38','2013-09-29 23:05:38'),(314,'shipment','backorder',74,2,'Spree::Order','backorder','2013-09-29 23:05:38','2013-09-29 23:05:38'),(315,'payment','balance_due',74,2,'Spree::Order','balance_due','2013-09-29 23:05:38','2013-09-29 23:05:38'),(316,'shipment','backorder',74,2,'Spree::Order','backorder','2013-09-29 23:05:38','2013-09-29 23:05:38'),(317,'payment','balance_due',74,2,'Spree::Order','balance_due','2013-09-29 23:06:21','2013-09-29 23:06:21'),(318,'shipment','backorder',74,2,'Spree::Order','backorder','2013-09-29 23:06:21','2013-09-29 23:06:21'),(319,'payment','balance_due',74,2,'Spree::Order','balance_due','2013-09-29 23:06:21','2013-09-29 23:06:21'),(320,'shipment','backorder',74,2,'Spree::Order','backorder','2013-09-29 23:06:21','2013-09-29 23:06:21'),(321,'payment','balance_due',74,2,'Spree::Order','balance_due','2013-09-29 23:21:02','2013-09-29 23:21:02'),(322,'shipment','backorder',74,2,'Spree::Order','backorder','2013-09-29 23:21:02','2013-09-29 23:21:02'),(323,'payment','balance_due',74,2,'Spree::Order','balance_due','2013-09-29 23:21:02','2013-09-29 23:21:02'),(324,'shipment','backorder',74,2,'Spree::Order','backorder','2013-09-29 23:21:02','2013-09-29 23:21:02'),(325,'payment','balance_due',74,2,'Spree::Order','balance_due','2013-09-29 23:21:09','2013-09-29 23:21:09'),(326,'shipment','backorder',74,2,'Spree::Order','backorder','2013-09-29 23:21:09','2013-09-29 23:21:09'),(327,'payment','balance_due',74,2,'Spree::Order','balance_due','2013-09-29 23:21:09','2013-09-29 23:21:09'),(328,'shipment','backorder',74,2,'Spree::Order','backorder','2013-09-29 23:21:09','2013-09-29 23:21:09'),(329,'payment','balance_due',74,2,'Spree::Order','balance_due','2013-09-29 23:21:37','2013-09-29 23:21:37'),(330,'shipment','backorder',74,2,'Spree::Order','backorder','2013-09-29 23:21:37','2013-09-29 23:21:37'),(331,'payment','balance_due',74,2,'Spree::Order','balance_due','2013-09-29 23:21:37','2013-09-29 23:21:37'),(332,'shipment','backorder',74,2,'Spree::Order','backorder','2013-09-29 23:21:37','2013-09-29 23:21:37'),(333,'payment',NULL,75,2,'Spree::Order','balance_due','2013-09-29 23:23:35','2013-09-29 23:23:35'),(334,'shipment',NULL,75,2,'Spree::Order',NULL,'2013-09-29 23:23:35','2013-09-29 23:23:35'),(335,'payment','balance_due',75,2,'Spree::Order','balance_due','2013-09-29 23:23:40','2013-09-29 23:23:40'),(336,'shipment',NULL,75,2,'Spree::Order','backorder','2013-09-29 23:23:40','2013-09-29 23:23:40'),(337,'payment','balance_due',75,2,'Spree::Order','balance_due','2013-09-29 23:23:40','2013-09-29 23:23:40'),(338,'shipment','backorder',75,2,'Spree::Order','backorder','2013-09-29 23:23:40','2013-09-29 23:23:40'),(339,'payment','balance_due',75,2,'Spree::Order','balance_due','2013-09-29 23:23:43','2013-09-29 23:23:43'),(340,'shipment','backorder',75,2,'Spree::Order','backorder','2013-09-29 23:23:43','2013-09-29 23:23:43'),(341,'payment','balance_due',75,2,'Spree::Order','balance_due','2013-09-29 23:23:43','2013-09-29 23:23:43'),(342,'shipment','backorder',75,2,'Spree::Order','backorder','2013-09-29 23:23:43','2013-09-29 23:23:43'),(343,'payment','balance_due',75,2,'Spree::Order','balance_due','2013-09-29 23:23:45','2013-09-29 23:23:45'),(344,'shipment','backorder',75,2,'Spree::Order','backorder','2013-09-29 23:23:45','2013-09-29 23:23:45'),(345,'payment',NULL,77,NULL,'Spree::Order','balance_due','2013-09-30 04:10:43','2013-09-30 04:10:43'),(346,'shipment',NULL,77,NULL,'Spree::Order',NULL,'2013-09-30 04:10:43','2013-09-30 04:10:43'),(347,'payment','balance_due',77,NULL,'Spree::Order','balance_due','2013-09-30 04:11:04','2013-09-30 04:11:04'),(348,'shipment',NULL,77,NULL,'Spree::Order',NULL,'2013-09-30 04:11:04','2013-09-30 04:11:04'),(349,'payment','balance_due',75,2,'Spree::Order','balance_due','2013-09-30 04:11:04','2013-09-30 04:11:04'),(350,'shipment','backorder',75,2,'Spree::Order','pending','2013-09-30 04:11:04','2013-09-30 04:11:04'),(351,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:11:21','2013-09-30 04:11:21'),(352,'shipment',NULL,77,2,'Spree::Order','pending','2013-09-30 04:11:21','2013-09-30 04:11:21'),(353,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:11:21','2013-09-30 04:11:21'),(354,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:11:21','2013-09-30 04:11:21'),(355,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:11:22','2013-09-30 04:11:22'),(356,'shipment','pending',77,2,'Spree::Order','backorder','2013-09-30 04:11:22','2013-09-30 04:11:22'),(357,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:11:22','2013-09-30 04:11:22'),(358,'shipment','backorder',77,2,'Spree::Order','backorder','2013-09-30 04:11:22','2013-09-30 04:11:22'),(359,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:23','2013-09-30 04:12:23'),(360,'shipment','backorder',77,2,'Spree::Order','backorder','2013-09-30 04:12:23','2013-09-30 04:12:23'),(361,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:24','2013-09-30 04:12:24'),(362,'shipment','backorder',77,2,'Spree::Order','backorder','2013-09-30 04:12:24','2013-09-30 04:12:24'),(363,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:24','2013-09-30 04:12:24'),(364,'shipment','backorder',77,2,'Spree::Order','pending','2013-09-30 04:12:24','2013-09-30 04:12:24'),(365,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:24','2013-09-30 04:12:24'),(366,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:12:24','2013-09-30 04:12:24'),(367,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:24','2013-09-30 04:12:24'),(368,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:12:24','2013-09-30 04:12:24'),(369,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:24','2013-09-30 04:12:24'),(370,'shipment','pending',77,2,'Spree::Order','backorder','2013-09-30 04:12:24','2013-09-30 04:12:24'),(371,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:24','2013-09-30 04:12:24'),(372,'shipment','backorder',77,2,'Spree::Order','backorder','2013-09-30 04:12:24','2013-09-30 04:12:24'),(373,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:30','2013-09-30 04:12:30'),(374,'shipment','backorder',77,2,'Spree::Order','backorder','2013-09-30 04:12:30','2013-09-30 04:12:30'),(375,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:30','2013-09-30 04:12:30'),(376,'shipment','backorder',77,2,'Spree::Order','backorder','2013-09-30 04:12:30','2013-09-30 04:12:30'),(377,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:30','2013-09-30 04:12:30'),(378,'shipment','backorder',77,2,'Spree::Order','backorder','2013-09-30 04:12:30','2013-09-30 04:12:30'),(379,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:30','2013-09-30 04:12:30'),(380,'shipment','backorder',77,2,'Spree::Order','pending','2013-09-30 04:12:30','2013-09-30 04:12:30'),(381,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:30','2013-09-30 04:12:30'),(382,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:12:30','2013-09-30 04:12:30'),(383,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:30','2013-09-30 04:12:30'),(384,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:12:30','2013-09-30 04:12:30'),(385,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:46','2013-09-30 04:12:46'),(386,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:12:46','2013-09-30 04:12:46'),(387,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:46','2013-09-30 04:12:46'),(388,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:12:46','2013-09-30 04:12:46'),(389,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:46','2013-09-30 04:12:46'),(390,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:12:46','2013-09-30 04:12:46'),(391,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:46','2013-09-30 04:12:46'),(392,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:12:46','2013-09-30 04:12:46'),(393,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:57','2013-09-30 04:12:57'),(394,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:12:57','2013-09-30 04:12:57'),(395,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:57','2013-09-30 04:12:57'),(396,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:12:57','2013-09-30 04:12:57'),(397,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:12:57','2013-09-30 04:12:57'),(398,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:12:57','2013-09-30 04:12:57'),(399,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:13:00','2013-09-30 04:13:00'),(400,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:13:00','2013-09-30 04:13:00'),(401,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:13:00','2013-09-30 04:13:00'),(402,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:13:00','2013-09-30 04:13:00'),(403,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:13:06','2013-09-30 04:13:06'),(404,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:13:06','2013-09-30 04:13:06'),(405,'payment','balance_due',77,2,'Spree::Order','paid','2013-09-30 04:16:59','2013-09-30 04:16:59'),(406,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:16:59','2013-09-30 04:16:59'),(407,'payment','balance_due',77,2,'Spree::Order','balance_due','2013-09-30 04:16:59','2013-09-30 04:16:59'),(408,'shipment','pending',77,2,'Spree::Order','pending','2013-09-30 04:17:00','2013-09-30 04:17:00'),(409,'order','cart',77,2,'Spree::Order','complete','2013-09-30 04:17:01','2013-09-30 04:17:01'),(410,'payment','paid',77,2,'Spree::Order','paid','2013-10-11 11:34:13','2013-10-11 11:34:13'),(411,'shipment','pending',77,2,'Spree::Order','ready','2013-10-11 11:34:13','2013-10-11 11:34:13'),(412,'payment','paid',77,2,'Spree::Order','paid','2013-10-11 11:34:13','2013-10-11 11:34:13'),(413,'shipment','pending',77,2,'Spree::Order','ready','2013-10-11 11:34:13','2013-10-11 11:34:13'),(414,'payment','paid',77,2,'Spree::Order','paid','2013-10-11 11:34:39','2013-10-11 11:34:39'),(415,'shipment','ready',77,2,'Spree::Order','ready','2013-10-11 11:34:39','2013-10-11 11:34:39'),(416,'payment','paid',77,2,'Spree::Order','paid','2013-10-11 11:34:39','2013-10-11 11:34:39'),(417,'shipment','ready',77,2,'Spree::Order','ready','2013-10-11 11:34:39','2013-10-11 11:34:39'),(418,'payment','paid',77,2,'Spree::Order','paid','2013-10-11 11:34:43','2013-10-11 11:34:43'),(419,'shipment','ready',77,2,'Spree::Order','ready','2013-10-11 11:34:43','2013-10-11 11:34:43'),(420,'payment','paid',77,2,'Spree::Order','paid','2013-10-11 11:34:43','2013-10-11 11:34:43'),(421,'shipment','ready',77,2,'Spree::Order','ready','2013-10-11 11:34:43','2013-10-11 11:34:43'),(422,'payment','paid',77,2,'Spree::Order','paid','2013-10-11 11:34:43','2013-10-11 11:34:43'),(423,'shipment','ready',77,2,'Spree::Order','shipped','2013-10-11 11:34:43','2013-10-11 11:34:43'),(424,'payment','paid',77,2,'Spree::Order','paid','2013-10-11 11:34:43','2013-10-11 11:34:43'),(425,'shipment','shipped',77,2,'Spree::Order','shipped','2013-10-11 11:34:43','2013-10-11 11:34:43'),(426,'payment','paid',77,2,'Spree::Order','paid','2013-10-11 11:34:43','2013-10-11 11:34:43'),(427,'shipment','shipped',77,2,'Spree::Order','shipped','2013-10-11 11:34:43','2013-10-11 11:34:43'),(428,'payment',NULL,98,NULL,'Spree::Order','balance_due','2013-10-11 14:38:24','2013-10-11 14:38:24'),(429,'shipment',NULL,98,NULL,'Spree::Order',NULL,'2013-10-11 14:38:24','2013-10-11 14:38:24'),(430,'payment','balance_due',98,NULL,'Spree::Order','balance_due','2013-10-11 14:38:43','2013-10-11 14:38:43'),(431,'shipment',NULL,98,NULL,'Spree::Order',NULL,'2013-10-11 14:38:43','2013-10-11 14:38:43'),(432,'payment',NULL,115,NULL,'Spree::Order','balance_due','2013-10-19 07:12:26','2013-10-19 07:12:26'),(433,'shipment',NULL,115,NULL,'Spree::Order',NULL,'2013-10-19 07:12:26','2013-10-19 07:12:26'),(434,'payment',NULL,149,NULL,'Spree::Order','balance_due','2013-12-07 13:27:31','2013-12-07 13:27:31'),(435,'shipment',NULL,149,NULL,'Spree::Order',NULL,'2013-12-07 13:27:31','2013-12-07 13:27:31');
/*!40000 ALTER TABLE `spree_state_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_states`
--

DROP TABLE IF EXISTS `spree_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_states`
--

LOCK TABLES `spree_states` WRITE;
/*!40000 ALTER TABLE `spree_states` DISABLE KEYS */;
INSERT INTO `spree_states` VALUES (1,'北京','BeiJing',1),(2,'天津','TianJing',1),(3,'河北','HeBei',1),(4,'山西','Sanxi',1),(5,'内蒙古','NeiMengGu',1),(6,'辽宁','LiaoNin',1),(7,'吉林','JiLin',1),(8,'黑龙江','HeiLongJiang',1),(9,'上海','ShangHai',1),(10,'江苏','JiangSu',1),(11,'浙江','ZheJiang',1),(12,'安徽','AnHui',1),(13,'福建','FuJian',1),(14,'江西','JiangXi',1),(15,'山东','SanDong',1),(16,'河南','HeNan',1),(17,'湖北','HuBei',1),(18,'湖南','HuNan',1),(19,'广东','GuangDong',1),(20,'广西','GuangXi',1),(21,'海南','HaiNan',1),(22,'重庆','ChongQin',1),(23,'四川','SiChuan',1),(24,'贵州','GuiZhou',1),(25,'云南','YunNan',1),(26,'西藏','XiZhang',1),(27,'陕西','ShanXi',1),(28,'甘肃','GanSu',1),(29,'青海','QingHai',1),(30,'宁夏','NingXia',1),(31,'新疆','XingJiang',1);
/*!40000 ALTER TABLE `spree_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_items`
--

DROP TABLE IF EXISTS `spree_stock_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_location_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `count_on_hand` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `backorderable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_items_on_stock_location_id` (`stock_location_id`),
  KEY `stock_item_by_loc_and_var_id` (`stock_location_id`,`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_items`
--

LOCK TABLES `spree_stock_items` WRITE;
/*!40000 ALTER TABLE `spree_stock_items` DISABLE KEYS */;
INSERT INTO `spree_stock_items` VALUES (1,1,1,9998,'2013-09-07 08:55:08','2013-09-30 04:17:00',1),(4,1,3,0,'2013-09-13 04:58:36','2013-09-13 04:58:36',1),(5,1,4,0,'2013-09-14 04:37:15','2013-09-14 04:37:15',1),(6,1,5,0,'2013-09-14 05:17:32','2013-09-14 05:17:32',1),(7,1,6,0,'2013-09-15 09:29:08','2013-09-15 09:29:08',1),(8,1,7,0,'2013-09-15 09:52:38','2013-09-15 09:52:38',1),(9,1,8,0,'2013-09-15 09:52:38','2013-09-15 09:52:38',1),(10,1,9,0,'2013-09-15 09:52:38','2013-09-15 09:52:38',1),(11,1,10,0,'2013-09-15 09:52:38','2013-09-15 09:52:38',1),(12,1,11,0,'2013-09-15 09:52:38','2013-09-15 09:52:38',1),(14,1,13,0,'2013-09-16 05:36:41','2013-09-16 05:36:41',1),(15,1,14,0,'2013-09-16 05:55:06','2013-09-16 05:55:06',1),(16,1,15,0,'2013-09-17 11:02:05','2013-09-17 11:02:05',1),(17,1,16,0,'2013-09-18 03:52:52','2013-09-18 03:52:52',1),(18,1,17,0,'2013-09-18 03:59:50','2013-09-18 03:59:50',1),(19,1,18,0,'2013-09-18 04:10:53','2013-09-18 04:10:53',1),(20,1,19,0,'2013-09-18 04:25:08','2013-09-18 04:25:08',1),(21,1,20,0,'2013-09-18 04:40:58','2013-09-18 04:40:58',1),(22,1,21,0,'2013-09-18 04:47:19','2013-09-18 04:47:19',1),(23,1,22,0,'2013-09-18 05:06:00','2013-09-18 05:06:00',1),(24,1,23,0,'2013-09-18 05:10:55','2013-09-18 05:10:55',1),(25,1,24,0,'2013-09-18 05:31:32','2013-09-18 05:31:32',1),(26,1,25,0,'2013-09-18 05:38:57','2013-09-18 05:38:57',1),(27,1,26,0,'2013-09-18 05:52:25','2013-09-18 05:52:25',1),(28,1,27,0,'2013-09-30 05:52:15','2013-09-30 05:52:15',1);
/*!40000 ALTER TABLE `spree_stock_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_locations`
--

DROP TABLE IF EXISTS `spree_stock_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `backorderable_default` tinyint(1) DEFAULT '0',
  `propagate_all_variants` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_locations`
--

LOCK TABLES `spree_stock_locations` WRITE;
/*!40000 ALTER TABLE `spree_stock_locations` DISABLE KEYS */;
INSERT INTO `spree_stock_locations` VALUES (1,'武汉','2013-09-03 08:48:58','2013-09-26 13:16:06','','','',NULL,NULL,1,'','',1,1,1);
/*!40000 ALTER TABLE `spree_stock_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_movements`
--

DROP TABLE IF EXISTS `spree_stock_movements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_movements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `originator_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_movements_on_stock_item_id` (`stock_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_movements`
--

LOCK TABLES `spree_stock_movements` WRITE;
/*!40000 ALTER TABLE `spree_stock_movements` DISABLE KEYS */;
INSERT INTO `spree_stock_movements` VALUES (1,1,10000,NULL,'2013-09-07 09:12:32','2013-09-07 09:12:32',NULL,NULL),(2,1,1,NULL,'2013-09-07 09:46:12','2013-09-07 09:46:12',1,'Spree::StockTransfer'),(3,1,-1,NULL,'2013-09-09 03:49:19','2013-09-09 03:49:19',10,'Spree::Shipment'),(4,1,-1,NULL,'2013-09-09 05:07:04','2013-09-09 05:07:04',11,'Spree::Shipment'),(5,1,-1,NULL,'2013-09-30 04:17:00','2013-09-30 04:17:00',28,'Spree::Shipment');
/*!40000 ALTER TABLE `spree_stock_movements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_transfers`
--

DROP TABLE IF EXISTS `spree_stock_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_location_id` int(11) DEFAULT NULL,
  `destination_location_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_transfers_on_number` (`number`),
  KEY `index_spree_stock_transfers_on_source_location_id` (`source_location_id`),
  KEY `index_spree_stock_transfers_on_destination_location_id` (`destination_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_transfers`
--

LOCK TABLES `spree_stock_transfers` WRITE;
/*!40000 ALTER TABLE `spree_stock_transfers` DISABLE KEYS */;
INSERT INTO `spree_stock_transfers` VALUES (1,NULL,'大陆',NULL,1,'2013-09-07 09:46:12','2013-09-07 09:46:12','T103064130');
/*!40000 ALTER TABLE `spree_stock_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_categories`
--

DROP TABLE IF EXISTS `spree_tax_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_categories`
--

LOCK TABLES `spree_tax_categories` WRITE;
/*!40000 ALTER TABLE `spree_tax_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_tax_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_rates`
--

DROP TABLE IF EXISTS `spree_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(8,5) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `included_in_price` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_rate_in_label` tinyint(1) DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_rates`
--

LOCK TABLES `spree_tax_rates` WRITE;
/*!40000 ALTER TABLE `spree_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxonomies`
--

DROP TABLE IF EXISTS `spree_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxonomies`
--

LOCK TABLES `spree_taxonomies` WRITE;
/*!40000 ALTER TABLE `spree_taxonomies` DISABLE KEYS */;
INSERT INTO `spree_taxonomies` VALUES (1,'汽车会员','2013-09-07 08:56:14','2013-09-30 05:58:09',2),(2,'汽车LED灯','2013-09-14 05:27:33','2013-09-30 05:57:43',0),(3,'汽车标准灯泡','2013-09-30 05:56:04','2013-09-30 05:57:31',1);
/*!40000 ALTER TABLE `spree_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxons`
--

DROP TABLE IF EXISTS `spree_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxonomy_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `icon_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taxons_on_parent_id` (`parent_id`),
  KEY `index_taxons_on_permalink` (`permalink`),
  KEY `index_taxons_on_taxonomy_id` (`taxonomy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxons`
--

LOCK TABLES `spree_taxons` WRITE;
/*!40000 ALTER TABLE `spree_taxons` DISABLE KEYS */;
INSERT INTO `spree_taxons` VALUES (1,NULL,0,'汽车会员','qi-che-fu-wu',1,1,2,NULL,NULL,NULL,NULL,NULL,'2013-09-07 08:56:14','2013-09-07 08:56:14',NULL,NULL,NULL),(2,NULL,0,'汽车LED灯','ledqi-che-deng',2,3,24,NULL,NULL,NULL,NULL,NULL,'2013-09-14 05:27:33','2013-09-14 05:27:33',NULL,NULL,NULL),(3,2,0,'雾灯','ledqi-che-deng/wu-deng',2,4,5,NULL,NULL,NULL,NULL,NULL,'2013-09-14 05:28:37','2013-09-14 05:28:37',NULL,NULL,NULL),(4,2,1,'刹车灯','ledqi-che-deng/cha-che-deng',2,6,7,NULL,NULL,NULL,NULL,NULL,'2013-09-14 05:29:09','2013-09-14 05:29:09',NULL,NULL,NULL),(5,2,2,'转向灯','ledqi-che-deng/zhuan-xiang-deng',2,8,9,NULL,NULL,NULL,NULL,NULL,'2013-09-14 05:29:42','2013-09-14 05:29:42',NULL,NULL,NULL),(6,2,3,'倒车灯','ledqi-che-deng/dao-che-deng',2,10,11,NULL,NULL,NULL,NULL,NULL,'2013-09-16 07:17:03','2013-09-16 07:17:03',NULL,NULL,NULL),(7,2,4,'牌照灯','ledqi-che-deng/pai-zhao-deng',2,12,15,NULL,NULL,NULL,NULL,NULL,'2013-09-16 07:17:26','2013-09-16 07:17:26',NULL,NULL,NULL),(8,7,0,'汽车解码灯','ledqi-che-deng/pai-zhao-deng/qi-che-jie-ma-deng',2,13,14,NULL,NULL,NULL,NULL,NULL,'2013-09-18 04:33:16','2013-09-18 04:33:16',NULL,NULL,NULL),(9,2,5,'汽车解码灯','ledqi-che-deng/qi-che-jie-ma-deng',2,16,17,NULL,NULL,NULL,NULL,NULL,'2013-09-18 04:33:39','2013-09-18 04:33:39',NULL,NULL,NULL),(10,2,6,'仪表灯','ledqi-che-deng/yi-biao-deng',2,18,19,NULL,NULL,NULL,NULL,NULL,'2013-09-18 04:33:48','2013-09-18 04:33:48',NULL,NULL,NULL),(11,2,7,'示宽灯','ledqi-che-deng/shi-kuan-deng',2,20,21,NULL,NULL,NULL,NULL,NULL,'2013-09-18 04:34:01','2013-09-18 04:34:01',NULL,NULL,NULL),(12,2,8,'指示灯','ledqi-che-deng/zhi-shi-deng',2,22,23,NULL,NULL,NULL,NULL,NULL,'2013-09-18 04:34:12','2013-09-18 04:34:12',NULL,NULL,NULL),(13,NULL,0,'汽车标准灯泡','biao-zhun-qi-che-deng-pao',3,25,32,NULL,NULL,NULL,NULL,NULL,'2013-09-30 05:56:05','2013-09-30 05:56:05',NULL,NULL,NULL),(14,13,0,'大灯','biao-zhun-qi-che-deng-pao/da-deng',3,26,27,NULL,NULL,NULL,NULL,NULL,'2013-09-30 05:56:25','2013-09-30 05:56:25',NULL,NULL,NULL),(15,13,1,'倒车灯','biao-zhun-qi-che-deng-pao/dao-che-deng',3,28,29,NULL,NULL,NULL,NULL,NULL,'2013-09-30 05:56:38','2013-09-30 05:56:38',NULL,NULL,NULL),(16,13,2,'刹车灯','biao-zhun-qi-che-deng-pao/cha-che-deng',3,30,31,NULL,NULL,NULL,NULL,NULL,'2013-09-30 05:56:45','2013-09-30 05:56:45',NULL,NULL,NULL);
/*!40000 ALTER TABLE `spree_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tokenized_permissions`
--

DROP TABLE IF EXISTS `spree_tokenized_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tokenized_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissable_id` int(11) DEFAULT NULL,
  `permissable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokenized_name_and_type` (`permissable_id`,`permissable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tokenized_permissions`
--

LOCK TABLES `spree_tokenized_permissions` WRITE;
/*!40000 ALTER TABLE `spree_tokenized_permissions` DISABLE KEYS */;
INSERT INTO `spree_tokenized_permissions` VALUES (1,1,'Spree::Order','3fea41147edacad1','2013-09-04 03:29:41','2013-09-04 03:29:41'),(2,2,'Spree::Order','15066565b894c946','2013-09-04 15:06:17','2013-09-04 15:06:17'),(3,3,'Spree::Order','208622afe94cc183','2013-09-06 07:20:53','2013-09-06 07:20:53'),(4,4,'Spree::Order','a12382c6b2e3822e','2013-09-07 09:14:54','2013-09-07 09:14:54'),(5,5,'Spree::Order','f41c8e4218e505a1','2013-09-07 15:04:58','2013-09-07 15:04:58'),(6,6,'Spree::Order','ee962cdd8e706e88','2013-09-07 15:28:03','2013-09-07 15:28:03'),(7,7,'Spree::Order','efa5c6b4cba255b2','2013-09-07 15:38:50','2013-09-07 15:38:50'),(8,8,'Spree::Order','7ba95f896a47228a','2013-09-07 16:47:06','2013-09-07 16:47:06'),(9,9,'Spree::Order','6ec1c58bcc8cf9d1','2013-09-07 18:56:38','2013-09-07 18:56:38'),(10,10,'Spree::Order','2b0f3cee822917bb','2013-09-08 16:47:07','2013-09-08 16:47:07'),(11,11,'Spree::Order','68279ac94de6bf54','2013-09-09 01:43:50','2013-09-09 01:43:50'),(12,12,'Spree::Order','2da92afadbaab095','2013-09-09 03:38:23','2013-09-09 03:38:23'),(13,13,'Spree::Order','83e9dc59a6d80f03','2013-09-09 04:28:26','2013-09-09 04:28:26'),(14,14,'Spree::Order','831b918cee9ccd6e','2013-09-09 05:03:38','2013-09-09 05:03:38'),(15,15,'Spree::Order','c67751b0de1cce99','2013-09-09 16:47:09','2013-09-09 16:47:09'),(16,16,'Spree::Order','a86b90aa2fe54c6e','2013-09-10 16:46:23','2013-09-10 16:46:23'),(17,17,'Spree::Order','5ad449cddb72e975','2013-09-11 03:21:14','2013-09-11 03:21:14'),(18,18,'Spree::Order','32b5af2ca2fc8382','2013-09-11 16:46:07','2013-09-11 16:46:07'),(19,19,'Spree::Order','39b73fa5eb349d15','2013-09-12 00:21:32','2013-09-12 00:21:32'),(20,20,'Spree::Order','235ef337007c6659','2013-09-12 15:23:05','2013-09-12 15:23:05'),(21,21,'Spree::Order','c260bbecc84afffe','2013-09-12 16:47:18','2013-09-12 16:47:18'),(22,22,'Spree::Order','f8258ba2f7641d6f','2013-09-12 21:52:14','2013-09-12 21:52:14'),(23,23,'Spree::Order','49f2a3f69901b420','2013-09-13 03:43:03','2013-09-13 03:43:03'),(24,24,'Spree::Order','8fb84b24e55e9613','2013-09-13 16:44:55','2013-09-13 16:44:55'),(25,25,'Spree::Order','062c031060c15c31','2013-09-13 21:26:14','2013-09-13 21:26:14'),(26,26,'Spree::Order','876cfd5220140744','2013-09-14 05:25:17','2013-09-14 05:25:17'),(27,27,'Spree::Order','ec93e959e527d074','2013-09-14 16:45:31','2013-09-14 16:45:31'),(28,28,'Spree::Order','17290489a94ca016','2013-09-15 05:21:51','2013-09-15 05:21:51'),(29,29,'Spree::Order','1220ce05672570bf','2013-09-15 16:47:39','2013-09-15 16:47:39'),(30,30,'Spree::Order','d77ce89bf8bf29aa','2013-09-16 06:03:03','2013-09-16 06:03:03'),(31,31,'Spree::Order','9fd91719b3465edc','2013-09-16 14:30:52','2013-09-16 14:30:52'),(32,32,'Spree::Order','91b3023cd05f5d0b','2013-09-16 16:46:03','2013-09-16 16:46:03'),(33,33,'Spree::Order','e69f905bad34365e','2013-09-17 03:35:07','2013-09-17 03:35:07'),(34,34,'Spree::Order','e911d591c34cebff','2013-09-17 09:51:54','2013-09-17 09:51:54'),(35,35,'Spree::Order','1a9e593105a3bc89','2013-09-17 10:49:22','2013-09-17 10:49:22'),(36,36,'Spree::Order','9ffe30759d6069cb','2013-09-17 16:47:44','2013-09-17 16:47:44'),(37,37,'Spree::Order','eb436d55e6a40aa2','2013-09-18 01:39:23','2013-09-18 01:39:23'),(38,39,'Spree::Order','39a0cdaa28272c6b','2013-09-18 04:02:50','2013-09-18 04:02:50'),(39,40,'Spree::Order','d2524b0eea5995d8','2013-09-18 07:17:19','2013-09-18 07:17:19'),(40,41,'Spree::Order','fac69e01042a2fb8','2013-09-18 16:46:59','2013-09-18 16:46:59'),(41,42,'Spree::Order','9b505c4aceb26d94','2013-09-19 03:17:54','2013-09-19 03:17:54'),(42,43,'Spree::Order','267c2b787e1e2715','2013-09-19 16:46:46','2013-09-19 16:46:46'),(43,44,'Spree::Order','2a2c02a2a3184651','2013-09-20 16:46:11','2013-09-20 16:46:11'),(44,45,'Spree::Order','2ee6ca799768b6bb','2013-09-21 04:08:39','2013-09-21 04:08:39'),(45,46,'Spree::Order','66595befb66521a9','2013-09-21 05:01:02','2013-09-21 05:01:02'),(46,47,'Spree::Order','22df5780d808c837','2013-09-21 16:46:58','2013-09-21 16:46:58'),(47,48,'Spree::Order','5119128fdeee3e9d','2013-09-22 11:46:19','2013-09-22 11:46:19'),(48,49,'Spree::Order','47077149d1fbf9b4','2013-09-22 12:48:40','2013-09-22 12:48:40'),(49,50,'Spree::Order','5f1a11451d7baeaa','2013-09-22 15:19:12','2013-09-22 15:19:12'),(50,51,'Spree::Order','44c07b02e279efa8','2013-09-22 16:45:48','2013-09-22 16:45:48'),(51,52,'Spree::Order','85ea7d15e816c4e0','2013-09-23 03:54:51','2013-09-23 03:54:51'),(52,53,'Spree::Order','ae28162f2be47e46','2013-09-23 16:46:26','2013-09-23 16:46:26'),(53,54,'Spree::Order','cdffa927531114b5','2013-09-24 04:57:53','2013-09-24 04:57:53'),(54,55,'Spree::Order','7a42129b63bc88de','2013-09-24 14:41:47','2013-09-24 14:41:47'),(55,56,'Spree::Order','d75ad2d1f20ebe6a','2013-09-24 15:24:33','2013-09-24 15:24:33'),(56,57,'Spree::Order','a93d95fd7b715885','2013-09-24 16:48:08','2013-09-24 16:48:08'),(57,58,'Spree::Order','509076cdefcbf31e','2013-09-25 16:46:52','2013-09-25 16:46:52'),(58,59,'Spree::Order','e8c173a503534f81','2013-09-26 13:06:26','2013-09-26 13:06:26'),(59,60,'Spree::Order','e22bf3839589a450','2013-09-26 13:17:07','2013-09-26 13:17:07'),(60,61,'Spree::Order','6b24ed6688ccc31a','2013-09-26 13:18:41','2013-09-26 13:18:41'),(61,62,'Spree::Order','df4a6627bd68b8a1','2013-09-26 16:47:13','2013-09-26 16:47:13'),(62,63,'Spree::Order','b9fbf19af5002c37','2013-09-27 02:10:45','2013-09-27 02:10:45'),(63,64,'Spree::Order','e6a318c78de5222d','2013-09-27 04:02:17','2013-09-27 04:02:17'),(64,65,'Spree::Order','e9408b78f3a01eb6','2013-09-27 05:22:43','2013-09-27 05:22:43'),(65,66,'Spree::Order','338f93353a39fb82','2013-09-27 05:32:48','2013-09-27 05:32:48'),(66,67,'Spree::Order','0cd7867ebcec70a3','2013-09-27 09:46:29','2013-09-27 09:46:29'),(67,68,'Spree::Order','3c6b2e7540f5d6b9','2013-09-27 16:47:50','2013-09-27 16:47:50'),(68,69,'Spree::Order','eb0bdcff8c842c84','2013-09-28 16:46:26','2013-09-28 16:46:26'),(69,70,'Spree::Order','3f4d340c35b6b23c','2013-09-29 01:53:11','2013-09-29 01:53:11'),(70,71,'Spree::Order','e5d5476383d24ddc','2013-09-29 03:33:08','2013-09-29 03:33:08'),(71,72,'Spree::Order','7129e4a4f5159aec','2013-09-29 14:16:26','2013-09-29 14:16:26'),(72,73,'Spree::Order','2a8d8aae83be8b12','2013-09-29 16:47:27','2013-09-29 16:47:27'),(73,74,'Spree::Order','3c77b9773d925a74','2013-09-29 23:01:18','2013-09-29 23:01:18'),(74,75,'Spree::Order','82e262f275b78081','2013-09-29 23:23:28','2013-09-29 23:23:28'),(75,76,'Spree::Order','481169318260fb32','2013-09-30 02:13:13','2013-09-30 02:13:13'),(76,77,'Spree::Order','cc87ac951e8f5b00','2013-09-30 04:10:43','2013-09-30 04:10:43'),(77,78,'Spree::Order','02c21878e51f875a','2013-09-30 05:50:18','2013-09-30 05:50:18'),(78,79,'Spree::Order','1d8983552ac81bd3','2013-09-30 16:46:37','2013-09-30 16:46:37'),(79,80,'Spree::Order','64b2b58f4e5cb3cd','2013-10-01 14:22:46','2013-10-01 14:22:46'),(80,81,'Spree::Order','da787997a1a45952','2013-10-01 16:47:27','2013-10-01 16:47:27'),(81,82,'Spree::Order','e39f38e187533f65','2013-10-02 16:46:45','2013-10-02 16:46:45'),(82,83,'Spree::Order','aaa00e10026d84fc','2013-10-03 16:45:46','2013-10-03 16:45:46'),(83,84,'Spree::Order','5bcfe1c1171a98cc','2013-10-03 19:52:12','2013-10-03 19:52:12'),(84,85,'Spree::Order','b02959a36986fb09','2013-10-04 01:28:02','2013-10-04 01:28:02'),(85,86,'Spree::Order','38ee9bc37daad0fd','2013-10-04 16:46:45','2013-10-04 16:46:45'),(86,87,'Spree::Order','365f9f35079f4fd5','2013-10-05 12:03:01','2013-10-05 12:03:01'),(87,88,'Spree::Order','5775fbd5e7832cf7','2013-10-05 16:45:50','2013-10-05 16:45:50'),(88,89,'Spree::Order','1a821ae7ecc96ecc','2013-10-06 07:37:51','2013-10-06 07:37:51'),(89,90,'Spree::Order','969bd32893015c25','2013-10-06 16:46:04','2013-10-06 16:46:04'),(90,91,'Spree::Order','76f5d03b7b5cd3c0','2013-10-07 12:48:41','2013-10-07 12:48:41'),(91,92,'Spree::Order','f33a51bc972e7153','2013-10-07 16:45:58','2013-10-07 16:45:58'),(92,93,'Spree::Order','19b3828717599999','2013-10-08 16:45:49','2013-10-08 16:45:49'),(93,94,'Spree::Order','66bc9dd1e3095d60','2013-10-09 16:46:39','2013-10-09 16:46:39'),(94,95,'Spree::Order','9ffa77955993a7ad','2013-10-09 19:42:03','2013-10-09 19:42:03'),(95,96,'Spree::Order','1e5b02f2c9015b3e','2013-10-10 16:45:18','2013-10-10 16:45:18'),(96,97,'Spree::Order','72213bddee6d38c8','2013-10-11 11:33:56','2013-10-11 11:33:56'),(97,98,'Spree::Order','079fba8d318f3f6c','2013-10-11 14:38:24','2013-10-11 14:38:24'),(98,99,'Spree::Order','269a15fce0b0f1d0','2013-10-11 16:46:29','2013-10-11 16:46:29'),(99,100,'Spree::Order','ec5fca07325abeaf','2013-10-11 19:58:56','2013-10-11 19:58:56'),(100,101,'Spree::Order','80a39543d8da3b56','2013-10-12 03:59:58','2013-10-12 03:59:58'),(101,102,'Spree::Order','afc60c58c041d36c','2013-10-12 16:46:03','2013-10-12 16:46:03'),(102,103,'Spree::Order','6415f906c4617e3a','2013-10-13 09:24:19','2013-10-13 09:24:19'),(103,104,'Spree::Order','3c213e59fbc1d03f','2013-10-13 16:46:58','2013-10-13 16:46:58'),(104,105,'Spree::Order','8c97fe9b7fdb0e73','2013-10-14 16:45:57','2013-10-14 16:45:57'),(105,106,'Spree::Order','1670b4ca8b5b72e4','2013-10-15 16:46:04','2013-10-15 16:46:04'),(106,107,'Spree::Order','98ea1e8148560d87','2013-10-16 04:10:39','2013-10-16 04:10:39'),(107,108,'Spree::Order','8907b6c271c6129a','2013-10-16 05:51:35','2013-10-16 05:51:35'),(108,109,'Spree::Order','08a0efa3a5a28796','2013-10-16 16:45:59','2013-10-16 16:45:59'),(109,110,'Spree::Order','a61d842ee9dc2ba3','2013-10-16 20:11:16','2013-10-16 20:11:16'),(110,111,'Spree::Order','cb0e565dc51fd594','2013-10-17 16:46:56','2013-10-17 16:46:56'),(111,112,'Spree::Order','7955fb22770ddf17','2013-10-17 22:44:48','2013-10-17 22:44:48'),(112,113,'Spree::Order','719b6c9bda33f01b','2013-10-18 06:38:59','2013-10-18 06:38:59'),(113,114,'Spree::Order','6d46555d17e1f9e5','2013-10-18 17:58:12','2013-10-18 17:58:12'),(114,115,'Spree::Order','f87c0c311babfc7a','2013-10-19 07:12:26','2013-10-19 07:12:26'),(115,116,'Spree::Order','519946e114410f49','2013-10-19 15:18:49','2013-10-19 15:18:49'),(116,117,'Spree::Order','a6fd6fabff1f4bfe','2013-10-20 07:21:44','2013-10-20 07:21:44'),(117,118,'Spree::Order','0ad6af48dce7fafb','2013-10-23 09:29:35','2013-10-23 09:29:35'),(118,119,'Spree::Order','5c58b4c25577b173','2013-10-24 02:23:43','2013-10-24 02:23:43'),(119,120,'Spree::Order','a3c3742305fde0ef','2013-10-24 23:18:07','2013-10-24 23:18:07'),(120,121,'Spree::Order','af18b73a63dc540e','2013-10-25 12:00:45','2013-10-25 12:00:45'),(121,122,'Spree::Order','5fc7c7c056aa401b','2013-10-25 12:25:47','2013-10-25 12:25:47'),(122,123,'Spree::Order','83de3569bd990349','2013-10-25 12:44:06','2013-10-25 12:44:06'),(123,124,'Spree::Order','ed6152972e80b864','2013-10-25 13:07:10','2013-10-25 13:07:10'),(124,125,'Spree::Order','c4a25f1a77643503','2013-10-26 21:23:32','2013-10-26 21:23:32'),(125,126,'Spree::Order','68f9191d44dd2c43','2013-10-30 02:00:31','2013-10-30 02:00:31'),(126,127,'Spree::Order','8db73cf4cf10320b','2013-10-31 16:50:09','2013-10-31 16:50:09'),(127,128,'Spree::Order','fb2bdecd65b2ecd6','2013-11-03 18:34:07','2013-11-03 18:34:07'),(128,129,'Spree::Order','ef92a0617a1d56f8','2013-11-05 14:27:25','2013-11-05 14:27:25'),(129,130,'Spree::Order','badf0554561180de','2013-11-06 23:18:51','2013-11-06 23:18:51'),(130,131,'Spree::Order','37a68b558d83c1a8','2013-11-08 03:17:36','2013-11-08 03:17:36'),(131,132,'Spree::Order','12c23909973a45fe','2013-11-10 13:21:27','2013-11-10 13:21:27'),(132,133,'Spree::Order','19ef02a2c5208273','2013-11-11 14:58:28','2013-11-11 14:58:28'),(133,134,'Spree::Order','b97e3af1899ac06f','2013-11-13 15:28:19','2013-11-13 15:28:19'),(134,135,'Spree::Order','98f0c4c53e1115b8','2013-11-14 10:05:20','2013-11-14 10:05:20'),(135,136,'Spree::Order','5ff40a165869bd97','2013-11-18 02:24:36','2013-11-18 02:24:36'),(136,137,'Spree::Order','0f0808281c74e1f0','2013-11-18 05:41:25','2013-11-18 05:41:25'),(137,138,'Spree::Order','823e76d1e6c72b10','2013-11-19 07:19:00','2013-11-19 07:19:00'),(138,139,'Spree::Order','33c61534e105d5d0','2013-11-21 05:02:20','2013-11-21 05:02:20'),(139,140,'Spree::Order','6fe13c5e13b75435','2013-11-21 22:29:49','2013-11-21 22:29:49'),(140,141,'Spree::Order','c9f70c15cc52232a','2013-11-22 21:26:04','2013-11-22 21:26:04'),(141,142,'Spree::Order','90ca4b34f62e70a4','2013-11-26 15:19:25','2013-11-26 15:19:25'),(142,143,'Spree::Order','7c750faa96579273','2013-11-27 11:50:30','2013-11-27 11:50:30'),(143,144,'Spree::Order','066e2a54699a9ae9','2013-12-02 12:50:31','2013-12-02 12:50:31'),(144,145,'Spree::Order','ce9d533b7d23fae9','2013-12-03 00:17:44','2013-12-03 00:17:44'),(145,146,'Spree::Order','21d99d3b2f67cee1','2013-12-03 08:59:40','2013-12-03 08:59:40'),(146,147,'Spree::Order','3c908c40c5407e34','2013-12-03 18:58:20','2013-12-03 18:58:20'),(147,148,'Spree::Order','cd1abde2ce6cd96d','2013-12-06 14:11:03','2013-12-06 14:11:03'),(148,149,'Spree::Order','0efa7fb9c3c9bce1','2013-12-07 13:27:31','2013-12-07 13:27:31'),(149,150,'Spree::Order','ebde7a9e00d54961','2013-12-07 13:29:25','2013-12-07 13:29:25');
/*!40000 ALTER TABLE `spree_tokenized_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_trackers`
--

DROP TABLE IF EXISTS `spree_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `analytics_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_trackers`
--

LOCK TABLES `spree_trackers` WRITE;
/*!40000 ALTER TABLE `spree_trackers` DISABLE KEYS */;
INSERT INTO `spree_trackers` VALUES (1,'production','UA-44046941-1',1,'2013-09-15 09:00:48','2013-09-15 09:00:48');
/*!40000 ALTER TABLE `spree_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_users`
--

DROP TABLE IF EXISTS `spree_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perishable_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `authentication_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unlock_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `spree_api_key` varchar(48) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_users`
--

LOCK TABLES `spree_users` WRITE;
/*!40000 ALTER TABLE `spree_users` DISABLE KEYS */;
INSERT INTO `spree_users` VALUES (1,'0b75f1fcbe27a1cd566a57bfafc075213af1a7d7d6292d3dd1957ce6d69c19c536b84cc50da68079918d62881675c9a6b406a71f837da34c385125afb2884507','ngsCQz6QiRTz3qffm5kg','76729530@qq.com',NULL,NULL,NULL,NULL,3,0,NULL,'2013-09-07 05:00:39','2013-09-06 07:06:04','106.187.94.133','27.19.174.188','76729530@qq.com',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-04 15:05:56','2013-09-07 05:00:39','87640b694d44963eea846ad4bb4b9acd72890366e596a25a',NULL),(2,'bc1ad4650973b786b192fdf6a4bc84c5c320857530ae5e5282c340e6944ee4bc624b4cc877bef2ffb83e085b5b822591f94f3f181882eba869f1653bc69099e0','A3cMipzerAUCQ3ApwhMt','lehazi@163.com',NULL,NULL,NULL,NULL,25,0,NULL,'2013-10-11 11:33:56','2013-09-30 04:11:04','59.174.169.158','106.187.94.133','lehazi@163.com',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-06 07:20:15','2013-10-11 11:33:56','7f416483c8b40aeb31f448737e952dd0a83553cdff3672fa',NULL),(3,'c79edd12a05915e21f3d0902058dd2e531947bff775fd38fd9a7242a3221ed2fc058d51ee3eaaace9b2d73bab9b50413645aeeb4ab08d9831e97198e9a330b82','aaiSZ11QkW44iykBsypu','417058936@qq.com',NULL,NULL,NULL,NULL,1,0,NULL,'2013-09-26 13:17:07','2013-09-26 13:17:07','59.174.105.244','59.174.105.244','417058936@qq.com',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-26 13:17:07','2013-09-26 13:17:07','9049c4bc8eb3579a9ef37799f0a76337fe32acd2eb67227c',NULL),(4,'5d9c3db04da2c769d5b77fa45c8adcd05beb452c8fdc54f5ee44dc189c0459e1b69b669508ef14ff4c130136840e80f608c8bffddce8e66388ebe39863ccb467','7KxxGAuGWuQteu3wasyp','aghuahz@163.com',NULL,NULL,NULL,NULL,1,0,NULL,'2013-10-24 02:23:43','2013-10-24 02:23:43','106.187.94.133','106.187.94.133','aghuahz@163.com',NULL,NULL,NULL,NULL,NULL,NULL,'2013-10-24 02:23:43','2013-10-24 02:23:43','39ab4851ed4f084513736f6effa41d9c4df8c5ae361fd91d',NULL);
/*!40000 ALTER TABLE `spree_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_variants`
--

DROP TABLE IF EXISTS `spree_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `weight` decimal(8,2) DEFAULT NULL,
  `height` decimal(8,2) DEFAULT NULL,
  `width` decimal(8,2) DEFAULT NULL,
  `depth` decimal(8,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `cost_price` decimal(8,2) DEFAULT NULL,
  `cost_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_variants_on_product_id` (`product_id`),
  KEY `index_spree_variants_on_sku` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_variants`
--

LOCK TABLES `spree_variants` WRITE;
/*!40000 ALTER TABLE `spree_variants` DISABLE KEYS */;
INSERT INTO `spree_variants` VALUES (1,'SPE0001',0.00,0.00,0.00,0.00,NULL,1,1,10.00,'CNY',1),(2,'SPE0002',0.00,0.00,0.00,0.00,'2013-09-13 03:42:57',1,2,10000.00,'CNY',1),(3,'SPE0002',0.00,0.00,0.00,0.00,NULL,1,3,450.00,'CNY',1),(4,'p01001',NULL,NULL,12.00,NULL,NULL,1,4,20.00,'CNY',1),(5,'p01002',NULL,NULL,18.00,NULL,NULL,1,5,25.00,'CNY',1),(6,'p01003',NULL,NULL,NULL,NULL,NULL,1,6,80.00,'CNY',1),(7,'p01004',NULL,NULL,NULL,NULL,NULL,1,7,80.00,'CNY',1),(8,'',NULL,NULL,NULL,NULL,NULL,0,7,NULL,'CNY',2),(9,'',NULL,NULL,NULL,NULL,NULL,0,7,NULL,'CNY',3),(10,'',NULL,NULL,NULL,NULL,NULL,0,7,NULL,'CNY',4),(11,'',NULL,NULL,NULL,NULL,NULL,0,7,NULL,'CNY',5),(12,'p01004',NULL,NULL,NULL,NULL,'2013-09-16 06:03:48',1,8,30.00,'CNY',1),(13,'p01005',NULL,NULL,16.00,NULL,NULL,1,9,30.00,'CNY',1),(14,'p01006',NULL,NULL,12.00,NULL,NULL,1,10,35.00,'CNY',1),(15,'p01007',NULL,NULL,NULL,10.00,NULL,1,11,40.00,'CNY',1),(16,'p01008',NULL,NULL,10.00,NULL,NULL,1,12,40.00,'CNY',1),(17,'p01009',NULL,NULL,10.00,NULL,NULL,1,13,20.00,'CNY',1),(18,'p01010',NULL,NULL,20.00,NULL,NULL,1,14,30.00,'CNY',1),(19,'p01011',NULL,NULL,10.00,NULL,NULL,1,15,35.00,'CNY',1),(20,'p01012',NULL,NULL,10.00,NULL,NULL,1,16,NULL,'CNY',1),(21,'p01012',NULL,NULL,10.00,NULL,NULL,1,17,40.00,'CNY',1),(22,'p01013',NULL,NULL,10.00,NULL,NULL,1,18,20.00,'CNY',1),(23,'p01014',NULL,NULL,10.00,NULL,NULL,1,19,20.00,'CNY',1),(24,'p01015',NULL,NULL,10.00,NULL,NULL,1,20,20.00,'CNY',1),(25,'p01016',NULL,NULL,10.00,NULL,NULL,1,21,20.00,'CNY',1),(26,'p01017',NULL,NULL,10.00,NULL,NULL,1,22,30.00,'CNY',1),(27,'q01001',0.00,0.00,0.00,0.00,NULL,1,23,4.00,'CNY',1);
/*!40000 ALTER TABLE `spree_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zone_members`
--

DROP TABLE IF EXISTS `spree_zone_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zone_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zoneable_id` int(11) DEFAULT NULL,
  `zoneable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zone_members`
--

LOCK TABLES `spree_zone_members` WRITE;
/*!40000 ALTER TABLE `spree_zone_members` DISABLE KEYS */;
INSERT INTO `spree_zone_members` VALUES (1,1,'Spree::Country',1,'2013-09-06 07:19:54','2013-09-06 07:19:54');
/*!40000 ALTER TABLE `spree_zone_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zones`
--

DROP TABLE IF EXISTS `spree_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_tax` tinyint(1) DEFAULT '0',
  `zone_members_count` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zones`
--

LOCK TABLES `spree_zones` WRITE;
/*!40000 ALTER TABLE `spree_zones` DISABLE KEYS */;
INSERT INTO `spree_zones` VALUES (1,'中国大陆','中国大陆.',0,1,'2013-09-06 07:19:54','2013-09-06 07:19:54');
/*!40000 ALTER TABLE `spree_zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-07 21:36:41
