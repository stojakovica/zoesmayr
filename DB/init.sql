-- MySQL dump 10.13  Distrib 5.5.35, for CYGWIN (x86_64)
--
-- Host: localhost    Database: stablalm
-- ------------------------------------------------------
-- Server version	5.5.29
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `stablalm`
--

/*!40000 DROP DATABASE IF EXISTS `stablalm`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `zoesmayr` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zoesmayr`;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `date` date NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--


--
-- Table structure for table `guestbook`
--

DROP TABLE IF EXISTS `guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `homepage` text NOT NULL,
  `origin` text NOT NULL,
  `from` text NOT NULL,
  `comment` text NOT NULL,
  `status` text NOT NULL,
  `fromOrigin` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestbook`
--


--
-- Table structure for table `rex_587_keywords`
--

DROP TABLE IF EXISTS `rex_587_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_587_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `soundex` varchar(255) NOT NULL,
  `metaphone` varchar(255) NOT NULL,
  `colognephone` varchar(255) NOT NULL,
  `clang` int(11) NOT NULL DEFAULT '-1',
  `count` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`,`clang`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_587_keywords`
--

INSERT INTO `rex_587_keywords` VALUES (1,'Elmen','E455','ELMN','566',0,1),(2,'Stablalm','S314','STBLLM','821556',0,1),(3,'Stablparkplatz','S314','STBLPRKPLTS','8215174158',0,1),(4,'Edelbach','E341','ETLBX','2514',0,1),(5,'zweigt','Z230','SWKT','8342',0,1),(6,'kurze','K620','KRS','478',0,1),(7,'steilere','S346','STLR','8257',0,1),(8,'Alm','A450','ALM','56',0,1),(9,'Minuten','M535','MNTN','6626',0,1),(10,'erreicht','E623','ERXT','742',0,1),(11,'l�ngeren','L526','LNJRN','56476',0,1),(12,'bequemeren','B256','BKMRN','14676',0,1),(13,'G�terweg','G362','KTRWK','42734',0,1),(14,'w�hlen','W450','LN','356',0,1),(15,'ben�tigen','B532','BNTJN','16246',0,1),(16,'Stunden','S353','STNTN','82626',0,1),(17,'wandert','W536','WNTRT','36272',0,1),(18,'Weiderost','W362','WTRST','32782',0,1),(19,'Wald','W430','WLT','352',0,1),(20,'Abk�rzung','A126','ABKRSNK','147864',0,1),(21,'einm�ndet','E533','ENMNTT','6622',0,1),(22,'weitergeht','W362','WTRJT','32742',0,1),(23,'n�chsten','N223','NXSTN','64826',0,1),(24,'Abzweigung','A122','ABSWKNK','183464',0,1),(25,'rechten','R235','RXTN','7426',0,1),(26,'folgen','F425','FLJN','3546',0,1),(27,'f�hrt','F630','FRT','372',0,1),(28,'Wanderweg','W536','WNTRWK','362734',0,1),(29,'Neerengrad','N652','NRNKRT','676472',0,1),(30,'Oberen','O165','OBRN','176',0,1),(31,'Gehzeit','G230','JST','482',0,1),(32,'Kehren','K650','KRN','476',0,1),(33,'linken','L525','LNKN','5646',0,1),(34,'Almh�tte','A453','ALMT','562',0,1),(35,'angelegt','A524','ANJLKT','64542',0,1),(36,'Elmer','E456','ELMR','567',0,1),(37,'Kreuzspitze','K621','KRSSPTS','47818',0,1),(38,'480','0000','','',0,1);

--
-- Table structure for table `rex_587_searchcache`
--

DROP TABLE IF EXISTS `rex_587_searchcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_587_searchcache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` char(32) NOT NULL,
  `returnarray` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_587_searchcache`
--


--
-- Table structure for table `rex_587_searchcacheindex_ids`
--

DROP TABLE IF EXISTS `rex_587_searchcacheindex_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_587_searchcacheindex_ids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_id` int(11) DEFAULT NULL,
  `cache_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_587_searchcacheindex_ids`
--


--
-- Table structure for table `rex_587_searchindex`
--

DROP TABLE IF EXISTS `rex_587_searchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_587_searchindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` varchar(255) DEFAULT NULL,
  `catid` int(11) DEFAULT NULL,
  `ftable` varchar(255) DEFAULT NULL,
  `fcolumn` varchar(255) DEFAULT NULL,
  `texttype` varchar(255) NOT NULL,
  `clang` int(11) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `fileext` varchar(255) DEFAULT NULL,
  `plaintext` longtext NOT NULL,
  `unchangedtext` longtext NOT NULL,
  `teaser` longtext NOT NULL,
  `values` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  FULLTEXT KEY `plaintext` (`plaintext`),
  FULLTEXT KEY `unchangedtext` (`unchangedtext`),
  FULLTEXT KEY `plaintext_2` (`plaintext`,`unchangedtext`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_587_searchindex`
--

INSERT INTO `rex_587_searchindex` VALUES (1,'2',2,'rex_article',NULL,'article',0,NULL,NULL,'','',' ',''),(2,'3',3,'rex_article',NULL,'article',0,NULL,NULL,'','',' ',''),(3,'4',4,'rex_article',NULL,'article',0,NULL,NULL,'','',' ',''),(7,'5',5,'rex_article',NULL,'article',0,NULL,NULL,'Von Elmen zur Stablalm \n Vom Stablparkplatz am Edelbach zweigt rechts der kurze, aber steilere Weg zur Alm ab, die man in 45 bis 60 Minuten erreicht. Wenn Sie den l�ngeren aber bequemeren G�terweg w�hlen, dann ben�tigen Sie 1 1/2 bis 2 Stunden. Man wandert dem G�terweg nach �ber den Weiderost und durch den Wald. Nach dem Wald zweigt rechts eine Abk�rzung ab, die weiter oben wieder in den G�terweg einm�ndet. Wer weitergeht, muss an der n�chsten Abzweigung dem rechten Weg folgen. Von hier f�hrt ein Wanderweg �ber den Neerengrad zur Oberen Stablalm Gehzeit ca. 3 Stunden. Nach 2 weiteren Kehren ist an der linken Seite eine Abk�rzung zur Almh�tte angelegt. Elmer Kreuzspitze (2.480 m)','<h2>Von Elmen zur Stablalm</h2>\n<p>Vom Stablparkplatz am Edelbach zweigt rechts der kurze, aber steilere Weg zur Alm ab, die man in 45 bis 60 Minuten erreicht. Wenn Sie den l�ngeren aber bequemeren G�terweg w�hlen, dann ben�tigen Sie 1 1/2 bis 2 Stunden. Man wandert dem G�terweg nach �ber den Weiderost und durch den Wald. Nach dem Wald zweigt rechts eine Abk�rzung ab, die weiter oben wieder in den G�terweg einm�ndet. Wer weitergeht, muss an der n�chsten Abzweigung dem rechten Weg folgen. Von hier f�hrt ein Wanderweg �ber den Neerengrad zur Oberen Stablalm Gehzeit ca. 3 Stunden. Nach 2 weiteren Kehren ist an der linken Seite eine Abk�rzung zur Almh�tte angelegt. </p><h2>Elmer Kreuzspitze (2.480 m)</h2>\n','Von Elmen zur Stablalm Vom Stablparkplatz am Edelbach zweigt rechts der kurze, aber steilere Weg zur Alm ab, die man in 45 bis 60 Minuten erreicht. Wenn Sie den l�ngeren aber bequemeren G�terweg �',''),(5,'6',6,'rex_article',NULL,'article',0,NULL,NULL,'','',' ',''),(6,'7',7,'rex_article',NULL,'article',0,NULL,NULL,'','',' ','');

--
-- Table structure for table `rex_62_params`
--

DROP TABLE IF EXISTS `rex_62_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_62_params` (
  `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `prior` int(10) unsigned NOT NULL,
  `attributes` text NOT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  `default` varchar(255) NOT NULL,
  `params` text,
  `validate` text,
  `restrictions` text NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` int(11) NOT NULL,
  PRIMARY KEY (`field_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_62_params`
--

INSERT INTO `rex_62_params` VALUES (1,'translate:pool_file_description','med_description',3,'',2,'','','','','%USER%',1412601253,'%USER%',1412601253),(2,'translate:pool_file_copyright','med_copyright',4,'',1,'','','','','%USER%',1412601253,'%USER%',1412601253),(3,'translate:online_from','art_online_from',4,'',10,'','','','','%USER%',1412601253,'%USER%',1412601253),(4,'translate:online_to','art_online_to',5,'',10,'','','','','%USER%',1412601253,'%USER%',1412601253),(5,'translate:description','art_description',6,'',2,'','','','','%USER%',1412601253,'%USER%',1412601253),(6,'translate:keywords','art_keywords',7,'',2,'','','','','%USER%',1412601253,'%USER%',1412601253),(7,'translate:metadata_image','art_file',8,'',6,'','','','','%USER%',1412601253,'%USER%',1412601253),(8,'translate:teaser','art_teaser',9,'',5,'','','','','%USER%',1412601253,'%USER%',1412601253),(9,'translate:header_article_type','art_type_id',10,'size=1',3,'','Standard|Zugriff fuer alle','','','%USER%',1412601253,'%USER%',1412601253),(10,'Teaser Bild','art_teaser_image',2,'',6,'','',NULL,'','root',1412609937,'root',1412609937),(11,'Teaser Text','art_teaser_text',3,'',2,'','',NULL,'','root',1412609951,'root',1412609951),(12,'Header Bilder','art_header_images',1,'',7,'','',NULL,'','root',1425389293,'root',1425389293),(13,'X-Koordinate','med_focus_x',1,'',1,'','',NULL,'','root',1425389363,'root',1425389363),(14,'Y-Koordinate','med_focus_y',2,'',1,'','',NULL,'','root',1425389424,'root',1425389424);

--
-- Table structure for table `rex_62_type`
--

DROP TABLE IF EXISTS `rex_62_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_62_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `dbtype` varchar(255) NOT NULL,
  `dblength` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_62_type`
--

INSERT INTO `rex_62_type` VALUES (1,'text','text',0),(2,'textarea','text',0),(3,'select','varchar',255),(4,'radio','varchar',255),(5,'checkbox','varchar',255),(10,'date','text',0),(13,'time','text',0),(11,'datetime','text',0),(12,'legend','text',0),(6,'REX_MEDIA_BUTTON','varchar',255),(7,'REX_MEDIALIST_BUTTON','text',0),(8,'REX_LINK_BUTTON','varchar',255),(9,'REX_LINKLIST_BUTTON','text',0);

--
-- Table structure for table `rex_679_type_effects`
--

DROP TABLE IF EXISTS `rex_679_type_effects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_679_type_effects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `effect` varchar(255) NOT NULL,
  `parameters` text NOT NULL,
  `prior` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_679_type_effects`
--

INSERT INTO `rex_679_type_effects` VALUES (1,1,'resize','a:6:{s:15:\"rex_effect_crop\";a:5:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:24:\"rex_effect_crop_position\";s:13:\"middle_center\";}s:22:\"rex_effect_filter_blur\";a:3:{s:29:\"rex_effect_filter_blur_amount\";s:2:\"80\";s:29:\"rex_effect_filter_blur_radius\";s:1:\"8\";s:32:\"rex_effect_filter_blur_threshold\";s:1:\"3\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:5:\"right\";s:28:\"rex_effect_insert_image_vpos\";s:6:\"bottom\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:3:\"200\";s:24:\"rex_effect_resize_height\";s:3:\"200\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}}',1,1412601253,'%USER%',1412601253,'%USER%'),(2,2,'resize','a:6:{s:15:\"rex_effect_crop\";a:5:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:24:\"rex_effect_crop_position\";s:13:\"middle_center\";}s:22:\"rex_effect_filter_blur\";a:3:{s:29:\"rex_effect_filter_blur_amount\";s:2:\"80\";s:29:\"rex_effect_filter_blur_radius\";s:1:\"8\";s:32:\"rex_effect_filter_blur_threshold\";s:1:\"3\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:5:\"right\";s:28:\"rex_effect_insert_image_vpos\";s:6:\"bottom\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:3:\"600\";s:24:\"rex_effect_resize_height\";s:3:\"600\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}}',1,1412601253,'%USER%',1412601253,'%USER%'),(3,3,'resize','a:6:{s:15:\"rex_effect_crop\";a:5:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:24:\"rex_effect_crop_position\";s:13:\"middle_center\";}s:22:\"rex_effect_filter_blur\";a:3:{s:29:\"rex_effect_filter_blur_amount\";s:2:\"80\";s:29:\"rex_effect_filter_blur_radius\";s:1:\"8\";s:32:\"rex_effect_filter_blur_threshold\";s:1:\"3\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:5:\"right\";s:28:\"rex_effect_insert_image_vpos\";s:6:\"bottom\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:2:\"80\";s:24:\"rex_effect_resize_height\";s:2:\"80\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}}',1,1412601253,'%USER%',1412601253,'%USER%'),(4,4,'resize','a:6:{s:15:\"rex_effect_crop\";a:5:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:24:\"rex_effect_crop_position\";s:13:\"middle_center\";}s:22:\"rex_effect_filter_blur\";a:3:{s:29:\"rex_effect_filter_blur_amount\";s:2:\"80\";s:29:\"rex_effect_filter_blur_radius\";s:1:\"8\";s:32:\"rex_effect_filter_blur_threshold\";s:1:\"3\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:5:\"right\";s:28:\"rex_effect_insert_image_vpos\";s:6:\"bottom\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:3:\"246\";s:24:\"rex_effect_resize_height\";s:3:\"246\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}}',1,1412601253,'%USER%',1412601253,'%USER%'),(5,5,'resize','a:6:{s:15:\"rex_effect_crop\";a:5:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:24:\"rex_effect_crop_position\";s:13:\"middle_center\";}s:22:\"rex_effect_filter_blur\";a:3:{s:29:\"rex_effect_filter_blur_amount\";s:2:\"80\";s:29:\"rex_effect_filter_blur_radius\";s:1:\"8\";s:32:\"rex_effect_filter_blur_threshold\";s:1:\"3\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:5:\"right\";s:28:\"rex_effect_insert_image_vpos\";s:6:\"bottom\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:3:\"246\";s:24:\"rex_effect_resize_height\";s:3:\"246\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}}',1,1412601253,'%USER%',1412601253,'%USER%');

--
-- Table structure for table `rex_679_types`
--

DROP TABLE IF EXISTS `rex_679_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_679_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_679_types`
--

INSERT INTO `rex_679_types` VALUES (1,1,'rex_mediapool_detail','Zur Darstellung von Bildern in der Detailansicht im Medienpool'),(2,1,'rex_mediapool_maximized','Zur Darstellung von Bildern im Medienpool wenn maximiert'),(3,1,'rex_mediapool_preview','Zur Darstellung der Vorschaubilder im Medienpool'),(4,1,'rex_mediabutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIA_BUTTON[]s'),(5,1,'rex_medialistbutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIALIST_BUTTON[]s'),(6,0,'bootstrap-4',''),(7,0,'bootstrap-6',''),(8,0,'bootstrap-12',''),(9,0,'lightbox','');

--
-- Table structure for table `rex_action`
--

DROP TABLE IF EXISTS `rex_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `preview` text,
  `presave` text,
  `postsave` text,
  `previewmode` tinyint(4) DEFAULT NULL,
  `presavemode` tinyint(4) DEFAULT NULL,
  `postsavemode` tinyint(4) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_action`
--


--
-- Table structure for table `rex_article`
--

DROP TABLE IF EXISTS `rex_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_article` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `re_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `catprior` int(11) NOT NULL,
  `attributes` text NOT NULL,
  `startpage` tinyint(1) NOT NULL,
  `prior` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `clang` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  `art_online_from` text,
  `art_online_to` text,
  `art_description` text,
  `art_keywords` text,
  `art_file` varchar(255) DEFAULT '',
  `art_teaser` varchar(255) DEFAULT '',
  `art_type_id` varchar(255) DEFAULT '',
  `seo_title` text,
  `seo_description` text,
  `seo_keywords` text,
  `seo_custom_url` text,
  `seo_canonical_url` text,
  `seo_noindex` varchar(1) DEFAULT NULL,
  `seo_ignore_prefix` varchar(1) DEFAULT NULL,
  `art_teaser_image` varchar(255) DEFAULT '',
  `art_teaser_text` text,
  `art_header_images` text,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `find_articles` (`id`,`clang`),
  KEY `id` (`id`),
  KEY `clang` (`clang`),
  KEY `re_id` (`re_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_article`
--

INSERT INTO `rex_article` VALUES (2,2,0,'Home','Home',1,'',1,1,'|',1,1425388677,1425390761,1,0,'root','root',0,'','','','','','||','Standard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','imgp0220.jpg,imgp0161.jpg,imgp0002.jpg'),(3,3,0,'Speisen / Getr�nke','Speisen / Getr�nke',2,'',1,1,'|',1,1425388679,1425388648,1,0,'root','root',0,NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL),(4,4,0,'Veranstaltungen','Veranstaltungen',3,'',1,1,'|',1,1425388681,1425388657,1,0,'root','root',0,NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL),(5,5,0,'Wanderungen','Wanderungen',4,'',1,1,'|',1,1425388683,1425391916,1,0,'root','root',0,NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL),(6,6,0,'G�stebuch','G�stebuch',5,'',1,1,'|',1,1425388685,1425394507,1,0,'root','root',0,NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL),(7,7,0,'Kontakt','Kontakt',6,'',1,1,'|',1,1425388687,1425388674,1,0,'root','root',0,NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL);

--
-- Table structure for table `rex_article_slice`
--

DROP TABLE IF EXISTS `rex_article_slice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_article_slice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clang` int(11) NOT NULL,
  `ctype` int(11) NOT NULL,
  `re_article_slice_id` int(11) NOT NULL,
  `value1` text,
  `value2` text,
  `value3` text,
  `value4` text,
  `value5` text,
  `value6` text,
  `value7` text,
  `value8` text,
  `value9` text,
  `value10` text,
  `value11` text,
  `value12` text,
  `value13` text,
  `value14` text,
  `value15` text,
  `value16` text,
  `value17` text,
  `value18` text,
  `value19` text,
  `value20` text,
  `file1` varchar(255) DEFAULT NULL,
  `file2` varchar(255) DEFAULT NULL,
  `file3` varchar(255) DEFAULT NULL,
  `file4` varchar(255) DEFAULT NULL,
  `file5` varchar(255) DEFAULT NULL,
  `file6` varchar(255) DEFAULT NULL,
  `file7` varchar(255) DEFAULT NULL,
  `file8` varchar(255) DEFAULT NULL,
  `file9` varchar(255) DEFAULT NULL,
  `file10` varchar(255) DEFAULT NULL,
  `filelist1` text,
  `filelist2` text,
  `filelist3` text,
  `filelist4` text,
  `filelist5` text,
  `filelist6` text,
  `filelist7` text,
  `filelist8` text,
  `filelist9` text,
  `filelist10` text,
  `link1` varchar(10) DEFAULT NULL,
  `link2` varchar(10) DEFAULT NULL,
  `link3` varchar(10) DEFAULT NULL,
  `link4` varchar(10) DEFAULT NULL,
  `link5` varchar(10) DEFAULT NULL,
  `link6` varchar(10) DEFAULT NULL,
  `link7` varchar(10) DEFAULT NULL,
  `link8` varchar(10) DEFAULT NULL,
  `link9` varchar(10) DEFAULT NULL,
  `link10` varchar(10) DEFAULT NULL,
  `linklist1` text,
  `linklist2` text,
  `linklist3` text,
  `linklist4` text,
  `linklist5` text,
  `linklist6` text,
  `linklist7` text,
  `linklist8` text,
  `linklist9` text,
  `linklist10` text,
  `php` text,
  `html` text,
  `article_id` int(11) NOT NULL,
  `modultyp_id` int(11) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `next_article_slice_id` int(11) DEFAULT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`,`re_article_slice_id`,`article_id`,`modultyp_id`),
  KEY `id` (`id`),
  KEY `clang` (`clang`),
  KEY `re_article_slice_id` (`re_article_slice_id`),
  KEY `article_id` (`article_id`),
  KEY `find_slices` (`clang`,`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_article_slice`
--

INSERT INTO `rex_article_slice` VALUES (3,0,1,10,'Von Elmen zur Stablalm','h2','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',5,1,1425391783,1425391819,'root','root',NULL,0),(4,0,1,3,'Vom Stablparkplatz am Edelbach zweigt rechts der kurze, aber steilere Weg zur Alm ab, die man in 45 bis 60 Minuten erreicht. Wenn Sie den l�ngeren aber bequemeren G�terweg w�hlen, dann ben�tigen Sie 1 1/2 bis 2 Stunden. Man wandert dem G�terweg nach �ber den Weiderost und durch den Wald. Nach dem Wald zweigt rechts eine Abk�rzung ab, die weiter oben wieder in den G�terweg einm�ndet. Wer weitergeht, muss an der n�chsten Abzweigung dem rechten Weg folgen. Von hier f�hrt ein Wanderweg �ber den Neerengrad zur Oberen Stablalm Gehzeit ca. 3 Stunden. Nach 2 weiteren Kehren ist an der linken Seite eine Abk�rzung zur Almh�tte angelegt. ','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',5,2,1425391797,1425391797,'root','root',NULL,0),(5,0,1,4,'Elmer Kreuzspitze (2.480 m)','h2','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',5,1,1425391813,1425391813,'root','root',NULL,0),(6,0,1,0,'Wandern','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',5,1,1425391825,1425391825,'root','root',NULL,0),(7,0,1,5,'Von der Stablalm k�nnen Ge�bte eine Bergtour in ca. 3 Stunden auf markiertem Weg auf die Elmer Kreuzspitze (2.480 m) unternehmen, von dort weiter �ber die Mittlere Kreuzspitze (2.496 m) und die Bschlabser Kreuzspitze (2.462 m) Richtung Egger Mutterkopf wandern, vor diesem dann bei der Bortigscharte (2.089 m) rechts hinunter nach Bschlabs (anstrengende Tagestour - Gesamtgehzeit 5 - 6 Stunden).','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',5,2,1425391837,1425391837,'root','root',NULL,0),(8,0,1,7,'Neerensteig zur Stablalm','h2','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',5,1,1425391854,1425391854,'root','root',NULL,0),(9,0,1,8,'Auf der Namloser Stra�e bis zur zweiten Kehre oberhalb der Stanzacher Felder, dann nach rechts auf dem Forstweg (Mooswaldweg) bis zum Wegweiser links von diesem Weg, der den Steig mit roter Farbe �ber den Neerengrad auf den Neerenkopf und von dort nach einem Abstieg �ber den \"Schwarzen Dreck\" zur Stablalm markiert. Vom Neerengrat prachtvolle Aussicht nach Vorderhornbach, Martinau, Hornbachtal mit Hochvogel, Wilder H�llh�rner, Hornbachjoch, Jochspitze und Kanzberg.','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',5,2,1425391864,1425391864,'root','root',NULL,0),(10,0,1,6,'','','','','','','','','','','','','','','','','','','','','text_wandern.jpg','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',5,5,1425391916,1425391916,'root','root',NULL,0),(11,0,1,12,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',6,16,1425393666,1425393666,'root','root',NULL,0),(12,0,1,0,'G�stebuch','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',6,1,1425394507,1425394507,'root','root',NULL,0);

--
-- Table structure for table `rex_clang`
--

DROP TABLE IF EXISTS `rex_clang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_clang` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_clang`
--

INSERT INTO `rex_clang` VALUES (0,'deutsch',0);

--
-- Table structure for table `rex_file`
--

DROP TABLE IF EXISTS `rex_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `re_file_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `attributes` text,
  `filetype` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `filesize` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  `med_description` text,
  `med_copyright` text,
  `med_focus_x` text,
  `med_focus_y` text,
  PRIMARY KEY (`file_id`),
  KEY `re_file_id` (`re_file_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_file`
--

INSERT INTO `rex_file` VALUES (4,0,0,NULL,'image/jpeg','018.jpg','018.jpg','115073',800,600,'',1425390666,1425390666,'root','root',0,NULL,NULL,NULL,NULL),(5,0,0,NULL,'image/jpeg','059.jpg','059.jpg','2480174',3648,2736,'',1425390671,1425390671,'root','root',0,NULL,NULL,NULL,NULL),(6,0,0,NULL,'image/jpeg','imgp0002.jpg','imgp0002.jpg','1670624',3072,2304,'',1425390672,1425390672,'root','root',0,NULL,NULL,NULL,NULL),(7,0,0,NULL,'image/jpeg','056.jpg','056.jpg','2559657',3648,2736,'',1425390673,1425390673,'root','root',0,NULL,NULL,NULL,NULL),(8,0,0,NULL,'image/jpeg','075.jpg','075.jpg','2835394',3648,2736,'',1425390675,1425390675,'root','root',0,NULL,NULL,NULL,NULL),(9,0,0,NULL,'image/jpeg','imgp0061.jpg','imgp0061.jpg','1726687',2304,3072,'',1425390676,1425390676,'root','root',0,NULL,NULL,NULL,NULL),(10,0,0,NULL,'image/jpeg','imgp0081.jpg','imgp0081.jpg','1751500',3072,2304,'',1425390677,1425390677,'root','root',0,NULL,NULL,NULL,NULL),(11,0,0,NULL,'image/jpeg','imgp0146.jpg','imgp0146.jpg','1720474',3072,2304,'',1425390678,1425390678,'root','root',0,NULL,NULL,NULL,NULL),(12,0,0,NULL,'image/jpeg','imgp0147.jpg','imgp0147.jpg','1660673',3072,2304,'',1425390679,1425390679,'root','root',0,NULL,NULL,NULL,NULL),(13,0,0,NULL,'image/jpeg','imgp0151.jpg','imgp0151.jpg','1582949',3072,2304,'',1425390681,1425390681,'root','root',0,NULL,NULL,NULL,NULL),(14,0,0,NULL,'image/jpeg','imgp0154.jpg','imgp0154.jpg','1724644',3072,2304,'',1425390682,1425390682,'root','root',0,NULL,NULL,NULL,NULL),(15,0,0,NULL,'image/jpeg','imgp0156.jpg','imgp0156.jpg','1692623',2304,3072,'',1425390683,1425390683,'root','root',0,NULL,NULL,NULL,NULL),(16,0,0,NULL,'image/jpeg','imgp0157.jpg','imgp0157.jpg','1657919',2304,3072,'',1425390684,1425390684,'root','root',0,NULL,NULL,NULL,NULL),(17,0,0,NULL,'image/jpeg','imgp0160.jpg','imgp0160.jpg','1705989',3072,2304,'',1425390685,1425390685,'root','root',0,NULL,NULL,NULL,NULL),(18,0,0,NULL,'image/jpeg','imgp0161.jpg','imgp0161.jpg','1710452',3072,2304,'',1425390687,1425390687,'root','root',0,NULL,NULL,NULL,NULL),(19,0,0,NULL,'image/jpeg','imgp0220.jpg','imgp0220.jpg','1649111',3072,2304,'',1425390688,1425390688,'root','root',0,NULL,NULL,NULL,NULL),(20,0,0,NULL,'image/jpeg','text_wandern.jpg','text_wandern.jpg','17356',600,120,'',1425391895,1425391895,'root','root',0,'','','','');

--
-- Table structure for table `rex_file_category`
--

DROP TABLE IF EXISTS `rex_file_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_file_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `re_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `re_id` (`re_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_file_category`
--


--
-- Table structure for table `rex_module`
--

DROP TABLE IF EXISTS `rex_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `ausgabe` text NOT NULL,
  `eingabe` text NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_module`
--

INSERT INTO `rex_module` VALUES (1,'01 - �berschrift',0,'<div class=\"container\">\n    <REX_VALUE[2]>REX_VALUE[1]</REX_VALUE[2]>\n</div>','<strong>&Uuml;berschrift</strong><br>\n<input type=\"text\" size=\"50\" name=\"VALUE[1]\" value=\"REX_VALUE[1]\"/>\n<select name=\"VALUE[2]\">\n    <?php\n    foreach (array(\"h1\", \"h2\", \"h3\", \"h4\", \"h5\", \"h6\") as $value) {\n        echo \'<option value=\"\' . $value . \'\" \';\n\n        if (\"REX_VALUE[2]\" == \"$value\") {\n            echo \'selected=\"selected\" \';\n        }\n        echo \'>\' . $value . \'</option>\';\n    }\n    ?>\n</select>\n','root','root',1412603674,1425392014,NULL,0),(2,'02 - Text',0,'<div class=\"container\">\n    <?php\n    $description = convertTextile(\"REX_VALUE[1]\");\n    echo $description;\n    ?>\n</div>\n','<strong>Fliesstext</strong><br>\n<textarea name=\"VALUE[1]\" cols=\"80\" rows=\"10\" class=\"inp100\">REX_HTML_VALUE[1]</textarea>\n<?php rex_a79_help_overview(); ?>','root','root',1412604441,1425392035,NULL,0),(3,'02 - Text, 2 Spalten',0,'<?php\n$description1 = convertTextile(\"REX_VALUE[1]\");\n$description2 = convertTextile(\"REX_VALUE[2]\");\n?>\n<div class=\"container\">\n    <div class=\"row\">\n        <div class=\"col-sm-6\">\n            <?php echo $description1; ?>\n        </div>\n        <div class=\"col-sm-6\">\n            <?php echo $description2; ?>\n        </div>\n    </div>\n</div>','<strong>Fliesstext links</strong><br>\n<textarea name=\"VALUE[1]\" cols=\"80\" rows=\"10\">REX_HTML_VALUE[1]</textarea>\n<br>\n\n<strong>Fliesstext rechts</strong><br>\n<textarea name=\"VALUE[2]\" cols=\"80\" rows=\"10\">REX_HTML_VALUE[2]</textarea>\n<?php rex_a79_help_overview(); ?>\n','root','root',1412604448,1425392088,NULL,0),(4,'02 - Text und Bild',0,'<?php\n$image = \"REX_FILE[1]\";\n$description = convertTextile(\"REX_VALUE[1]\");\n?>\n<div class=\"container\">\n    <div class=\"row\">\n        <div class=\"col-sm-4\">\n            <img src=\"<?php echo seo42::getImageManagerFile($image, \"bootstrap-4\"); ?>\" class=\"img-responsive\" />\n        </div>\n        <div class=\"col-sm-8\">\n            <?php echo $description; ?>\n        </div>\n    </div>\n</div>\n','<strong>Fliesstext</strong><br>\n<textarea name=\"VALUE[1]\" cols=\"80\" rows=\"10\" class=\"inp100\">REX_HTML_VALUE[1]</textarea>\n<?php rex_a79_help_overview(); ?>\n<br>\n\n<strong>Bild</strong><br>\nREX_MEDIA_BUTTON[1]\n','root','root',1412604462,1425392055,NULL,0),(5,'03 - Bild',0,'<?php\n$image = \"REX_FILE[1]\";\n?>\n<div class=\"container\">\n    <div class=\"row\">\n        <div class=\"col-sm-12\">\n            <a data-lightbox=\"lightbox\" href=\"<?php echo seo42::getImageManagerFile($image, \"lightbox\"); ?>\">\n                <img src=\"<?php echo seo42::getImageManagerFile($image, \"bootstrap-12\"); ?>\" class=\"img-responsive center-block\" />\n            </a>\n        </div>\n    </div>\n</div>\n','<strong>Bild</strong><br>\nREX_MEDIA_BUTTON[1]\n','root','root',1412604476,1425392619,NULL,0),(6,'03 - Bild, 2 Spalten',0,'<?php\n$image1 = \"REX_FILE[1]\";\n$image2 = \"REX_FILE[2]\";\n?>\n<div class=\"container\">\n    <div class=\"row\">\n        <div class=\"col-sm-6\">\n            <a data-lightbox=\"lightbox\" href=\"<?php echo seo42::getImageManagerFile($image1, \"lightbox\"); ?>\">\n                <img src=\"<?php echo seo42::getImageManagerFile($image1, \"bootstrap-6\"); ?>\" class=\"img-responsive\" />\n            </a>\n        </div>\n        <div class=\"col-sm-6\">\n            <a data-lightbox=\"lightbox\" href=\"<?php echo seo42::getImageManagerFile($image2, \"lightbox\"); ?>\">\n                <img src=\"<?php echo seo42::getImageManagerFile($image2, \"bootstrap-6\"); ?>\" class=\"img-responsive\" />\n            </a>\n        </div>\n    </div>\n</div>','<strong>Bild 1</strong><br>\nREX_MEDIA_BUTTON[1]\n\n<strong>Bild 2</strong><br>\nREX_MEDIA_BUTTON[2]\n','root','root',1412604494,1425392113,NULL,0),(7,'04 - Bildergalerie',0,'<?php\n$rand = time() . rand();\n$images = explode(\',\', trim(\"REX_MEDIALIST[1]\"));\n?>\n<div class=\"container\">\n    <div class=\"row\">\n        <?php\n        foreach ($images as $i) {\n            ?>\n            <div class=\"col-md-4 col-xs-6\">\n                <a data-lightbox=\"lightbox-<?php echo $rand; ?>\" href=\"<?php echo seo42::getImageManagerFile($i, \'lightbox\'); ?>\">\n                    <img src=\"<?php echo seo42::getImageManagerFile($i, \'bootstrap-4\'); ?>\" class=\"img-responsive\" />\n                </a>\n            </div>\n        <?php\n        }\n        ?>\n    </div>\n</div>','<strong>Bilder</strong><br>\nREX_MEDIALIST_BUTTON[1]\n','root','root',1412604540,1425392126,NULL,0),(8,'05 - Kategorieliste',0,'<?php\n$curArt = OOArticle::getArticleById($this->article_id);\n$parentCategory = $curArt->getCategory();\nforeach ($parentCategory->getChildren(true) as $c) {\n    $name = $c->getName();\n    $url = seo42::getFullUrl($c->getId());\n    $teaserText = $c->getValue(\'art_teaser_text\');\n    $teaserImage = $c->getValue(\'art_teaser_image\');\n    ?>\n    <div class=\"row\">\n        <div class=\"col-sm-4\">\n            <img src=\"<?php echo seo42::getImageManagerFile($teaserImage, \'bootstrap-4\'); ?>\" class=\"img-responsive\"/>\n        </div>\n        <div class=\"col-sm-8\">\n            <h2><?php echo $name; ?></h2>\n            <p><?php echo $teaserText; ?></p>\n            <a href=\"<?php echo $url; ?>\">###more###</a>\n        </div>\n    </div>\n<?php\n}\n?>\n','','root','root',1412604560,1425388289,NULL,0),(9,'06 - Artikelliste',0,'<?php\n$curArt = OOArticle::getArticleById($this->article_id);\n$parentCategory = $curArt->getCategory();\nforeach ($parentCategory->getArticles(true) as $a) {\n    $name = $a->getName();\n    $url = seo42::getFullUrl($a->getId());\n    $teaserText = $a->getValue(\'art_teaser_text\');\n    $teaserImage = $a->getValue(\'art_teaser_image\');\n    ?>\n    <div class=\"row\">\n        <div class=\"col-sm-4\">\n            <img src=\"<?php echo seo42::getImageManagerFile($teaserImage, \'bootstrap-4\'); ?>\" class=\"img-responsive\"/>\n        </div>\n        <div class=\"col-sm-8\">\n            <h2><?php echo $name; ?></h2>\n            <p><?php echo $teaserText; ?></p>\n            <a href=\"<?php echo $url; ?>\">###more###</a>\n        </div>\n    </div>\n<?php\n}\n?>','','root','root',1412604588,1425388289,NULL,0),(13,'99 - Sitemap',0,'<?php\nif (!function_exists(\'truncate\')) {\n    function truncate($string, $length = 80, $etc = \'...\', $break_words = false) {\n        if ($length == 0) {\n            return \'\';\n        }\n        if (strlen($string) > $length) {\n            $length -= strlen($etc);\n            if (!$break_words) {\n                $string = preg_replace(\'/\\s+?(\\S+)?$/\', \'\', substr($string, 0, $length + 1));\n            }\n            return substr($string, 0, $length) . $etc;\n        } else {\n            return $string;\n        }\n    }\n}\n\nif (!function_exists(\'ModulPrintCatList\')) {\n    function ModulPrintCatList($categories, $printArticles, $printStartArticles, $showText) {\n        $TEXT_LENGTH = 150;\n        if (is_array($categories) && count($categories) > 0) {\n            echo \'<ul class=\"sitemap\">\';\n            foreach ($categories as $cat) {\n                if ($cat->isOnline()) {\n                    echo \'<li><a href=\"\' . $cat->getURL() . \'\">\' . $cat->getName() . \'</a>\';\n                    if (($showText && !$printArticles) || ($showText && $printArticles && !$printStartArticles)) {\n                        //Anzeige des Startartikels (wenn online)\n                        $art = $cat->getStartArticle();\n                        if ($art->isOnline()) {\n                            $article = new article();\n                            $article->setArticleId($art->getId());\n                            $articleText = truncate(strip_tags($article->getArticle()), $TEXT_LENGTH);\n                            echo \'<span style=\"font-style:normal; font-size:0.8em;\">\' . $articleText . \'</span>\';\n                        }\n                    }\n                    if ($printArticles) {\n                        $articles = $cat->getArticles();\n                        if (is_array($articles) && count($articles) > 0) {\n                            $tmp_str = \'\';\n                            foreach ($articles as $art) {\n                                if (($art->isOnline() && !$art->isStartArticle()) || ($art->isOnline() && $printStartArticles)) {\n                                    $tmp_str .= \'<li><a href=\"\' . $art->getURL() . \'\">\' . $art->getName() . \'</a>\';\n                                    if ($showText) {\n                                        $article = new article();\n                                        $article->setArticleId($art->getId());\n                                        $articleText = truncate(strip_tags($article->getArticle()), $TEXT_LENGTH);\n                                        $tmp_str .= \'<span style=\"margin: 15px 0 15px 0; font-style:normal; font-size:0.8em;\">\' . $articleText . \'</span>\';\n                                    }\n                                    $tmp_str .= \'</li>\';\n                                }\n                            }\n                            if ($tmp_str != \'\') {\n                                echo \'<ul style=\"list-style-type:none; font-style:italic; margin-bottom:1em;\">\';\n                                echo $tmp_str;\n                                echo \'</ul>\';\n                            }\n                        }\n                    }\n                    ModulPrintCatList($cat->getChildren(), $printArticles, $printStartArticles, $showText);\n                    echo \'</li>\';\n                }\n            }\n            echo \'</ul>\';\n        }\n    }\n}\n// START Root Categories //\n$categories = OOCategory::getRootCategories();\nif (is_array($categories) && count($categories) > 0) {\n    ModulPrintCatList($categories,\n        (\"REX_VALUE[1]\" == \"show_articles\"),\n        (\"REX_VALUE[2]\" == \"start_articles\"),\n        (\"REX_VALUE[3]\" == \"show_text\"));\n}\n?>\n','<?php\nif (\"REX_VALUE[1]\" == \"show_articles\") {\n    $checked1 = \"checked=\\\"checked\\\"\";\n} else {\n    $checked1 = \"\";\n};\nif (\"REX_VALUE[2]\" == \"start_articles\") {\n    $checked2 = \"checked=\\\"checked\\\"\";\n} else {\n    $checked2 = \"\";\n};\nif (\"REX_VALUE[3]\" == \"show_text\") {\n    $checked3 = \"checked=\\\"checked\\\"\";\n} else {\n    $checked3 = \"\";\n};\n?>\n<h1>Liste aller Kategorien</h1>\n<br>\n<input type=\"checkbox\" name=\"VALUE[3]\" value=\"show_text\" <?php echo $checked3; ?> />\n<strong>&nbsp;&nbsp;Kurzen Textauszug anzeigen</strong>\n<br>\n<input type=\"checkbox\" name=\"VALUE[1]\" value=\"show_articles\" <?php echo $checked1; ?> />\n<strong>&nbsp;&nbsp;Zugeh�rige Artikel ausgeben</strong>\n<br>\n<input type=\"checkbox\" name=\"VALUE[2]\" value=\"start_articles\" <?php echo $checked2; ?> />\n<strong>&nbsp;&nbsp;Startartikel mit anzeigen (Wenn Artikelausgabe aktiviert)</strong>\n','root','root',1412610247,1425392314,NULL,0),(11,'99 - HTML',0,'REX_HTML_VALUE[1]\n','<strong>HTML</strong><br>\n<textarea name=\"VALUE[1]\" cols=\"80\" rows=\"10\">REX_VALUE[1]</textarea>\n','root','root',1412604632,1425388289,NULL,0),(12,'99 - PHP',0,'REX_PHP','<strong>PHP</strong><br>\n<textarea name=\"INPUT_PHP\" cols=\"80\" rows=\"20\" class=\"inp100\">REX_PHP</textarea>\n','root','root',1412604638,1425388289,NULL,0),(14,'99 - Suchergebnis',0,'<?php\nif (!empty($_REQUEST[\'rexsearch\'])) {\n    $rexsearch = new RexSearch();\n    $result = $rexsearch->search($_REQUEST[\'rexsearch\']);\n\n    if ($result[\'count\'] > 0) {\n        echo \'<ul class=\"searchresults\">\';\n        foreach ($result[\'hits\'] as $hit) {\n            if ($hit[\'type\'] == \'article\') {\n                $article = OOArticle::getArticleById($hit[\'fid\']);\n                echo \'<li>\';\n                echo \'<strong><a href=\"\' . ($url = htmlspecialchars($article->getUrl())) . \'\">\' . $article->getName() . \'</a></strong>\';\n                echo \'<p>\' . $hit[\'highlightedtext\'] . \'</p>\';\n                echo \'<p>\' . $REX[\'SERVER\'] . rex_getUrl($hit[\'fid\'], $hit[\'clang\']) . \'</p>\';\n                echo \'</li>\';\n            }\n        }\n        echo \'</ul>\';\n    }\n}\n?>','','root','root',1422610575,1425388289,NULL,0),(15,'XForm Formbuilder',0,'<?php\n\n/**\n * XForm\n * @author jan.kristinus[at]redaxo[dot]org Jan Kristinus\n * @author <a href=\"http://www.yakamara.de\">www.yakamara.de</a>\n */\n\n// module:xform_basic_out\n// v0.2.2\n//--------------------------------------------------------------------------------\n\n$xform = new rex_xform;\nif (\"REX_VALUE[7]\" == 1) { $xform->setDebug(TRUE); }\n$form_data = \'REX_VALUE[3]\';\n$form_data = trim(str_replace(\"<br />\",\"\",rex_xform::unhtmlentities($form_data)));\n$xform->setFormData($form_data);\n$xform->setRedaxoVars(REX_ARTICLE_ID,REX_CLANG_ID); \n\n?>REX_PHP_VALUE[9]<?php\n\n// action - showtext\nif(\"REX_IS_VALUE[6]\" == \"true\")\n{\n  $html = \"0\"; // plaintext\n  if(\'REX_VALUE[11]\' == 1) $html = \"1\"; // html\n  if(\'REX_VALUE[11]\' == 2) $html = \"2\"; // textile\n  \n  $e3 = \'\'; $e4 = \'\';\n  if ($html == \"0\") {\n    $e3 = \'<div class=\"rex-message\"><div class=\"rex-info\"><p>\';\n    $e4 = \'</p></div></div>\';\n  }\n  \n  $t = str_replace(\"<br />\",\"\",rex_xform::unhtmlentities(\'REX_VALUE[6]\'));\n  $xform->setActionField(\"showtext\",array(\n      $t,\n      $e3,\n      $e4,\n      $html // als HTML interpretieren\n    )\n  );\n}\n\n$form_type = \"REX_VALUE[1]\";\n\n// action - email\nif ($form_type == \"1\" || $form_type == \"2\" || $form_type == \"3\")\n{\n  $mail_from = $REX[\'ERROR_EMAIL\'];\n  if(\"REX_VALUE[2]\" != \"\") $mail_from = \"REX_VALUE[2]\";\n  $mail_to = $REX[\'ERROR_EMAIL\'];\n  if(\"REX_VALUE[12]\" != \"\") $mail_to = \"REX_VALUE[12]\";\n  $mail_subject = \"REX_VALUE[4]\";\n  $mail_body = str_replace(\"<br />\",\"\",rex_xform::unhtmlentities(\'REX_VALUE[5]\'));\n  $xform->setActionField(\"email\", array(\n      $mail_from,\n      $mail_to,\n      $mail_subject,\n      $mail_body\n    )\n  );\n}\n\n// action - db\nif ($form_type == \"0\" || $form_type == \"2\" || $form_type == \"3\")\n{\n  $xform->setObjectparams(\'main_table\', \'REX_VALUE[8]\');\n  \n  //getdata\n  if (\"REX_VALUE[10]\" != \"\")\n    $xform->setObjectparams(\"getdata\",TRUE);\n  \n  $xform->setActionField(\"db\", array(\n      \"REX_VALUE[8]\", // table\n      $xform->objparams[\"main_where\"], // where\n      )\n    );\n}\n\necho $xform->getForm();\n\n?>\n','<?php\n\n/**\n * XForm\n * @author jan.kristinus[at]redaxo[dot]org Jan Kristinus\n * @author <a href=\"http://www.yakamara.de\">www.yakamara.de</a>\n */\n\n// module:xform_basic_in\n// v0.2.2\n// --------------------------------------------------------------------------------\n\n// DEBUG SELECT\n////////////////////////////////////////////////////////////////////////////////\n$dbg_sel = new rex_select();\n$dbg_sel->setName(\'VALUE[7]\');\n$dbg_sel->setSize(1);\n$dbg_sel->addOption(\'inaktiv\',\'0\');\n$dbg_sel->addOption(\'aktiv\',\'1\');\n$dbg_sel->setSelected(\'REX_VALUE[7]\');\n$dbg_sel = $dbg_sel->get();\n\n\n// TABLE SELECT\n////////////////////////////////////////////////////////////////////////////////\n$gc = rex_sql::factory();\n$gc->setQuery(\'SHOW TABLES\');\n$tables = $gc->getArray();\n$tbl_sel = new rex_select;\n$tbl_sel->setName(\'VALUE[8]\');\n$tbl_sel->setSize(1);\n$tbl_sel->addOption(\'Keine Tabelle ausgew�hlt\', \'\');\nforeach ($tables as $key => $value)\n{\n  $tbl_sel->addOption(current($value), current($value));\n}\n$tbl_sel->setSelected(\'REX_VALUE[8]\');\n$tbl_sel = $tbl_sel->get();\n\n\n// PLACEHOLDERS\n////////////////////////////////////////////////////////////////////////////////\n$xform = new rex_xform;\n$form_data = \'REX_VALUE[3]\';\n$form_data = trim(str_replace(\'<br />\',\'\',rex_xform::unhtmlentities($form_data)));\n$xform->setFormData($form_data);\n$xform->setRedaxoVars(REX_ARTICLE_ID,REX_CLANG_ID);\n$placeholders = \'\';\nif(\'REX_VALUE[3]\'!=\'\')\n{\n$ignores = array(\'html\',\'validate\',\'action\');\n  $placeholders .= \'  <strong class=\"hint\">Platzhalter: <span>[<a href=\"#\" id=\"xform-placeholders-help-toggler\">?</a>]</span></strong>\n  <p id=\"xform-placeholders\">\'.PHP_EOL;\nforeach($xform->objparams[\'form_elements\'] as $e)\n{\n  if(!in_array($e[0],$ignores) && isset($e[1]))\n  {\n      $placeholders .= \'<span>###\'.$e[1].\'###</span> \'.PHP_EOL;\n  }\n}\n  $placeholders .= \'  </p>\'.PHP_EOL;\n}\n\n\n// OTHERS\n////////////////////////////////////////////////////////////////////////////////\n$row_pad = 1;\n\n$sel = \'REX_VALUE[1]\';\n$db_display   = ($sel==\'\' || $sel==1) ?\'style=\"display:none\"\':\'\';\n$mail_display = ($sel==\'\' || $sel==0) ?\'style=\"display:none\"\':\'\';\n\n?>\n\n<style type=\"text/css\" media=\"screen\">\n  /*BAISC MODUL STYLE*/\n  #xform-modul                       {margin:0;padding:0;line-height:25px;}\n  #xform-modul fieldset              {background:#E4E1D1;margin:-20px 0 0 0;padding: 4px 10px 10px 10px;-moz-border-radius:6px;-webkit-border-radius:6px;border-radius:6px;}\n  #xform-modul fieldset legend       {display:block !important;position:relative !important;height:auto !important;top:0 !important;left:0 !important;width:100% !important;margin:0 0 0 0 !important;padding:30px 0 0 0px !important;background:transparent !important;border-bottom:1px solid #B1B1B1 !important;color:gray;font-size:14px;font-weight:bold;}\n  #xform-modul fieldset legend em    {font-size:10px;font-weight:normal;font-style:normal;}\n  #xform-modul fieldset strong.label,\n  #xform-modul fieldset label        {display:inline-block !important;width:150px !important;font-weight:bold;}\n  #xform-modul fieldset label span   {font-weight:normal;}\n  #xform-modul input,\n  #xform-modul select                {width:460px;border:auto;margin:0 !important;padding:0 !important;}\n  #xform-modul input[type=\"checkbox\"]{width:auto;}\n  #xform-modul hr                    {border:0;height:0;margin:4px 0 4px 0;padding:0;border-top:1px solid #B1B1B1 !important;clear:left;}\n  #xform-modul a.blank               {background:url(\"../files/addons/be_style/plugins/agk_skin/popup.gif\") no-repeat 100% 0;padding-right:17px;}\n  #xform-modul #modulinfo            {font-size:10px;text-align:right;}\n  /*XFORM MODUL*/\n  #xform-modul textarea              {min-height:50px;font-family:monospace;font-size:12px;}\n  #xform-modul pre                   {clear:left;}\n  #xform-modul strong span           {font-weight:normal;}\n  #xform-modul .help                 {display:none;color:#2C8EC0;line-height:12px;}\n  #xform-modul .area-wrapper         {background:white;border:1px solid #737373;margin-bottom:10px;width:100%;}\n  #xform-modul .fullwidth            {width:100% !important;}\n  #xform-modul #thx-markup           {width:auto !important;}\n  #xform-modul #thx-markup input     {width:auto !important;}\n  #xform-modul #xform-placeholders-help,\n  #xform-modul #xform-where-help     {display:none;}\n  #xform-modul #xform-placeholders,\n  #xform-modul #xform-classes-showhelp {background:white;border:1px solid #737373;margin-bottom:10px;width:100%;}\n  #xform-modul #xform-placeholders {padding:4px 10px;float:none;width:auto;}\n  #xform-modul #xform-placeholders span:hover {color:red;cursor:pointer;}\n  #xform-modul em.hint               {color:silver;margin:0;padding:0 0 0 10px;}\n  /*SHOWHELP OVERRIDES*/\n  #xform-modul ul.xform.root         {border:0;outline:0;margin:4px 0;padding:0;width:100%;background:transparent;}\n  #xform-modul ul.xform              {font-size:1.1em;line-height:1.4em;}\n</style>\n\n\n<div id=\"xform-modul\">\n<fieldset>\n  <legend>Formular</legend>\n\n  <label>DebugModus:</label>\n  <?php echo $dbg_sel;?>\n\n  <hr />\n\n  <label class=\"fullwidth\">Felddefinitionen:</label>\n  <textarea name=\"VALUE[3]\" id=\"xform-form-definition\" class=\"fullwidth\" rows=\"<?php echo (count(explode(\"\\r\",\'REX_VALUE[3]\'))+$row_pad);?>\">REX_VALUE[3]</textarea>\n\n  <strong class=\"label\">Verf�gbare Feld-Klassen:</strong>\n  <div id=\"xform-classes-showhelp\">\n    <?php echo rex_xform::showHelp(true,true); ?>\n  </div><!-- #xform-classes-showhelp -->\n\n  <div id=\"thx-markup\"><strong>Meldung bei erfolgreichen Versand:</strong> (\n    <input type=\"radio\" name=\"VALUE[11]\" value=\"0\" <?php if(\"REX_VALUE[11]\" == \"0\") echo \'checked=\"checked\"\'; ?>> Plaintext\n    <input type=\"radio\" name=\"VALUE[11]\" value=\"1\" <?php if(\"REX_VALUE[11]\" == \"1\") echo \'checked=\"checked\"\'; ?>> HTML\n    <input type=\"radio\" name=\"VALUE[11]\" value=\"2\" <?php if(\"REX_VALUE[11]\" == \"2\") echo \'checked=\"checked\"\'; ?>> Textile)\n  </div><!-- #thx-markup -->\n  <textarea name=\"VALUE[6]\" id=\"xform-thx-message\" class=\"fullwidth\" rows=\"<?php echo (count(explode(\"\\r\",\'REX_VALUE[6]\'))+$row_pad);?>\">REX_VALUE[6]</textarea>\n\n</fieldset>\n\n\n<fieldset>\n  <legend>Vordefinierte Aktionen</legend>\n\n  <label>Bei Submit:</label>\n  <select name=\"VALUE[1]\" id=\"xform-action-select\" style=\"width:auto;\">\n    <option value=\"\"  <?php if(\"REX_VALUE[1]\" == \"\")  echo \" selected \"; ?>>Nichts machen (actions im Formular definieren)</option>\n    <option value=\"0\" <?php if(\"REX_VALUE[1]\" == \"0\") echo \" selected \"; ?>>Nur in Datenbank speichern oder aktualisieren wenn \"main_where\" gesetzt ist</option>\n    <option value=\"1\" <?php if(\"REX_VALUE[1]\" == \"1\") echo \" selected \"; ?>>Nur E-Mail versenden</option>\n    <option value=\"2\" <?php if(\"REX_VALUE[1]\" == \"2\") echo \" selected \"; ?>>E-Mail versenden und in Datenbank speichern</option>\n    <!--  <option value=\"3\" <?php if(\"REX_VALUE[1]\" == \"3\") echo \" selected \"; ?>>E-Mail versenden und Datenbank abfragen</option> -->\n  </select>\n\n</fieldset>\n\n\n<fieldset id=\"xform-mail-fieldset\" <?php echo $mail_display;?> >\n  <legend>Emailversand:</legend>\n\n  <label>Absender:</label>\n  <input type=\"text\" name=\"VALUE[2]\" value=\"REX_VALUE[2]\" />\n\n  <label>Empf�nger:</label>\n  <input type=\"text\" name=\"VALUE[12]\" value=\"REX_VALUE[12]\" />\n\n  <label>Subject:</label>\n  <input type=\"text\" name=\"VALUE[4]\" value=\"REX_VALUE[4]\" />\n  <label class=\"fullwidth\">Mailbody:</label>\n  <textarea id=\"xform-mail-body\" class=\"fullwidth\" name=\"VALUE[5]\" rows=\"<?php echo (count(explode(\"\\r\",\'REX_VALUE[5]\'))+$row_pad);?>\">REX_VALUE[5]</textarea>\n\n    <?php echo $placeholders;?>\n\n  <ul class=\"help\" id=\"xform-placeholders-help\">\n    <li>Die Platzhalter ergeben sich aus den obenstehenden Felddefinitionen.</li>\n    <li>Per click k�nnen einzelne Platzhalter in den Mail-Body kopiert werden.</li>\n    <li>Aktualisierung der Platzhalter erfolgt �ber die Aktualisierung des Moduls.</li>\n  </ul>\n\n\n</fieldset>\n\n\n<fieldset id=\"xform-db-fieldset\" <?php echo $db_display;?> >\n  <legend>Datenbank Einstellungen</legend>\n\n  <label>Tabelle w�hlen <span>[<a href=\"#\" id=\"xform-db-help-toggler\">?</a>]</span></label>\n  <?php echo $tbl_sel;?>\n  <ul class=\"help\" id=\"xform-db-select-help\">\n    <li>Diese Tabelle gilt auch bei Uniqueabfragen (Pflichtfeld=2) siehe oben</li>\n  </ul>\n\n  <hr />\n\n  <label for=\"getdatapre\">Daten initial aus DB holen</label>\n  <input id=\"getdatapre\" type=\"checkbox\" value=\"1\" name=\"VALUE[10]\" <?php if(\"REX_VALUE[10]\" != \"\") echo \'checked=\"checked\"\'; ?> />\n\n  <div id=\"db_data\">\n    <hr />\n    <label>Where Klausel: <span>[<a href=\"#\" id=\"xform-xform-where-help-toggler\">?</a>]</span></label>\n    <textarea name=\"VALUE[9]\" cols=\"30\" id=\"xform-db-where\" class=\"fullwidth\"rows=\"<?php echo (count(explode(\"\\r\",\'REX_VALUE[9]\'))+$row_pad);?>\">REX_VALUE[9]</textarea>\n    <ul class=\"help\" id=\"xform-where-help\">\n      <li>PHP erlaubt. Beispiel: <em>$xform-&gt;setObjectparams(\"main_where\",$where);</em></li>\n      <li>Die Benutzereingaben aus dem Formular k�nnen mittels Platzhaltern (Schema: ###<em>FELDNAME</em>###) in der WHERE Klausel verwendet werden - Beispiel: text|myname|Name|1 -> Platzhalter: ###myname###</li>\n    </ul>\n  </div><!-- #db_data -->\n\n  </fieldset>\n\n  <p id=\"modulinfo\">XForm Formbuilder v0.2.2</p>\n\n</div><!-- #xform-modul -->\n\n<script type=\"text/javascript\">\n<!--\n(function($){\n\n  // FIX WEBKIT CSS QUIRKS\n  if ($.browser.webkit) {\n    $(\'#xform-modul textarea\').css(\'min-height\',\'70px\');\n    $(\'#xform-modul textarea\').css(\'width\',\'701px\');\n    $(\'#xform-modul fieldset\').css(\'width\',\'705px\');\n  }\n\n  // AUTOGROW BY ROWS\n  $(\'#xform-modul textarea\').keyup(function(){\n    var rows = $(this).val().split(/\\r?\\n|\\r/).length + <?php echo $row_pad;?>;\n    $(this).attr(\'rows\',rows);\n  });\n\n  // TOGGLERS\n  $(\'#xform-placeholders-help-toggler\').click(function(){\n    $(\'#xform-placeholders-help\').toggle(50);return false;\n  });\n  $(\'#xform-xform-where-help-toggler\').click(function(){\n    $(\'#xform-where-help\').toggle(50);return false;\n  });\n  $(\'#xform-db-help-toggler\').click(function(){\n    $(\'#xform-db-select-help\').toggle(50);return false;\n  });\n\n\n  // INSERT PLACEHOLDERS\n  $(\'#xform-placeholders span\').click(function(){\n    newval = $(\'#xform-mail-body\').val()+\' \'+$(this).html();\n    $(\'#xform-mail-body\').val(newval);\n  });\n\n  // TOGGLE MAIL/DB PANELS\n  $(\'#xform-action-select\').change(function(){\n    switch($(this).val()){\n      case \'\':\n        $(\'#xform-db-fieldset\').hide(0);\n        $(\'#xform-mail-fieldset\').hide(0);\n        break;\n      case \'1\':\n        $(\'#xform-db-fieldset\').hide(0);\n        $(\'#xform-mail-fieldset\').show(0);\n        break;\n      case \'0\':\n        $(\'#xform-db-fieldset\').show(0);\n        $(\'#xform-mail-fieldset\').hide(0);\n        break;\n      case \'2\':\n      case \'3\':\n        $(\'#xform-db-fieldset\').show(0);\n        $(\'#xform-mail-fieldset\').show(0);\n        break;\n    }\n  });\n\n})(jQuery)\n//-->\n</script>','','root',0,1425388289,NULL,0),(16,'07 - G�stebuch',0,'<div class=\"container\">\n    <?php\n    $error = false;\n    $success = false;\n\n    function encrypt($string, $key) {\n        $result = \'\';\n        for($i=0; $i<strlen($string); $i++) {\n            $char = substr($string, $i, 1);\n            $keychar = substr($key, ($i % strlen($key))-1, 1);\n            $char = chr(ord($char)+ord($keychar));\n            $result.=$char;\n        }\n        return base64_encode($result);\n    }\n\n    if($_POST[\'send\']) {\n        $sicherheits_eingabe = encrypt($_POST[\"captcha\"], \"asflh678sfjh\");\n        $sicherheits_eingabe = str_replace(\"=\", \"\", $sicherheits_eingabe);\n\n        if(!$_POST[\'name\'] || !$_POST[\'email\'] || !$_POST[\'comment\']) {\n            $error = \'Bitte f&uuml;llen Sie alle, mit einem * gekennzeichneten Felder aus!<br/>\';\n        }\n        elseif(!filter_var($_POST[\'email\'], FILTER_VALIDATE_EMAIL)) {\n            $error = \'Geben Sie bitte eine korrekte E-Mail-Adresse an!<br/>\';\n        }\n//        elseif(!isset($_SESSION[\'rechen_captcha_spam\']) || $sicherheits_eingabe != $_SESSION[\'rechen_captcha_spam\']){\n//            $error = \'Der eingegebene Captcha Code war nicht korrekt!<br/>\';\n//        }\n        else {\n//            unset($_SESSION[\'rechen_captcha_spam\']);\n            $sql = new sql();\n            $sql->setTable(\'guestbook\');\n            $sql->setValue(\'name\', $_POST[\'name\']);\n            $sql->setValue(\'email\', $_POST[\'email\']);\n            $sql->setValue(\'homepage\', $_POST[\'homepage\']);\n            $sql->setValue(\'fromOrigin\', $_POST[\'fromOrigin\']);\n            $sql->setValue(\'comment\', $_POST[\'comment\']);\n            $sql->setValue(\'status\', \'offline\');\n            if($sql->insert()){\n                $text = \"Es liegt ein neuer G&auml;stebucheintrag vor. Bitte freigeben!\";\n                $mail = new rex_mailer();\n                $mail->SetFrom($_POST[\'email\']);\n                $mail->Subject = \"Stablalm - Neuer G�stebucheintrag\";\n                $mail->Body    = nl2br($text);\n                $mail->AltBody = $text;\n                $mail->AddAddress(\"ernstginther@stablalm.at\");\n                $mail->Send();\n                unset($_POST);\n                $success = \'Der Eintrag wurde erfolgreich abgeschickt! Dieser wird nach Freigabe im G�stebuch erscheinen.<br/>\';\n            }else{\n                $error = \'Fehler beim einf&uuml;gen<br/>\';\n            }\n        }\n    }\n    if ($error) {\n        echo \'<div class=\"alert alert-danger\" role=\"alert\">\'.$error.\'</div>\';\n    }\n    if ($success) {\n        echo \'<div class=\"alert alert-success\" role=\"alert\">\'.$success.\'</div>\';\n    }\n    ?>\n        <div class=\"blogFormular\">\n            <h3>Geben Sie einen Eintrag im G�stebuch ab!</h3>\n            <br/>\n            <form method=\"post\" class=\"form-horizontal\">\n                <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label required\" for=\"name\">Name</label>\n                    <div class=\"col-sm-10\">\n                        <input class=\"form-control\" type=\"text\" name=\"name\" id=\"name\" value=\"<?php echo $_POST[\'name\']; ?>\">\n                    </div>\n                </div>\n                <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label required\" for=\"email\">E-Mail</label>\n                    <div class=\"col-sm-10\">\n                        <input class=\"form-control\" type=\"text\" name=\"email\" value=\"<?php echo $_POST[\'email\']; ?>\">\n                    </div>\n                </div>\n                <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"homepage\">Homepage</label>\n                    <div class=\"col-sm-10\">\n                        <input class=\"form-control\" type=\"text\" name=\"homepage\" value=\"<?php echo $_POST[\'homepage\']; ?>\">\n                    </div>\n                </div>\n                <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"fromOrigin\">Herkunft</label>\n                    <div class=\"col-sm-10\">\n                        <input class=\"form-control\" type=\"text\" name=\"fromOrigin\" value=\"<?php echo $_POST[\'fromOrigin\']; ?>\">\n                    </div>\n                </div>\n                <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label required\" for=\"kommentar\">Kommentar</label>\n                    <div class=\"col-sm-10\">\n                        <textarea class=\"form-control\" name=\"comment\" id=\"kommentar\" style=\"height: 150px;\"><?php echo $_POST[\'comment\']; ?></textarea>\n                    </div>\n                </div>\n<!--                <div class=\"form-group\">-->\n<!--                    <label class=\"col-sm-2 control-label required\" for=\"captcha\">Captcha</label>-->\n<!--                    <div class=\"col-sm-3\">-->\n<!--                        <img src=\"--><?php //echo seo42::getFullUrl(268); ?><!--\" />-->\n<!--                    </div>-->\n<!--                    <div class=\"col-sm-7\">-->\n<!--                        <input class=\"form-control\" type=\"text\" name=\"captcha\" value=\"\">-->\n<!--                    </div>-->\n<!--                </div>-->\n                <div class=\"form-group\">\n                    <div class=\"col-sm-12 text-right\">\n                        <input type=\"submit\" name=\"send\" class=\"btn btn-primary\" value=\"Senden\" /></button>\n                    </div>\n                </div>\n            </form>\n        </div>\n    <?php\n    $qry = \'SELECT * FROM guestbook WHERE status!=\\\'offline\\\' ORDER BY id DESC\';\n    $sql2 = new sql();\n    $sql2->setQuery($qry);\n    $entries = array();\n    for($i = 0; $i < $sql2->getRows(); $i++) {\n        $entries[$i][\'id\'] = $sql2->getValue(\'id\');\n        $entries[$i][\'name\'] = $sql2->getValue(\'name\');\n        $entries[$i][\'email\'] = $sql2->getValue(\'email\');\n        $entries[$i][\'fromOrigin\'] = $sql2->getValue(\'fromOrigin\');\n        $entries[$i][\'homepage\'] = $sql2->getValue(\'homepage\');\n        $entries[$i][\'comment\'] = $sql2->getValue(\'comment\');\n        $entries[$i][\'status\'] = $sql2->getValue(\'status\');\n        $sql2->next();\n    }\n\n    $pages = array_chunk($entries, 5);\n    $page = $pages[0];\n    if($_GET[\'page\']) {\n        $page = $pages[$_GET[\'page\']];\n    }\n    if (is_array($page)) {\n        ?>\n        <div class=\"blogEintragListe\">\n            <h3>Eintr&auml;ge</h3>\n            <?php foreach($page as $entry) { ?>\n                <div class=\"blogEintrag\">\n                    <h5><?php echo $entry[\'name\'];?></h5>\n                    <p><?php echo $entry[\'comment\'];?></p>\n                </div>\n            <?php\n            }\n            ?>\n        </div>\n    <?php\n    }\n\n    if(count($pages)>1) {\n        echo \'<div class=\"paging\">\';\n        $page = 0;\n        if($_GET[\'page\']) {\n            $page = $_GET[\'page\'];\n        }\n        if($_GET[\'page\'] > 0) {\n            ?>\n            <div class=\"more zurueck\"><a href=\"<?php echo rex_getUrl($this->article_id); ?>?page=<?php echo $page-1; ?>\">&laquo; zur&uuml;ck</a></div>\n        <?php\n        }\n        ?>\n        <div class=\"more pageOf\">Seite <?php echo $page+1; ?> von <?php echo count($pages); ?></div>\n        <?php\n        if($_GET[\'page\'] < count($pages)-1) {\n            ?>\n            <div class=\"more weiter\"><a href=\"<?php echo rex_getUrl($this->article_id); ?>?page=<?php echo $page+1; ?>\">weiter &raquo;</a></div>\n        <?php\n        }\n        echo \'</div>\';\n    }\n    ?>\n</div>','','root','root',1425393560,1425395021,NULL,0);

--
-- Table structure for table `rex_module_action`
--

DROP TABLE IF EXISTS `rex_module_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_module_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_module_action`
--


--
-- Table structure for table `rex_redirects`
--

DROP TABLE IF EXISTS `rex_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_url` varchar(255) NOT NULL,
  `target_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_redirects`
--


--
-- Table structure for table `rex_string_table`
--

DROP TABLE IF EXISTS `rex_string_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_string_table` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyname` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `value_0` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_string_table`
--

INSERT INTO `rex_string_table` VALUES (1,'more',1,'mehr');

--
-- Table structure for table `rex_template`
--

DROP TABLE IF EXISTS `rex_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `active` tinyint(1) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_template`
--

INSERT INTO `rex_template` VALUES (1,NULL,'Default','<?php\nheader(\'Content-Type: text/html; charset=utf-8\');\n$ssa = OOArticle::getSiteStartArticle();\n$article = OOArticle::getArticleById($this->getValue(\'article_id\'));\n$cssFiles = array();\n$cssFiles[] = \"main.less\";\n\n$isSsa = $article->getId() == $ssa->getId();\n\n$headerImages = array_filter(explode(\",\", getHierarchicalVar(\"art_header_images\", $article, $ssa)));\n?>\n<!DOCTYPE html>\n<html lang=\"<?php echo seo42::getLangCode(); ?>\" xmlns:fb=\"http://ogp.me/ns/fb#\">\n<head>\n    <meta charset=\"utf-8\" />\n    <base href=\"<?php echo seo42::getBaseUrl(); ?>\" />\n    <title><?php echo seo42::getTitle(); ?></title>\n    <meta name=\"description\" content=\"<?php echo seo42::getDescription(); ?>\" />\n    <meta name=\"keywords\" content=\"<?php echo seo42::getKeywords(); ?>\" />\n    <meta name=\"robots\" content=\"<?php echo seo42::getRobotRules();?>\" />\n    <link rel=\"canonical\" href=\"<?php echo seo42::getCanonicalUrl(); ?>\" />\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge\" />\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n    <link href=\"lib/bootstrap-3.3.2/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n    <link href=\"lib/lightbox/css/lightbox.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n    <link href=\'lib/font-awesome/css/font-awesome.min.css\' rel=\'stylesheet\' type=\'text/css\'>\n    <link href=\'lib/jquery-focuspoint/css/focuspoint.css\' rel=\'stylesheet\' type=\'text/css\'>\n    <link href=\"<?php echo seo42::getCombinedCSSFile(\"project.css\", $cssFiles); ?>\" rel=\"stylesheet\">\n    <!--[if lt IE 9]>\n    <script type=\"text/javascript\" src=\"<?php echo seo42::getJSFile(\"//cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js\"); ?>\"></script>\n    <script type=\"text/javascript\" src=\"<?php echo seo42::getJSFile(\"//cdn.jsdelivr.net/respond/1.4.2/respond.min.js\"); ?>\"></script>\n    <![endif]-->\n    <link href=\'http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700\' rel=\'stylesheet\' type=\'text/css\'>\n    <link href=\'http://fonts.googleapis.com/css?family=Libre+Baskerville:400,700,400italic\' rel=\'stylesheet\' type=\'text/css\'>\n    <?php echo seo42::getLangTags(); ?>\n</head>\n<body>\n    <div class=\"top\">\n        <div class=\"container\">\n            <a class=\"logo\" href=\"/\">\n                <img src=\"<?php echo seo42::getImageFile(\'logo.png\'); ?>\" title=\"Home Interior\" />\n            </a>\n    \n            <div class=\"navMain clearfix hidden-sm hidden-xs\">\n                <?php\n                $nav = new nav42();\n                $nav->setLevelDepth(4);\n                $nav->setShowAll(true);\n                $nav->setUlClass(\'clearfix\');\n                echo $nav->getNavigationByCategory($categoryId);\n                ?>\n            </div>\n        </div>\n\n        <div class=\"navToggle visible-xs visible-sm\">\n            <i class=\"fa fa-navicon\"></i>\n        </div>\n    </div>\n    <div class=\"navMainResp\">\n        <?php\n        $nav = new nav42();\n        $nav->setLevelDepth(4);\n        echo $nav->getNavigationByCategory($categoryId);\n        ?>\n    </div>\n\n    <?php if($headerImages) { ?>\n        <div id=\"headerCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\n            <div class=\"carousel-inner\" role=\"listbox\">\n                <?php foreach($headerImages as $h) {\n                    $imageObj = OOMedia::getMediaByFileName($h);\n                    $focusx = $imageObj->getValue(\'med_focus_x\')==\"\"?0:$imageObj->getValue(\'med_focus_x\');\n                    $focusy = $imageObj->getValue(\'med_focus_y\')==\"\"?0:$imageObj->getValue(\'med_focus_y\');\n                    ?>\n                    <div class=\"item focuspoint\" data-focus-x=\"<?php echo $focusx; ?>\"\n                         data-focus-y=\"<?php echo $focusy; ?>\"\n                         data-image-w=\"<?php echo $imageObj->getWidth(); ?>\"\n                         data-image-h=\"<?php echo $imageObj->getHeight(); ?>\">\n                        <img src=\"<?php echo seo42::getMediaFile($h); ?>\" alt=\"\">\n                        <div class=\"container\">\n                            <div class=\"carousel-caption\">\n                                <?php if($imageObj->getTitle()) { ?>\n                                    <h2><?php echo $imageObj->getTitle(); ?></h2>\n                                <?php }\n                                echo convertTextile($imageObj->getValue(\'med_description\')); ?>\n                            </div>\n                        </div>\n                    </div>\n                <?php } ?>\n            </div>\n\n            <div class=\"scrollToContent\"><i class=\"fa fa-angle-down\"></i></div>\n        </div>\n    <?php } ?>\n\n    <div class=\"containerContent\">\n        <?php echo $this->getArticle(); ?>\n    </div>\n\n    <div class=\"footerMargin\"></div>\n    <footer>\n        <div class=\"container text-center hidden-xs\">\n            Ernst Ginther &bull; A-6644 Elmen / Lechtal &bull; Tel. +43 (0) 676 / 72 22 022  &bull; e-Mail: <a href=\"mailto:ernstginther@stablalm.at\">ernstginther@stablalm.at</a>\n        </div>\n\n        <div class=\"container text-center visible-xs\">\n            <div>Ernst Ginther</div>\n            <div>A-6644 Elmen / Lechtal</div>\n            <div>Tel. +43 (0) 676 / 72 22 022</div>\n            <div>e-Mail: <a href=\"mailto:ernstginther@stablalm.at\">ernstginther@stablalm.at</a></div>\n        </div>\n    </footer>\n\n    <script src=\"lib/jquery/jquery-1.11.2.min.js\"></script>\n    <script src=\"lib/bootstrap-3.3.2/js/bootstrap.min.js\"></script>\n    <script src=\"lib/lightbox/js/lightbox.min.js\"></script>\n    <script src=\"lib/jquery-focuspoint/js/jquery.focuspoint.min.js\"></script>\n    <script src=\"<?php echo seo42::getJSFile(\'jquery.stellar.min.js\'); ?>\"></script>\n    <script src=\"<?php echo seo42::getJSFile(\'main.js\'); ?>\"></script>\n    <link rel=\"shortcut icon\" href=\"<?php echo seo42::getImageFile(\"favicon.ico\"); ?>\" type=\"image/x-icon\" />\n</body>\n</html>',1,'root','root',1412601961,1425392498,'a:3:{s:5:\"ctype\";a:0:{}s:7:\"modules\";a:1:{i:1;a:1:{s:3:\"all\";s:1:\"1\";}}s:10:\"categories\";a:1:{s:3:\"all\";s:1:\"1\";}}',0);

--
-- Table structure for table `rex_user`
--

DROP TABLE IF EXISTS `rex_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `login` varchar(50) NOT NULL,
  `psw` varchar(50) NOT NULL,
  `status` varchar(5) NOT NULL,
  `rights` text NOT NULL,
  `login_tries` tinyint(4) DEFAULT '0',
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `lasttrydate` int(11) DEFAULT '0',
  `session_id` varchar(255) DEFAULT NULL,
  `cookiekey` varchar(255) DEFAULT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_user`
--

INSERT INTO `rex_user` VALUES (1,'Administrator','','root','bcb31637c16bd1d150b2ebbc9b8ac6683fa7253e','1','#admin[]#image_manager[]#import_export[export]#rex_multiupload[]#rex_multiupload[settings]#seo42[]#seo42[redirects_only]#seo42[tools_only]#string_table[]#textile[]#accesskeys[]#advancedMode[]#article2category[]#article2startpage[]#be_search[mediapool]#be_search[structure]#copyArticle[]#copyContent[]#moveArticle[]#moveCategory[]#moveSlice[]#publishArticle[]#publishCategory[]#seo42[seo_default]#seo42[seo_extended]#seo42[url_default]#textile[help]#',0,'setup','root',1412601259,1412607501,1422608610,'sqdo7phkt89ld553rghbjijk07',NULL,0);

--
-- Table structure for table `rex_xform_email_template`
--

DROP TABLE IF EXISTS `rex_xform_email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_xform_email_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `mail_from` varchar(255) NOT NULL DEFAULT '',
  `mail_from_name` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `body_html` text NOT NULL,
  `attachments` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_xform_email_template`
--


--
-- Table structure for table `rex_xform_field`
--

DROP TABLE IF EXISTS `rex_xform_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_xform_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) NOT NULL,
  `prio` int(11) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `list_hidden` tinyint(1) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `name` text NOT NULL,
  `label` text NOT NULL,
  `options` text NOT NULL,
  `current_date` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_xform_field`
--

INSERT INTO `rex_xform_field` VALUES (1,'guestbook',1,'value','text',0,1,'name','Name','',''),(2,'guestbook',2,'value','text',0,1,'email','E-Mail','',''),(3,'guestbook',3,'value','text',1,1,'homepage','Homepage','',''),(8,'guestbook',4,'value','text',1,1,'fromOrigin','Herkunft','',''),(6,'guestbook',5,'value','textarea',1,1,'comment','Kommentar','',''),(7,'guestbook',6,'value','select',0,1,'status','Status','offline,online',''),(9,'event',1,'value','text',0,1,'name','Name','',''),(10,'event',2,'value','date',1,1,'date','Datum','','1'),(11,'event',3,'value','be_mediapool',1,1,'image','Bild','',''),(12,'event',4,'value','textarea',1,1,'description','Beschreibung','','');

--
-- Table structure for table `rex_xform_table`
--

DROP TABLE IF EXISTS `rex_xform_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rex_xform_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `list_amount` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `list_sortfield` varchar(255) NOT NULL DEFAULT 'id',
  `list_sortorder` enum('ASC','DESC') NOT NULL DEFAULT 'ASC',
  `prio` int(11) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `export` tinyint(1) NOT NULL,
  `import` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_name` (`table_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rex_xform_table`
--

INSERT INTO `rex_xform_table` VALUES (1,1,'guestbook','G�stebuch','',50,'id','DESC',1,1,0,0,0),(2,1,'event','Veranstaltungen','',50,'id','DESC',2,1,0,0,0);
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-03 16:15:19
