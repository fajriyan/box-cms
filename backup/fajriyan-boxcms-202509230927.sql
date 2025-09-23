-- MySQL dump 10.13  Distrib 8.4.2, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: boxcms
-- ------------------------------------------------------
-- Server version	8.4.2

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
-- Table structure for table `asset_containers`
--

DROP TABLE IF EXISTS `asset_containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_containers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `asset_containers_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_containers`
--

LOCK TABLES `asset_containers` WRITE;
/*!40000 ALTER TABLE `asset_containers` DISABLE KEYS */;
INSERT INTO `asset_containers` VALUES (1,'assets','Assets','assets','{\"allow_moving\": true, \"search_index\": null, \"warm_presets\": null, \"allow_uploads\": true, \"source_preset\": null, \"allow_renaming\": true, \"create_folders\": true, \"validation_rules\": [], \"allow_downloading\": true}','2024-10-22 20:01:37','2024-10-22 20:01:37');
/*!40000 ALTER TABLE `asset_containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_meta`
--

DROP TABLE IF EXISTS `assets_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `container` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `basename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `assets_meta_container_folder_basename_unique` (`container`,`folder`,`basename`),
  KEY `assets_meta_container_index` (`container`),
  KEY `assets_meta_folder_index` (`folder`),
  KEY `assets_meta_basename_index` (`basename`),
  KEY `assets_meta_filename_index` (`filename`),
  KEY `assets_meta_extension_index` (`extension`),
  KEY `assets_meta_path_index` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_meta`
--

LOCK TABLES `assets_meta` WRITE;
/*!40000 ALTER TABLE `assets_meta` DISABLE KEYS */;
INSERT INTO `assets_meta` VALUES (1,'assets','nature','fajriyan-3pm2bb4aigg-unsplash-6718622c91b6c.webp','fajriyan-3pm2bb4aigg-unsplash-6718622c91b6c','webp','nature/fajriyan-3pm2bb4aigg-unsplash-6718622c91b6c.webp','{\"data\": [], \"size\": 35916, \"width\": 640, \"height\": 1138, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1729654319}','2024-10-22 20:31:59','2024-10-22 20:31:59'),(2,'assets','nature','fajriyan-5fiyjxl3boe-unsplash-6718622a381bc.webp','fajriyan-5fiyjxl3boe-unsplash-6718622a381bc','webp','nature/fajriyan-5fiyjxl3boe-unsplash-6718622a381bc.webp','{\"data\": [], \"size\": 118954, \"width\": 640, \"height\": 1071, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1729654352}','2024-10-22 20:32:32','2024-10-22 20:32:32'),(3,'assets','nature','fajriyan-7momv4yaktq-unsplash-671862247a255.webp','fajriyan-7momv4yaktq-unsplash-671862247a255','webp','nature/fajriyan-7momv4yaktq-unsplash-671862247a255.webp','{\"data\": [], \"size\": 230608, \"width\": 640, \"height\": 1138, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1729654352}','2024-10-22 20:32:32','2024-10-22 20:32:32'),(4,'assets','nature','fajriyan-65fz4j2dxaw-unsplash-67186221ba371.webp','fajriyan-65fz4j2dxaw-unsplash-67186221ba371','webp','nature/fajriyan-65fz4j2dxaw-unsplash-67186221ba371.webp','{\"data\": [], \"size\": 123316, \"width\": 640, \"height\": 853, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1729654352}','2024-10-22 20:32:32','2024-10-22 20:32:32'),(5,'assets','nature','fajriyan-a8rqx9xwuce-unsplash-6718622395cb8.webp','fajriyan-a8rqx9xwuce-unsplash-6718622395cb8','webp','nature/fajriyan-a8rqx9xwuce-unsplash-6718622395cb8.webp','{\"data\": [], \"size\": 59430, \"width\": 640, \"height\": 853, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1729654352}','2024-10-22 20:32:32','2024-10-22 20:32:32'),(6,'assets','nature','fajriyan-dkt8t6lb3im-unsplash-67186227befce.webp','fajriyan-dkt8t6lb3im-unsplash-67186227befce','webp','nature/fajriyan-dkt8t6lb3im-unsplash-67186227befce.webp','{\"data\": [], \"size\": 43398, \"width\": 640, \"height\": 1138, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1729654353}','2024-10-22 20:32:33','2024-10-22 20:32:33'),(7,'assets','nature','fajriyan-eqbdrmldr7o-unsplash-1-6718622a39c62.webp','fajriyan-eqbdrmldr7o-unsplash-1-6718622a39c62','webp','nature/fajriyan-eqbdrmldr7o-unsplash-1-6718622a39c62.webp','{\"data\": [], \"size\": 56846, \"width\": 640, \"height\": 360, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1729654353}','2024-10-22 20:32:33','2024-10-22 20:32:33'),(8,'assets','nature','fajriyan-kmgh03q5ghm-unsplash-67186228d98bf.webp','fajriyan-kmgh03q5ghm-unsplash-67186228d98bf','webp','nature/fajriyan-kmgh03q5ghm-unsplash-67186228d98bf.webp','{\"data\": [], \"size\": 40680, \"width\": 640, \"height\": 360, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1729654353}','2024-10-22 20:32:33','2024-10-22 20:32:33'),(9,'assets','nature','fajriyan-qseduaudq3g-unsplash-67186221877f8.webp','fajriyan-qseduaudq3g-unsplash-67186221877f8','webp','nature/fajriyan-qseduaudq3g-unsplash-67186221877f8.webp','{\"data\": [], \"size\": 45322, \"width\": 640, \"height\": 360, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1729654353}','2024-10-22 20:32:33','2024-10-22 20:32:33'),(10,'assets','nature','fajriyan-rz3i19s4iha-unsplash-67186225aec6f.webp','fajriyan-rz3i19s4iha-unsplash-67186225aec6f','webp','nature/fajriyan-rz3i19s4iha-unsplash-67186225aec6f.webp','{\"data\": [], \"size\": 40458, \"width\": 640, \"height\": 1138, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1729654354}','2024-10-22 20:32:34','2024-10-22 20:32:34'),(11,'assets','nature','fajriyan-sde83zz0gt4-unsplash-67186226ce58e.webp','fajriyan-sde83zz0gt4-unsplash-67186226ce58e','webp','nature/fajriyan-sde83zz0gt4-unsplash-67186226ce58e.webp','{\"data\": [], \"size\": 29962, \"width\": 640, \"height\": 1150, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1729654354}','2024-10-22 20:32:34','2024-10-22 20:32:34'),(12,'assets','nature','fajriyan-sn-lnou9nk-unsplash-6718622bbba4b.webp','fajriyan-sn-lnou9nk-unsplash-6718622bbba4b','webp','nature/fajriyan-sn-lnou9nk-unsplash-6718622bbba4b.webp','{\"data\": [], \"size\": 210416, \"width\": 640, \"height\": 1138, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1729654354}','2024-10-22 20:32:34','2024-10-22 20:32:34'),(13,'assets','nature','fajriyan-ugtelvj-etw-unsplash-67186222d4efd.webp','fajriyan-ugtelvj-etw-unsplash-67186222d4efd','webp','nature/fajriyan-ugtelvj-etw-unsplash-67186222d4efd.webp','{\"data\": [], \"size\": 41470, \"width\": 640, \"height\": 360, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1729654355}','2024-10-22 20:32:35','2024-10-22 20:32:35'),(14,'assets','logo','onedrive.webp','onedrive','webp','logo/onedrive.webp','{\"data\": [], \"size\": 8082, \"width\": 512, \"height\": 512, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1729657477}','2024-10-22 21:24:37','2024-10-22 21:24:37'),(15,'assets','logo','nikon.jpg','nikon','jpg','logo/nikon.jpg','{\"data\": [], \"size\": 11413, \"width\": 800, \"height\": 450, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1729657488}','2024-10-22 21:24:48','2024-10-22 21:24:48'),(16,'assets','logo','canon.png','canon','png','logo/canon.png','{\"data\": [], \"size\": 13336, \"width\": 709, \"height\": 215, \"duration\": null, \"mime_type\": \"image/png\", \"last_modified\": 1729657497}','2024-10-22 21:24:57','2024-10-22 21:24:57'),(17,'assets','logo','kodak-logo.jpg','kodak-logo','jpg','logo/kodak-logo.jpg','{\"data\": [], \"size\": 17097, \"width\": 500, \"height\": 425, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1729657747}','2024-10-22 21:29:07','2024-10-22 21:29:07'),(18,'assets','logo','kodak-film.png','kodak-film','png','logo/kodak-film.png','{\"data\": [], \"size\": 15446, \"width\": 1000, \"height\": 357, \"duration\": null, \"mime_type\": \"image/png\", \"last_modified\": 1729657783}','2024-10-22 21:29:43','2024-10-22 21:29:43');
/*!40000 ALTER TABLE `assets_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blueprints`
--

DROP TABLE IF EXISTS `blueprints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blueprints` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blueprints_handle_namespace_unique` (`handle`,`namespace`),
  KEY `blueprints_namespace_index` (`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blueprints`
--

LOCK TABLES `blueprints` WRITE;
/*!40000 ALTER TABLE `blueprints` DISABLE KEYS */;
INSERT INTO `blueprints` VALUES (1,NULL,'default','{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"markdown\", \"display\": \"Content\", \"localizable\": true}, \"handle\": \"content\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}, {\"field\": {\"type\": \"template\", \"display\": \"Template\", \"localizable\": true}, \"handle\": \"template\"}]}]}}, \"title\": \"Default\"}','2024-10-17 08:30:39','2024-10-17 08:30:39'),(2,'assets','assets','{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Alt Text\", \"instructions\": \"Description of the image\"}, \"handle\": \"alt\"}]}]}}, \"title\": \"Asset\"}','2024-10-17 08:30:39','2024-10-17 08:30:39'),(3,NULL,'user','{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Name\"}, \"handle\": \"name\"}, {\"field\": {\"type\": \"text\", \"input\": \"email\", \"display\": \"Email Address\"}, \"handle\": \"email\"}, {\"field\": {\"type\": \"user_roles\", \"width\": 50}, \"handle\": \"roles\"}, {\"field\": {\"type\": \"user_groups\", \"width\": 50}, \"handle\": \"groups\"}, {\"field\": {\"type\": \"assets\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"avatar\"}]}]}}, \"title\": \"User\"}','2024-10-17 08:30:39','2024-10-17 08:30:39'),(4,'collections.pages','page','{\"tabs\": {\"main\": {\"__count\": 0, \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true}, \"handle\": \"title\"}, {\"field\": {\"type\": \"markdown\", \"display\": \"Content\", \"localizable\": true}, \"handle\": \"content\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}, {\"field\": {\"type\": \"template\", \"display\": \"Template\", \"localizable\": true}, \"handle\": \"template\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"entries\", \"listable\": false, \"max_items\": 1, \"collections\": [\"pages\"], \"localizable\": true}, \"handle\": \"parent\"}], \"__count\": 0}]}}, \"title\": \"Page\"}','2024-10-22 20:16:13','2024-10-22 20:16:13'),(5,'collections.pages','home','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"text\", \"display\": \"Secondary Text\", \"validate\": [\"required\"]}, \"handle\": \"secondary_text\"}, {\"field\": {\"type\": \"text\", \"display\": \"Main Heading\", \"validate\": [\"required\"]}, \"handle\": \"main_heading\"}, {\"field\": {\"type\": \"textarea\", \"display\": \"Main Description\", \"validate\": [\"required\"]}, \"handle\": \"main_description\"}, {\"field\": {\"type\": \"section\", \"display\": \"Button\"}, \"handle\": \"button\"}, {\"field\": {\"type\": \"text\", \"width\": 50, \"display\": \"Text Button Left\", \"validate\": [\"required\"]}, \"handle\": \"text_button_left\"}, {\"field\": {\"type\": \"text\", \"width\": 50, \"display\": \"Text Button Right\", \"validate\": [\"required\"]}, \"handle\": \"text_button_right\"}, {\"field\": {\"type\": \"link\", \"width\": 50, \"display\": \"Link Button Left\", \"validate\": [\"required\"]}, \"handle\": \"link_button_left\"}, {\"field\": {\"type\": \"link\", \"width\": 50, \"display\": \"Link Button Right\", \"validate\": [\"required\"]}, \"handle\": \"link_button_right\"}, {\"field\": {\"type\": \"section\", \"display\": \"Logo\"}, \"handle\": \"button_duplicate\"}, {\"field\": {\"type\": \"text\", \"display\": \"Mini Text Highlight Logo\", \"validate\": [\"required\"]}, \"handle\": \"mini_text_highlight_logo\"}, {\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"item\": {\"fields\": [{\"field\": {\"type\": \"assets\", \"display\": \"Logo\", \"container\": \"assets\", \"max_files\": 1, \"min_files\": 1}, \"handle\": \"logo\"}], \"display\": \"Item\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Logo Hightlight\"}, \"handle\": \"logo_hightlight\"}], \"__count\": 0, \"display\": \"Main Section\"}, {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Heading Featured\", \"validate\": [\"required\"]}, \"handle\": \"heading_featured\"}, {\"field\": {\"type\": \"textarea\", \"display\": \"Featured Description\", \"validate\": [\"required\"]}, \"handle\": \"featured_description\"}, {\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"item\": {\"fields\": [{\"field\": {\"type\": \"icon\", \"display\": \"Icon\", \"validate\": [\"required\"]}, \"handle\": \"icon\"}, {\"field\": {\"type\": \"text\", \"display\": \"Title\", \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"textarea\", \"display\": \"Description\", \"validate\": [\"required\"]}, \"handle\": \"description\"}], \"display\": \"Item\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Featured Grid\"}, \"handle\": \"featured_grid\"}], \"__count\": 1, \"display\": \"Section Featured\"}, {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Heading Us\", \"validate\": [\"required\"]}, \"handle\": \"heading_us\"}, {\"field\": {\"type\": \"markdown\", \"buttons\": [\"bold\", \"italic\", \"unorderedlist\"], \"display\": \"Description Us\"}, \"handle\": \"description_us\"}, {\"field\": {\"type\": \"assets\", \"width\": 50, \"display\": \"Picture Overview 1\", \"validate\": [\"required\"], \"container\": \"assets\", \"max_files\": 1, \"min_files\": 1}, \"handle\": \"picture_overview_1\"}, {\"field\": {\"type\": \"assets\", \"width\": 50, \"display\": \"Picture Overview 2\", \"validate\": [\"required\"], \"container\": \"assets\", \"max_files\": 1, \"min_files\": 1}, \"handle\": \"picture_overview_2\"}, {\"field\": {\"type\": \"section\", \"display\": \"Statistics\"}, \"handle\": \"statistics\"}, {\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"item\": {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Number\", \"validate\": [\"required\"]}, \"handle\": \"number\"}, {\"field\": {\"type\": \"text\", \"display\": \"Short Description\", \"validate\": [\"required\"]}, \"handle\": \"short_description\"}], \"display\": \"Item\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Statistic Grid\"}, \"handle\": \"statistic_grid\"}], \"__count\": 2, \"display\": \"Section Overview Us\"}, {\"fields\": [{\"field\": {\"type\": \"assets\", \"display\": \"Gallery Best\", \"container\": \"assets\"}, \"handle\": \"gallery_best\"}], \"__count\": 3, \"display\": \"Section Gallery\"}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"entries\", \"listable\": false, \"max_items\": 1, \"collections\": [\"pages\"], \"localizable\": true}, \"handle\": \"parent\"}, {\"field\": {\"type\": \"template\", \"display\": \"Template\"}, \"handle\": \"template\"}], \"__count\": 0}]}, \"seo_tools\": {\"__count\": 2, \"display\": \"SEO Tools\", \"sections\": [{\"fields\": [{\"import\": \"seo_tools\"}], \"__count\": 0, \"display\": \"SEO Tools\"}]}}, \"order\": 1, \"title\": \"Home\"}','2024-10-22 20:16:13','2024-10-22 21:00:59'),(6,'collections.pages','about','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"entries\", \"listable\": false, \"max_items\": 1, \"collections\": [\"pages\"], \"localizable\": true}, \"handle\": \"parent\"}], \"__count\": 0}]}}, \"title\": \"About\"}','2024-10-22 20:23:41','2024-10-22 20:23:43'),(7,'globals','site_configuration','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Google Analytics\"}, \"handle\": \"google_analytics\"}, {\"field\": {\"type\": \"text\", \"display\": \"Google Search Console\"}, \"handle\": \"google_search_console\"}], \"__count\": 0, \"display\": \"Site Configuration\"}]}}}','2024-10-22 20:23:41','2024-10-22 20:23:41'),(8,'collections.pages','booking','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"text\", \"display\": \"Main Heading\", \"validate\": [\"required\"]}, \"handle\": \"main_heading\"}, {\"field\": {\"type\": \"textarea\", \"display\": \"Main Description\"}, \"handle\": \"main_description\"}, {\"field\": {\"type\": \"section\", \"display\": \"Pricing\"}, \"handle\": \"pricing\"}, {\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"item\": {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Title\", \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"textarea\", \"display\": \"Description\", \"validate\": [\"required\"]}, \"handle\": \"description\"}, {\"field\": {\"type\": \"text\", \"width\": 66, \"display\": \"Price\", \"validate\": [\"required\"]}, \"handle\": \"price\"}, {\"field\": {\"type\": \"select\", \"width\": 33, \"display\": \"@\", \"options\": [{\"key\": \"Hari\", \"value\": null}, {\"key\": \"Bulan\", \"value\": null}, {\"key\": \"Tahun\", \"value\": null}], \"validate\": [\"required\"]}, \"handle\": \"per\"}, {\"field\": {\"type\": \"grid\", \"fields\": [{\"field\": {\"type\": \"toggle\", \"width\": 25, \"display\": \"available\"}, \"handle\": \"available\"}, {\"field\": {\"type\": \"text\", \"width\": 75, \"display\": \"item\"}, \"handle\": \"item\"}], \"display\": \"Featured\"}, \"handle\": \"featured\"}], \"display\": \"Item\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Pricing Grid\", \"max_sets\": 3}, \"handle\": \"pricing_grid\"}], \"__count\": 0, \"display\": \"Main Section\"}, {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Heading Testimoni\", \"validate\": [\"required\"]}, \"handle\": \"heading_testimoni\"}, {\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"item\": {\"fields\": [{\"field\": {\"type\": \"textarea\", \"display\": \"Value\", \"validate\": [\"required\"]}, \"handle\": \"value\"}, {\"field\": {\"type\": \"text\", \"width\": 50, \"display\": \"Person\", \"validate\": [\"required\"]}, \"handle\": \"person\"}, {\"field\": {\"max\": 5, \"type\": \"range\", \"width\": 50, \"default\": 4, \"display\": \"Rating\", \"validate\": [\"required\"]}, \"handle\": \"rating\"}], \"display\": \"Item\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Testimonial\", \"validate\": [\"required\"]}, \"handle\": \"testimonial\"}], \"__count\": 1, \"display\": \"Testimonial Section\"}, {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Heading FAQ\", \"validate\": [\"required\"]}, \"handle\": \"heading_faq\"}, {\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"item\": {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Title\", \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"bard\", \"buttons\": [\"bold\", \"italic\", \"anchor\"], \"display\": \"Description\", \"validate\": [\"required\"], \"save_html\": true, \"remove_empty_nodes\": false}, \"handle\": \"description\"}], \"display\": \"Item\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"FAQ Item\"}, \"handle\": \"faq_item\"}], \"__count\": 2, \"display\": \"FAQ Section\"}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"entries\", \"listable\": false, \"max_items\": 1, \"collections\": [\"pages\"], \"localizable\": true}, \"handle\": \"parent\"}, {\"field\": {\"type\": \"template\", \"display\": \"Layout\"}, \"handle\": \"template\"}], \"__count\": 0}]}, \"alt_sitemap\": {\"__count\": 2, \"display\": \"Alt Sitemap\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"float\", \"display\": \"Sitemap Priority\", \"instructions\": \"From 0.0 (lowest priority) to 1.0 (highest priority)\"}, \"handle\": \"sitemap_priority\"}, {\"field\": {\"type\": \"toggle\", \"display\": \"Exclude from sitemap?\"}, \"handle\": \"exclude_from_sitemap\"}], \"__count\": 0}]}}, \"title\": \"Booking\"}','2024-10-23 01:24:43','2025-07-29 02:53:30'),(9,'globals','navbar','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"grid\", \"fields\": [{\"field\": {\"type\": \"text\", \"width\": 50, \"display\": \"Title\", \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"link\", \"width\": 50, \"display\": \"Link\", \"validate\": [\"required\"]}, \"handle\": \"link\"}], \"display\": \"Menu\"}, \"handle\": \"menu\"}], \"__count\": 0, \"display\": \"Navbar\"}]}}}','2024-10-23 06:22:49','2024-10-23 06:22:49'),(10,'collections.career','career','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"bard\", \"buttons\": [\"bold\", \"italic\", \"unorderedlist\", \"orderedlist\", \"removeformat\", \"anchor\"], \"display\": \"Description\", \"validate\": [\"required\"], \"save_html\": true, \"remove_empty_nodes\": false}, \"handle\": \"description\"}, {\"field\": {\"type\": \"text\", \"display\": \"Salary\", \"validate\": [\"required\"]}, \"handle\": \"salary\"}, {\"field\": {\"type\": \"textarea\", \"display\": \"Address\", \"validate\": [\"required\"]}, \"handle\": \"address\"}, {\"field\": {\"type\": \"text\", \"display\": \"Bluesky Thread URI\"}, \"handle\": \"bluesky_thread_uri\"}], \"__count\": 0}, {\"fields\": [{\"field\": {\"type\": \"bard\", \"buttons\": [\"bold\", \"italic\", \"unorderedlist\", \"orderedlist\", \"removeformat\", \"anchor\"], \"display\": \"Requirements\", \"validate\": [\"required\"], \"save_html\": true, \"remove_empty_nodes\": false}, \"handle\": \"requirements\"}, {\"field\": {\"type\": \"section\", \"display\": \"Skills\"}, \"handle\": \"skills_section\"}, {\"field\": {\"type\": \"bard\", \"buttons\": [\"bold\", \"italic\", \"unorderedlist\", \"orderedlist\", \"removeformat\", \"anchor\"], \"display\": \"Skills\", \"validate\": [\"required\"], \"save_html\": true, \"remove_empty_nodes\": false}, \"handle\": \"skills\"}, {\"field\": {\"type\": \"section\", \"display\": \"Qualifications\"}, \"handle\": \"qualifications_section\"}, {\"field\": {\"type\": \"bard\", \"buttons\": [\"bold\", \"italic\", \"unorderedlist\", \"orderedlist\", \"removeformat\", \"anchor\"], \"display\": \"Qualifications\", \"validate\": [\"required\"], \"save_html\": true, \"remove_empty_nodes\": false}, \"handle\": \"qualifications\"}, {\"field\": {\"type\": \"section\", \"display\": \"More\"}, \"handle\": \"more\"}, {\"field\": {\"type\": \"text\", \"width\": 50, \"display\": \"Work Experience\", \"validate\": [\"required\"]}, \"handle\": \"work_experience\"}, {\"field\": {\"type\": \"text\", \"width\": 50, \"display\": \"Required Candidates\", \"validate\": [\"required\"]}, \"handle\": \"required_candidates\"}], \"__count\": 1, \"display\": \"Requirements & Skills\"}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": [\"required\", \"max:200\"], \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"date\", \"default\": \"now\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"date\"}, {\"field\": {\"type\": \"users\", \"default\": [\"549da6d9-c349-45af-81c7-ba37f59d64b2\"], \"display\": \"Author\", \"validate\": [\"required\"], \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}, {\"field\": {\"type\": \"template\", \"folder\": \"layouts/career\", \"display\": \"Template\", \"validate\": [\"required\"], \"localizable\": true}, \"handle\": \"template\"}, {\"field\": {\"type\": \"section\", \"display\": \"Category\"}, \"handle\": \"category\"}, {\"field\": {\"mode\": \"select\", \"type\": \"terms\", \"display\": \"Career Division\", \"validate\": [\"required\"], \"max_items\": 1, \"taxonomies\": [\"career_division\"]}, \"handle\": \"career_division\"}, {\"field\": {\"mode\": \"select\", \"type\": \"terms\", \"display\": \"Career Location\", \"validate\": [\"required\"], \"max_items\": 1, \"taxonomies\": [\"career_location\"]}, \"handle\": \"career_location\"}, {\"field\": {\"mode\": \"select\", \"type\": \"terms\", \"display\": \"Career Position\", \"validate\": [\"required\"], \"max_items\": 1, \"taxonomies\": [\"career_position\"]}, \"handle\": \"career_position\"}, {\"field\": {\"mode\": \"select\", \"type\": \"terms\", \"display\": \"Career Role\", \"validate\": [\"required\"], \"max_items\": 1, \"taxonomies\": [\"career_role\"]}, \"handle\": \"career_role\"}], \"__count\": 0}]}, \"alt_sitemap\": {\"__count\": 2, \"display\": \"Alt Sitemap\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"float\", \"display\": \"Sitemap Priority\", \"instructions\": \"From 0.0 (lowest priority) to 1.0 (highest priority)\"}, \"handle\": \"sitemap_priority\"}, {\"field\": {\"type\": \"toggle\", \"display\": \"Exclude from sitemap?\"}, \"handle\": \"exclude_from_sitemap\"}], \"__count\": 0}]}}, \"title\": \"Career\"}','2024-10-23 07:09:12','2025-07-29 02:54:15'),(11,'taxonomies.career_location','career_location','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"required\": true, \"validate\": [\"required\", \"max:200\"]}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Career Location\"}','2024-10-23 07:11:04','2024-10-23 07:11:04'),(12,'taxonomies.career_role','career_role','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"required\": true, \"validate\": [\"required\", \"max:200\"]}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Career Role\"}','2024-10-23 07:13:14','2024-10-23 07:13:14'),(13,'taxonomies.career_division','career_division','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"required\": true, \"validate\": [\"required\", \"max:200\"]}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Career Division\"}','2024-10-23 07:15:02','2024-10-23 07:15:02'),(14,'taxonomies.career_position','career_position','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"required\": true, \"validate\": [\"required\", \"max:200\"]}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Career Position\"}','2024-10-23 07:16:33','2024-10-23 07:16:33'),(15,'collections.pages','career_index','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"text\", \"display\": \"Main Heading\", \"validate\": [\"required\"]}, \"handle\": \"main_heading\"}, {\"field\": {\"type\": \"textarea\", \"display\": \"Main Description\", \"validate\": [\"required\"]}, \"handle\": \"main_description\"}], \"__count\": 0, \"display\": \"Main Section\"}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"entries\", \"listable\": false, \"max_items\": 1, \"collections\": [\"pages\"], \"localizable\": true}, \"handle\": \"parent\"}, {\"field\": {\"type\": \"template\", \"folder\": \"layouts/career\", \"display\": \"Template\", \"validate\": [\"required\"]}, \"handle\": \"template\"}], \"__count\": 0}]}}, \"title\": \"Career Index\"}','2024-10-23 07:36:04','2024-10-23 20:28:44'),(16,'forms','career_form','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Name\", \"validate\": [\"required\"]}, \"handle\": \"name\"}, {\"field\": {\"type\": \"text\", \"display\": \"Email\", \"validate\": [\"required\"], \"input_type\": \"email\"}, \"handle\": \"email\"}, {\"field\": {\"type\": \"text\", \"display\": \"Phone\", \"validate\": [\"required\"], \"input_type\": \"tel\"}, \"handle\": \"phone\"}, {\"field\": {\"type\": \"text\", \"display\": \"Link LinkedIn\", \"validate\": [\"required\"], \"input_type\": \"url\"}, \"handle\": \"link_linkedin\"}, {\"field\": {\"type\": \"text\", \"display\": \"Job Name\", \"validate\": [\"required\"]}, \"handle\": \"job_name\"}, {\"field\": {\"type\": \"text\", \"display\": \"Job Salary\", \"validate\": [\"required\"]}, \"handle\": \"job_salary\"}, {\"field\": {\"type\": \"text\", \"display\": \"Job Position\", \"validate\": [\"required\"]}, \"handle\": \"job_position\"}, {\"field\": {\"type\": \"text\", \"display\": \"Job Division\", \"validate\": [\"required\"]}, \"handle\": \"job_division\"}, {\"field\": {\"type\": \"text\", \"display\": \"Job Role\", \"validate\": [\"required\"]}, \"handle\": \"job_role\"}, {\"field\": {\"type\": \"text\", \"display\": \"Job Location\", \"validate\": [\"required\"]}, \"handle\": \"job_location\"}, {\"field\": {\"type\": \"text\", \"display\": \"Job Date\"}, \"handle\": \"job_date\"}], \"__count\": 0}]}}}','2024-10-23 23:44:44','2024-10-24 07:42:42'),(17,'collections.pages','dynamic_content','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Main Headers\", \"validate\": [\"required\"]}, \"handle\": \"main_headers\"}, {\"field\": {\"sets\": {\"dynamic\": {\"sets\": {\"pricing_component\": {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Headers\"}, \"handle\": \"headers\"}, {\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"pricing_item\": {\"fields\": [{\"field\": {\"type\": \"assets\", \"display\": \"Image\", \"validate\": [\"required\", \"image\"], \"container\": \"assets\", \"max_files\": 1, \"min_files\": 1}, \"handle\": \"image\"}, {\"field\": {\"type\": \"text\", \"display\": \"Price\"}, \"handle\": \"price\"}, {\"field\": {\"type\": \"textarea\", \"display\": \"Short Description\"}, \"handle\": \"short_description\"}, {\"field\": {\"type\": \"toggle\", \"display\": \"Block Mode?\"}, \"handle\": \"block_mode\"}], \"display\": \"Pricing Item\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Content\"}, \"handle\": \"content\"}], \"display\": \"Pricing Component\"}, \"overview_component\": {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Headers\"}, \"handle\": \"headers\"}, {\"field\": {\"type\": \"markdown\", \"buttons\": [\"bold\", \"italic\", \"unorderedlist\", \"orderedlist\", \"quote\", \"strikethrough\", \"code\"], \"display\": \"Description\", \"validate\": [\"required\"]}, \"handle\": \"description\"}], \"display\": \"Overview Component\"}, \"testimonial_component\": {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Headers\"}, \"handle\": \"headers\"}, {\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"pricing_item\": {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Title\"}, \"handle\": \"price\"}, {\"field\": {\"type\": \"textarea\", \"display\": \"Short Description\"}, \"handle\": \"short_description\"}], \"display\": \"Testimoni Item\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Content\"}, \"handle\": \"content\"}], \"display\": \"Testimonial Component\"}, \"image_content_component\": {\"fields\": [{\"field\": {\"type\": \"radio\", \"display\": \"Align\", \"options\": [{\"key\": \"Left\", \"value\": null}, {\"key\": \"Right\", \"value\": null}], \"validate\": [\"required\"]}, \"handle\": \"align\"}, {\"field\": {\"type\": \"text\", \"display\": \"Headers\", \"validate\": [\"required\"]}, \"handle\": \"headers\"}, {\"field\": {\"type\": \"markdown\", \"buttons\": [\"bold\", \"italic\", \"unorderedlist\", \"orderedlist\", \"quote\", \"strikethrough\", \"code\"], \"display\": \"Description\", \"validate\": [\"required\"]}, \"handle\": \"description\"}, {\"field\": {\"type\": \"assets\", \"display\": \"Image\", \"validate\": [\"required\", \"image\"], \"container\": \"assets\", \"max_files\": 1, \"min_files\": 1}, \"handle\": \"image\"}], \"display\": \"Image Content Component\"}}, \"display\": \"Dynamic\"}}, \"type\": \"bard\", \"display\": \"Content Dynamic\", \"collapse\": true, \"validate\": [\"required\"], \"save_html\": true, \"remove_empty_nodes\": false}, \"handle\": \"content_dynamic\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"entries\", \"listable\": false, \"max_items\": 1, \"collections\": [\"pages\"], \"localizable\": true}, \"handle\": \"parent\"}, {\"field\": {\"type\": \"template\", \"folder\": \"layouts\", \"display\": \"Template\", \"validate\": [\"required\"]}, \"handle\": \"template\"}], \"__count\": 0}]}, \"seo_tools\": {\"__count\": 2, \"display\": \"SEO Tools\", \"sections\": [{\"fields\": [{\"import\": \"seo_tools\"}], \"__count\": 0, \"display\": \"SEO Tools\"}]}, \"alt_sitemap\": {\"__count\": 3, \"display\": \"Alt Sitemap\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"float\", \"display\": \"Sitemap Priority\", \"instructions\": \"From 0.0 (lowest priority) to 1.0 (highest priority)\"}, \"handle\": \"sitemap_priority\"}, {\"field\": {\"type\": \"toggle\", \"display\": \"Exclude from sitemap?\"}, \"handle\": \"exclude_from_sitemap\"}], \"__count\": 0}]}}, \"title\": \"Dynamic Content\"}','2025-06-03 07:23:32','2025-07-15 01:49:34');
/*!40000 ALTER TABLE `blueprints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_booking` datetime NOT NULL,
  `end_booking` datetime NOT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `id_package` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_package` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bookings_unique_id_unique` (`unique_id`),
  UNIQUE KEY `bookings_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (22,'BOOKQRSTVSWU','gydekuzuta@mailinator.com','lyxotavyju@mailinator.com','Eius mollit qui rem ','2008-01-03 03:08:00','2024-10-30 11:26:00','Nam maxime odit dese','m2lvaloo','Paket Gold',7500000,'reject','2024-10-30 03:26:07','2024-10-30 07:06:40'),(27,'BOOKLXW3FIJE','fajriyan','fajri@fajri.com','fajriyan','2024-10-30 13:09:00','2024-10-30 14:09:00','cek 123','m2lvaloo','Paket Gold',7500000,'pending','2024-10-30 06:09:32','2024-10-30 06:09:32'),(28,'BOOKY3HOADZW','rujawub@mailinator.com','nuwytik@mailinator.com','Accusamus laudantium','1989-03-18 01:23:00','2008-06-06 07:48:00','Quam esse quis rerum','m2lvaloo','Paket Gold',7500000,'pending','2024-10-30 06:10:55','2024-11-01 01:55:30'),(29,'BOOKSPXTES1L','zytum@mailinator.com','cazila@mailinator.com','Ipsa perspiciatis ','1992-07-10 14:10:00','2001-08-03 16:24:00','Explicabo Nam maxim','m2lvaloo','Paket Gold',7500000,'reject','2024-10-30 06:11:09','2024-11-01 01:56:21'),(30,'BOOKR3ZPUK74','miki@mailinator.com','pawyvymy@mailinator.com','Harum et quis dolore','2004-04-11 08:38:00','1974-09-04 08:51:00','Provident quis culp','m2lvaloo','Paket Gold',7500000,'approve','2024-10-30 06:11:31','2024-11-01 01:54:01'),(31,'BOOKEFTTMVKW','xohumed@mailinator.com','syhibox@mailinator.com','Aut provident commo','1988-12-16 02:32:00','2003-10-16 00:44:00','Lorem error quia in ','m2lvaloo','Paket Gold',7500000,'pending','2024-10-30 06:13:08','2024-10-30 06:13:08'),(32,'BOOK0BT4TEBF','qyqeryfek@mailinator.com','wevazote@mailinator.com','In eos enim recusand','1983-06-26 09:40:00','1978-01-23 19:22:00','Sed rerum aperiam re','m2lvaloo','Paket Gold',7500000,'pending','2024-10-30 06:13:30','2024-10-30 06:13:30'),(33,'BOOKMODPONPX','jisul@mailinator.com','mica@mailinator.com','Necessitatibus volup','1994-03-06 09:42:00','1987-09-24 09:01:00','Veniam nesciunt mo','m2lvaloo','Paket Gold',7500000,'pending','2024-10-30 06:14:02','2024-10-30 06:14:02'),(35,'BOOKWAHM5DWO','fajriyan','fajri123@fajri.com','malang','2024-10-30 14:43:00','2024-10-30 15:43:00','malang','m2lvaloo','Paket Gold',7500000,'pending','2024-10-30 07:43:52','2024-11-01 01:51:48'),(36,'BOOKM34BGWFC','mu','mu@mu.com','surabaya','2024-10-31 08:55:00','2024-11-01 09:55:00','surabaya','m2lvaloo','Paket Gold',7500000,'reject','2024-10-31 01:55:38','2024-11-01 01:52:38'),(37,'BOOKIHJGEAC6','test silver','silver@silver.com','malang','2024-11-01 08:27:00','2024-11-01 10:27:00','keterangan lain','m2lv5zdn','Paket Silver',3500000,'pending','2024-11-01 01:28:11','2024-11-01 01:28:11'),(38,'BOOKIRVPH15I','cek123','email@maiil.com','malang','2024-11-01 09:00:00','2024-11-01 10:00:00','malang','m2lvaloo','Paket Gold',7500000,'approve','2024-11-01 02:00:40','2024-11-01 02:01:02'),(39,'BOOK3KJKRJC0','xonolyqylo@mailinator.com','dywetuk@mailinator.com','Qui soluta quibusdam','1973-10-21 14:42:00','1995-11-15 17:13:00','Provident eum dolor','m2lvaloo','Paket Gold',7500000,'pending','2024-11-01 02:32:05','2024-11-01 02:32:05');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `collections_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` VALUES (1,'pages','Pages','{\"dated\": false, \"mount\": null, \"sites\": [\"default\"], \"slugs\": true, \"inject\": [], \"layout\": null, \"routes\": \"{parent_uri}/{slug}\", \"sort_dir\": null, \"template\": null, \"propagate\": true, \"revisions\": false, \"structure\": {\"root\": true}, \"sort_field\": null, \"taxonomies\": null, \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"public\"}','2024-10-17 08:30:39','2024-10-17 08:30:39'),(2,'career','Career','{\"dated\": true, \"mount\": null, \"sites\": null, \"slugs\": true, \"inject\": [], \"layout\": \"layout\", \"routes\": \"/karir/{slug}\", \"sort_dir\": \"asc\", \"template\": \"layouts/career/detail\", \"propagate\": false, \"revisions\": false, \"structure\": null, \"sort_field\": null, \"taxonomies\": [\"career_division\", \"career_location\", \"career_position\", \"career_role\"], \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"id\": \"jN3FTH1u\", \"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"private\"}','2024-10-23 06:55:53','2024-10-23 07:34:27');
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entries` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int DEFAULT NULL,
  `collection` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blueprint` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entries_site_index` (`site`),
  KEY `entries_origin_id_index` (`origin_id`),
  KEY `entries_uri_index` (`uri`),
  KEY `entries_order_index` (`order`),
  KEY `entries_collection_index` (`collection`),
  KEY `entries_blueprint_index` (`blueprint`),
  KEY `entries_date_index` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES ('635d8149-c281-40ed-8d01-34d014ebd3f1','default',NULL,1,'booking','/booking',NULL,2,'pages','booking','{\"title\": \"Booking\", \"parent\": \"dbf610c8-0809-47f2-b43c-0c3a164d95ee\", \"pricing\": null, \"faq_item\": [{\"id\": \"m2lved0o\", \"type\": \"item\", \"title\": \"Berapa lama waktu pengiriman hasil foto?\", \"enabled\": true, \"description\": \"<p><em>Pengiriman hasil foto biasanya memakan waktu 7-10 hari kerja, tergantung pada paket yang Anda pilih.</em></p>\"}, {\"id\": \"m2lveoa5\", \"type\": \"item\", \"title\": \"Apakah saya bisa meminta revisi pada hasil foto?\", \"enabled\": true, \"description\": \"<p><em>Ya, kami menyediakan layanan revisi untuk memastikan hasil foto sesuai dengan keinginan Anda.</em></p>\"}, {\"id\": \"m2lvf0el\", \"type\": \"item\", \"title\": \"Apakah harga paket sudah termasuk cetak foto?\", \"enabled\": true, \"description\": \"<p><em>Beberapa paket kami sudah termasuk cetak foto, seperti album atau cetak foto ukuran besar.</em></p>\"}, {\"id\": \"m2lvfjrl\", \"type\": \"item\", \"title\": \"Apakah Anda menyediakan jasa fotografi di luar kota?\", \"enabled\": true, \"description\": \"<p><em>Ya, kami melayani pemotretan di luar kota. Namun, ada biaya tambahan untuk transportasi dan akomodasi.</em></p>\"}], \"template\": \"layouts/booking\", \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"heading_faq\": \"Pertanyaan yang Sering Diajukan (FAQ)\", \"testimonial\": [{\"id\": \"m2lvvn6y\", \"type\": \"item\", \"value\": \"Hasil fotonya luar biasa! Semua momen spesial kami tertangkap dengan indah. Tim fotografer sangat profesional dan mudah diajak bekerja sama. Kami sangat puas!\\\"\", \"person\": \"Rina & Andi\", \"rating\": 4, \"enabled\": true}, {\"id\": \"m2lvwl22\", \"type\": \"item\", \"value\": \"Pelayanan yang cepat dan hasil yang memukau! Kami memesan untuk acara pernikahan, dan foto-fotonya benar-benar menangkap suasana haru dan bahagia.\", \"person\": \"Tania & Mamat\", \"rating\": 3, \"enabled\": true}, {\"id\": \"m2lvwwwg\", \"type\": \"item\", \"value\": \"Fotografernya sangat kreatif dan detail. Setiap foto terasa unik dan penuh makna. Kami pasti akan kembali untuk pemotretan keluarga kami di masa depan!\", \"person\": \"Dewi & Reza\", \"rating\": 5, \"enabled\": true}], \"main_heading\": \"Abadikan Momen Spesial Anda dengan Langkah Mudah\", \"pricing_grid\": [{\"id\": \"m2lv5zdn\", \"per\": \"Hari\", \"type\": \"item\", \"price\": \"Rp 3.500.000\", \"title\": \"Paket Silver\", \"enabled\": true, \"featured\": [{\"id\": \"m2lv6ymx\", \"item\": \"4 Jam sesi pemotretan\", \"available\": true}, {\"id\": \"m2lv786u\", \"item\": \"1 Fotografer profesional\", \"available\": true}, {\"id\": \"m2lv78qo\", \"item\": \"50 Foto pilihan (edited)\", \"available\": true}, {\"id\": \"m2lv7vf7\", \"item\": \"Semua foto dalam format digital (tanpa edit)\", \"available\": true}, {\"id\": \"m2lv81lu\", \"item\": \"Album foto cetak (20 halaman)\", \"available\": true}, {\"id\": \"m2lv85uu\", \"item\": \"Gratis konsultasi konsep\", \"available\": true}, {\"id\": \"m2lv8ds1\", \"item\": \"Pemotretan di 1 lokasi\", \"available\": true}, {\"id\": \"m2lv8kk1\", \"item\": \"Pengiriman hasil dalam 10 hari kerja\", \"available\": true}], \"description\": \"Paket ekonomis untuk acara sederhana, termasuk 50 foto pilihan yang diedit dan album cetak.\"}, {\"id\": \"m2lvaloo\", \"per\": \"Hari\", \"type\": \"item\", \"price\": \"Rp 7.500.000\", \"title\": \"Paket Gold\", \"enabled\": true, \"featured\": [{\"id\": \"m2lv6ymx\", \"item\": \"8 Jam sesi pemotretan\", \"available\": true}, {\"id\": \"m2lv786u\", \"item\": \"4 Fotografer profesional\", \"available\": true}, {\"id\": \"m2lv78qo\", \"item\": \"100 Foto pilihan (edited)\", \"available\": true}, {\"id\": \"m2lv7vf7\", \"item\": \"Semua foto dalam format digital (tanpa edit)\", \"available\": true}, {\"id\": \"m2lv81lu\", \"item\": \"Album foto cetak (40 halaman)\", \"available\": true}, {\"id\": \"m2lv85uu\", \"item\": \"Gratis konsultasi konsep\", \"available\": true}, {\"id\": \"m2lv8ds1\", \"item\": \"Pemotretan di 2 lokasi\", \"available\": true}, {\"id\": \"m2lvbxqh\", \"item\": \"Gratis drone footage (untuk outdoor event)\", \"available\": true}, {\"id\": \"m2lvc4fi\", \"item\": \"Gratis cetak 10 foto ukuran besar (12R)\", \"available\": true}, {\"id\": \"m2lv8kk1\", \"item\": \"Pengiriman hasil dalam 7 hari kerja\", \"available\": true}], \"description\": \"Paket lengkap dengan dua fotografer, 100 foto pilihan, album premium, dan drone footage.\"}], \"main_description\": \"Pesan layanan fotografi profesional kami dengan cepat dan mudah. Pilih paket yang sesuai, atur jadwal, dan biarkan kami membantu Anda menangkap setiap momen berharga dalam hidup Anda.\", \"heading_testimoni\": \"Cerita di Balik Setiap Momen yang Kami Abadikan\"}','2024-10-23 01:26:25','2024-10-23 06:16:39'),('84856b56-4099-422d-b71a-ef831805afaa','default',NULL,1,'fotografer-profesional','/karir/fotografer-profesional','2024-10-23 00:00:00',NULL,'career','career','{\"more\": null, \"title\": \"Fotografer Profesional\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"salary\": \"3.500.000\", \"skills\": \"<ol start=\\\"1\\\"><li><p>Kemampuan teknis dalam menggunakan kamera dan peralatan fotografi.</p></li><li><p>Kreativitas dalam menangkap sudut pandang yang unik.</p></li><li><p>Manajemen waktu yang baik untuk mengelola sesi pemotretan.</p></li><li><p>Keterampilan interpersonal untuk berinteraksi dengan klien dan tim.</p></li></ol>\", \"address\": \"Jl. Danau Kerinci, Sawojajar, Kota Malang, Jawa Timur\", \"category\": null, \"template\": \"layouts/career/detail\", \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"career_role\": \"full-time\", \"description\": \"<p>Kami mencari fotografer profesional yang memiliki passion dalam menangkap momen-momen spesial. Anda akan bertanggung jawab untuk memotret berbagai acara, termasuk pernikahan, acara keluarga, dan event korporat.</p>\", \"requirements\": \"<ol start=\\\"1\\\"><li><p>Melakukan pemotretan sesuai dengan permintaan klien.</p></li><li><p>Mengedit dan mengolah foto untuk menghasilkan hasil terbaik.</p></li><li><p>Berkolaborasi dengan tim untuk merencanakan konsep pemotretan.</p></li><li><p>Memastikan peralatan fotografi selalu dalam kondisi baik.</p></li></ol>\", \"qualifications\": \"<ol start=\\\"1\\\"><li><p>Pengalaman minimal 2 tahun di bidang fotografi.</p></li><li><p>Memiliki portofolio yang kuat dan beragam.</p></li><li><p>Kemampuan komunikasi yang baik dan ramah dengan klien.</p></li><li><p>Keterampilan dalam perangkat lunak editing foto seperti Adobe Lightroom dan Photoshop.</p></li></ol>\", \"skills_section\": null, \"career_division\": \"fotografer-profesional\", \"career_location\": \"gresik\", \"career_position\": \"hybrid\", \"work_experience\": \"1-2 Tahun\", \"required_candidates\": \"2 Orang\", \"qualifications_section\": null}','2024-10-23 07:31:41','2024-10-24 07:28:38'),('987a07ef-e2d7-4380-9f39-1ef920db985e','default',NULL,1,'fotografer-profesional-secondary','/karir/fotografer-profesional-secondary','2024-10-23 00:00:00',NULL,'career','career','{\"title\": \"Fotografer Profesional Secondary\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"salary\": \"3.500.000\", \"skills\": \"<ol start=\\\"1\\\"><li><p>Kemampuan teknis dalam menggunakan kamera dan peralatan fotografi.</p></li><li><p>Kreativitas dalam menangkap sudut pandang yang unik.</p></li><li><p>Manajemen waktu yang baik untuk mengelola sesi pemotretan.</p></li><li><p>Keterampilan interpersonal untuk berinteraksi dengan klien dan tim.</p></li></ol>\", \"address\": \"Jl. Danau Kerinci, Sawojajar, Kota Malang, Jawa Timur\", \"template\": \"layouts/career/detail\", \"updated_by\": \"9ed8b2a1-a0ec-413c-93fe-78c8b14d0524\", \"career_role\": \"full-time\", \"description\": \"<p>Kami mencari fotografer profesional yang memiliki passion dalam menangkap momen-momen spesial. Anda akan bertanggung jawab untuk memotret berbagai acara, termasuk pernikahan, acara keluarga, dan event korporat.</p>\", \"requirements\": \"<ol start=\\\"1\\\"><li><p>Melakukan pemotretan sesuai dengan permintaan klien.</p></li><li><p>Mengedit dan mengolah foto untuk menghasilkan hasil terbaik.</p></li><li><p>Berkolaborasi dengan tim untuk merencanakan konsep pemotretan.</p></li><li><p>Memastikan peralatan fotografi selalu dalam kondisi baik.</p></li></ol>\", \"qualifications\": \"<ol start=\\\"1\\\"><li><p>Pengalaman minimal 2 tahun di bidang fotografi.</p></li><li><p>Memiliki portofolio yang kuat dan beragam.</p></li><li><p>Kemampuan komunikasi yang baik dan ramah dengan klien.</p></li><li><p>Keterampilan dalam perangkat lunak editing foto seperti Adobe Lightroom dan Photoshop.</p></li></ol>\", \"career_division\": \"fotografer-profesional\", \"career_location\": \"malang\", \"career_position\": \"on-site\", \"duplicated_from\": \"84856b56-4099-422d-b71a-ef831805afaa\", \"work_experience\": \"1-2 Tahun\", \"bluesky_thread_uri\": \"at://did:plc:xyz/app.bsky.feed.post/3kdr3d5idn2u5\", \"required_candidates\": \"2 Orang\", \"exclude_from_sitemap\": false}','2024-10-23 21:06:16','2025-07-29 02:55:11'),('d732d6d8-dd16-4ccd-9190-829702860879','default',NULL,1,'karir','/karir',NULL,3,'pages','career_index','{\"title\": \"Karir\", \"parent\": \"dbf610c8-0809-47f2-b43c-0c3a164d95ee\", \"template\": \"layouts/career/index\", \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"main_heading\": \"Karir\", \"main_description\": \"Description\"}','2024-10-23 07:36:36','2024-10-23 20:29:09'),('dbf610c8-0809-47f2-b43c-0c3a164d95ee','default',NULL,1,'homepage','/',NULL,1,'pages','home','{\"title\": \"Homepage\", \"robots\": [], \"gallery\": [{\"id\": \"m2lccdi5\", \"type\": \"item\", \"image\": [\"nature/fajriyan-3pm2bb4aigg-unsplash-6718622c91b6c.webp\", \"nature/fajriyan-5fiyjxl3boe-unsplash-6718622a381bc.webp\", \"nature/fajriyan-65fz4j2dxaw-unsplash-67186221ba371.webp\", \"nature/fajriyan-7momv4yaktq-unsplash-671862247a255.webp\", \"nature/fajriyan-a8rqx9xwuce-unsplash-6718622395cb8.webp\"], \"enabled\": true}], \"template\": \"layouts/home\", \"heading_us\": \"Hubungi Kami Sekarang dan Jadikan Setiap Momen Lebih Berarti\", \"meta_title\": \"Homepage\", \"updated_by\": \"9ed8b2a1-a0ec-413c-93fe-78c8b14d0524\", \"last_update\": \"2025-07-15 08:39\", \"gallery_best\": [\"nature/fajriyan-3pm2bb4aigg-unsplash-6718622c91b6c.webp\", \"nature/fajriyan-5fiyjxl3boe-unsplash-6718622a381bc.webp\", \"nature/fajriyan-65fz4j2dxaw-unsplash-67186221ba371.webp\", \"nature/fajriyan-7momv4yaktq-unsplash-671862247a255.webp\", \"nature/fajriyan-a8rqx9xwuce-unsplash-6718622395cb8.webp\", \"nature/fajriyan-dkt8t6lb3im-unsplash-67186227befce.webp\", \"nature/fajriyan-eqbdrmldr7o-unsplash-1-6718622a39c62.webp\", \"nature/fajriyan-sde83zz0gt4-unsplash-67186226ce58e.webp\"], \"main_heading\": \"Setiap Momen Berarti, Setiap Gambar <br> Menceritakan Kisahnya\", \"custom_script\": false, \"featured_grid\": [{\"id\": \"m2lbsask\", \"icon\": \"focal-point\", \"type\": \"item\", \"title\": \"Fotografi Pernikahan\", \"enabled\": true, \"description\": \"Abadikan hari paling spesial Anda dengan sentuhan artistik yang penuh keindahan.\"}, {\"id\": \"m2lbss70\", \"icon\": \"nova\", \"type\": \"item\", \"title\": \"Prewedding & Engagement\", \"enabled\": true, \"description\": \"Cerita cinta Anda layak diabadikan dengan gaya yang elegan dan penuh cinta.\"}, {\"id\": \"m2lbt6jr\", \"icon\": \"folder-image\", \"type\": \"item\", \"title\": \"Event & Corporate\", \"enabled\": true, \"description\": \"Tangkap momen penting perusahaan Anda dalam gaya yang profesional dan menawan.\"}], \"description_us\": \"Kami adalah tim fotografer profesional yang berdedikasi untuk memberikan hasil foto berkualitas tinggi. Setiap anggota tim kami memiliki pengalaman bertahun-tahun dalam industri fotografi, yang memungkinkan kami untuk memahami kebutuhan klien secara mendalam. Kami percaya bahwa setiap momen, besar atau kecil, memiliki cerita yang layak diabadikan. <br>\\n\\nDengan kombinasi keterampilan teknis yang unggul dan kreativitas artistik, kami berkomitmen untuk menghasilkan foto-foto yang tidak hanya indah secara visual, tetapi juga mampu menangkap emosi, kepribadian, dan momen-momen berharga yang mungkin hanya terjadi sekali seumur hidup.<br>\\n\\nKami berfokus pada detail—dari pencahayaan hingga komposisi—agar setiap foto yang kami hasilkan terasa personal dan bermakna bagi Anda. Baik itu untuk momen spesial seperti pernikahan, acara keluarga, hingga keperluan korporat atau komersial, kami siap bekerja sama dengan Anda untuk memastikan setiap gambar menceritakan kisah unik yang autentik dan memikat.\", \"featured_image\": \"nature/fajriyan-7momv4yaktq-unsplash-671862247a255.webp\", \"secondary_text\": \"Nikmati potongan harga hingga 20%\", \"statistic_grid\": [{\"id\": \"m2lbu9sq\", \"type\": \"item\", \"number\": \"98%\", \"enabled\": true, \"short_description\": \"Kepuasan Pelanggan\"}, {\"id\": \"m2lbuosp\", \"type\": \"item\", \"number\": \"500+\", \"enabled\": true, \"short_description\": \"Proyek Fotografi\"}, {\"id\": \"m2lc7lko\", \"type\": \"item\", \"number\": \"20 Tahun\", \"enabled\": true, \"short_description\": \"Pengalaman Kerja\"}, {\"id\": \"m2lc7vqm\", \"type\": \"item\", \"number\": \"30+\", \"enabled\": true, \"short_description\": \"Fotografer Professional\"}], \"logo_hightlight\": [{\"id\": \"m2ldespk\", \"logo\": \"logo/canon.png\", \"type\": \"item\", \"enabled\": true}, {\"id\": \"m2ldelrd\", \"logo\": \"logo/nikon.jpg\", \"type\": \"item\", \"enabled\": true}, {\"id\": \"m2lddsc3\", \"logo\": \"logo/kodak-logo.jpg\", \"type\": \"item\", \"enabled\": true}, {\"id\": \"m2ldkzzl\", \"logo\": \"logo/kodak-film.png\", \"type\": \"item\", \"enabled\": true}], \"heading_featured\": \"Fotografernya sangat profesional dan hasil fotonya luar biasa!\", \"link_button_left\": \"/booking\", \"main_description\": \"Kami hadir untuk membantu Anda mengabadikan setiap momen berharga dengan kualitas terbaik. Mulai dari pernikahan, event spesial, hingga portofolio pribadi, kami siap menghadirkan cerita visual yang tak terlupakan.\", \"meta_description\": \"Homepage\", \"text_button_left\": \"Booking Sekarang\", \"link_button_right\": \"https://fajriyan.pages.dev/\", \"text_button_right\": \"Portofolio Kami\", \"picture_overview_1\": \"nature/fajriyan-5fiyjxl3boe-unsplash-6718622a381bc.webp\", \"picture_overview_2\": \"nature/fajriyan-7momv4yaktq-unsplash-671862247a255.webp\", \"meta_featured_image\": \"nature/fajriyan-3pm2bb4aigg-unsplash-6718622c91b6c.webp\", \"exclude_from_sitemap\": false, \"featured_description\": \"Kami adalah tim fotografer profesional yang berdedikasi untuk memberikan hasil foto berkualitas tinggi. Dengan pengalaman bertahun-tahun, kami bangga menghadirkan hasil foto yang tidak hanya indah secara visual, tetapi juga penuh makna.\", \"mini_text_highlight_logo\": \"Partner Kami\"}','2024-10-22 20:35:11','2025-07-15 01:39:45'),('eacbb13b-194b-431f-9eab-ade646216f49','default',NULL,1,'dynamic-content','/dynamic-content',NULL,4,'pages','dynamic_content','{\"title\": \"Dynamic Content\", \"parent\": \"dbf610c8-0809-47f2-b43c-0c3a164d95ee\", \"robots\": [], \"template\": \"layouts/dynamic-content\", \"meta_title\": \"Dynamic Content\", \"updated_by\": \"9ed8b2a1-a0ec-413c-93fe-78c8b14d0524\", \"last_update\": \"2025-06-03 14:33\", \"main_headers\": \"Dynamic Content\", \"custom_script\": false, \"content_dynamic\": [{\"type\": \"set\", \"attrs\": {\"id\": \"md3x26ld\", \"values\": {\"type\": \"overview_component\", \"headers\": \"Dapatkan Layanan Terbaik dari Kami\", \"description\": \"Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Dignissim odio pulvinar maximus aptent phasellus turpis condimentum nullam, nisl vulputate ligula praesent. Nostra habitant ad suscipit porttitor ad libero malesuada, sit orci pulvinar scelerisque.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum jri. Dignissim odio pulvinar maximus aptent phasellus turpis condimentum nullam, nisl vulputate ligula praesent. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum jri.\"}}}, {\"type\": \"set\", \"attrs\": {\"id\": \"md3x2d8a\", \"values\": {\"type\": \"image_content_component\", \"align\": \"Right\", \"image\": \"nature/fajriyan-sde83zz0gt4-unsplash-67186226ce58e.webp\", \"headers\": \"Dapatkan Layanan Terbaik dari Kami\", \"description\": \"Dignissim odio pulvinar maximus aptent phasellus turpis condimentum nullam, nisl vulputate ligula praesent. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Dignissim odio pulvinar maximus aptent phasellus turpis condimentum nullam, nisl vulputate ligula praesent. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Nostra habitant ad suscipit porttitor ad libero malesuada, sit orci pulvinar scelerisque.\"}}}, {\"type\": \"set\", \"attrs\": {\"id\": \"mbg7c3ip\", \"values\": {\"type\": \"pricing_component\", \"content\": [{\"id\": \"mbg7c929\", \"type\": \"pricing_item\", \"image\": \"nature/fajriyan-3pm2bb4aigg-unsplash-6718622c91b6c.webp\", \"price\": \"20000000\", \"enabled\": true, \"block_mode\": false, \"short_description\": \"Short Description Product 1\"}, {\"id\": \"mbg7chmk\", \"type\": \"pricing_item\", \"image\": \"nature/fajriyan-5fiyjxl3boe-unsplash-6718622a381bc.webp\", \"price\": \"3500000\", \"enabled\": true, \"block_mode\": true, \"short_description\": \"Short Description Product 2\"}, {\"id\": \"mbg7cryt\", \"type\": \"pricing_item\", \"image\": \"nature/fajriyan-7momv4yaktq-unsplash-671862247a255.webp\", \"price\": \"19800000\", \"enabled\": true, \"block_mode\": true, \"short_description\": \"Short Description Product 3\"}], \"headers\": \"Dapatkan Harga Terbaik\"}}}, {\"type\": \"set\", \"attrs\": {\"id\": \"md3vk2mx\", \"values\": {\"type\": \"testimonial_component\", \"content\": [{\"id\": \"md3vkfm6\", \"type\": \"pricing_item\", \"price\": \"Fajriyan\", \"enabled\": true, \"short_description\": \"Saya rasa Layanan sangat baik, admin sangat tanggap dan jasa fotografinya terbaik dengan harga yang sama.\"}, {\"id\": \"md3vll4p\", \"type\": \"pricing_item\", \"price\": \"Sasa\", \"enabled\": true, \"short_description\": \"Admin sangat tanggap dan jasa fotografinya terbaik dengan harga yang sama, saya rasa Layanan sangat baik.\"}, {\"id\": \"md3vltox\", \"type\": \"pricing_item\", \"price\": \"Lyla\", \"enabled\": true, \"short_description\": \"Saya rasa Layanan sangat baik, admin sangat tanggap dan jasa fotografinya terbaik dengan harga yang sama.\"}], \"headers\": \"Testimoni dari Pengguna\"}}}, {\"type\": \"paragraph\"}], \"meta_description\": \"Dynamic Content\", \"meta_featured_image\": \"nature/fajriyan-3pm2bb4aigg-unsplash-6718622c91b6c.webp\", \"exclude_from_sitemap\": false}','2025-06-03 07:35:29','2025-07-15 02:32:00');
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldsets`
--

DROP TABLE IF EXISTS `fieldsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fieldsets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fieldsets_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldsets`
--

LOCK TABLES `fieldsets` WRITE;
/*!40000 ALTER TABLE `fieldsets` DISABLE KEYS */;
INSERT INTO `fieldsets` VALUES (1,'seo_tools','{\"title\": \"SEO Tools\", \"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Meta Title\"}, \"handle\": \"meta_title\"}, {\"field\": {\"type\": \"text\", \"display\": \"Meta Description\"}, \"handle\": \"meta_description\"}, {\"field\": {\"type\": \"text\", \"display\": \"Meta Canonical\"}, \"handle\": \"meta_canonical\"}, {\"field\": {\"type\": \"select\", \"display\": \"Meta Robots\", \"options\": [{\"key\": \"index, follow\", \"value\": null}, {\"key\": \"index, nofollow\", \"value\": null}, {\"key\": \"noindex, follow\", \"value\": null}, {\"key\": \"noindex, nofollow\", \"value\": null}], \"taggable\": true}, \"handle\": \"meta_robots\"}, {\"field\": {\"type\": \"assets\", \"display\": \"Featured Image\", \"validate\": [\"required\"], \"container\": \"assets\", \"max_files\": 1, \"min_files\": 1}, \"handle\": \"featured_image\"}]}','2024-10-22 02:21:36','2025-05-06 13:19:32');
/*!40000 ALTER TABLE `fieldsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_submissions`
--

DROP TABLE IF EXISTS `form_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_submissions` (
  `id` decimal(14,4) NOT NULL,
  `form` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_submissions_id_unique` (`id`),
  UNIQUE KEY `form_submissions_form_created_at_unique` (`form`,`created_at`),
  KEY `form_submissions_form_index` (`form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_submissions`
--

LOCK TABLES `form_submissions` WRITE;
/*!40000 ALTER TABLE `form_submissions` DISABLE KEYS */;
INSERT INTO `form_submissions` VALUES (15.0000,'career_form','{\"job\": \"Animi sit aut in id\", \"name\": \"Victoria Kirkland\", \"email\": \"gexyvu@mailinator.com\", \"phone\": \"+1 (442) 319-6436\", \"link_linkedin\": \"https://www.lodijysa.info\", \"career_division\": \"Voluptas corrupti s\"}',NULL,NULL),(7463.0000,'career_form','{\"job\": \"Eiusmod nulla fugit\", \"name\": \"Xenos Calhoun\", \"email\": \"naburepoz@mailinator.com\", \"phone\": \"+1 (344) 119-1296\", \"link_linkedin\": \"https://www.lyf.me.uk\", \"career_division\": \"Ut autem eligendi is\"}',NULL,NULL),(31202.0000,'career_form','{\"job\": \"Culpa ea molestias \", \"name\": \"Garth Chang\", \"email\": \"jivuv@mailinator.com\", \"phone\": \"+1 (933) 243-1701\", \"link_linkedin\": \"https://www.woqefiwowuhegir.net\", \"career_division\": \"Praesentium dolorem \"}','2024-10-24 00:39:54.000000','2024-10-24 00:39:54.000000'),(331290.0000,'career_form','{\"name\": \"Daria Clark\", \"email\": \"zojuj@mailinator.com\", \"phone\": \"+1 (517) 167-7078\", \"job_date\": \"2024-10-24\", \"job_name\": \"Daria Clark\", \"job_role\": \"full-time\", \"job_salary\": \"3.500.000\", \"job_division\": \"fotografer-profesional\", \"job_location\": \"gresik\", \"job_position\": \"hybrid\", \"link_linkedin\": \"https://www.les.me\"}','2024-10-24 07:51:19.000000','2024-10-24 07:51:19.000000'),(1282704.0000,'career_form','{\"job\": \"Incididunt ut nostru\", \"name\": \"Grady Finch\", \"email\": \"komibi@mailinator.com\", \"phone\": \"+1 (448) 996-9457\", \"link_linkedin\": \"https://www.tih.ws\", \"career_division\": \"Inventore libero ips\"}',NULL,NULL),(1952684.0000,'career_form','{\"name\": \"Christine Weaver\", \"email\": \"micyt@mailinator.com\", \"phone\": \"+1 (805) 736-7189\", \"job_date\": \"2024-10-24\", \"job_name\": \"Christine Weaver\", \"job_role\": \"full-time\", \"job_salary\": \"3.500.000\", \"job_division\": \"fotografer-profesional\", \"job_location\": \"gresik\", \"job_position\": \"hybrid\", \"link_linkedin\": \"https://www.cymipimevasam.org.au\"}','2024-10-24 07:51:44.000000','2024-10-24 07:51:44.000000'),(1961163.0000,'career_form','{\"name\": \"Zeus Blevins\", \"email\": \"jifagake@mailinator.com\", \"phone\": \"+1 (376) 427-6938\", \"job_date\": \"2024-10-24\", \"job_name\": \"Zeus Blevins\", \"job_role\": \"full-time\", \"job_salary\": \"3.500.000\", \"job_division\": \"fotografer-profesional\", \"job_location\": \"gresik\", \"job_position\": \"hybrid\", \"link_linkedin\": \"https://www.medekazozewir.me.uk\"}','2024-10-24 07:50:41.000000','2024-10-24 07:50:41.000000'),(2531234.0000,'career_form','{\"name\": \"Anthony Merritt\", \"email\": \"werecupiwu@mailinator.com\", \"phone\": \"+1 (675) 194-3544\", \"job_date\": \"2024-10-24\", \"job_name\": \"Anthony Merritt\", \"job_role\": \"full-time\", \"job_salary\": \"3.500.000\", \"job_division\": \"fotografer-profesional\", \"job_location\": \"malang\", \"job_position\": \"on-site\", \"link_linkedin\": \"https://www.fydovymetapytu.cc\"}','2024-10-24 07:45:21.000000','2024-10-24 07:45:21.000000'),(2829688.0000,'career_form','{\"name\": \"Jade Campos\", \"email\": \"xumi@mailinator.com\", \"phone\": \"+1 (657) 731-6582\", \"job_date\": \"2024-10-24\", \"job_name\": \"Jade Campos\", \"job_role\": \"full-time\", \"job_salary\": \"3.500.000\", \"job_division\": \"fotografer-profesional\", \"job_location\": \"gresik\", \"job_position\": \"hybrid\", \"link_linkedin\": \"https://www.lexag.cm\"}','2024-10-24 07:52:36.000000','2024-10-24 07:52:36.000000'),(3134659.0000,'career_form','{\"name\": \"fajriyan\", \"email\": \"fajriyan@fajriyan.com\", \"phone\": \"fajriyan\", \"job_date\": \"2024-10-25\", \"job_name\": \"fajriyan\", \"job_role\": \"full-time\", \"job_salary\": \"3.500.000\", \"job_division\": \"fotografer-profesional\", \"job_location\": \"gresik\", \"job_position\": \"hybrid\", \"link_linkedin\": \"https://fajriyan.com\"}','2024-10-24 19:49:59.000000','2024-10-24 19:49:59.000000'),(3838931.0000,'career_form','{\"name\": \"Kevyn Christian\", \"email\": \"ligyko@mailinator.com\", \"phone\": \"+1 (391) 916-7645\", \"job_date\": \"2024-10-24\", \"job_name\": \"Kevyn Christian\", \"job_role\": \"full-time\", \"job_salary\": \"3.500.000\", \"job_division\": \"fotografer-profesional\", \"job_location\": \"gresik\", \"job_position\": \"hybrid\", \"link_linkedin\": \"https://www.tyracy.co.uk\"}','2024-10-24 07:48:18.000000','2024-10-24 07:48:18.000000'),(4004288.0000,'career_form','{\"name\": \"Leila Hunter\", \"email\": \"kuxomon@mailinator.com\", \"phone\": \"+1 (503) 635-2057\", \"job_date\": \"2024-10-24\", \"job_name\": \"Leila Hunter\", \"job_role\": \"full-time\", \"job_salary\": \"3.500.000\", \"job_division\": \"fotografer-profesional\", \"job_location\": \"gresik\", \"job_position\": \"hybrid\", \"link_linkedin\": \"https://www.gagimaci.cc\"}','2024-10-24 07:52:18.000000','2024-10-24 07:52:18.000000'),(5384480.0000,'career_form','{\"name\": \"Ivor Mcdowell\", \"email\": \"fasucetud@mailinator.com\", \"phone\": \"+1 (276) 614-4502\", \"job_date\": \"2024-10-24\", \"job_name\": \"Ivor Mcdowell\", \"job_role\": \"full-time\", \"job_salary\": \"3.500.000\", \"job_division\": \"fotografer-profesional\", \"job_location\": \"malang\", \"job_position\": \"on-site\", \"link_linkedin\": \"https://www.xodewelyzoci.me.uk\"}','2024-10-24 07:45:11.000000','2024-10-24 07:45:11.000000'),(5837556.0000,'career_form','{\"name\": \"fajriyan\", \"email\": \"fajriyan@fajriyan.com\", \"phone\": \"018231983\", \"job_date\": \"2024-10-24\", \"job_name\": \"fajriyan\", \"job_role\": \"full-time\", \"job_salary\": \"3.500.000\", \"job_division\": \"fotografer-profesional\", \"job_location\": \"malang\", \"job_position\": \"on-site\", \"link_linkedin\": \"http://127.0.0.1:8000/karir/fotografer-profesional-secondary/apply\"}','2024-10-24 07:43:12.000000','2024-10-24 07:43:12.000000'),(6938397.0000,'career_form','{\"name\": \"Xyla Blackwell\", \"email\": \"kawu@mailinator.com\", \"phone\": \"+1 (226) 789-8272\", \"job_date\": \"2024-10-24\", \"job_name\": \"Xyla Blackwell\", \"job_role\": \"full-time\", \"job_salary\": \"3.500.000\", \"job_division\": \"fotografer-profesional\", \"job_location\": \"malang\", \"job_position\": \"on-site\", \"link_linkedin\": \"https://www.xuqyvapeza.co.uk\"}','2024-10-24 07:44:51.000000','2024-10-24 07:44:51.000000'),(7873782.0000,'career_form','{\"name\": \"fajriyan\", \"email\": \"fajriyan@fajriyan.com\", \"phone\": \"309182391\", \"job_date\": \"2024-10-28\", \"job_name\": \"fajriyan\", \"job_role\": \"full-time\", \"job_salary\": \"3.500.000\", \"job_division\": \"fotografer-profesional\", \"job_location\": \"gresik\", \"job_position\": \"hybrid\", \"link_linkedin\": \"http://127.0.0.1:8000/karir/fotografer-profesional/apply\"}','2024-10-28 07:14:19.000000','2024-10-28 07:14:19.000000'),(9340098.0000,'career_form','{\"name\": \"Colette Mcbride\", \"email\": \"kuwawedu@mailinator.com\", \"phone\": \"+1 (327) 217-9051\", \"job_date\": \"2024-10-24\", \"job_name\": \"Colette Mcbride\", \"job_role\": \"full-time\", \"job_salary\": \"3.500.000\", \"job_division\": \"fotografer-profesional\", \"job_location\": \"gresik\", \"job_position\": \"hybrid\", \"link_linkedin\": \"https://www.tesurywobytohu.co.uk\"}','2024-10-24 07:53:00.000000','2024-10-24 07:53:00.000000'),(1729752407.1170,'career_form','{\"job\": \"Developer\", \"halo\": \"halo\", \"name\": \"cek\", \"email\": \"cek@cek.com\", \"phone\": \"cek\", \"link_linkedin\": \"http://127.0.0.1:8000/karir/fotografer-profesional\", \"career_division\": \"cek\"}','2024-10-23 23:46:47.102840','2024-10-23 23:46:47.117168');
/*!40000 ALTER TABLE `form_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forms_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms`
--

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
INSERT INTO `forms` VALUES (1,'career_form','Career Form','{\"data\": [], \"email\": null, \"store\": true, \"honeypot\": \"honeypot\"}','2024-10-23 23:41:26','2024-10-23 23:41:26');
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_set_variables`
--

DROP TABLE IF EXISTS `global_set_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_set_variables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `global_set_variables_handle_index` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_set_variables`
--

LOCK TABLES `global_set_variables` WRITE;
/*!40000 ALTER TABLE `global_set_variables` DISABLE KEYS */;
INSERT INTO `global_set_variables` VALUES (1,'cta_001','default',NULL,'[]','2024-10-22 20:26:17','2024-10-22 20:26:17'),(2,'navbar','default',NULL,'{\"menu\": [{\"id\": \"m2lwmrvq\", \"link\": \"entry::dbf610c8-0809-47f2-b43c-0c3a164d95ee\", \"title\": \"Beranda\"}, {\"id\": \"m2lwmwqc\", \"link\": \"entry::635d8149-c281-40ed-8d01-34d014ebd3f1\", \"title\": \"Booking\"}, {\"id\": \"m2lz7cpg\", \"link\": \"entry::d732d6d8-dd16-4ccd-9190-829702860879\", \"title\": \"Karir\"}]}','2024-10-23 06:21:35','2024-10-23 21:21:16');
/*!40000 ALTER TABLE `global_set_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_sets`
--

DROP TABLE IF EXISTS `global_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `global_sets_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_sets`
--

LOCK TABLES `global_sets` WRITE;
/*!40000 ALTER TABLE `global_sets` DISABLE KEYS */;
INSERT INTO `global_sets` VALUES (1,'cta_001','CTA - 001','[]','2024-10-22 20:26:17','2024-10-22 20:26:17'),(2,'navbar','Navbar','[]','2024-10-23 06:21:34','2024-10-23 06:21:34');
/*!40000 ALTER TABLE `global_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_user`
--

DROP TABLE IF EXISTS `group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_user`
--

LOCK TABLES `group_user` WRITE;
/*!40000 ALTER TABLE `group_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_03_07_100000_create_asset_table',2),(5,'2024_03_07_100000_create_blueprints_table',3),(6,'2024_03_07_100000_create_collections_table',4),(7,'2024_03_07_100000_create_navigation_trees_table',5),(8,'2024_03_07_100000_create_entries_table_with_string_ids',6),(9,'2024_03_07_100000_create_fieldsets_table',7),(10,'2024_03_07_100000_create_forms_table',8),(11,'2024_03_07_100000_create_form_submissions_table',9),(12,'2024_05_15_100000_modify_form_submissions_id',9),(13,'2024_03_07_100000_create_globals_table',10),(14,'2024_03_07_100000_create_global_variables_table',11),(15,'2024_03_07_100000_create_navigations_table',12),(16,'2024_07_16_100000_create_sites_table',13),(17,'2024_03_07_100000_create_taxonomies_table',14),(18,'2024_03_07_100000_create_terms_table',15),(19,'2024_03_07_100000_create_tokens_table',16),(20,'2024_03_07_100000_create_asset_containers_table',17),(24,'2024_10_28_030523_create_bookings_table',18),(25,'2025_01_15_112550_statamic_auth_tables',19),(26,'2025_07_03_add_order_to_sites_table',20),(27,'2025_07_15_082419_add_index_to_date_on_entries_table',20),(28,'2025_09_23_085020_create_sitemaps_table',21);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigations`
--

DROP TABLE IF EXISTS `navigations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navigations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `navigations_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigations`
--

LOCK TABLES `navigations` WRITE;
/*!40000 ALTER TABLE `navigations` DISABLE KEYS */;
/*!40000 ALTER TABLE `navigations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_activation_tokens`
--

DROP TABLE IF EXISTS `password_activation_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_activation_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_activation_tokens_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_activation_tokens`
--

LOCK TABLES `password_activation_tokens` WRITE;
/*!40000 ALTER TABLE `password_activation_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_activation_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitemaps`
--

DROP TABLE IF EXISTS `sitemaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sitemaps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `collection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `changefreq` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'weekly',
  `priority` decimal(2,1) NOT NULL DEFAULT '0.5',
  `lastmod` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitemaps`
--

LOCK TABLES `sitemaps` WRITE;
/*!40000 ALTER TABLE `sitemaps` DISABLE KEYS */;
INSERT INTO `sitemaps` VALUES (1,'pages','/booking','weekly',0.8,'2024-10-23 06:16:39',1,'2025-09-23 02:15:17','2025-09-23 02:15:17'),(2,'career','/karir/fotografer-profesional','weekly',0.8,'2024-10-24 07:28:38',1,'2025-09-23 02:15:17','2025-09-23 02:15:17'),(3,'career','/karir/fotografer-profesional-secondary','weekly',0.8,'2025-07-29 02:55:11',1,'2025-09-23 02:15:17','2025-09-23 02:15:17'),(4,'pages','/karir','weekly',0.8,'2024-10-23 20:29:09',1,'2025-09-23 02:15:17','2025-09-23 02:15:17'),(5,'pages','/','weekly',0.8,'2025-07-15 01:39:45',1,'2025-09-23 02:15:17','2025-09-23 02:15:17'),(6,'pages','/dynamic-content','weekly',0.8,'2025-07-15 02:32:00',1,'2025-09-23 02:15:17','2025-09-23 02:15:17');
/*!40000 ALTER TABLE `sitemaps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sites` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` json NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sites_handle_unique` (`handle`),
  KEY `sites_order_index` (`order`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,'default','{{ config:app:name }}','/','en_US','','[]',1,'2024-10-22 20:01:31','2025-07-15 01:24:28');
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomies`
--

DROP TABLE IF EXISTS `taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sites` json DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taxonomies_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomies`
--

LOCK TABLES `taxonomies` WRITE;
/*!40000 ALTER TABLE `taxonomies` DISABLE KEYS */;
INSERT INTO `taxonomies` VALUES (1,'career_location','Career Location','[\"default\"]','{\"layout\": null, \"template\": null, \"revisions\": false, \"term_template\": null, \"preview_targets\": [{\"label\": \"Term\", \"format\": \"{permalink}\", \"refresh\": true}]}','2024-10-23 07:10:52','2024-10-23 07:10:52'),(2,'career_role','Career Role','[\"default\"]','{\"layout\": null, \"template\": null, \"revisions\": false, \"term_template\": null, \"preview_targets\": [{\"label\": \"Term\", \"format\": \"{permalink}\", \"refresh\": true}]}','2024-10-23 07:13:07','2024-10-23 07:13:07'),(3,'career_division','Career Division','[\"default\"]','{\"layout\": null, \"template\": null, \"revisions\": false, \"term_template\": null, \"preview_targets\": [{\"label\": \"Term\", \"format\": \"{permalink}\", \"refresh\": true}]}','2024-10-23 07:14:55','2024-10-23 07:14:55'),(4,'career_position','Career Position','[\"default\"]','{\"layout\": null, \"template\": null, \"revisions\": false, \"term_template\": null, \"preview_targets\": [{\"label\": \"Term\", \"format\": \"{permalink}\", \"refresh\": true}]}','2024-10-23 07:16:26','2024-10-23 07:16:26');
/*!40000 ALTER TABLE `taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_terms`
--

DROP TABLE IF EXISTS `taxonomy_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_terms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxonomy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taxonomy_terms_slug_taxonomy_site_unique` (`slug`,`taxonomy`,`site`),
  KEY `taxonomy_terms_site_index` (`site`),
  KEY `taxonomy_terms_uri_index` (`uri`),
  KEY `taxonomy_terms_taxonomy_index` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_terms`
--

LOCK TABLES `taxonomy_terms` WRITE;
/*!40000 ALTER TABLE `taxonomy_terms` DISABLE KEYS */;
INSERT INTO `taxonomy_terms` VALUES (1,'default','fotografer-profesional','/career-division/fotografer-profesional','career_division','{\"title\": \"Fotografer Profesional\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"blueprint\": \"career_division\", \"updated_at\": 1729693071, \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\"}','2024-10-23 07:17:51','2024-10-23 07:17:51'),(2,'default','editor-foto','/career-division/editor-foto','career_division','{\"title\": \"Editor Foto\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"blueprint\": \"career_division\", \"updated_at\": 1729693087, \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\"}','2024-10-23 07:18:07','2024-10-23 07:18:07'),(3,'default','staf-pemasaran-digital','/career-division/staf-pemasaran-digital','career_division','{\"title\": \"Staf Pemasaran Digital\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"blueprint\": \"career_division\", \"updated_at\": 1729693101, \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\"}','2024-10-23 07:18:21','2024-10-23 07:18:21'),(4,'default','asisten-studio','/career-division/asisten-studio','career_division','{\"title\": \"Asisten Studio\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"blueprint\": \"career_division\", \"updated_at\": 1729693114, \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\"}','2024-10-23 07:18:34','2024-10-23 07:18:34'),(5,'default','malang','/career-location/malang','career_location','{\"title\": \"Malang\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"blueprint\": \"career_location\", \"updated_at\": 1729693126, \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\"}','2024-10-23 07:18:46','2024-10-23 07:18:46'),(6,'default','surabaya','/career-location/surabaya','career_location','{\"title\": \"Surabaya\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"blueprint\": \"career_location\", \"updated_at\": 1729693135, \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\"}','2024-10-23 07:18:55','2024-10-23 07:18:55'),(7,'default','jakarta','/career-location/jakarta','career_location','{\"title\": \"Jakarta\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"blueprint\": \"career_location\", \"updated_at\": 1729693143, \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\"}','2024-10-23 07:19:03','2024-10-23 07:19:03'),(8,'default','gresik','/career-location/gresik','career_location','{\"title\": \"Gresik\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"blueprint\": \"career_location\", \"updated_at\": 1729693151, \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\"}','2024-10-23 07:19:11','2024-10-23 07:19:11'),(9,'default','semarang','/career-location/semarang','career_location','{\"title\": \"Semarang\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"blueprint\": \"career_location\", \"updated_at\": 1729693166, \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\"}','2024-10-23 07:19:26','2024-10-23 07:19:26'),(11,'default','on-site','/career-position/on-site','career_position','{\"title\": \"On Site\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"blueprint\": \"career_position\", \"updated_at\": 1729693190, \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\"}','2024-10-23 07:19:50','2024-10-23 07:19:50'),(12,'default','wfh','/career-position/wfh','career_position','{\"title\": \"WFH\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"blueprint\": \"career_position\", \"updated_at\": 1729693202, \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\"}','2024-10-23 07:20:02','2024-10-23 07:20:02'),(13,'default','hybrid','/career-position/hybrid','career_position','{\"title\": \"Hybrid\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"blueprint\": \"career_position\", \"updated_at\": 1729693212, \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\"}','2024-10-23 07:20:12','2024-10-23 07:20:12'),(14,'default','full-time','/career-role/full-time','career_role','{\"title\": \"Full Time\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"blueprint\": \"career_role\", \"updated_at\": 1729693256, \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\"}','2024-10-23 07:20:56','2024-10-23 07:20:56'),(15,'default','freelance','/career-role/freelance','career_role','{\"title\": \"Freelance\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"blueprint\": \"career_role\", \"updated_at\": 1729693266, \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\"}','2024-10-23 07:21:06','2024-10-23 07:21:06'),(16,'default','intern','/career-role/intern','career_role','{\"title\": \"Intern\", \"author\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\", \"blueprint\": \"career_role\", \"updated_at\": 1729693278, \"updated_by\": \"549da6d9-c349-45af-81c7-ba37f59d64b2\"}','2024-10-23 07:21:18','2024-10-23 07:21:18');
/*!40000 ALTER TABLE `taxonomy_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `expire_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_token_unique` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (1,'miPMUm8mtDNumXxsghjx3kvnaNmVZKY7TUMyl7DQ','Statamic\\Tokens\\Handlers\\LivePreview','[]','2025-08-15 02:43:09','2025-08-15 01:43:04','2025-08-15 01:43:09'),(2,'yBQsubxMqvLIab9K40vOBx3it2MOAsjbsafcA1Ml','Statamic\\Tokens\\Handlers\\LivePreview','[]','2025-08-15 02:45:52','2025-08-15 01:45:52','2025-08-15 01:45:52'),(3,'NEdelJPlT3DY4BiLlg6tT2k4HunOtgvKlA0AeVE0','Statamic\\Tokens\\Handlers\\LivePreview','[]','2025-08-15 02:47:44','2025-08-15 01:47:25','2025-08-15 01:47:44');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trees`
--

DROP TABLE IF EXISTS `trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tree` json DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trees_handle_type_locale_unique` (`handle`,`type`,`locale`),
  KEY `trees_type_index` (`type`),
  KEY `trees_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trees`
--

LOCK TABLES `trees` WRITE;
/*!40000 ALTER TABLE `trees` DISABLE KEYS */;
INSERT INTO `trees` VALUES (1,'pages','collection','default','[{\"entry\": \"dbf610c8-0809-47f2-b43c-0c3a164d95ee\"}, {\"entry\": \"635d8149-c281-40ed-8d01-34d014ebd3f1\"}, {\"entry\": \"d732d6d8-dd16-4ccd-9190-829702860879\"}, {\"entry\": \"eacbb13b-194b-431f-9eab-ade646216f49\"}]','[]','2024-10-17 08:30:39','2025-06-03 07:35:29');
/*!40000 ALTER TABLE `trees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `super` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferences` json DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('9ed8b2a1-a0ec-413c-93fe-78c8b14d0524','fajriyan','fajriyan@fajriyan.com',NULL,'$2y$12$qPB0CgvI8iLjwzZbYUCYiOFKE7IHYyb.nL5csp2glNWxcQWP0ndAK',NULL,'2025-05-06 12:44:30','2025-09-23 02:25:41',1,NULL,'{\"nav\": {\"reorder\": [\"content\", \"cms_general\", \"tools\", \"components\"], \"sections\": {\"tools\": {\"tools::updates\": \"@hide\", \"tools::utilities\": \"@hide\"}, \"fields\": \"@hide\", \"content\": {\"items\": {\"content::assets\": \"@hide\", \"content::navigation\": \"@hide\", \"content::collections\": \"@hide\"}, \"reorder\": [\"content::collections\", \"content::assets\", \"content::navigation\"]}, \"components\": {\"items\": {\"content::globals\": \"@move\", \"content::taxonomies\": \"@move\"}, \"action\": \"@create\", \"display\": \"Components\"}, \"cms_general\": {\"items\": {\"tools::alt_redirect\": {\"action\": \"@move\", \"display\": \"Manage Redirect\"}, \"content::assets::assets\": {\"action\": \"@move\", \"display\": \"Media Library\"}, \"cms_general::manage_booking\": {\"url\": \"booking\", \"icon\": \"blueprints\", \"action\": \"@create\", \"display\": \"Manage Booking\"}, \"cms_general::manage_sitemap\": {\"url\": \"management-sitemap\", \"icon\": \"hierarchy-files\", \"action\": \"@create\", \"display\": \"Manage Sitemap\"}, \"content::collections::pages\": {\"action\": \"@move\", \"display\": \"Manage Pages\"}, \"content::collections::career\": {\"action\": \"@move\", \"display\": \"Manage Career\"}}, \"action\": \"@create\", \"display\": \"CMS General\"}}}, \"forms\": {\"career_form\": {\"columns\": [\"name\", \"email\", \"phone\", \"datestamp\"]}}, \"theme\": \"light\", \"assets\": {\"assets\": {\"mode\": \"grid\"}}, \"locale\": \"en\", \"favorites\": [], \"collections\": {\"career\": {\"columns\": [\"title\", \"slug\", \"career_role\", \"date\", \"status\"], \"after_save\": \"continue_editing\"}}}','2025-09-23 01:43:37');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'boxcms'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-23  9:27:10
