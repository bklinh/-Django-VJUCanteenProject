-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: vjucanteen
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts_account`
--

DROP TABLE IF EXISTS `accounts_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_account` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superadmin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_account`
--

LOCK TABLES `accounts_account` WRITE;
/*!40000 ALTER TABLE `accounts_account` DISABLE KEYS */;
INSERT INTO `accounts_account` VALUES (1,'pbkdf2_sha256$600000$dYWR0CL1GzyblEJ7Bcc2t0$vMJEHUB6qV2NXMz4xUshmuGPnGCYiFeFJS+tyRwhP0c=','Linh','Bui','bkl123','vju@gmail.com','','2024-05-10 03:54:25.755000','2024-05-10 13:40:49.344271',1,1,1,1);
/*!40000 ALTER TABLE `accounts_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add category',6,'add_category'),(22,'Can change category',6,'change_category'),(23,'Can delete category',6,'delete_category'),(24,'Can view category',6,'view_category'),(25,'Can add account',7,'add_account'),(26,'Can change account',7,'change_account'),(27,'Can delete account',7,'delete_account'),(28,'Can view account',7,'view_account'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add variation',9,'add_variation'),(34,'Can change variation',9,'change_variation'),(35,'Can delete variation',9,'delete_variation'),(36,'Can view variation',9,'view_variation'),(37,'Can add cart',10,'add_cart'),(38,'Can change cart',10,'change_cart'),(39,'Can delete cart',10,'delete_cart'),(40,'Can view cart',10,'view_cart'),(41,'Can add cart item',11,'add_cartitem'),(42,'Can change cart item',11,'change_cartitem'),(43,'Can delete cart item',11,'delete_cartitem'),(44,'Can view cart item',11,'view_cartitem'),(45,'Can add order',12,'add_order'),(46,'Can change order',12,'change_order'),(47,'Can delete order',12,'delete_order'),(48,'Can view order',12,'view_order'),(49,'Can add payment',13,'add_payment'),(50,'Can change payment',13,'change_payment'),(51,'Can delete payment',13,'delete_payment'),(52,'Can view payment',13,'view_payment'),(53,'Can add order product',14,'add_orderproduct'),(54,'Can change order product',14,'change_orderproduct'),(55,'Can delete order product',14,'delete_orderproduct'),(56,'Can view order product',14,'view_orderproduct');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts_cart`
--

DROP TABLE IF EXISTS `carts_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cart_id` varchar(250) NOT NULL,
  `date_added` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts_cart`
--

LOCK TABLES `carts_cart` WRITE;
/*!40000 ALTER TABLE `carts_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts_cartitem`
--

DROP TABLE IF EXISTS `carts_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts_cartitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `cart_id` bigint DEFAULT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_cartitem_product_id_acd010e4_fk_store_product_id` (`product_id`),
  KEY `carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id` (`user_id`),
  KEY `carts_cartitem_cart_id_9cb0a756_fk` (`cart_id`),
  CONSTRAINT `carts_cartitem_cart_id_9cb0a756_fk` FOREIGN KEY (`cart_id`) REFERENCES `carts_cart` (`id`),
  CONSTRAINT `carts_cartitem_product_id_acd010e4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  CONSTRAINT `carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts_cartitem`
--

LOCK TABLES `carts_cartitem` WRITE;
/*!40000 ALTER TABLE `carts_cartitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts_cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts_cartitem_variations`
--

DROP TABLE IF EXISTS `carts_cartitem_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts_cartitem_variations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cartitem_id` bigint NOT NULL,
  `variation_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `carts_cartitem_variations_cartitem_id_variation_id_5f8efaf5_uniq` (`cartitem_id`,`variation_id`),
  KEY `carts_cartitem_varia_variation_id_ef9f9ee3_fk_store_var` (`variation_id`),
  CONSTRAINT `carts_cartitem_varia_cartitem_id_8be23372_fk_carts_car` FOREIGN KEY (`cartitem_id`) REFERENCES `carts_cartitem` (`id`),
  CONSTRAINT `carts_cartitem_varia_variation_id_ef9f9ee3_fk_store_var` FOREIGN KEY (`variation_id`) REFERENCES `store_variation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts_cartitem_variations`
--

LOCK TABLES `carts_cartitem_variations` WRITE;
/*!40000 ALTER TABLE `carts_cartitem_variations` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts_cartitem_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_category`
--

DROP TABLE IF EXISTS `category_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `cat_image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_name` (`category_name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_category`
--

LOCK TABLES `category_category` WRITE;
/*!40000 ALTER TABLE `category_category` DISABLE KEYS */;
INSERT INTO `category_category` VALUES (1,'Drinks','drinks','','');
/*!40000 ALTER TABLE `category_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_accounts_account_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-05-10 04:45:05.896201','1','Drinks',1,'[{\"added\": {}}]',6,1),(2,'2024-05-10 04:45:15.660267','1','Kirin Latte Milk Tea 345ml',1,'[{\"added\": {}}]',8,1),(3,'2024-05-10 13:41:20.894692','1','Kirin Latte Milk Tea 345ml',2,'[{\"changed\": {\"fields\": [\"Images\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'accounts','account'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(10,'carts','cart'),(11,'carts','cartitem'),(6,'category','category'),(4,'contenttypes','contenttype'),(12,'orders','order'),(14,'orders','orderproduct'),(13,'orders','payment'),(5,'sessions','session'),(8,'store','product'),(9,'store','variation');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'accounts','0001_initial','2024-05-09 11:06:37.478988'),(2,'accounts','0002_alter_account_id','2024-05-09 11:06:37.534004'),(3,'contenttypes','0001_initial','2024-05-09 11:06:37.571264'),(4,'admin','0001_initial','2024-05-09 11:06:37.659102'),(5,'admin','0002_logentry_remove_auto_add','2024-05-09 11:06:37.663507'),(6,'admin','0003_logentry_add_action_flag_choices','2024-05-09 11:06:37.668772'),(7,'contenttypes','0002_remove_content_type_name','2024-05-09 11:06:37.736082'),(8,'auth','0001_initial','2024-05-09 11:06:37.924636'),(9,'auth','0002_alter_permission_name_max_length','2024-05-09 11:06:37.967857'),(10,'auth','0003_alter_user_email_max_length','2024-05-09 11:06:37.974427'),(11,'auth','0004_alter_user_username_opts','2024-05-09 11:06:37.980633'),(12,'auth','0005_alter_user_last_login_null','2024-05-09 11:06:37.987065'),(13,'auth','0006_require_contenttypes_0002','2024-05-09 11:06:37.989533'),(14,'auth','0007_alter_validators_add_error_messages','2024-05-09 11:06:37.994674'),(15,'auth','0008_alter_user_username_max_length','2024-05-09 11:06:38.000023'),(16,'auth','0009_alter_user_last_name_max_length','2024-05-09 11:06:38.006543'),(17,'auth','0010_alter_group_name_max_length','2024-05-09 11:06:38.019841'),(18,'auth','0011_update_proxy_permissions','2024-05-09 11:06:38.024733'),(19,'auth','0012_alter_user_first_name_max_length','2024-05-09 11:06:38.029738'),(20,'category','0001_initial','2024-05-09 11:06:38.057944'),(21,'category','0002_auto_20201006_0125','2024-05-09 11:06:38.061040'),(22,'store','0001_initial','2024-05-09 11:06:38.141855'),(23,'store','0002_variation','2024-05-09 11:06:38.210702'),(24,'store','0003_reviewrating','2024-05-09 11:06:38.314365'),(25,'store','0004_alter_product_id_alter_reviewrating_id_and_more','2024-05-09 11:06:38.717145'),(26,'orders','0001_initial','2024-05-09 11:06:39.210667'),(27,'orders','0002_auto_20210313_0211','2024-05-09 11:06:39.249798'),(28,'orders','0003_auto_20210313_0218','2024-05-09 11:06:39.497448'),(29,'orders','0004_alter_order_id_alter_orderproduct_id_and_more','2024-05-09 11:06:40.155219'),(30,'orders','0005_rename_address_line_2_order_floor_and_more','2024-05-09 11:06:40.292021'),(31,'carts','0001_initial','2024-05-09 11:06:40.408694'),(32,'carts','0002_cartitem_variations','2024-05-09 11:06:40.530929'),(33,'carts','0003_auto_20210308_1648','2024-05-09 11:06:40.724448'),(34,'carts','0004_alter_cart_id_alter_cartitem_id','2024-05-09 11:06:41.011528'),(35,'carts','0005_remove_cartitem_variations','2024-05-09 11:06:41.031702'),(36,'store','0005_remove_variation_product_delete_reviewrating_and_more','2024-05-09 11:06:41.093661'),(37,'store','0006_variation','2024-05-09 11:06:41.150627'),(38,'carts','0006_cartitem_variations','2024-05-09 11:06:41.286932'),(39,'category','0003_alter_category_id','2024-05-09 11:06:41.455300'),(40,'sessions','0001_initial','2024-05-09 11:06:41.488152');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ad7aqg3umdn14eyzn1c8tbddsshht8sy','.eJxVjEEOwiAQRe_C2pBCC7Qu3XsGMsPMSNVAUtqV8e7apAvd_vfef6kI25rj1niJM6mzMur0uyGkB5cd0B3KrepUy7rMqHdFH7TpayV-Xg737yBDy9_a8gjJJTbOGieAYsXL2AFZpGlyPkHPgQJ6RkLvbW_NMCTpWQw5Cp16fwAPGjjr:1s5HLX:arjImJryDLHAKGsnNABHn3U_5yI_ryaPix_QDUfYav0','2024-05-24 03:54:59.334000'),('zyv49xzrefl6l8rvvdrc6qzv9f7qo6un','.eJxVjEEOwiAQRe_C2pBCC7Qu3XsGMsPMSNVAUtqV8e7apAvd_vfef6kI25rj1niJM6mzMur0uyGkB5cd0B3KrepUy7rMqHdFH7TpayV-Xg737yBDy9_a8gjJJTbOGieAYsXL2AFZpGlyPkHPgQJ6RkLvbW_NMCTpWQw5Cp16fwAPGjjr:1s5QUT:-ljSfQLAtZPjCr8b1FW2-Tt8jaUoktAxFQuU3v9gyjY','2024-05-24 13:40:49.350166');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_order`
--

DROP TABLE IF EXISTS `orders_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_number` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `room` varchar(50) NOT NULL,
  `floor` varchar(50) NOT NULL,
  `order_note` varchar(100) NOT NULL,
  `order_total` double NOT NULL,
  `status` varchar(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `is_ordered` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `payment_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_order_user_id_e9b59eb1_fk_accounts_account_id` (`user_id`),
  KEY `orders_order_payment_id_46928ccc_fk` (`payment_id`),
  CONSTRAINT `orders_order_payment_id_46928ccc_fk` FOREIGN KEY (`payment_id`) REFERENCES `orders_payment` (`id`),
  CONSTRAINT `orders_order_user_id_e9b59eb1_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_order`
--

LOCK TABLES `orders_order` WRITE;
/*!40000 ALTER TABLE `orders_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_orderproduct`
--

DROP TABLE IF EXISTS `orders_orderproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_orderproduct` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `product_price` double NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_id` bigint NOT NULL,
  `payment_id` bigint DEFAULT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_orderproduct_product_id_4d6ac024_fk_store_product_id` (`product_id`),
  KEY `orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id` (`user_id`),
  KEY `orders_orderproduct_order_id_5022a3e2_fk` (`order_id`),
  KEY `orders_orderproduct_payment_id_492ed997_fk` (`payment_id`),
  CONSTRAINT `orders_orderproduct_order_id_5022a3e2_fk` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  CONSTRAINT `orders_orderproduct_payment_id_492ed997_fk` FOREIGN KEY (`payment_id`) REFERENCES `orders_payment` (`id`),
  CONSTRAINT `orders_orderproduct_product_id_4d6ac024_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  CONSTRAINT `orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_orderproduct`
--

LOCK TABLES `orders_orderproduct` WRITE;
/*!40000 ALTER TABLE `orders_orderproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_orderproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_payment`
--

DROP TABLE IF EXISTS `orders_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(100) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `amount_paid` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_payment_user_id_cfa9f321_fk_accounts_account_id` (`user_id`),
  CONSTRAINT `orders_payment_user_id_cfa9f321_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_payment`
--

LOCK TABLES `orders_payment` WRITE;
/*!40000 ALTER TABLE `orders_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `price` int NOT NULL,
  `images` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_name` (`product_name`),
  UNIQUE KEY `slug` (`slug`),
  KEY `store_product_category_id_574bae65_fk` (`category_id`),
  CONSTRAINT `store_product_category_id_574bae65_fk` FOREIGN KEY (`category_id`) REFERENCES `category_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product`
--

LOCK TABLES `store_product` WRITE;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
INSERT INTO `store_product` VALUES (1,'Kirin Latte Milk Tea 345ml','kirin-latte-milk-tea-345ml','Kirin Latte Milk Tea 345ml The semi-sweet milk tea is perfectly enjoyable on its own but also makes for a great drink to go with your sweets. It’s a full-bodied tea, really rich and tasty. The sweetness adds to the flavour of the tea rather than being too sugary on its own. It has a great texture too, lovely and smooth and milky, and whether its cold or even comes up to room temperature it’s really nice.',12000,'photos/products/P06469_1_nQPFUrr.jpg',20,1,'2024-05-10 04:45:15.657199','2024-05-10 13:41:20.893193',1);
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_variation`
--

DROP TABLE IF EXISTS `store_variation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_variation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `variation_category` varchar(100) NOT NULL,
  `variation_value` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_variation_product_id_e4f08cbc_fk_store_product_id` (`product_id`),
  CONSTRAINT `store_variation_product_id_e4f08cbc_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_variation`
--

LOCK TABLES `store_variation` WRITE;
/*!40000 ALTER TABLE `store_variation` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_variation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-11  8:44:19
