-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Giornalista',7,'add_giornalista'),(26,'Can change Giornalista',7,'change_giornalista'),(27,'Can delete Giornalista',7,'delete_giornalista'),(28,'Can view Giornalista',7,'view_giornalista'),(29,'Can add Articolo',8,'add_articolo'),(30,'Can change Articolo',8,'change_articolo'),(31,'Can delete Articolo',8,'delete_articolo'),(32,'Can view Articolo',8,'view_articolo'),(33,'Can add evento',9,'add_evento'),(34,'Can change evento',9,'change_evento'),(35,'Can delete evento',9,'delete_evento'),(36,'Can view evento',9,'view_evento'),(37,'Can add Evento',10,'add_evento'),(38,'Can change Evento',10,'change_evento'),(39,'Can delete Evento',10,'delete_evento'),(40,'Can view Evento',10,'view_evento'),(41,'Can add contatto',11,'add_contatto'),(42,'Can change contatto',11,'change_contatto'),(43,'Can delete contatto',11,'delete_contatto'),(44,'Can view contatto',11,'view_contatto');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$P46MMbeTkbNV5TVD7JMJXo$qR8j/lBhYpfIw9YY7wC3UAQEOzzFK+Ym6emU3T2EgcY=','2025-03-05 09:33:05.515679',1,'admin','','','a@a.it',1,1,'2024-11-13 10:31:39.112490');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'eventi','evento'),(10,'eventi_culturali','evento'),(11,'forms_app','contatto'),(8,'news','articolo'),(7,'news','giornalista'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-02-05 10:35:50.911011'),(2,'auth','0001_initial','2025-02-05 10:35:51.293625'),(3,'admin','0001_initial','2025-02-05 10:35:51.400550'),(4,'admin','0002_logentry_remove_auto_add','2025-02-05 10:35:51.400550'),(5,'admin','0003_logentry_add_action_flag_choices','2025-02-05 10:35:51.413965'),(6,'contenttypes','0002_remove_content_type_name','2025-02-05 10:35:51.490693'),(7,'auth','0002_alter_permission_name_max_length','2025-02-05 10:35:51.535025'),(8,'auth','0003_alter_user_email_max_length','2025-02-05 10:35:51.553268'),(9,'auth','0004_alter_user_username_opts','2025-02-05 10:35:51.554269'),(10,'auth','0005_alter_user_last_login_null','2025-02-05 10:35:51.601776'),(11,'auth','0006_require_contenttypes_0002','2025-02-05 10:35:51.601776'),(12,'auth','0007_alter_validators_add_error_messages','2025-02-05 10:35:51.601776'),(13,'auth','0008_alter_user_username_max_length','2025-02-05 10:35:51.673886'),(14,'auth','0009_alter_user_last_name_max_length','2025-02-05 10:35:51.747487'),(15,'auth','0010_alter_group_name_max_length','2025-02-05 10:35:51.761551'),(16,'auth','0011_update_proxy_permissions','2025-02-05 10:35:51.766588'),(17,'auth','0012_alter_user_first_name_max_length','2025-02-05 10:35:51.804564'),(18,'eventi','0001_initial','2025-02-05 10:35:51.822035'),(19,'news','0001_initial','2025-02-05 10:35:51.886865'),(20,'news','0002_alter_articolo_options_alter_giornalista_options_and_more','2025-02-05 10:35:51.983453'),(21,'sessions','0001_initial','2025-02-05 10:35:52.010510'),(22,'eventi_culturali','0001_initial','2025-02-26 08:23:07.662407'),(23,'eventi_culturali','0002_alter_evento_titolo','2025-02-26 08:30:05.889383'),(24,'forms_app','0001_initial','2025-03-19 10:13:05.795388');
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
INSERT INTO `django_session` VALUES ('ehtsqu3wa8bpgtpu3r29wv24cl4bkepm','.eJxVjMsOwiAUBf-FtSGF0ou4dO83EO4DqRqalHZl_HfbpAvdnpk5bxXTupS4NpnjyOqijDr9bpjoKXUH_Ej1Pmma6jKPqHdFH7Tp28Tyuh7u30FJrWw1kAH2mIeMHHIQsA7BEiU04vLZW-g7gAABuzSwC36D3DtDIsEysPp8AfpjOEg:1tpl7h:_4Ge1Qd9TWGjFmVrfoAZm_VdT24ERwN3DbThB_RwoqQ','2025-03-19 09:33:05.518683'),('t83o958myez3f5yb2hlyfags79t8udif','.eJxVjMsOwiAUBf-FtSGF0ou4dO83EO4DqRqalHZl_HfbpAvdnpk5bxXTupS4NpnjyOqijDr9bpjoKXUH_Ej1Pmma6jKPqHdFH7Tp28Tyuh7u30FJrWw1kAH2mIeMHHIQsA7BEiU04vLZW-g7gAABuzSwC36D3DtDIsEysPp8AfpjOEg:1tfd4d:uGF_KIZnaTPVRjz7op493kkgaSEZK85sulBPDxzEUeA','2025-02-19 10:56:03.636081');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventi_culturali_evento`
--

DROP TABLE IF EXISTS `eventi_culturali_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventi_culturali_evento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titolo` varchar(50) NOT NULL,
  `descrizione` longtext NOT NULL,
  `data_inizio` date DEFAULT NULL,
  `data_fine` date DEFAULT NULL,
  `posti_disponibili` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventi_culturali_evento`
--

LOCK TABLES `eventi_culturali_evento` WRITE;
/*!40000 ALTER TABLE `eventi_culturali_evento` DISABLE KEYS */;
INSERT INTO `eventi_culturali_evento` VALUES (1,'Festival della Letteratura','','2025-04-05','2025-04-07',100),(2,'Mostra d\'Arte Contemporanea','','2025-05-12','2025-05-15',50),(3,'Concerto Jazz','','2025-06-22','2025-06-22',200),(4,'Rassegna di Cinema d\'Autore','','2025-07-01','2025-07-05',80),(5,'Conferenza su Intelligenza Artificiale','','2025-09-20','2025-09-20',150);
/*!40000 ALTER TABLE `eventi_culturali_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventi_evento`
--

DROP TABLE IF EXISTS `eventi_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventi_evento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titolo` varchar(25) NOT NULL,
  `data` date NOT NULL,
  `descrizione` longtext NOT NULL,
  `partecipanti` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventi_evento`
--

LOCK TABLES `eventi_evento` WRITE;
/*!40000 ALTER TABLE `eventi_evento` DISABLE KEYS */;
INSERT INTO `eventi_evento` VALUES (1,'Giornata dello Sport','2025-03-01','Una giornata dedicata alle attivitÃ  sportive per tutte le classi.',120),(3,'Festa di Fine Anno','2025-06-20','Un evento per celebrare la fine dell\'anno scolastico.',200),(4,'Settimana della Scienza','2025-05-10','Esperimenti e laboratori per tutte le classi.',150),(5,'Giornata della Lettura','2025-02-21','AttivitÃ  e letture condivise in biblioteca.',50);
/*!40000 ALTER TABLE `eventi_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_app_contatto`
--

DROP TABLE IF EXISTS `forms_app_contatto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forms_app_contatto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contenuto` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_app_contatto`
--

LOCK TABLES `forms_app_contatto` WRITE;
/*!40000 ALTER TABLE `forms_app_contatto` DISABLE KEYS */;
INSERT INTO `forms_app_contatto` VALUES (1,'Chiril','Bogaiciuc','chiril.bogaiciuc@alessandrinimainardi.edu.it','Ciao come stai?'),(2,'adsads','asdas','asdasdas@sada.it','asdasdsadasdasdsad');
/*!40000 ALTER TABLE `forms_app_contatto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_articolo`
--

DROP TABLE IF EXISTS `news_articolo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_articolo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titolo` varchar(100) NOT NULL,
  `contenuto` longtext NOT NULL,
  `giornalista_id` bigint NOT NULL,
  `data` date NOT NULL,
  `visualizzazioni` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_articolo_giornalista_id_420d1ff1_fk_news_giornalista_id` (`giornalista_id`),
  CONSTRAINT `news_articolo_giornalista_id_420d1ff1_fk_news_giornalista_id` FOREIGN KEY (`giornalista_id`) REFERENCES `news_giornalista` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_articolo`
--

LOCK TABLES `news_articolo` WRITE;
/*!40000 ALTER TABLE `news_articolo` DISABLE KEYS */;
INSERT INTO `news_articolo` VALUES (1,'Primo Articolo!','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec volutpat velit. Phasellus sagittis tempus nulla',2,'2024-12-18',0),(2,'Secondo Articolo','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec volutpat velit. Phasellus sagittis tempus nulla',3,'2024-12-18',0),(3,'Terzo Articolo','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ornare, diam ac rhoncus congue, urna risus efficitur eros, id sagittis lacus leo vel dui. Duis et odio risus. Cras at dictum metus. Duis a libero semper, euismod nibh nec, viverra purus. Pellentesque gravida venenatis mauris at aliquet. Duis id posuere lectus, sodales tincidunt quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed vehicula, nibh quis varius mollis, diam enim eleifend felis, sollicitudin molestie augue dolor nec lacus. Nulla dapibus, urna sed tempor venenatis, dui quam vestibulum turpis, vel dapibus diam nisi ac urna. Morbi placerat maximus pulvinar. Sed in risus auctor enim iaculis vulputate ac sit amet orci.',4,'2024-12-18',0),(4,'Quarto Articolo','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ornare, diam ac rhoncus congue, urna risus efficitur eros, id sagittis lacus leo vel dui. Duis et odio risus. Cras at dictum metus. Duis a libero semper, euismod nibh nec, viverra purus. Pellentesque gravida venenatis mauris at aliquet. Duis id posuere lectus, sodales tincidunt quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed vehicula, nibh quis varius mollis, diam enim eleifend felis, sollicitudin molestie augue dolor nec lacus. Nulla dapibus, urna sed tempor venenatis, dui quam vestibulum turpis, vel dapibus diam nisi ac urna. Morbi placerat maximus pulvinar. Sed in risus auctor enim iaculis vulputate ac sit amet orci.',5,'2024-12-18',0),(5,'Quinto Articolo','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ornare, diam ac rhoncus congue, urna risus efficitur eros, id sagittis lacus leo vel dui. Duis et odio risus. Cras at dictum metus. Duis a libero semper, euismod nibh nec, viverra purus. Pellentesque gravida venenatis mauris at aliquet. Duis id posuere lectus, sodales tincidunt quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed vehicula, nibh quis varius mollis, diam enim eleifend felis, sollicitudin molestie augue dolor nec lacus. Nulla dapibus, urna sed tempor venenatis, dui quam vestibulum turpis, vel dapibus diam nisi ac urna. Morbi placerat maximus pulvinar. Sed in risus auctor enim iaculis vulputate ac sit amet orci.',4,'2024-12-18',0),(6,'Sesto Articolo','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ornare, diam ac rhoncus congue, urna risus efficitur eros, id sagittis lacus leo vel dui. Duis et odio risus. Cras at dictum metus. Duis a libero semper, euismod nibh nec, viverra purus. Pellentesque gravida venenatis mauris at aliquet. Duis id posuere lectus, sodales tincidunt quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed vehicula, nibh quis varius mollis, diam enim eleifend felis, sollicitudin molestie augue dolor nec lacus. Nulla dapibus, urna sed tempor venenatis, dui quam vestibulum turpis, vel dapibus diam nisi ac urna. Morbi placerat maximus pulvinar. Sed in risus auctor enim iaculis vulputate ac sit amet orci.',5,'2024-12-18',0),(7,'Settimo articolo','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ornare, diam ac rhoncus congue, urna risus efficitur eros, id sagittis lacus leo vel dui. Duis et odio risus. Cras at dictum metus. Duis a libero semper, euismod nibh nec, viverra purus. Pellentesque gravida venenatis mauris at aliquet. Duis id posuere lectus, sodales tincidunt quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed vehicula, nibh quis varius mollis, diam enim eleifend felis, sollicitudin molestie augue dolor nec lacus. Nulla dapibus, urna sed tempor venenatis, dui quam vestibulum turpis, vel dapibus diam nisi ac urna. Morbi placerat maximus pulvinar. Sed in risus auctor enim iaculis vulputate ac sit amet orci.',6,'2024-12-18',0),(8,'Ottavo Articolo','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ornare, diam ac rhoncus congue, urna risus efficitur eros, id sagittis lacus leo vel dui. Duis et odio risus. Cras at dictum metus. Duis a libero semper, euismod nibh nec, viverra purus. Pellentesque gravida venenatis mauris at aliquet. Duis id posuere lectus, sodales tincidunt quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed vehicula, nibh quis varius mollis, diam enim eleifend felis, sollicitudin molestie augue dolor nec lacus. Nulla dapibus, urna sed tempor venenatis, dui quam vestibulum turpis, vel dapibus diam nisi ac urna. Morbi placerat maximus pulvinar. Sed in risus auctor enim iaculis vulputate ac sit amet orci.',6,'2024-12-18',0),(9,'Nono Articolo','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ornare, diam ac rhoncus congue, urna risus efficitur eros, id sagittis lacus leo vel dui. Duis et odio risus. Cras at dictum metus. Duis a libero semper, euismod nibh nec, viverra purus. Pellentesque gravida venenatis mauris at aliquet. Duis id posuere lectus, sodales tincidunt quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed vehicula, nibh quis varius mollis, diam enim eleifend felis, sollicitudin molestie augue dolor nec lacus. Nulla dapibus, urna sed tempor venenatis, dui quam vestibulum turpis, vel dapibus diam nisi ac urna. Morbi placerat maximus pulvinar. Sed in risus auctor enim iaculis vulputate ac sit amet orci.',7,'2024-12-18',0),(10,'Decimo Articolo','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ornare, diam ac rhoncus congue, urna risus efficitur eros, id sagittis lacus leo vel dui. Duis et odio risus. Cras at dictum metus. Duis a libero semper, euismod nibh nec, viverra purus. Pellentesque gravida venenatis mauris at aliquet. Duis id posuere lectus, sodales tincidunt quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed vehicula, nibh quis varius mollis, diam enim eleifend felis, sollicitudin molestie augue dolor nec lacus. Nulla dapibus, urna sed tempor venenatis, dui quam vestibulum turpis, vel dapibus diam nisi ac urna. Morbi placerat maximus pulvinar. Sed in risus auctor enim iaculis vulputate ac sit amet orci.',7,'2024-12-18',0),(11,'Undicesimo Articolo','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ornare, diam ac rhoncus congue, urna risus efficitur eros, id sagittis lacus leo vel dui. Duis et odio risus. Cras at dictum metus. Duis a libero semper, euismod nibh nec, viverra purus. Pellentesque gravida venenatis mauris at aliquet. Duis id posuere lectus, sodales tincidunt quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed vehicula, nibh quis varius mollis, diam enim eleifend felis, sollicitudin molestie augue dolor nec lacus. Nulla dapibus, urna sed tempor venenatis, dui quam vestibulum turpis, vel dapibus diam nisi ac urna. Morbi placerat maximus pulvinar. Sed in risus auctor enim iaculis vulputate ac sit amet orci.',8,'2024-12-18',0),(12,'Dodicesimo Articolo','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ornare, diam ac rhoncus congue, urna risus efficitur eros, id sagittis lacus leo vel dui. Duis et odio risus. Cras at dictum metus. Duis a libero semper, euismod nibh nec, viverra purus. Pellentesque gravida venenatis mauris at aliquet. Duis id posuere lectus, sodales tincidunt quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed vehicula, nibh quis varius mollis, diam enim eleifend felis, sollicitudin molestie augue dolor nec lacus. Nulla dapibus, urna sed tempor venenatis, dui quam vestibulum turpis, vel dapibus diam nisi ac urna. Morbi placerat maximus pulvinar. Sed in risus auctor enim iaculis vulputate ac sit amet orci.',8,'2024-12-18',0);
/*!40000 ALTER TABLE `news_articolo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_giornalista`
--

DROP TABLE IF EXISTS `news_giornalista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_giornalista` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `anno_di_nascita` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_giornalista`
--

LOCK TABLES `news_giornalista` WRITE;
/*!40000 ALTER TABLE `news_giornalista` DISABLE KEYS */;
INSERT INTO `news_giornalista` VALUES (2,'Simone','Ciniltani','2025-01-07'),(3,'Leonardo','DiCaprio','2025-01-07'),(4,'Simone','Panichi','2025-01-07'),(5,'Vitalie','Ciotu','2006-04-03'),(6,'Simone','Piasentin','2007-12-12'),(7,'Luca','Marcora','2006-09-01'),(8,'Emanuele','Paludetti','2006-04-03'),(9,'Chiril','Bogaiciuc','2005-10-12');
/*!40000 ALTER TABLE `news_giornalista` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-19 11:52:08
