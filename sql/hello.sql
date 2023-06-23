-- MySQL dump 10.13  Distrib 5.7.34, for osx10.17 (x86_64)
--
-- Host: 127.0.0.1    Database: hello
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `can_view_collaboration` bit(1) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `home_action` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `navigation` varchar(255) DEFAULT NULL,
  `technical_staff` bit(1) DEFAULT NULL,
  `view_customization_permission` int DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_39bl1cer3jfbgs0mesx94ar92` (`code`),
  UNIQUE KEY `UK_isc86ncykxnlkku68eqv1fgyw` (`name`),
  KEY `FK_r9is5ge01fcurjvpfagsuuoad` (`created_by`),
  KEY `FK_s8x260hcm0siwntuj698n2hic` (`updated_by`),
  CONSTRAINT `FK_r9is5ge01fcurjvpfagsuuoad` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_s8x260hcm0siwntuj698n2hic` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,NULL,2,'2023-06-12 18:15:11.043098','2023-06-12 18:15:19.125127',_binary '','admins',NULL,'Administrator',NULL,_binary '',1,1,1),(2,NULL,2,'2023-06-22 17:48:54.774480','2023-06-22 18:14:42.748118',_binary '','GERENCIA',NULL,'GERENCIA',NULL,_binary '\0',0,1,1),(3,NULL,2,'2023-06-22 17:49:07.860620','2023-06-22 18:16:48.518717',_binary '','OPERATIVO',NULL,'OPERATIVO',NULL,_binary '\0',0,1,1),(4,NULL,2,'2023-06-22 17:49:19.341321','2023-06-22 18:17:29.777597',_binary '','ASISTENTE',NULL,'ASISTENTE',NULL,_binary '\0',0,1,1);
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_meta_permissions`
--

DROP TABLE IF EXISTS `auth_group_meta_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_meta_permissions` (
  `auth_group` bigint NOT NULL,
  `meta_permissions` bigint NOT NULL,
  PRIMARY KEY (`auth_group`,`meta_permissions`),
  KEY `FK_6fvud0yualxnppl8c8o5th6bf` (`meta_permissions`),
  CONSTRAINT `FK_6fvud0yualxnppl8c8o5th6bf` FOREIGN KEY (`meta_permissions`) REFERENCES `meta_permission` (`id`),
  CONSTRAINT `FK_99t9uf2a2ngfqwr4w4x5stn5w` FOREIGN KEY (`auth_group`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_meta_permissions`
--

LOCK TABLES `auth_group_meta_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_meta_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_meta_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `auth_group` bigint NOT NULL,
  `permissions` bigint NOT NULL,
  PRIMARY KEY (`auth_group`,`permissions`),
  KEY `FK_f9taqgiiv74i7cqe0e54l99pe` (`permissions`),
  CONSTRAINT `FK_f9taqgiiv74i7cqe0e54l99pe` FOREIGN KEY (`permissions`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `FK_g42npgku1mtrxniuwwghl7ehs` FOREIGN KEY (`auth_group`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (2,6),(3,6),(4,7),(3,8),(2,9),(4,9),(2,10),(4,10),(3,11);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_roles`
--

DROP TABLE IF EXISTS `auth_group_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_roles` (
  `auth_group` bigint NOT NULL,
  `roles` bigint NOT NULL,
  PRIMARY KEY (`auth_group`,`roles`),
  KEY `FK_sv99d6xqyriwro7t5x07cj99r` (`roles`),
  CONSTRAINT `FK_s1ngmobew8jnagxqnnuol7e2x` FOREIGN KEY (`auth_group`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `FK_sv99d6xqyriwro7t5x07cj99r` FOREIGN KEY (`roles`) REFERENCES `auth_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_roles`
--

LOCK TABLES `auth_group_roles` WRITE;
/*!40000 ALTER TABLE `auth_group_roles` DISABLE KEYS */;
INSERT INTO `auth_group_roles` VALUES (2,1),(3,1),(4,1);
/*!40000 ALTER TABLE `auth_group_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_seq`
--

DROP TABLE IF EXISTS `auth_group_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_seq`
--

LOCK TABLES `auth_group_seq` WRITE;
/*!40000 ALTER TABLE `auth_group_seq` DISABLE KEYS */;
INSERT INTO `auth_group_seq` VALUES (5);
/*!40000 ALTER TABLE `auth_group_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `can_create` bit(1) DEFAULT NULL,
  `can_export` bit(1) DEFAULT NULL,
  `can_read` bit(1) DEFAULT NULL,
  `can_remove` bit(1) DEFAULT NULL,
  `can_write` bit(1) DEFAULT NULL,
  `condition_value` varchar(1024) DEFAULT NULL,
  `condition_params` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `object` varchar(255) NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_g9wv3jbmx5bagwrfdwayjs8go` (`name`),
  KEY `FK_f3vb02wwpii82pru62q7iyjxy` (`created_by`),
  KEY `FK_tray2m1ftua9e0dake87s6q9u` (`updated_by`),
  CONSTRAINT `FK_f3vb02wwpii82pru62q7iyjxy` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_tray2m1ftua9e0dake87s6q9u` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,NULL,1,'2023-06-22 18:01:47.960433','2023-06-22 18:12:13.240424',_binary '',_binary '\0',_binary '',_binary '',_binary '',NULL,NULL,'axelor-dms-rwd','com.axelor.dms.db.*',1,1),(2,NULL,1,'2023-06-22 18:02:15.156432','2023-06-22 18:12:20.305106',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',NULL,NULL,'axelor-mail-r','com.axelor.mail.db.*',1,1),(3,NULL,1,'2023-06-22 18:02:30.392668','2023-06-22 18:12:27.372097',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',NULL,NULL,'axelor-meta-r','com.axelor.meta.db.*',1,1),(4,NULL,1,'2023-06-22 18:02:43.807212','2023-06-22 18:12:36.032693',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',NULL,NULL,'axelor-team-r','com.axelor.team.db.*',1,1),(5,NULL,1,'2023-06-22 18:03:48.786477','2023-06-22 18:12:06.760808',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '','self.code = ?','__user__.code','axelor-auth-self-w','com.axelor.auth.db.User',1,1),(6,NULL,1,'2023-06-22 18:10:27.128972','2023-06-22 18:11:15.988754',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',NULL,NULL,'base-producto-r','com.eyc.base.db.Producto',1,1),(7,NULL,1,'2023-06-22 18:10:51.594157','2023-06-22 18:11:21.862243',_binary '',_binary '\0',_binary '',_binary '\0',_binary '',NULL,NULL,'base-producto-rw','com.eyc.base.db.Producto',1,1),(8,NULL,0,'2023-06-22 18:11:34.551744',NULL,_binary '',_binary '\0',_binary '',_binary '\0',_binary '',NULL,NULL,'base-cliente-rw','com.eyc.base.db.Cliente',1,NULL),(9,NULL,0,'2023-06-22 18:11:47.355921',NULL,_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',NULL,NULL,'base-cliente-r','com.eyc.base.db.Cliente',1,NULL),(10,NULL,0,'2023-06-22 18:13:17.933903',NULL,_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',NULL,NULL,'base-pago-r','com.eyc.base.db.Pago',1,NULL),(11,NULL,0,'2023-06-22 18:13:36.085684',NULL,_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '',NULL,NULL,'base-pago-rw','com.eyc.base.db.Pago',1,NULL);
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission_seq`
--

DROP TABLE IF EXISTS `auth_permission_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission_seq`
--

LOCK TABLES `auth_permission_seq` WRITE;
/*!40000 ALTER TABLE `auth_permission_seq` DISABLE KEYS */;
INSERT INTO `auth_permission_seq` VALUES (12);
/*!40000 ALTER TABLE `auth_permission_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_role`
--

DROP TABLE IF EXISTS `auth_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_role` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_lc1sij60969nsgl5cy8bfgbsm` (`name`),
  KEY `FK_d014t91bi3d1udigbmv8o8wp8` (`created_by`),
  KEY `FK_qmsxgcn50i22ixcpc5r8k5ttm` (`updated_by`),
  CONSTRAINT `FK_d014t91bi3d1udigbmv8o8wp8` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_qmsxgcn50i22ixcpc5r8k5ttm` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_role`
--

LOCK TABLES `auth_role` WRITE;
/*!40000 ALTER TABLE `auth_role` DISABLE KEYS */;
INSERT INTO `auth_role` VALUES (1,NULL,0,'2023-06-22 18:04:39.978657',NULL,'permisos por omision que debe de tener los usuarios','rol-normal-axelor-usuario',1,NULL);
/*!40000 ALTER TABLE `auth_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_role_meta_permissions`
--

DROP TABLE IF EXISTS `auth_role_meta_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_role_meta_permissions` (
  `auth_role` bigint NOT NULL,
  `meta_permissions` bigint NOT NULL,
  PRIMARY KEY (`auth_role`,`meta_permissions`),
  KEY `FK_1k4cf5ivb360bmnkfkj3l6yxf` (`meta_permissions`),
  CONSTRAINT `FK_1k4cf5ivb360bmnkfkj3l6yxf` FOREIGN KEY (`meta_permissions`) REFERENCES `meta_permission` (`id`),
  CONSTRAINT `FK_bq8f6gm7rdfron9ucauu1vuyy` FOREIGN KEY (`auth_role`) REFERENCES `auth_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_role_meta_permissions`
--

LOCK TABLES `auth_role_meta_permissions` WRITE;
/*!40000 ALTER TABLE `auth_role_meta_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_role_meta_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_role_permissions`
--

DROP TABLE IF EXISTS `auth_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_role_permissions` (
  `auth_role` bigint NOT NULL,
  `permissions` bigint NOT NULL,
  PRIMARY KEY (`auth_role`,`permissions`),
  KEY `FK_524tm89e2wrcrnij5kquilj5e` (`permissions`),
  CONSTRAINT `FK_524tm89e2wrcrnij5kquilj5e` FOREIGN KEY (`permissions`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `FK_thvhoynylv1dx2vf8c86swyme` FOREIGN KEY (`auth_role`) REFERENCES `auth_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_role_permissions`
--

LOCK TABLES `auth_role_permissions` WRITE;
/*!40000 ALTER TABLE `auth_role_permissions` DISABLE KEYS */;
INSERT INTO `auth_role_permissions` VALUES (1,1),(1,2),(1,3),(1,4),(1,5);
/*!40000 ALTER TABLE `auth_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_role_seq`
--

DROP TABLE IF EXISTS `auth_role_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_role_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_role_seq`
--

LOCK TABLES `auth_role_seq` WRITE;
/*!40000 ALTER TABLE `auth_role_seq` DISABLE KEYS */;
INSERT INTO `auth_role_seq` VALUES (2);
/*!40000 ALTER TABLE `auth_role_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `activate_on` datetime(6) DEFAULT NULL,
  `blocked` bit(1) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `expires_on` datetime(6) DEFAULT NULL,
  `force_password_change` bit(1) DEFAULT NULL,
  `home_action` varchar(255) DEFAULT NULL,
  `image` longblob,
  `language` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `no_help` bit(1) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `password_updated_on` datetime(6) DEFAULT NULL,
  `single_tab` bit(1) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_8u7omaa7g7kqp6u5gbi3ixc3k` (`code`),
  KEY `auth_user_name_IDX` (`name`),
  KEY `auth_user_group_id_IDX` (`group_id`),
  KEY `FK_j8uwc0wf76hh3r75calukqpfu` (`created_by`),
  KEY `FK_k6awdetk9rmlfb3nh2mkl2hio` (`updated_by`),
  CONSTRAINT `FK_amlpfk6mo2f0hbn3cgm1sxgvy` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `FK_j8uwc0wf76hh3r75calukqpfu` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_k6awdetk9rmlfb3nh2mkl2hio` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,NULL,149,'2023-06-12 18:15:11.050119','2023-06-22 18:31:11.082741',NULL,_binary '\0','admin',NULL,NULL,_binary '\0','accion-ver-tablero-del-curso',NULL,NULL,'Administrator',_binary '\0','$shiro1$SHA-512$500000$/Y+gSsAdda+0b2xU2ejcOw==$9Uw6ThTb+Q/swnmC09Wi0aLpwHMBs62G138Nt6cyQQVFXZ3IYtTsKPnvpMFQT7A7rxTqPf3ggwoNG14bftoY0g==',NULL,_binary '\0',NULL,1,1,1),(2,NULL,0,'2023-06-22 17:50:11.147247',NULL,NULL,_binary '\0','pedro','pedrolopez@example.com',NULL,_binary '\0',NULL,NULL,'es','Pedro Lopez',_binary '\0','$shiro1$SHA-512$500000$9opG2orRWyz97TtarleesA==$qgQhYqXQ1skf93qrZWUjeXmh1cTbCqI4qYxA76dPxynhjV10OMIpriASxdJOt9S9ZiG+Jjwz3N8fUQsVKfImdA==','2023-06-22 17:50:11.113724',_binary '\0','modern',1,NULL,2),(3,NULL,0,'2023-06-22 17:50:53.794885',NULL,NULL,_binary '\0','jose','josegonzalez@example.com',NULL,_binary '\0',NULL,NULL,'es','José Gonzalez',_binary '\0','$shiro1$SHA-512$500000$71laNtmhZlTakweIqgyeyQ==$vY2ERflughsfcq5oaXv96IeltMaCAf9ZahkuIZgAokjWmmyH3qgnskMgztSqh7IM2wKbqTh5uWbVUw/ECCLLOQ==','2023-06-22 17:50:53.781801',_binary '\0','modern',1,NULL,3),(4,NULL,1,'2023-06-22 17:51:25.141224','2023-06-22 17:51:30.055966',NULL,_binary '\0','paula','paularodriguez@example.com',NULL,_binary '\0',NULL,NULL,'es','Paula Rodriguez',_binary '\0','$shiro1$SHA-512$500000$ec6a0NWQPmiEXDelt2Z7Jw==$BzsMP0ha/w2eUnteCTiQtB5VAvHC6cUBhPlFoQdMGclxyB6ZqRVz1Zz4/L4gzU+4Z0dbAECG1tYKA42Plcn0aQ==','2023-06-22 17:51:25.126104',_binary '\0','modern',1,1,4);
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_meta_permissions`
--

DROP TABLE IF EXISTS `auth_user_meta_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_meta_permissions` (
  `auth_user` bigint NOT NULL,
  `meta_permissions` bigint NOT NULL,
  PRIMARY KEY (`auth_user`,`meta_permissions`),
  KEY `FK_qtu7q51l710xrr9mk5js65o5b` (`meta_permissions`),
  CONSTRAINT `FK_g43w711joeyaxfv8emjqlafgy` FOREIGN KEY (`auth_user`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_qtu7q51l710xrr9mk5js65o5b` FOREIGN KEY (`meta_permissions`) REFERENCES `meta_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_meta_permissions`
--

LOCK TABLES `auth_user_meta_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_meta_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_meta_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_permissions` (
  `auth_user` bigint NOT NULL,
  `permissions` bigint NOT NULL,
  PRIMARY KEY (`auth_user`,`permissions`),
  KEY `FK_ddylio6c2hd5ewtapqhkt8x43` (`permissions`),
  CONSTRAINT `FK_55sydc33j6iksfnyjvx9v2122` FOREIGN KEY (`auth_user`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_ddylio6c2hd5ewtapqhkt8x43` FOREIGN KEY (`permissions`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_permissions`
--

LOCK TABLES `auth_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_roles`
--

DROP TABLE IF EXISTS `auth_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_roles` (
  `auth_user` bigint NOT NULL,
  `roles` bigint NOT NULL,
  PRIMARY KEY (`auth_user`,`roles`),
  KEY `FK_g4do2mwwomxkjscq7nlowm3il` (`roles`),
  CONSTRAINT `FK_8i6hv5jhi6xx6lbi2yjhq6uyt` FOREIGN KEY (`auth_user`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_g4do2mwwomxkjscq7nlowm3il` FOREIGN KEY (`roles`) REFERENCES `auth_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_roles`
--

LOCK TABLES `auth_user_roles` WRITE;
/*!40000 ALTER TABLE `auth_user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_seq`
--

DROP TABLE IF EXISTS `auth_user_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_seq`
--

LOCK TABLES `auth_user_seq` WRITE;
/*!40000 ALTER TABLE `auth_user_seq` DISABLE KEYS */;
INSERT INTO `auth_user_seq` VALUES (5);
/*!40000 ALTER TABLE `auth_user_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_cliente`
--

DROP TABLE IF EXISTS `base_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_cliente` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `attrs` json DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `activo` bit(1) DEFAULT NULL,
  `comentarios` longtext,
  `saldo` decimal(12,2) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `nombre_completo` varchar(255) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_575bgvm0d1laaobc7ip9qg16w` (`created_by`),
  KEY `FK_khnyvseiguy3opsskamk3soie` (`updated_by`),
  CONSTRAINT `FK_575bgvm0d1laaobc7ip9qg16w` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_khnyvseiguy3opsskamk3soie` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_cliente`
--

LOCK TABLES `base_cliente` WRITE;
/*!40000 ALTER TABLE `base_cliente` DISABLE KEYS */;
INSERT INTO `base_cliente` VALUES (1,NULL,8,'2023-06-14 17:25:14.397061','2023-06-16 16:34:52.602573',NULL,1,1,'Martinez',_binary '',NULL,33230.00,'Angel','Angel Martinez',0),(2,NULL,6,'2023-06-14 18:58:49.115639','2023-06-19 17:16:53.969312',NULL,1,1,'Lopez',_binary '',NULL,20.00,'Pedro','Pedro Lopez',2),(3,NULL,7,'2023-06-14 18:59:29.983773','2023-06-16 16:33:19.871059',NULL,1,1,'Lopez Martinez I',_binary '',NULL,0.00,'Jose','Jose Lopez Martinez I',1),(4,NULL,7,'2023-06-15 15:04:57.422435','2023-06-19 17:04:21.946414',NULL,1,1,'Estrada Rosa',_binary '',NULL,207.00,'Mario','Mario Estrada Rosa',3),(5,NULL,2,'2023-06-21 18:12:45.121225','2023-06-21 18:14:06.606507',NULL,1,1,'PEREZ',_binary '',NULL,0.00,'PRUEBA','PRUEBA PEREZ',0),(6,NULL,0,'2023-06-21 18:40:13.222707',NULL,NULL,1,NULL,'1840',_binary '',NULL,0.00,'Prueb','Prueb 1840',0);
/*!40000 ALTER TABLE `base_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_cliente_seq`
--

DROP TABLE IF EXISTS `base_cliente_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_cliente_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_cliente_seq`
--

LOCK TABLES `base_cliente_seq` WRITE;
/*!40000 ALTER TABLE `base_cliente_seq` DISABLE KEYS */;
INSERT INTO `base_cliente_seq` VALUES (7);
/*!40000 ALTER TABLE `base_cliente_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_hello_world`
--

DROP TABLE IF EXISTS `base_hello_world`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_hello_world` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `attrs` json DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `numero_mensaje` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d1svat3sfta6au56l2qa6b6vf` (`created_by`),
  KEY `FK_nm7f6lda5rmblgnkkrry2tj1x` (`updated_by`),
  CONSTRAINT `FK_d1svat3sfta6au56l2qa6b6vf` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_nm7f6lda5rmblgnkkrry2tj1x` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_hello_world`
--

LOCK TABLES `base_hello_world` WRITE;
/*!40000 ALTER TABLE `base_hello_world` DISABLE KEYS */;
INSERT INTO `base_hello_world` VALUES (1,NULL,1,'2023-06-12 18:31:39.977220','2023-06-12 18:34:51.543036',NULL,'Hola El Mundo',1,1,2);
/*!40000 ALTER TABLE `base_hello_world` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_hello_world_seq`
--

DROP TABLE IF EXISTS `base_hello_world_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_hello_world_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_hello_world_seq`
--

LOCK TABLES `base_hello_world_seq` WRITE;
/*!40000 ALTER TABLE `base_hello_world_seq` DISABLE KEYS */;
INSERT INTO `base_hello_world_seq` VALUES (2);
/*!40000 ALTER TABLE `base_hello_world_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_pago`
--

DROP TABLE IF EXISTS `base_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_pago` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `attrs` json DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `monto` decimal(12,2) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `cliente` bigint DEFAULT NULL,
  `consolidado` bit(1) DEFAULT NULL,
  `numero_documento` varchar(255) DEFAULT NULL,
  `tipo_pago` varchar(255) DEFAULT NULL,
  `tipo_moneda` varchar(255) DEFAULT NULL,
  `monto_original` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `base_pago_cliente_IDX` (`cliente`),
  KEY `FK_43xp7y5mvorikkw4b15iqkd9i` (`created_by`),
  KEY `FK_126kvetqy97f4ufxut0t78nuh` (`updated_by`),
  CONSTRAINT `FK_126kvetqy97f4ufxut0t78nuh` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_2ki897x3kvsq2occeqvabsrde` FOREIGN KEY (`cliente`) REFERENCES `base_cliente` (`id`),
  CONSTRAINT `FK_43xp7y5mvorikkw4b15iqkd9i` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_pago`
--

LOCK TABLES `base_pago` WRITE;
/*!40000 ALTER TABLE `base_pago` DISABLE KEYS */;
INSERT INTO `base_pago` VALUES (1,NULL,1,'2023-06-14 17:25:30.278542','2023-06-15 15:16:14.835147',NULL,'2023-06-23',19.00,1,1,1,_binary '\0',NULL,NULL,NULL,NULL),(2,NULL,0,'2023-06-14 17:27:28.466183',NULL,NULL,'2023-06-16',2.00,1,NULL,1,NULL,NULL,NULL,NULL,NULL),(3,NULL,2,'2023-06-14 17:32:39.723745','2023-06-15 15:16:14.835056',NULL,'2023-06-15',11.00,1,1,1,_binary '',NULL,NULL,NULL,NULL),(4,NULL,0,'2023-06-14 18:58:49.124259',NULL,NULL,'2023-06-23',20.00,1,NULL,2,_binary '\0',NULL,NULL,NULL,NULL),(5,NULL,1,'2023-06-14 18:58:49.130208','2023-06-15 16:52:37.326437',NULL,'2023-06-16',2.00,1,1,2,_binary '',NULL,NULL,NULL,NULL),(6,NULL,1,'2023-06-14 18:58:49.133376','2023-06-15 15:16:30.933683',NULL,'2023-06-15',115.00,1,1,2,_binary '',NULL,NULL,NULL,NULL),(7,NULL,0,'2023-06-14 18:59:30.002592',NULL,NULL,'2023-06-23',20.00,1,NULL,3,_binary '\0',NULL,NULL,NULL,NULL),(8,NULL,0,'2023-06-14 18:59:30.009584',NULL,NULL,'2023-06-16',2.00,1,NULL,3,_binary '\0',NULL,NULL,NULL,NULL),(9,NULL,0,'2023-06-14 18:59:30.016646',NULL,NULL,'2023-06-15',123.00,1,NULL,3,_binary '',NULL,NULL,NULL,NULL),(10,NULL,0,'2023-06-15 20:54:57.658444',NULL,NULL,'2023-06-16',12.33,1,NULL,3,_binary '\0',NULL,NULL,NULL,NULL),(11,NULL,1,'2023-06-16 15:08:10.936505','2023-06-19 19:16:25.235253',NULL,'2023-06-06',10.00,1,1,4,_binary '\0','4434','cheque',NULL,NULL),(12,NULL,1,'2023-06-16 15:09:51.122069','2023-06-19 19:16:34.377267',NULL,'2023-06-07',4.00,1,1,4,_binary '\0','rwrer','tarjeta',NULL,NULL),(13,NULL,1,'2023-06-16 15:21:12.105932','2023-06-16 16:40:15.445490',NULL,'2023-06-07',10.00,1,1,4,_binary '\0',NULL,NULL,NULL,NULL),(14,NULL,0,'2023-06-16 18:30:24.960259',NULL,NULL,'2023-06-16',-200.00,1,NULL,4,_binary '\0',NULL,NULL,NULL,NULL),(15,NULL,1,'2023-06-16 18:31:18.279757','2023-06-16 18:52:47.007546',NULL,'2023-06-16',-10.00,1,1,4,_binary '\0',NULL,NULL,NULL,NULL),(16,NULL,0,'2023-06-16 18:37:28.536729',NULL,NULL,'2023-06-16',-20.00,1,NULL,4,_binary '\0',NULL,NULL,NULL,NULL),(17,NULL,0,'2023-06-16 18:52:38.773692',NULL,NULL,'2023-06-16',-200.00,1,NULL,4,_binary '\0',NULL,NULL,NULL,NULL),(18,NULL,0,'2023-06-16 18:53:58.192486',NULL,NULL,'2023-06-16',20.00,1,NULL,4,_binary '\0',NULL,NULL,NULL,NULL),(19,NULL,0,'2023-06-19 16:55:08.236395',NULL,NULL,'2023-06-19',10.00,1,NULL,4,_binary '\0',NULL,NULL,NULL,NULL),(23,NULL,0,'2023-06-19 17:02:48.187978',NULL,NULL,'2023-06-19',5.00,1,NULL,4,_binary '\0',NULL,NULL,NULL,NULL),(24,NULL,0,'2023-06-19 17:04:21.930689',NULL,NULL,'2023-06-19',8.00,1,NULL,4,_binary '\0',NULL,NULL,NULL,NULL),(25,NULL,0,'2023-06-19 17:16:53.960944',NULL,NULL,'2023-06-19',3.00,1,NULL,2,_binary '\0',NULL,NULL,NULL,NULL),(26,NULL,0,'2023-06-19 19:16:11.269490',NULL,NULL,'2023-06-19',0.00,1,NULL,4,_binary '\0','3434','tarjeta',NULL,NULL),(27,NULL,0,'2023-06-21 16:50:46.814391',NULL,NULL,'2023-06-21',0.00,1,NULL,1,_binary '\0',NULL,'efectivo','USD',20.00);
/*!40000 ALTER TABLE `base_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_pago_seq`
--

DROP TABLE IF EXISTS `base_pago_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_pago_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_pago_seq`
--

LOCK TABLES `base_pago_seq` WRITE;
/*!40000 ALTER TABLE `base_pago_seq` DISABLE KEYS */;
INSERT INTO `base_pago_seq` VALUES (28);
/*!40000 ALTER TABLE `base_pago_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_producto`
--

DROP TABLE IF EXISTS `base_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_producto` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `activo` bit(1) DEFAULT NULL,
  `attrs` json DEFAULT NULL,
  `codigo_externo` int DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` decimal(12,2) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `imagen` bigint DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `base_producto_imagen_IDX` (`imagen`),
  KEY `FK_8lq80y6575fbjakmdpwd54nav` (`created_by`),
  KEY `FK_ikpwbj2d1lmde68lxcjb15l82` (`updated_by`),
  CONSTRAINT `FK_8lq80y6575fbjakmdpwd54nav` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_idy1galrmbjh2x62rd54oxwml` FOREIGN KEY (`imagen`) REFERENCES `meta_file` (`id`),
  CONSTRAINT `FK_ikpwbj2d1lmde68lxcjb15l82` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_producto`
--

LOCK TABLES `base_producto` WRITE;
/*!40000 ALTER TABLE `base_producto` DISABLE KEYS */;
INSERT INTO `base_producto` VALUES (1,NULL,5,'2023-06-21 15:12:08.855871','2023-06-21 17:45:16.544121',_binary '',NULL,2,'asfsd',0.00,1,1,5,NULL,NULL),(2,NULL,1,'2023-06-21 17:42:48.112907','2023-06-21 17:45:04.479865',_binary '',NULL,29,'Descripción Prueba',0.00,1,1,NULL,NULL,NULL),(4,NULL,0,'2023-06-22 15:41:17.892381',NULL,_binary '',NULL,0,'producto uno',12.23,1,NULL,NULL,'SODAS','PEPSI'),(5,NULL,1,'2023-06-22 15:47:44.703779','2023-06-22 15:49:27.610282',_binary '\0',NULL,0,'producto dos',13.23,1,1,NULL,'SODAS','COCA COLA'),(6,NULL,1,'2023-06-22 16:23:29.041407','2023-06-22 18:20:15.147834',_binary '\0',NULL,20,'producto tres',8.20,1,4,NULL,'SODAS','FANTA');
/*!40000 ALTER TABLE `base_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_producto_seq`
--

DROP TABLE IF EXISTS `base_producto_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_producto_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_producto_seq`
--

LOCK TABLES `base_producto_seq` WRITE;
/*!40000 ALTER TABLE `base_producto_seq` DISABLE KEYS */;
INSERT INTO `base_producto_seq` VALUES (7);
/*!40000 ALTER TABLE `base_producto_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dms_file`
--

DROP TABLE IF EXISTS `dms_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dms_file` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `content` longtext,
  `content_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `is_directory` bit(1) DEFAULT NULL,
  `related_id` bigint DEFAULT NULL,
  `related_model` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `meta_file` bigint DEFAULT NULL,
  `parent` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dms_file_file_name_IDX` (`file_name`),
  KEY `dms_file_parent_IDX` (`parent`),
  KEY `dms_file_meta_file_IDX` (`meta_file`),
  KEY `FK_isqqivc6brgle70ejev0ouxyp` (`created_by`),
  KEY `FK_163vpdfuqhyu55si7jv5ahw7t` (`updated_by`),
  CONSTRAINT `FK_163vpdfuqhyu55si7jv5ahw7t` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_isqqivc6brgle70ejev0ouxyp` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_miang00shyvt5u1km5fc87xs8` FOREIGN KEY (`parent`) REFERENCES `dms_file` (`id`),
  CONSTRAINT `FK_ry2ht626gg2ehqu1n7vxm5ng4` FOREIGN KEY (`meta_file`) REFERENCES `meta_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dms_file`
--

LOCK TABLES `dms_file` WRITE;
/*!40000 ALTER TABLE `dms_file` DISABLE KEYS */;
INSERT INTO `dms_file` VALUES (1,NULL,0,'2023-06-21 18:42:09.054011',NULL,NULL,NULL,'cinta (1) (1).png',_binary '\0',0,NULL,1,NULL,6,NULL),(2,NULL,1,'2023-06-22 18:15:35.567829','2023-06-22 18:15:35.613394',NULL,NULL,'cinta.png',_binary '\0',3,'com.eyc.base.db.Cliente',2,2,7,4),(3,NULL,0,'2023-06-22 18:15:35.604082',NULL,NULL,NULL,'Clientes',_binary '',0,'com.eyc.base.db.Cliente',2,NULL,NULL,NULL),(4,NULL,0,'2023-06-22 18:15:35.611536',NULL,NULL,NULL,'00003',_binary '',3,'com.eyc.base.db.Cliente',2,NULL,NULL,3);
/*!40000 ALTER TABLE `dms_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dms_file_seq`
--

DROP TABLE IF EXISTS `dms_file_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dms_file_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dms_file_seq`
--

LOCK TABLES `dms_file_seq` WRITE;
/*!40000 ALTER TABLE `dms_file_seq` DISABLE KEYS */;
INSERT INTO `dms_file_seq` VALUES (5);
/*!40000 ALTER TABLE `dms_file_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dms_file_tag`
--

DROP TABLE IF EXISTS `dms_file_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dms_file_tag` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `style` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_g8tnukmkpwov6qmouufn65rvq` (`code`),
  UNIQUE KEY `UK_2dch28akv7e6e9nonm5m6d8ss` (`name`),
  KEY `FK_ae54tdh2ib2lpfn2jdinaepe1` (`created_by`),
  KEY `FK_te0bf1qi155u4xqe897mqqddi` (`updated_by`),
  CONSTRAINT `FK_ae54tdh2ib2lpfn2jdinaepe1` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_te0bf1qi155u4xqe897mqqddi` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dms_file_tag`
--

LOCK TABLES `dms_file_tag` WRITE;
/*!40000 ALTER TABLE `dms_file_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `dms_file_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dms_file_tag_seq`
--

DROP TABLE IF EXISTS `dms_file_tag_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dms_file_tag_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dms_file_tag_seq`
--

LOCK TABLES `dms_file_tag_seq` WRITE;
/*!40000 ALTER TABLE `dms_file_tag_seq` DISABLE KEYS */;
INSERT INTO `dms_file_tag_seq` VALUES (1);
/*!40000 ALTER TABLE `dms_file_tag_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dms_file_tags`
--

DROP TABLE IF EXISTS `dms_file_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dms_file_tags` (
  `dms_file` bigint NOT NULL,
  `tags` bigint NOT NULL,
  PRIMARY KEY (`dms_file`,`tags`),
  KEY `FK_cnr9juvqj0a6cavwjiwuhjggl` (`tags`),
  CONSTRAINT `FK_5yyb3urpdasgs2flwi95y71u7` FOREIGN KEY (`dms_file`) REFERENCES `dms_file` (`id`),
  CONSTRAINT `FK_cnr9juvqj0a6cavwjiwuhjggl` FOREIGN KEY (`tags`) REFERENCES `dms_file_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dms_file_tags`
--

LOCK TABLES `dms_file_tags` WRITE;
/*!40000 ALTER TABLE `dms_file_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `dms_file_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dms_permission`
--

DROP TABLE IF EXISTS `dms_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dms_permission` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `file_id` bigint DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  `permission_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dms_permission_file_id_IDX` (`file_id`),
  KEY `dms_permission_group_id_IDX` (`group_id`),
  KEY `dms_permission_user_id_IDX` (`user_id`),
  KEY `dms_permission_permission_id_IDX` (`permission_id`),
  KEY `FK_942gipav0xvlbod1xtqn0ig63` (`created_by`),
  KEY `FK_qcbrnbww79pq81n5hejaw6i7x` (`updated_by`),
  CONSTRAINT `FK_127pwlmjs9cvtagrav5imuiwg` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_942gipav0xvlbod1xtqn0ig63` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_a5kcaiqiqlkqkbnphm5soyq9w` FOREIGN KEY (`file_id`) REFERENCES `dms_file` (`id`),
  CONSTRAINT `FK_mw9fg3h347sq8d3sgt6gn35ud` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `FK_qcbrnbww79pq81n5hejaw6i7x` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_sxu4qhl4br0pld7lgtrq0bfbl` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dms_permission`
--

LOCK TABLES `dms_permission` WRITE;
/*!40000 ALTER TABLE `dms_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `dms_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dms_permission_seq`
--

DROP TABLE IF EXISTS `dms_permission_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dms_permission_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dms_permission_seq`
--

LOCK TABLES `dms_permission_seq` WRITE;
/*!40000 ALTER TABLE `dms_permission_seq` DISABLE KEYS */;
INSERT INTO `dms_permission_seq` VALUES (1);
/*!40000 ALTER TABLE `dms_permission_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_address`
--

DROP TABLE IF EXISTS `mail_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_address` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `email_address` varchar(255) NOT NULL,
  `personal_name` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b4gg1srm6k2kvvkv5k7omoskq` (`created_by`),
  KEY `FK_cd51u8x6pi5hc8xmdswdiaf5l` (`updated_by`),
  CONSTRAINT `FK_b4gg1srm6k2kvvkv5k7omoskq` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_cd51u8x6pi5hc8xmdswdiaf5l` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_address`
--

LOCK TABLES `mail_address` WRITE;
/*!40000 ALTER TABLE `mail_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_address_seq`
--

DROP TABLE IF EXISTS `mail_address_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_address_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_address_seq`
--

LOCK TABLES `mail_address_seq` WRITE;
/*!40000 ALTER TABLE `mail_address_seq` DISABLE KEYS */;
INSERT INTO `mail_address_seq` VALUES (1);
/*!40000 ALTER TABLE `mail_address_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_flags`
--

DROP TABLE IF EXISTS `mail_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_flags` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `is_archived` bit(1) DEFAULT NULL,
  `is_read` bit(1) DEFAULT NULL,
  `is_starred` bit(1) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `message` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_flags_user_id_IDX` (`user_id`),
  KEY `mail_flags_message_IDX` (`message`),
  KEY `FK_ov44ek1v3bp0o0qimfggscrwi` (`created_by`),
  KEY `FK_s20v2gawgan2gv95vanx58u2w` (`updated_by`),
  CONSTRAINT `FK_hoo3b947nr2tlcfwynx0l0kxc` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_ov44ek1v3bp0o0qimfggscrwi` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_s20v2gawgan2gv95vanx58u2w` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_tcjd4ykmq8boj6kf4xgt8u1ay` FOREIGN KEY (`message`) REFERENCES `mail_message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_flags`
--

LOCK TABLES `mail_flags` WRITE;
/*!40000 ALTER TABLE `mail_flags` DISABLE KEYS */;
INSERT INTO `mail_flags` VALUES (1,NULL,0,'2023-06-21 18:22:11.803210',NULL,_binary '\0',_binary '',_binary '\0',1,NULL,4,1),(2,NULL,0,'2023-06-21 18:41:10.424683',NULL,_binary '\0',_binary '',_binary '\0',1,NULL,6,1),(3,NULL,0,'2023-06-21 18:41:39.240645',NULL,_binary '\0',_binary '',_binary '\0',1,NULL,7,1),(4,NULL,0,'2023-06-21 18:42:12.881267',NULL,_binary '\0',_binary '',_binary '\0',1,NULL,8,1);
/*!40000 ALTER TABLE `mail_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_flags_seq`
--

DROP TABLE IF EXISTS `mail_flags_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_flags_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_flags_seq`
--

LOCK TABLES `mail_flags_seq` WRITE;
/*!40000 ALTER TABLE `mail_flags_seq` DISABLE KEYS */;
INSERT INTO `mail_flags_seq` VALUES (5);
/*!40000 ALTER TABLE `mail_flags_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_follower`
--

DROP TABLE IF EXISTS `mail_follower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_follower` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `related_id` bigint DEFAULT NULL,
  `related_model` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `email` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_follower_user_id_IDX` (`user_id`),
  KEY `mail_follower_email_IDX` (`email`),
  KEY `FK_p2y4wnca21t50oqrh6o0y5mh7` (`created_by`),
  KEY `FK_nj42whqsygbhkh62sru1g4bw8` (`updated_by`),
  CONSTRAINT `FK_c8s5nl7atkdmc03ndvjvo6b2d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_m4tousyh5ij7oqpjp3okx5810` FOREIGN KEY (`email`) REFERENCES `mail_address` (`id`),
  CONSTRAINT `FK_nj42whqsygbhkh62sru1g4bw8` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_p2y4wnca21t50oqrh6o0y5mh7` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_follower`
--

LOCK TABLES `mail_follower` WRITE;
/*!40000 ALTER TABLE `mail_follower` DISABLE KEYS */;
INSERT INTO `mail_follower` VALUES (1,_binary '',3,'2023-06-21 18:40:47.193679','2023-06-21 18:41:27.296115',6,'com.eyc.base.db.Cliente',1,1,NULL,1);
/*!40000 ALTER TABLE `mail_follower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_follower_seq`
--

DROP TABLE IF EXISTS `mail_follower_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_follower_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_follower_seq`
--

LOCK TABLES `mail_follower_seq` WRITE;
/*!40000 ALTER TABLE `mail_follower_seq` DISABLE KEYS */;
INSERT INTO `mail_follower_seq` VALUES (2);
/*!40000 ALTER TABLE `mail_follower_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_message`
--

DROP TABLE IF EXISTS `mail_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_message` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `body` longtext,
  `message_id` varchar(255) DEFAULT NULL,
  `related_id` bigint DEFAULT NULL,
  `related_model` varchar(255) DEFAULT NULL,
  `related_name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `author` bigint DEFAULT NULL,
  `email_from` bigint DEFAULT NULL,
  `parent` bigint DEFAULT NULL,
  `root` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ndlxunba9c3ankiq7x89j1818` (`message_id`),
  KEY `mail_message_related_model_related_id_IDX` (`related_model`,`related_id`),
  KEY `mail_message_author_IDX` (`author`),
  KEY `mail_message_email_from_IDX` (`email_from`),
  KEY `mail_message_subject_IDX` (`subject`),
  KEY `mail_message_root_IDX` (`root`),
  KEY `mail_message_parent_IDX` (`parent`),
  KEY `FK_aabs0r6llmjvfkkeiqyfhspx2` (`created_by`),
  KEY `FK_80x8p50f1udy9r5kkljher01d` (`updated_by`),
  CONSTRAINT `FK_2morsbvk0kr4c6wkff6inmgfj` FOREIGN KEY (`email_from`) REFERENCES `mail_address` (`id`),
  CONSTRAINT `FK_6ix3qamiv3asr7ot2uotejk8e` FOREIGN KEY (`root`) REFERENCES `mail_message` (`id`),
  CONSTRAINT `FK_80x8p50f1udy9r5kkljher01d` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_9vcywthvk46spfrtwaayby5sd` FOREIGN KEY (`parent`) REFERENCES `mail_message` (`id`),
  CONSTRAINT `FK_aabs0r6llmjvfkkeiqyfhspx2` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_hceyv29o3ldalyhbwyke3xjac` FOREIGN KEY (`author`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_message`
--

LOCK TABLES `mail_message` WRITE;
/*!40000 ALTER TABLE `mail_message` DISABLE KEYS */;
INSERT INTO `mail_message` VALUES (1,NULL,0,'2023-06-21 18:12:45.176793',NULL,'{\"title\":\"Record created\",\"tracks\":[{\"name\":\"nombre\",\"title\":\"Nombre\",\"value\":\"PRUEBA\"},{\"name\":\"apellidos\",\"title\":\"Apellidos\",\"value\":\"PEREZ\"},{\"name\":\"activo\",\"title\":\"es Activo?\",\"value\":\"True\"}],\"tags\":[{\"style\":\"success\",\"title\":\"Cliente ha sido creado\"}]}','<846002222.0.1687392765169@localhost>',5,'com.eyc.base.db.Cliente',NULL,'Record created',NULL,'notification',1,NULL,1,NULL,NULL,NULL),(2,NULL,0,'2023-06-21 18:13:47.018482',NULL,'{\"title\":\"Record updated\",\"tracks\":[{\"name\":\"activo\",\"oldValue\":\"True\",\"title\":\"es Activo?\",\"value\":\"False\"}],\"tags\":[]}','<2088778332.1.1687392827007@localhost>',5,'com.eyc.base.db.Cliente',NULL,'Record updated',NULL,'notification',1,NULL,1,NULL,1,1),(3,NULL,0,'2023-06-21 18:14:06.620656',NULL,'{\"title\":\"Record updated\",\"tracks\":[{\"name\":\"activo\",\"oldValue\":\"False\",\"title\":\"es Activo?\",\"value\":\"True\"}],\"tags\":[]}','<298642173.2.1687392846613@localhost>',5,'com.eyc.base.db.Cliente',NULL,'Record updated',NULL,'notification',1,NULL,1,NULL,1,1),(4,NULL,0,'2023-06-21 18:22:11.793448',NULL,'asdads','<608782768.0.1687393331771@localhost>',5,'com.eyc.base.db.Cliente',NULL,NULL,NULL,'comment',1,NULL,1,NULL,1,1),(5,NULL,0,'2023-06-21 18:40:13.271581',NULL,'{\"title\":\"Record created\",\"tracks\":[{\"name\":\"nombre\",\"title\":\"Nombre\",\"value\":\"Prueb\"},{\"name\":\"apellidos\",\"title\":\"Apellidos\",\"value\":\"1840\"},{\"name\":\"activo\",\"title\":\"es Activo?\",\"value\":\"True\"}],\"tags\":[{\"style\":\"success\",\"title\":\"Cliente ha sido creado\"}]}','<1360809680.1.1687394413267@localhost>',6,'com.eyc.base.db.Cliente',NULL,'Record created',NULL,'notification',1,NULL,1,NULL,NULL,NULL),(6,NULL,0,'2023-06-21 18:41:10.421850',NULL,'Este cliente necesita nIT','<1222619850.2.1687394470416@localhost>',6,'com.eyc.base.db.Cliente',NULL,NULL,NULL,'comment',1,NULL,1,NULL,5,5),(7,NULL,0,'2023-06-21 18:41:39.236944',NULL,'hola comentario como NO seguidor','<1028682095.3.1687394499227@localhost>',6,'com.eyc.base.db.Cliente',NULL,NULL,NULL,'comment',1,NULL,1,NULL,5,5),(8,NULL,0,'2023-06-21 18:42:12.877208',NULL,'comentario con archivo','<1135989513.4.1687394532863@localhost>',6,'com.eyc.base.db.Cliente',NULL,NULL,NULL,'comment',1,NULL,1,NULL,5,5);
/*!40000 ALTER TABLE `mail_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_message_recipients`
--

DROP TABLE IF EXISTS `mail_message_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_message_recipients` (
  `mail_message` bigint NOT NULL,
  `recipients` bigint NOT NULL,
  PRIMARY KEY (`mail_message`,`recipients`),
  KEY `FK_6dk382dik29f7st4tn0dkbvd0` (`recipients`),
  CONSTRAINT `FK_6dk382dik29f7st4tn0dkbvd0` FOREIGN KEY (`recipients`) REFERENCES `mail_address` (`id`),
  CONSTRAINT `FK_r9t2c5rhgp51b3cl7ik7jsihj` FOREIGN KEY (`mail_message`) REFERENCES `mail_message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_message_recipients`
--

LOCK TABLES `mail_message_recipients` WRITE;
/*!40000 ALTER TABLE `mail_message_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_message_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_message_seq`
--

DROP TABLE IF EXISTS `mail_message_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_message_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_message_seq`
--

LOCK TABLES `mail_message_seq` WRITE;
/*!40000 ALTER TABLE `mail_message_seq` DISABLE KEYS */;
INSERT INTO `mail_message_seq` VALUES (9);
/*!40000 ALTER TABLE `mail_message_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_attachment`
--

DROP TABLE IF EXISTS `meta_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_attachment` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `object_id` bigint NOT NULL,
  `object_name` varchar(255) NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `meta_file` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_egojr591g70du3ewgh6446830` (`object_name`,`object_id`,`meta_file`),
  KEY `meta_attachment_meta_file_IDX` (`meta_file`),
  KEY `FK_h9rykatbitbcaxdcq0t3c9tl0` (`created_by`),
  KEY `FK_c3hilckglylwj3gw4f2a62wk2` (`updated_by`),
  CONSTRAINT `FK_c3hilckglylwj3gw4f2a62wk2` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_h9rykatbitbcaxdcq0t3c9tl0` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_plpxltvj6gljtmltmi9nlcp4h` FOREIGN KEY (`meta_file`) REFERENCES `meta_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_attachment`
--

LOCK TABLES `meta_attachment` WRITE;
/*!40000 ALTER TABLE `meta_attachment` DISABLE KEYS */;
INSERT INTO `meta_attachment` VALUES (1,NULL,0,'2023-06-22 18:15:35.593364',NULL,3,'com.eyc.base.db.Cliente',2,NULL,7);
/*!40000 ALTER TABLE `meta_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_attachment_seq`
--

DROP TABLE IF EXISTS `meta_attachment_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_attachment_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_attachment_seq`
--

LOCK TABLES `meta_attachment_seq` WRITE;
/*!40000 ALTER TABLE `meta_attachment_seq` DISABLE KEYS */;
INSERT INTO `meta_attachment_seq` VALUES (2);
/*!40000 ALTER TABLE `meta_attachment_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_attrs`
--

DROP TABLE IF EXISTS `meta_attrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_attrs` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `condition_value` varchar(1024) DEFAULT NULL,
  `field_name` varchar(255) NOT NULL,
  `model_name` varchar(255) NOT NULL,
  `attr_name` varchar(255) NOT NULL,
  `order_seq` int DEFAULT NULL,
  `attr_value` varchar(255) NOT NULL,
  `view_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_attrs_attr_name_IDX` (`attr_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_attrs`
--

LOCK TABLES `meta_attrs` WRITE;
/*!40000 ALTER TABLE `meta_attrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_attrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_attrs_roles`
--

DROP TABLE IF EXISTS `meta_attrs_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_attrs_roles` (
  `meta_attrs` bigint NOT NULL,
  `roles` bigint NOT NULL,
  PRIMARY KEY (`meta_attrs`,`roles`),
  KEY `FK_ervhm6kcvcgv5a4pbe182lilv` (`roles`),
  CONSTRAINT `FK_5j0v1bvu32b49e9q1wfsohu8w` FOREIGN KEY (`meta_attrs`) REFERENCES `meta_attrs` (`id`),
  CONSTRAINT `FK_ervhm6kcvcgv5a4pbe182lilv` FOREIGN KEY (`roles`) REFERENCES `auth_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_attrs_roles`
--

LOCK TABLES `meta_attrs_roles` WRITE;
/*!40000 ALTER TABLE `meta_attrs_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_attrs_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_attrs_seq`
--

DROP TABLE IF EXISTS `meta_attrs_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_attrs_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_attrs_seq`
--

LOCK TABLES `meta_attrs_seq` WRITE;
/*!40000 ALTER TABLE `meta_attrs_seq` DISABLE KEYS */;
INSERT INTO `meta_attrs_seq` VALUES (1);
/*!40000 ALTER TABLE `meta_attrs_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_enum`
--

DROP TABLE IF EXISTS `meta_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_enum` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_o1p9lex6y9u4qi3506499of` (`name`),
  KEY `FK_blaiiys1wjyxrjvlnqkwbdq77` (`created_by`),
  KEY `FK_8lqa3qftbsk4eg1bepriv3ugt` (`updated_by`),
  CONSTRAINT `FK_8lqa3qftbsk4eg1bepriv3ugt` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_blaiiys1wjyxrjvlnqkwbdq77` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_enum`
--

LOCK TABLES `meta_enum` WRITE;
/*!40000 ALTER TABLE `meta_enum` DISABLE KEYS */;
INSERT INTO `meta_enum` VALUES (1,NULL,0,'2023-06-12 18:15:12.059231',NULL,'com.axelor.auth.db.ViewCustomizationPermission',NULL,NULL);
/*!40000 ALTER TABLE `meta_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_enum_seq`
--

DROP TABLE IF EXISTS `meta_enum_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_enum_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_enum_seq`
--

LOCK TABLES `meta_enum_seq` WRITE;
/*!40000 ALTER TABLE `meta_enum_seq` DISABLE KEYS */;
INSERT INTO `meta_enum_seq` VALUES (2);
/*!40000 ALTER TABLE `meta_enum_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_file`
--

DROP TABLE IF EXISTS `meta_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_file` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_size` bigint DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `file_size_text` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_file_file_name_IDX` (`file_name`),
  KEY `FK_10de0l7kp2donk4k96ybhdkxo` (`created_by`),
  KEY `FK_m6p0ufmd8fcgb0p32rd12uqlc` (`updated_by`),
  CONSTRAINT `FK_10de0l7kp2donk4k96ybhdkxo` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_m6p0ufmd8fcgb0p32rd12uqlc` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_file`
--

LOCK TABLES `meta_file` WRITE;
/*!40000 ALTER TABLE `meta_file` DISABLE KEYS */;
INSERT INTO `meta_file` VALUES (1,NULL,1,'2023-06-21 15:12:06.695415','2023-06-21 15:12:06.704392',NULL,'WhatsApp Image 2023-06-20 at 15.42.50.jpeg','WhatsApp-Image-2023-06-20-at-15.42.50.jpeg',37273,'image/jpeg','37.27 KB',1,1),(2,NULL,1,'2023-06-21 15:16:25.445139','2023-06-21 15:16:25.448551',NULL,'Categorías de incidencias call center abogados.docx','Categorias-de-incidencias-call-center-abogados.docx',15210,'application/vnd.openxmlformats-officedocument.wordprocessingml.document','15.21 KB',1,1),(3,NULL,1,'2023-06-21 15:16:33.717467','2023-06-21 15:16:33.722061',NULL,'WhatsApp Image 2023-06-20 at 15.42.50 (1).jpeg','WhatsApp-Image-2023-06-20-at-15.42.50-1.jpeg',37273,'image/jpeg','37.27 KB',1,1),(4,NULL,1,'2023-06-21 17:42:45.736041','2023-06-21 17:42:45.742086',NULL,'cinta (1).png','cinta-1.png',22050,'image/png','22.05 KB',1,1),(5,NULL,1,'2023-06-21 17:45:15.278176','2023-06-21 17:45:15.287442',NULL,'WhatsApp Image 2023-06-20 at 15.42.50 (1).jpeg','WhatsApp-Image-2023-06-20-at-15.42.50-1-1.jpeg',37273,'image/jpeg','37.27 KB',1,1),(6,NULL,1,'2023-06-21 18:42:09.020489','2023-06-21 18:42:09.023980',NULL,'cinta (1) (1).png','cinta-1-1.png',22050,'image/png','22.05 KB',1,1),(7,NULL,0,'2023-06-22 18:15:35.540790',NULL,NULL,'cinta.png','cinta.png',22050,'image/png','22.05 KB',2,NULL);
/*!40000 ALTER TABLE `meta_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_file_seq`
--

DROP TABLE IF EXISTS `meta_file_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_file_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_file_seq`
--

LOCK TABLES `meta_file_seq` WRITE;
/*!40000 ALTER TABLE `meta_file_seq` DISABLE KEYS */;
INSERT INTO `meta_file_seq` VALUES (8);
/*!40000 ALTER TABLE `meta_file_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_filter`
--

DROP TABLE IF EXISTS `meta_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_filter` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `filter_custom` longtext,
  `filter_view` varchar(255) NOT NULL,
  `filters` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `shared` bit(1) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ms83n8hubmvq1mhv3a49ra1e3` (`name`,`filter_view`),
  KEY `meta_filter_name_IDX` (`name`),
  KEY `meta_filter_title_IDX` (`title`),
  KEY `meta_filter_user_id_IDX` (`user_id`),
  KEY `FK_l8qox10rk992lemmrsxbt3m8s` (`created_by`),
  KEY `FK_bj423q508os1rh32uksytb4b4` (`updated_by`),
  CONSTRAINT `FK_bj423q508os1rh32uksytb4b4` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_e1yx61gqkp7o9dct2uywkpaec` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_l8qox10rk992lemmrsxbt3m8s` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_filter`
--

LOCK TABLES `meta_filter` WRITE;
/*!40000 ALTER TABLE `meta_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_filter_seq`
--

DROP TABLE IF EXISTS `meta_filter_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_filter_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_filter_seq`
--

LOCK TABLES `meta_filter_seq` WRITE;
/*!40000 ALTER TABLE `meta_filter_seq` DISABLE KEYS */;
INSERT INTO `meta_filter_seq` VALUES (1);
/*!40000 ALTER TABLE `meta_filter_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_permission`
--

DROP TABLE IF EXISTS `meta_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_permission` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `object` varchar(255) NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_dlgyya927fwofpsttig3u60u7` (`name`),
  KEY `FK_o7mkddkrmwojdhy353gukxt2g` (`created_by`),
  KEY `FK_oso9ylmics0plrapm583tr14g` (`updated_by`),
  CONSTRAINT `FK_o7mkddkrmwojdhy353gukxt2g` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_oso9ylmics0plrapm583tr14g` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_permission`
--

LOCK TABLES `meta_permission` WRITE;
/*!40000 ALTER TABLE `meta_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_permission_rule`
--

DROP TABLE IF EXISTS `meta_permission_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_permission_rule` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `can_export` bit(1) DEFAULT NULL,
  `can_read` bit(1) DEFAULT NULL,
  `can_write` bit(1) DEFAULT NULL,
  `field` varchar(255) NOT NULL,
  `hide_if` varchar(255) DEFAULT NULL,
  `readonly_if` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `meta_permission` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_f2dj2xm8wouy54ekshka9wf0w` (`meta_permission`,`field`),
  KEY `meta_permission_rule_meta_permission_IDX` (`meta_permission`),
  KEY `FK_4vv92axsshyys64fvni7kphjs` (`created_by`),
  KEY `FK_llr6745ut4d47wk0f3w8ppdtt` (`updated_by`),
  CONSTRAINT `FK_4vv92axsshyys64fvni7kphjs` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_cy1ihj15bch94x9qmqhiuvu6x` FOREIGN KEY (`meta_permission`) REFERENCES `meta_permission` (`id`),
  CONSTRAINT `FK_llr6745ut4d47wk0f3w8ppdtt` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_permission_rule`
--

LOCK TABLES `meta_permission_rule` WRITE;
/*!40000 ALTER TABLE `meta_permission_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_permission_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_permission_rule_seq`
--

DROP TABLE IF EXISTS `meta_permission_rule_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_permission_rule_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_permission_rule_seq`
--

LOCK TABLES `meta_permission_rule_seq` WRITE;
/*!40000 ALTER TABLE `meta_permission_rule_seq` DISABLE KEYS */;
INSERT INTO `meta_permission_rule_seq` VALUES (1);
/*!40000 ALTER TABLE `meta_permission_rule_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_permission_seq`
--

DROP TABLE IF EXISTS `meta_permission_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_permission_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_permission_seq`
--

LOCK TABLES `meta_permission_seq` WRITE;
/*!40000 ALTER TABLE `meta_permission_seq` DISABLE KEYS */;
INSERT INTO `meta_permission_seq` VALUES (1);
/*!40000 ALTER TABLE `meta_permission_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_schedule`
--

DROP TABLE IF EXISTS `meta_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_schedule` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `cron` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `job` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_icya33ltm5ity6d02wjb8epq6` (`name`),
  KEY `FK_cs6ecdfpckjeqbtlf8mbo54ay` (`created_by`),
  KEY `FK_qkunakdance8850ypt4urmfiv` (`updated_by`),
  CONSTRAINT `FK_cs6ecdfpckjeqbtlf8mbo54ay` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_qkunakdance8850ypt4urmfiv` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_schedule`
--

LOCK TABLES `meta_schedule` WRITE;
/*!40000 ALTER TABLE `meta_schedule` DISABLE KEYS */;
INSERT INTO `meta_schedule` VALUES (1,NULL,0,'2023-06-12 18:15:19.363164',NULL,_binary '\0','0 */5 * * * ?','fetch new emails on every 5 minutes.','com.axelor.mail.service.MailFetchJob','mail.fetcher',1,NULL),(2,NULL,0,'2023-06-21 18:21:03.217083',NULL,_binary '','0 */5 * * * ?','Ejecuta un JOB cada 5 minutos','com.eyc.base.jobs.JobEjemplo','Curso JOB',1,NULL);
/*!40000 ALTER TABLE `meta_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_schedule_param`
--

DROP TABLE IF EXISTS `meta_schedule_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_schedule_param` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `schedule` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_schedule_param_name_IDX` (`name`),
  KEY `meta_schedule_param_schedule_IDX` (`schedule`),
  KEY `FK_3en4p8y6ekgvuj5f4qsbhlt5w` (`created_by`),
  KEY `FK_pjdrystqffpyj815w8kapvdr3` (`updated_by`),
  CONSTRAINT `FK_3en4p8y6ekgvuj5f4qsbhlt5w` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_dcr9hunfdcg6r5qbrhqut7m9r` FOREIGN KEY (`schedule`) REFERENCES `meta_schedule` (`id`),
  CONSTRAINT `FK_pjdrystqffpyj815w8kapvdr3` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_schedule_param`
--

LOCK TABLES `meta_schedule_param` WRITE;
/*!40000 ALTER TABLE `meta_schedule_param` DISABLE KEYS */;
INSERT INTO `meta_schedule_param` VALUES (1,NULL,0,'2023-06-21 18:50:51.842100',NULL,'mickey','100',1,NULL,2);
/*!40000 ALTER TABLE `meta_schedule_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_schedule_param_seq`
--

DROP TABLE IF EXISTS `meta_schedule_param_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_schedule_param_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_schedule_param_seq`
--

LOCK TABLES `meta_schedule_param_seq` WRITE;
/*!40000 ALTER TABLE `meta_schedule_param_seq` DISABLE KEYS */;
INSERT INTO `meta_schedule_param_seq` VALUES (2);
/*!40000 ALTER TABLE `meta_schedule_param_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_schedule_seq`
--

DROP TABLE IF EXISTS `meta_schedule_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_schedule_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_schedule_seq`
--

LOCK TABLES `meta_schedule_seq` WRITE;
/*!40000 ALTER TABLE `meta_schedule_seq` DISABLE KEYS */;
INSERT INTO `meta_schedule_seq` VALUES (3);
/*!40000 ALTER TABLE `meta_schedule_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_sequence`
--

DROP TABLE IF EXISTS `meta_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_sequence` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `increment_by` int NOT NULL,
  `initial_value` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `next_value` bigint NOT NULL,
  `padding` int NOT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_jo2dklg4ifvebxsnkqekke57h` (`name`),
  KEY `FK_arlfchxhyngys3ib6oo73cbj0` (`created_by`),
  KEY `FK_bgt7uqpi0okjs86o11fmnm1tp` (`updated_by`),
  CONSTRAINT `FK_arlfchxhyngys3ib6oo73cbj0` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_bgt7uqpi0okjs86o11fmnm1tp` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_sequence`
--

LOCK TABLES `meta_sequence` WRITE;
/*!40000 ALTER TABLE `meta_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_translation`
--

DROP TABLE IF EXISTS `meta_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_translation` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `message_key` varchar(1024) NOT NULL,
  `language` varchar(255) NOT NULL,
  `message_value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_translation`
--

LOCK TABLES `meta_translation` WRITE;
/*!40000 ALTER TABLE `meta_translation` DISABLE KEYS */;
INSERT INTO `meta_translation` VALUES (1,NULL,0,'<i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> The scheduler service is disabled.','en',''),(2,NULL,0,'<i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> The scheduler service is disabled.','fr','<i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> Le service de planificateur est désactivé.'),(3,NULL,0,'A views restoring is already in progress. Please wait until it ends and try again.','en',''),(4,NULL,0,'A views restoring is already in progress. Please wait until it ends and try again.','fr','Une restauration des vues est déjà en cours. Veuillez patienter jusqu’à la fin et réessayer.'),(5,NULL,0,'Access error','en',''),(6,NULL,0,'Access error','fr','Erreur d\'accès'),(7,NULL,0,'Action','en',''),(8,NULL,0,'Action','fr','Action'),(9,NULL,0,'Action Menu','en',''),(10,NULL,0,'<i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> The scheduler service is disabled.','es','<i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> El planificador de tareas está desactivado.'),(11,NULL,0,'Action Menu','fr','Action de menu'),(12,NULL,0,'Action Menus','en',''),(13,NULL,0,'Access error','es','Error de acceso'),(14,NULL,0,'Action Menus','fr','Les Action Menus'),(15,NULL,0,'Action name can\'t be changed.','en',''),(16,NULL,0,'Action','es','Acción'),(17,NULL,0,'Action name can\'t be changed.','fr','Le nom de l\'action ne peut pas être changé.'),(18,NULL,0,'Actions','en',''),(19,NULL,0,'Action Menu','es','Acción de menu'),(20,NULL,0,'Actions','fr','Les Actions'),(21,NULL,0,'Activate on','en',''),(22,NULL,0,'Action Menus','es','Las Acciones del Menu'),(23,NULL,0,'Activate on','fr','Autoriser à partir de'),(24,NULL,0,'Activate the user from the specified date.','en',''),(25,NULL,0,'Action name can\'t be changed.','es','Le nom de l\'action ne peut pas être changé.'),(26,NULL,0,'Activate the user from the specified date.','fr','Active l\'utilisateur à partir de la date spécifiée.'),(27,NULL,0,'Active','en',''),(28,NULL,0,'Actions','es','Las acciones'),(29,NULL,0,'Active','fr','Actif'),(30,NULL,0,'Address','en',''),(31,NULL,0,'Activate on','es','Autorizado a partir del'),(32,NULL,0,'Address','fr','Adresse'),(33,NULL,0,'Administration','en',''),(34,NULL,0,'Activate the user from the specified date.','es','Activar usuario a partir de la fecha especificada.'),(35,NULL,0,'Administration','fr','Administration'),(36,NULL,0,'All Actions','en',''),(37,NULL,0,'Active','es','Activo'),(38,NULL,0,'All Actions','fr','Les Actions'),(39,NULL,0,'All Charts','en',''),(40,NULL,0,'Address','es','Dirección'),(41,NULL,0,'All Charts','fr','Les Graphiques'),(42,NULL,0,'All Custom Views','en',''),(43,NULL,0,'Administration','es','Administración'),(44,NULL,0,'All Custom Views','fr','Toutes les vues personnalisées'),(45,NULL,0,'All Documents','en',''),(46,NULL,0,'All Actions','es','Las Acciones'),(47,NULL,0,'All Documents','fr','Tous les fichiers'),(48,NULL,0,'All Menu Help','en',''),(49,NULL,0,'All Charts','es','Las Gráficas'),(50,NULL,0,'All Menu Help','fr','Aide de tous les menus'),(51,NULL,0,'All Menus','en',''),(52,NULL,0,'All Custom Views','es','Vistas personalizadas'),(53,NULL,0,'All Menus','fr','Les Menus'),(54,NULL,0,'All Models','en',''),(55,NULL,0,'All Documents','es','Todos los documentos'),(56,NULL,0,'All Models','fr','Les Modèles'),(57,NULL,0,'All Modules','en',''),(58,NULL,0,'All Menu Help','es','Ayuda de todos los módulos'),(59,NULL,0,'All Modules','fr','Les Modules'),(60,NULL,0,'All Schedules','en',''),(61,NULL,0,'All Menus','es','Todos los menus'),(62,NULL,0,'All Schedules','fr','Les Planificateurs'),(63,NULL,0,'All Selects','en',''),(64,NULL,0,'All Models','es','Todos los modelos'),(65,NULL,0,'All Selects','fr','Les Sélections'),(66,NULL,0,'All Teams','en',''),(67,NULL,0,'All Modules','es','Todos los módulos'),(68,NULL,0,'All Teams','fr','Toutes les équipes'),(69,NULL,0,'All Translations','en',''),(70,NULL,0,'All Schedules','es','Los planificadores'),(71,NULL,0,'All Translations','fr','Les Traductions'),(72,NULL,0,'All View Help','en',''),(73,NULL,0,'All Selects','es','Las selecciones'),(74,NULL,0,'All View Help','fr','Aide de toutes les vues'),(75,NULL,0,'All Views','en',''),(76,NULL,0,'All Teams','es','Todos los equipos'),(77,NULL,0,'All Views','fr','Les Vues'),(78,NULL,0,'All jobs have been restarted.','en',''),(79,NULL,0,'All Translations','es','Las traducciones'),(80,NULL,0,'All jobs have been restarted.','fr','Toutes les instances ont été redémarrées.'),(81,NULL,0,'All the customizations will be lost. Are you sure?','en',''),(82,NULL,0,'All View Help','es','Las vistas de ayuda'),(83,NULL,0,'All the customizations will be lost. Are you sure?','fr','Tous les changements seront perdus. Voulez-vous continuer ?'),(84,NULL,0,'All views have been restored (%s).','en',''),(85,NULL,0,'All Views','es','Todas las vistas'),(86,NULL,0,'All views have been restored (%s).','fr','Toutes les vues ont été restaurées (%s).'),(87,NULL,0,'Allow','en',''),(88,NULL,0,'All jobs have been restarted.','es','Todas las instancias han sido reiniciadas.'),(89,NULL,0,'Allow','fr','Autorisations'),(90,NULL,0,'Amber','en',''),(91,NULL,0,'All the customizations will be lost. Are you sure ?','es','Todos los cambios se perderán. Esta seguro(a) ?'),(92,NULL,0,'Amber','fr','Ambre'),(93,NULL,0,'An unique permission name.','en',''),(94,NULL,0,'All views have been restored.','es','Todas las vistas han sido restauradas.'),(95,NULL,0,'An unique permission name.','fr','Nom unique de la permission'),(96,NULL,0,'Application','en',''),(97,NULL,0,'Allow','es','Permitir'),(98,NULL,0,'Application','fr','Application'),(99,NULL,0,'Archived','en',''),(100,NULL,0,'An unique permission name.','es','Nombre único del permiso'),(101,NULL,0,'Archived','fr','Archivé'),(102,NULL,0,'Assigned to','en',''),(103,NULL,0,'Application','es','Aplicación'),(104,NULL,0,'Assigned to','fr','Assigné à'),(105,NULL,0,'Attached to','en',''),(106,NULL,0,'Archived','es','Archivados'),(107,NULL,0,'Attached to','fr','Attaché à'),(108,NULL,0,'Attributes','en',''),(109,NULL,0,'Assigned to','es','Asignar a'),(110,NULL,0,'Attributes','fr','Attributs'),(111,NULL,0,'Attrs','en',''),(112,NULL,0,'Attached to','es','Adjuntar a'),(113,NULL,0,'Attrs','fr','Attrs'),(114,NULL,0,'Author','en',''),(115,NULL,0,'Attributes','es','Atributos'),(116,NULL,0,'Author','fr','Auteur'),(117,NULL,0,'Authorization','en',''),(118,NULL,0,'Attrs','es','Attrs'),(119,NULL,0,'Authorization','fr','Autorisation'),(120,NULL,0,'Authorized roles','en',''),(121,NULL,0,'Author','es','Autor'),(122,NULL,0,'Authorized roles','fr','Rôles autorisés'),(123,NULL,0,'Black','en',''),(124,NULL,0,'Authorization','es','Autorización'),(125,NULL,0,'Black','fr','Noir'),(126,NULL,0,'Block the user','en',''),(127,NULL,0,'Authorized roles','es','Roles autorizados'),(128,NULL,0,'Block the user','fr','Bloquer l’utilisateur'),(129,NULL,0,'Block the user for an indefinite period.','en',''),(130,NULL,0,'Block the user','es','Bloquear usuario'),(131,NULL,0,'Block the user for an indefinite period.','fr','Bloquer l’utilisateur pour une période indéterminée.'),(132,NULL,0,'Blue','en',''),(133,NULL,0,'Block the user for an indefinite period.','es','Bloquear usuario por un período indeterminado.'),(134,NULL,0,'Blue','fr','Bleu'),(135,NULL,0,'Blue Grey','en',''),(136,NULL,0,'Body','es','Cuerpo'),(137,NULL,0,'Blue Grey','fr','Bleu-gris'),(138,NULL,0,'Body','en',''),(139,NULL,0,'Boolean','es','Boolean'),(140,NULL,0,'Body','fr','Corps'),(141,NULL,0,'Boolean','en',''),(142,NULL,0,'Button','es','Botón'),(143,NULL,0,'Boolean','fr','Booléen'),(144,NULL,0,'Brown','en',''),(145,NULL,0,'Calendar','es','Calendario'),(146,NULL,0,'Brown','fr','Marron'),(147,NULL,0,'Button','en',''),(148,NULL,0,'Can read','es','Puede leer'),(149,NULL,0,'Button','fr','Bouton'),(150,NULL,0,'Calendar','en',''),(151,NULL,0,'Can share','es','Puede compartir'),(152,NULL,0,'Calendar','fr','Calendrier'),(153,NULL,0,'Can customize','en',''),(154,NULL,0,'Can write','es','Puede escribir'),(155,NULL,0,'Can customize','fr','Peut personnaliser'),(156,NULL,0,'Can read','en',''),(157,NULL,0,'Canceled','es','Cancelado'),(158,NULL,0,'Can read','fr','Peut lire'),(159,NULL,0,'Can share','en',''),(160,NULL,0,'Cards','es','Tarjetas'),(161,NULL,0,'Can share','fr','Peut partager'),(162,NULL,0,'Can view collaboration','en',''),(163,NULL,0,'Category','es','Categoría'),(164,NULL,0,'Can view collaboration','fr','Peut voir la collaboration'),(165,NULL,0,'Can write','en',''),(166,NULL,0,'Category name to group action menus.','es','Nombre de la categoría para grupar las acciones de menú.'),(167,NULL,0,'Can write','fr','Peut écrire'),(168,NULL,0,'Canceled','en',''),(169,NULL,0,'Change password?','es','Cambiar clave ?'),(170,NULL,0,'Canceled','fr','Annulé'),(171,NULL,0,'Cannot delete a task while scheduler is running...','en',''),(172,NULL,0,'Chart','es','Gráfica'),(173,NULL,0,'Cannot delete a task while scheduler is running...','fr','Impossible de supprimer la tâche pendant l\'exécution du planificateur...'),(174,NULL,0,'Cards','en',''),(175,NULL,0,'Client side js expression','es','Expresión JS cliente'),(176,NULL,0,'Cards','fr','Cartes'),(177,NULL,0,'Category','en',''),(178,NULL,0,'Closed','es','Cerrado'),(179,NULL,0,'Category','fr','Catégorie'),(180,NULL,0,'Category name to group action menus.','en',''),(181,NULL,0,'Code','es','Código'),(182,NULL,0,'Category name to group action menus.','fr','Nom de la catégorie pour grouper les actions menus'),(183,NULL,0,'Change password?','en',''),(184,NULL,0,'Code length should be greater than 2.','es','El largo del código debe ser mayor a 2'),(185,NULL,0,'Change password?','fr','Changer mot de passe ?'),(186,NULL,0,'Chart','en',''),(187,NULL,0,'Collapse','es','Reagrupar'),(188,NULL,0,'Chart','fr','Graphique'),(189,NULL,0,'Client side js expression','en',''),(190,NULL,0,'Column sequence','es','Secuencia de columna'),(191,NULL,0,'Client side js expression','fr','Expression js côté client'),(192,NULL,0,'Closed','en',''),(193,NULL,0,'Come back later. There are no messages in this folder...','es','Verifique más tarde. No hay mensajes en este folder...'),(194,NULL,0,'Closed','fr','Fermé'),(195,NULL,0,'Code','en',''),(196,NULL,0,'Comma separated list of params for the condition.','es','Lista de parametros separados por coma para la condición'),(197,NULL,0,'Code','fr','Code'),(198,NULL,0,'Code length should be greater than 2.','en',''),(199,NULL,0,'Comment','es','Comentario'),(200,NULL,0,'Code length should be greater than 2.','fr','La longueur de l\'identifiant doit être supérieur à 2'),(201,NULL,0,'Collapse','en',''),(202,NULL,0,'Computed','es','Cálculo'),(203,NULL,295,'Collapse','fr','Réduire'),(204,NULL,0,'Color','en',''),(205,NULL,0,'Concurrent updates error','es','Modificación concurrente detectada'),(206,NULL,0,'Color','fr','Couleur'),(207,NULL,0,'Column sequence','en',''),(208,NULL,0,'Condition','es','Condición'),(209,NULL,0,'Column sequence','fr','Séquence de colonne'),(210,NULL,0,'Come back later. There are no messages in this folder...','en',''),(211,NULL,0,'Condition params','es','Parámetros de condición'),(212,NULL,0,'Come back later. There are no messages in this folder...','fr','Revenez plus tard. Il n’y a aucun message dans ce dossier…'),(213,NULL,0,'Comma separated list of params for the condition.','en',''),(214,NULL,0,'Condition to check','es','Condición a verificar'),(215,NULL,0,'Comma separated list of params for the condition.','fr','Liste de paramètres séparée par des virgules'),(216,NULL,0,'Comment','en',''),(217,NULL,0,'Conditions','es','Condiciones'),(218,NULL,0,'Comment','fr','Commentaire'),(219,NULL,0,'Computed','en',''),(220,NULL,0,'Configuration','es','Configuración'),(221,NULL,0,'Computed','fr','Calculé'),(222,NULL,0,'Concurrent updates error','en',''),(223,NULL,443,'Confirm password','es','Confirmar clave'),(224,NULL,0,'Concurrent updates error','fr','Modification concurrente détectée'),(225,NULL,0,'Condition','en',''),(226,NULL,0,'Content','es','Contenido'),(227,NULL,0,'Condition','fr','Condition'),(228,NULL,0,'Condition params','en',''),(229,NULL,0,'Content type','es','Tipo de contenido'),(230,NULL,0,'Condition params','fr','Paramètres'),(231,NULL,0,'Condition to check','en',''),(232,NULL,0,'Context field','es','Campo del contexto'),(233,NULL,0,'Condition to check','fr','Condition à vérifier'),(234,NULL,0,'Conditions','en',''),(235,NULL,0,'Context field target','es','Cible de champ de contexte'),(236,NULL,0,'Conditions','fr','Conditions'),(237,NULL,0,'Configuration','en',''),(238,NULL,0,'Context field target name','es','Nombre del target para el campo del contexto'),(239,NULL,0,'Configuration','fr','Configuration'),(240,NULL,0,'Confirm new password','en',''),(241,NULL,0,'Context field title','es','Titre de champ de contexte'),(242,NULL,296,'Confirm new password','fr','Confirmer le nouveau mot de passe'),(243,NULL,0,'Confirm new password of the user (must be identical to the new password)','en',''),(244,NULL,0,'Context field value','es','Valeur de champ de contexte'),(245,NULL,0,'Confirm new password of the user (must be identical to the new password)','fr','Confirmer le nouveau mot de passe de l’utilisateur (doit être identique au nouveau mot de passe)'),(246,NULL,0,'Confirm password','en',''),(247,NULL,0,'Create','es','Crear'),(248,NULL,295,'Confirm password','fr','confirmer le mot de passe'),(249,NULL,0,'Confirm password of the new user (must be identical to the password)','en',''),(250,NULL,0,'Created','es','Creado'),(251,NULL,0,'Confirm password of the new user (must be identical to the password)','fr','Confirmer le mot de passe du nouvel utilisateur (doit être identique au mot de passe)'),(252,NULL,0,'Content','en',''),(253,NULL,0,'Created by','es','Creado por'),(254,NULL,0,'Content','fr','Contenu'),(255,NULL,0,'Content type','en',''),(256,NULL,0,'Created on','es','Creado el'),(257,NULL,0,'Content type','fr','Type de contenu'),(258,NULL,0,'Context field','en',''),(259,NULL,0,'Cron','es','Cron'),(260,NULL,0,'Context field','fr','Champ de contexte'),(261,NULL,0,'Context field target','en',''),(262,NULL,296,'Current password','es','Clave actual'),(263,NULL,0,'Context field target','fr','Cible de champ de contexte'),(264,NULL,0,'Context field target name','en',''),(265,NULL,0,'Custom','es','Personalizar'),(266,NULL,0,'Context field target name','fr','Nom de cible de champ de contexte'),(267,NULL,0,'Context field title','en',''),(268,NULL,0,'Custom Fields','es','Campos personalizados'),(269,NULL,0,'Context field title','fr','Titre de champ de contexte'),(270,NULL,0,'Context field value','en',''),(271,NULL,0,'Custom Models','es','Modelos personalizados'),(272,NULL,0,'Context field value','fr','Valeur de champ de contexte'),(273,NULL,0,'Create','en',''),(274,NULL,0,'Custom field','es','Campo personalizados'),(275,NULL,295,'Create','fr','Créer'),(276,NULL,0,'Created','en',''),(277,NULL,0,'Created','fr','Créé'),(278,NULL,0,'Custom model','es','Modelo personalizados'),(279,NULL,0,'Created by','en',''),(280,NULL,0,'Created by','fr','Créé par'),(281,NULL,0,'Custom-ManyToMany','es','Custom-ManyToMany'),(282,NULL,0,'Created on','en',''),(283,NULL,0,'Created on','fr','Créé le'),(284,NULL,0,'Custom-ManyToOne','es','Custom-ManyToOne'),(285,NULL,0,'Cron','en',''),(286,NULL,0,'Cron','fr','Cron'),(287,NULL,0,'Custom-OneToMany','es','Custom-OneToMany'),(288,NULL,0,'Current password','en',''),(289,NULL,296,'Current password','fr','Mot de passe actuel'),(290,NULL,0,'Dashboard','es','Tablero'),(291,NULL,0,'Current password of the logged in user','en',''),(292,NULL,0,'Current password of the logged in user','fr','Mot de passe actuel de l’utilisateur connecté'),(293,NULL,0,'Data','es','Data'),(294,NULL,0,'Current password of the user','en',''),(295,NULL,0,'Current password of the user','fr','Mot de passe actuel de l’utilisateur'),(296,NULL,0,'Date','es','Fecha'),(297,NULL,0,'Custom','en',''),(298,NULL,0,'Custom','fr','Personnalisé'),(299,NULL,0,'DateTime','es','DateTime'),(300,NULL,0,'Custom Fields','en',''),(301,NULL,0,'Custom Fields','fr','Champs personnalisés'),(302,NULL,0,'Decimal','es','Decimal'),(303,NULL,0,'Custom Models','en',''),(304,NULL,0,'Custom Models','fr','Modèles personnalisés'),(305,NULL,0,'Default','es','Default'),(306,NULL,0,'Custom field','en',''),(307,NULL,0,'Custom field','fr','Champ personnalisé'),(308,NULL,0,'Default home action.','es','Acción por default.'),(309,NULL,0,'Custom model','en',''),(310,NULL,0,'Custom model','fr','Modèle personnalisé'),(311,NULL,0,'Default value','es','Valor por default'),(312,NULL,0,'Custom-ManyToMany','en',''),(313,NULL,0,'Custom-ManyToMany','fr','Custom-ManyToMany'),(314,NULL,0,'Dependent features','es','Funcionalidades dependientes'),(315,NULL,0,'Custom-ManyToOne','en',''),(316,NULL,0,'Custom-ManyToOne','fr','Custom-ManyToOne'),(317,NULL,0,'Dependent modules','es','Modulos dependientes'),(318,NULL,0,'Custom-OneToMany','en',''),(319,NULL,0,'Custom-OneToMany','fr','Custom-OneToMany'),(320,NULL,0,'Depends','es','Depende'),(321,NULL,0,'Cyan','en',''),(322,NULL,0,'Cyan','fr','Cyan'),(323,NULL,0,'Depends On','es','Depende de'),(324,NULL,0,'Dashboard','en',''),(325,NULL,0,'Dashboard','fr','Dashboard'),(326,NULL,0,'Description','es','Descripción'),(327,NULL,0,'Data','en',''),(328,NULL,0,'Data','fr','Données'),(329,NULL,0,'Details','es','Detalles'),(330,NULL,0,'Date','en',''),(331,NULL,0,'Date','fr','Date'),(332,NULL,0,'Directories','es','Directorios'),(333,NULL,0,'DateTime','en',''),(334,NULL,0,'DateTime','fr','DateTime'),(335,NULL,0,'Directory','es','Directorio'),(336,NULL,0,'Decimal','en',''),(337,NULL,0,'Decimal','fr','Décimal'),(338,NULL,0,'Disable the user from the specified date.','es','Bloquear usuario a partir de la fecha especificada.'),(339,NULL,0,'Deep Orange','en',''),(340,NULL,0,'Deep Orange','fr','Orange foncé'),(341,NULL,295,'Document','es','Documento'),(342,NULL,0,'Deep Purple','en',''),(343,NULL,0,'Deep Purple','fr','Violet foncé'),(344,NULL,0,'Documents','es','Documentos'),(345,NULL,0,'Default','en',''),(346,NULL,0,'Default','fr','Défaut'),(347,NULL,0,'Domain','es','Dominio'),(348,NULL,0,'Default home action.','en',''),(349,NULL,0,'Default home action.','fr','Action par défaut.'),(350,NULL,0,'Domain filter as condition.','es','Filtro de dominio como condición'),(351,NULL,0,'Default value','en',''),(352,NULL,0,'Default value','fr','Valeur par défaut'),(353,NULL,0,'Download','es','Descargar'),(354,NULL,0,'Dependent features','en',''),(355,NULL,0,'Dependent features','fr','Fonctionnalités dépendantes'),(356,NULL,0,'Email','es','Email'),(357,NULL,0,'Dependent modules','en',''),(358,NULL,0,'Dependent modules','fr','Modules dépendants'),(359,NULL,0,'Encryption error','es','Error de encriptación'),(360,NULL,0,'Depends','en',''),(361,NULL,0,'Depends','fr','Dépend de'),(362,NULL,0,'Encryption key might be wrong.','es','La clave de encriptación puede que no esté correcta.'),(363,NULL,0,'Depends On','en',''),(364,NULL,0,'Depends On','fr','Dépend de'),(365,NULL,0,'English','es','Inglés'),(366,NULL,0,'Description','en',''),(367,NULL,0,'Description','fr','Description'),(368,NULL,0,'Enum','es','Enum'),(369,NULL,0,'Details','en',''),(370,NULL,0,'Details','fr','Détails'),(371,NULL,0,'Enum type','es','Tipo Enum'),(372,NULL,0,'Directories','en',''),(373,NULL,0,'Directories','fr','Répertoires'),(374,NULL,0,'Expires on','es','Expira en'),(375,NULL,0,'Directory','en',''),(376,NULL,0,'Directory','fr','Répertoire'),(377,NULL,0,'Export','es','Exportar'),(378,NULL,0,'Disable the user from the specified date.','en',''),(379,NULL,0,'Disable the user from the specified date.','fr','Bloque l\'utilisateur à partir de la date spécifiée.'),(380,NULL,0,'Export complete.','es','Exportar completado.'),(381,NULL,0,'Document','en',''),(382,NULL,0,'Document','fr','Document'),(383,NULL,0,'Extension','es','Extensión'),(384,NULL,0,'Documents','en',''),(385,NULL,0,'Documents','fr','Documents'),(386,NULL,0,'Favorite','es','Favorito'),(387,NULL,0,'Domain','en',''),(388,NULL,295,'Domain','fr','Domain'),(389,NULL,0,'Favorites','es','Favoritos'),(390,NULL,0,'Domain filter as condition.','en',''),(391,NULL,0,'Domain filter as condition.','fr','Condition d\'application des accès'),(392,NULL,0,'Field','es','Campo'),(393,NULL,0,'Download','en',''),(394,NULL,0,'Download','fr','Télécharger'),(395,NULL,0,'Field is required.','es','Campo es requerido.'),(396,NULL,0,'Email','en',''),(397,NULL,0,'Email','fr','Email'),(398,NULL,0,'Fields','es','Campos'),(399,NULL,0,'Encryption error','en',''),(400,NULL,0,'Encryption error','fr','Erreur de chiffrement'),(401,NULL,0,'File','es','Archivo'),(402,NULL,0,'Encryption key might be wrong.','en',''),(403,NULL,0,'Encryption key might be wrong.','fr','La clé de cryptage peut être incorrecte.'),(404,NULL,0,'File added','es','Archivo agregado'),(405,NULL,0,'English','en',''),(406,NULL,0,'English','fr','Anglais'),(407,NULL,0,'File name','es','Nombre del archivo'),(408,NULL,0,'Enum','en',''),(409,NULL,0,'Enum','fr','Enum'),(410,NULL,0,'File path','es','Ruta del archivo'),(411,NULL,0,'Enum type','en',''),(412,NULL,0,'Enum type','fr','Type d’enum'),(413,NULL,0,'File removed','es','Archivo eliminado'),(414,NULL,0,'Expires on','en',''),(415,NULL,0,'Expires on','fr','Autoriser jusqu\'au'),(416,NULL,0,'File type','es','Tipo de archivo'),(417,NULL,0,'Export','en',''),(418,NULL,295,'Export','fr','Exporter'),(419,NULL,0,'Files','es','Archivos'),(420,NULL,0,'Export complete.','en',''),(421,NULL,0,'Export complete.','fr','Export complet.'),(422,NULL,0,'Filter custom','es','Filtro personalizados'),(423,NULL,0,'Extension','en',''),(424,NULL,0,'Extension','fr','Extension'),(425,NULL,0,'Filter files','es','Filtro de archivos'),(426,NULL,0,'Favorite','en',''),(427,NULL,0,'Favorite','fr','Favori'),(428,NULL,0,'Filter view','es','Filtro de vista'),(429,NULL,0,'Favorites','en',''),(430,NULL,0,'Favorites','fr','Favoris'),(431,NULL,0,'Filters','es','Filtros'),(432,NULL,0,'Field','en',''),(433,NULL,0,'Field','fr','Champ'),(434,NULL,0,'Flags','es','Marcas'),(435,NULL,0,'Field is required.','en',''),(436,NULL,0,'Field is required.','fr','Champ requis.'),(437,NULL,0,'Following modules will be installed : <p>%s</p> Are you sure ?','es','Les modules suivant seront installés : <p>%s</p> Voulez-vous continuer ?'),(438,NULL,0,'Fields','en',''),(439,NULL,0,'Fields','fr','Champs'),(440,NULL,0,'Following modules will be uninstalled : <p>%s</p> Are you sure ?','es','Les modules suivant seront déinstallés : <p>%s</p> Voulez-vous continuer ?'),(441,NULL,0,'File','en',''),(442,NULL,0,'File','fr','Fichier'),(443,NULL,0,'Force password change','es','Forzar cambio de clave'),(444,NULL,0,'File added','en',''),(445,NULL,0,'File added','fr','Fichier ajouté'),(446,NULL,0,'Force the user to change their password at next login.','es','Forzar cambio de clave en la próxima conexión.'),(447,NULL,0,'File name','en',''),(448,NULL,0,'File name','fr','Nom du fichier'),(449,NULL,0,'Form','es','Formulario'),(450,NULL,0,'File path','en',''),(451,NULL,0,'File path','fr','Chemin du fichier'),(452,NULL,0,'Form record','es','Registro del formulario'),(453,NULL,0,'File removed','en',''),(454,NULL,0,'File removed','fr','Fichier supprimé'),(455,NULL,0,'Form records','es','Registros del formulario'),(456,NULL,0,'File type','en',''),(457,NULL,0,'File type','fr','Type'),(458,NULL,0,'Form view','es','Mostrar formulario'),(459,NULL,0,'Files','en',''),(460,NULL,0,'Files','fr','Fichiers'),(461,NULL,0,'Form width','es','Ancho del formulario'),(462,NULL,0,'Filter custom','en',''),(463,NULL,0,'Filter custom','fr','Filtre personnalisé'),(464,NULL,0,'French','es','Francés'),(465,NULL,0,'Filter files','en',''),(466,NULL,0,'Filter files','fr','Filtrer les fichiers'),(467,NULL,0,'From','es','De'),(468,NULL,0,'Filter view','en',''),(469,NULL,0,'Filter view','fr','Filtre de vue'),(470,NULL,0,'Fullname','es','Nombre completo'),(471,NULL,0,'Filters','en',''),(472,NULL,0,'Filters','fr','Filtres'),(473,NULL,0,'Fully qualified object name or wild card package name.','es','Nombre del objeto'),(474,NULL,0,'Flags','en',''),(475,NULL,0,'Flags','fr','Drapeaux'),(476,NULL,0,'Gantt','es','Gantt'),(477,NULL,0,'Force password change','en',''),(478,NULL,0,'Force password change','fr','Forcer à changer de mot de passe'),(479,NULL,0,'General','es','General'),(480,NULL,0,'Force the user to change their password at next login.','en',''),(481,NULL,0,'Force the user to change their password at next login.','fr','Forcer l’utilisateur à changer de mot de passe à la prochaine connexion.'),(482,NULL,0,'Grid','es','Lista'),(483,NULL,0,'Form','en',''),(484,NULL,0,'Form','fr','Formulaire'),(485,NULL,0,'Grid view','es','Vista de Lista'),(486,NULL,0,'Form record','en',''),(487,NULL,0,'Form record','fr','Enregistrement de formulaire'),(488,NULL,0,'Group','es','Grupo'),(489,NULL,0,'Form records','en',''),(490,NULL,0,'Form records','fr','Enregistrements de formulaire'),(491,NULL,0,'Groups','es','Los Grupos'),(492,NULL,0,'Form view','en',''),(493,NULL,0,'Form view','fr','Vue formulaire'),(494,NULL,0,'Help','es','Ayuda'),(495,NULL,0,'Form width','en',''),(496,NULL,0,'Form width','fr','Largeur du formulaire'),(497,NULL,0,'Help Management','es','Gestión de la ayuda'),(498,NULL,0,'French','en',''),(499,NULL,0,'French','fr','Français'),(500,NULL,0,'Help link','es','link de ayuda'),(501,NULL,0,'From','en',''),(502,NULL,0,'From','fr','De'),(503,NULL,0,'Hidden','es','Escondido'),(504,NULL,0,'Fullname','en',''),(505,NULL,0,'Fullname','fr','Nom complet'),(506,NULL,0,'Hidden menu','es','Menú escondido'),(507,NULL,0,'Fully qualified object name or wild card package name.','en',''),(508,NULL,0,'Fully qualified object name or wild card package name.','fr','Nom de l\'objet'),(509,NULL,0,'Hide if','es','Caché si'),(510,NULL,0,'Gantt','en',''),(511,NULL,0,'Gantt','fr','Gantt'),(512,NULL,0,'High','es','Alto'),(513,NULL,0,'General','en',''),(514,NULL,0,'General','fr','Général'),(515,NULL,0,'Home action','es','Action d\'accueil'),(516,NULL,0,'Green','en',''),(517,NULL,0,'Green','fr','Vert'),(518,NULL,0,'Icon','es','Icono'),(519,NULL,0,'Grey','en',''),(520,NULL,0,'Grey','fr','Gris'),(521,NULL,0,'Icon background','es','Icono de fondo'),(522,NULL,0,'Grid','en',''),(523,NULL,0,'Grid','fr','Liste'),(524,NULL,295,'Important','es','importante'),(525,NULL,0,'Grid view','en',''),(526,NULL,0,'Grid view','fr','Vue liste'),(527,NULL,0,'In Progress','es','En progreso'),(528,NULL,0,'Group','en',''),(529,NULL,0,'Group','fr','Groupe'),(530,NULL,0,'Inbox','es','Bandeja de entrada'),(531,NULL,0,'Group by','en',''),(532,NULL,0,'Group by','fr','Grouper par'),(533,NULL,0,'Inbox is empty!','es','Bandeja de entrada vacía!'),(534,NULL,0,'Groups','en',''),(535,NULL,0,'Groups','fr','Les Groupes'),(536,NULL,0,'Include if','es','Incluir si'),(537,NULL,0,'Help','en',''),(538,NULL,0,'Help','fr','Aide'),(539,NULL,0,'Increment','es','Incremento'),(540,NULL,0,'Help Management','en',''),(541,NULL,0,'Help Management','fr','Gestion de l’aide'),(542,NULL,0,'Information','es','Información'),(543,NULL,0,'Help link','en',''),(544,NULL,0,'Help link','fr','Lien aide'),(545,NULL,0,'Initial','es','Valor inicial'),(546,NULL,0,'Hidden','en',''),(547,NULL,0,'Hidden','fr','Caché'),(548,NULL,0,'Inline','es','En línea'),(549,NULL,0,'Hidden menu','en',''),(550,NULL,0,'Hidden menu','fr','Menu caché'),(551,NULL,0,'Install','es','Instalar'),(552,NULL,0,'Hide if','en',''),(553,NULL,0,'Hide if','fr','Caché si'),(554,NULL,0,'Install module','es','Instalar el módulo'),(555,NULL,0,'High','en',''),(556,NULL,0,'High','fr','Haut'),(557,NULL,0,'Installed','es','Instalar ?'),(558,NULL,0,'Home action','en',''),(559,NULL,0,'Home action','fr','Action d\'accueil'),(560,NULL,0,'Integer','es','Entero'),(561,NULL,0,'Icon','en',''),(562,NULL,0,'Icon','fr','Icône'),(563,NULL,295,'Internal Server Error','es','Error interno del servidor'),(564,NULL,0,'Icon background','en',''),(565,NULL,0,'Icon background','fr','Icône de fond'),(566,NULL,0,'Invalid XML.','es','XML no válido.'),(567,NULL,0,'Important','en',''),(568,NULL,295,'Important','fr','important'),(569,NULL,0,'Invalid cron :','es','Cron no valido :'),(570,NULL,0,'In Progress','en',''),(571,NULL,0,'In Progress','fr','En cours'),(572,NULL,0,'Invalid field value.','es','Valor no válido.'),(573,NULL,0,'Inbox','en',''),(574,NULL,0,'Inbox','fr','Boîte de réception'),(575,NULL,0,'Invalid permission','es','Permiso nó válido'),(576,NULL,0,'Inbox is empty!','en',''),(577,NULL,0,'Inbox is empty!','fr','La boîte de réception est vide !'),(578,NULL,0,'Invalid use of action-record: %s, must be the last action.','es','Utilisation incorrecte de l\'action-record :%s, doit être la dernière action.'),(579,NULL,0,'Include if','en',''),(580,NULL,0,'Include if','fr','Inclure si'),(581,NULL,0,'Inverse','es','Inverso'),(582,NULL,0,'Increment','en',''),(583,NULL,0,'Increment','fr','Incrément'),(584,NULL,0,'Is archived','es','Está archivado'),(585,NULL,0,'Indigo','en',''),(586,NULL,0,'Indigo','fr','Indigo'),(587,NULL,0,'Is directory','es','Es un directorio'),(588,NULL,0,'Information','en',''),(589,NULL,0,'Information','fr','Information'),(590,NULL,0,'Is read','es','Est lu'),(591,NULL,0,'Initial','en',''),(592,NULL,0,'Initial','fr','Valeur origine'),(593,NULL,0,'Is starred','es','Marcado como favorito'),(594,NULL,0,'Inline','en',''),(595,NULL,0,'Inline','fr','En ligne'),(596,NULL,0,'Items','es','Elementos'),(597,NULL,0,'Integer','en',''),(598,NULL,0,'Integer','fr','Entier'),(599,NULL,0,'Job','es','Job'),(600,NULL,0,'Internal Server Error','en',''),(601,NULL,295,'Internal Server Error','fr','Erreur interne du serveur'),(602,NULL,0,'Job Management','es','Gestion de planificador'),(603,NULL,0,'Invalid XML.','en',''),(604,NULL,0,'Invalid XML.','fr','XML invalide.'),(605,NULL,0,'Job has been updated.','es','La instancia ha sido actualizada.'),(606,NULL,0,'Invalid cron :','en',''),(607,NULL,0,'Invalid cron :','fr','Cron non valide :'),(608,NULL,0,'Json','es','Json'),(609,NULL,0,'Invalid field value.','en',''),(610,NULL,0,'Invalid field value.','fr','Valeur non valide.'),(611,NULL,0,'Json model','es','Modelo Json'),(612,NULL,0,'Invalid permission','en',''),(613,NULL,0,'Invalid permission','fr','Permission invalide'),(614,NULL,0,'Kanban','es','Kanban'),(615,NULL,0,'Invalid use of action-record: %s, must be the last action.','en',''),(616,NULL,0,'Invalid use of action-record: %s, must be the last action.','fr','Utilisation incorrecte de l\'action-record :%s, doit être la dernière action.'),(617,NULL,0,'Key','es','Clave'),(618,NULL,0,'Inverse','en',''),(619,NULL,0,'Inverse','fr','Inverse'),(620,NULL,0,'Label','es','Label'),(621,NULL,0,'Is archived','en',''),(622,NULL,0,'Is archived','fr','Est archivé'),(623,NULL,0,'Language','es','Lenguaje'),(624,NULL,0,'Is directory','en',''),(625,NULL,0,'Is directory','fr','Est un répertoire'),(626,NULL,0,'Last modified','es','Modificado el'),(627,NULL,0,'Is read','en',''),(628,NULL,0,'Is read','fr','Est lu'),(629,NULL,0,'Last password update date','es','Fecha de la última actualización de clave'),(630,NULL,0,'Is starred','en',''),(631,NULL,0,'Is starred','fr','Est favori'),(632,NULL,0,'Left menu','es','Menú izquierdo'),(633,NULL,0,'Items','en',''),(634,NULL,0,'Items','fr','Éléments'),(635,NULL,0,'Link','es','Link'),(636,NULL,0,'Job','en',''),(637,NULL,0,'Job','fr','Job'),(638,NULL,0,'Login','es','Login'),(639,NULL,0,'Job Management','en',''),(640,NULL,0,'Job Management','fr','Gestion des planificateurs'),(641,NULL,0,'Low','es','Bajo'),(642,NULL,0,'Job has been updated.','en',''),(643,NULL,0,'Job has been updated.','fr','Le planificateur a été mis à jour.'),(644,NULL,0,'Mail','es','Mail'),(645,NULL,0,'Json','en',''),(646,NULL,0,'Json','fr','Json'),(647,NULL,0,'ManyToMany','es','ManyToMany'),(648,NULL,0,'Json model','en',''),(649,NULL,0,'Json model','fr','Modèle Json'),(650,NULL,0,'ManyToOne','es','ManyToOne'),(651,NULL,0,'Kanban','en',''),(652,NULL,0,'Kanban','fr','Kanban'),(653,NULL,0,'Mapped by','es','Mapeado por'),(654,NULL,0,'Key','en',''),(655,NULL,0,'Key','fr','Clé'),(656,NULL,0,'Max','es','Max'),(657,NULL,0,'Label','en',''),(658,NULL,0,'Label','fr','Label'),(659,NULL,0,'Max size','es','Tamaño max'),(660,NULL,0,'Language','en',''),(661,NULL,0,'Language','fr','Langue'),(662,NULL,0,'Max size 4MB.','es','Tamaño max 4MB.'),(663,NULL,0,'Last modified','en',''),(664,NULL,0,'Last modified','fr','Modifié le'),(665,NULL,0,'Members','es','Miembros'),(666,NULL,0,'Last password update date','en',''),(667,NULL,0,'Last password update date','fr','Date de dernière modification du mot de passe'),(668,NULL,0,'Menu','es','Menú'),(669,NULL,0,'Left menu','en',''),(670,NULL,0,'Left menu','fr','Menu à gauche'),(671,NULL,0,'Menu Help','es','Menú de ayuda'),(672,NULL,0,'Light Blue','en',''),(673,NULL,0,'Light Blue','fr','Bleu clair'),(674,NULL,0,'Menu Item','es','Elemento de menú'),(675,NULL,0,'Light Green','en',''),(676,NULL,0,'Light Green','fr','Vert clair'),(677,NULL,0,'Menu Items','es','Elementos de menú'),(678,NULL,0,'Lime','en',''),(679,NULL,0,'Lime','fr','Vert citron'),(680,NULL,0,'Menu background','es','Menú de fondo'),(681,NULL,0,'Link','en',''),(682,NULL,0,'Link','fr','Lien'),(683,NULL,0,'Menu icon','es','Icono del menú'),(684,NULL,0,'Login','en',''),(685,NULL,0,'Login','fr','Identifiant'),(686,NULL,0,'Menu order','es','Orden del menú'),(687,NULL,0,'Low','en',''),(688,NULL,0,'Low','fr','Bas'),(689,NULL,0,'Menu parent','es','Menú padre'),(690,NULL,0,'Mail','en',''),(691,NULL,0,'Mail','fr','Mail'),(692,NULL,0,'Menu title','es','Titulo del menú'),(693,NULL,0,'ManyToMany','en',''),(694,NULL,0,'ManyToMany','fr','ManyToMany'),(695,NULL,0,'Menu top','es','Menú de arriba'),(696,NULL,0,'ManyToOne','en',''),(697,NULL,0,'ManyToOne','fr','ManyToOne'),(698,NULL,0,'Menus','es','Los Menus'),(699,NULL,0,'Mapped by','en',''),(700,NULL,0,'Mapped by','fr','Mappé avec'),(701,NULL,0,'Message','es','Mensaje'),(702,NULL,0,'Max','en',''),(703,NULL,0,'Max','fr','Max'),(704,NULL,0,'Meta file','es','Meta archivo'),(705,NULL,0,'Max size','en',''),(706,NULL,0,'Max size','fr','Taille max'),(707,NULL,0,'Meta model','es','Modelo'),(708,NULL,0,'Max size 4MB.','en',''),(709,NULL,0,'Max size 4MB.','fr','Taille max 4MO.'),(710,NULL,0,'Meta permission','es','Meta permiso'),(711,NULL,0,'Members','en',''),(712,NULL,0,'Members','fr','Membres'),(713,NULL,0,'MetaScheduleParam','es','MetaScheduleParam'),(714,NULL,0,'Menu','en',''),(715,NULL,0,'Menu','fr','Menu'),(716,NULL,0,'Min','es','Min'),(717,NULL,0,'Menu Help','en',''),(718,NULL,0,'Menu Help','fr','Aide de menu'),(719,NULL,0,'Min size','es','Tamaño min'),(720,NULL,0,'Menu Item','en',''),(721,NULL,0,'Menu Item','fr','Menu Item'),(722,NULL,0,'Mobile menu','es','Menu mobile'),(723,NULL,0,'Menu Items','en',''),(724,NULL,0,'Menu Items','fr','Menu Items'),(725,NULL,0,'Model','es','Modelo'),(726,NULL,0,'Menu background','en',''),(727,NULL,0,'Menu background','fr','Arrière-plan de menu'),(728,NULL,0,'Model Management','es','Gestión de modelos'),(729,NULL,0,'Menu icon','en',''),(730,NULL,0,'Menu icon','fr','Icône de menu'),(731,NULL,0,'Model field','es','Campo del modelo'),(732,NULL,0,'Menu order','en',''),(733,NULL,0,'Menu order','fr','Ordre de menu'),(734,NULL,0,'Models','es','Los Modelos'),(735,NULL,0,'Menu parent','en',''),(736,NULL,0,'Menu parent','fr','Parent du menu'),(737,NULL,0,'Modified','es','Modificado'),(738,NULL,0,'Menu title','en',''),(739,NULL,0,'Menu title','fr','Titre de menu'),(740,NULL,0,'Module','es','Modulo'),(741,NULL,0,'Menu top','en',''),(742,NULL,0,'Menu top','fr','Haut de menu'),(743,NULL,0,'Module Management','es','Gestion de modulos'),(744,NULL,0,'Menus','en',''),(745,NULL,0,'Menus','fr','Les Menus'),(746,NULL,0,'Module to check','es','Modulo a verificar'),(747,NULL,0,'Message','en',''),(748,NULL,0,'Message','fr','Message'),(749,NULL,0,'Modules','es','Los Módulos'),(750,NULL,0,'Meta file','en',''),(751,NULL,0,'Meta file','fr','Fichier meta'),(752,NULL,0,'My Documents','es','Mis documentos'),(753,NULL,0,'Meta model','en',''),(754,NULL,0,'Meta model','fr','Modèle'),(755,NULL,0,'My Teams','es','Mis equipos'),(756,NULL,0,'Meta permission','en',''),(757,NULL,0,'Meta permission','fr','Permission meta'),(758,NULL,0,'My open tasks','es','Tareas abiertas'),(759,NULL,0,'MetaScheduleParam','en',''),(760,NULL,0,'MetaScheduleParam','fr','MetaScheduleParam'),(761,NULL,0,'Name','es','Nombre'),(762,NULL,0,'Min','en',''),(763,NULL,0,'Min','fr','Min'),(764,NULL,0,'Name field','es','Nombre del campo'),(765,NULL,0,'Min size','en',''),(766,NULL,0,'Min size','fr','Taille min'),(767,NULL,0,'Name length should be greater than 2.','es','El nombre del campo debe ser superior a 2'),(768,NULL,0,'Mobile menu','en',''),(769,NULL,0,'Mobile menu','fr','Menu mobile'),(770,NULL,0,'Navigation','es','Navegación'),(771,NULL,0,'Model','en',''),(772,NULL,0,'Model','fr','Objet'),(773,NULL,0,'New','es','Nuevo'),(774,NULL,0,'Model Management','en',''),(775,NULL,0,'Model Management','fr','Gestion des modèles'),(776,NULL,296,'New password','es','Nueva clave'),(777,NULL,0,'Model field','en',''),(778,NULL,0,'Model field','fr','Champ de modèle'),(779,NULL,295,'Next','es','Siguiente'),(780,NULL,0,'Models','en',''),(781,NULL,0,'Models','fr','Les Modèles'),(782,NULL,0,'No archived messages!','es','Sin mensajes archivados!'),(783,NULL,0,'Modified','en',''),(784,NULL,0,'Modified','fr','Modifié'),(785,NULL,0,'No help','es','Sin ayuda'),(786,NULL,0,'Module','en',''),(787,NULL,0,'Module','fr','Module'),(788,NULL,0,'No important messages!','es','Sin mensajes importantes!'),(789,NULL,0,'Module Management','en',''),(790,NULL,0,'Module Management','fr','Gestion des modules'),(791,NULL,0,'Normal','es','Normal'),(792,NULL,0,'Module to check','en',''),(793,NULL,0,'Module to check','fr','Module à vérifier'),(794,NULL,0,'Object','es','Objeto'),(795,NULL,0,'Modules','en',''),(796,NULL,0,'Modules','fr','Les Modules'),(797,NULL,0,'Object name','es','Nombre del objeto'),(798,NULL,0,'My Documents','en',''),(799,NULL,0,'My Documents','fr','Mes fichiers'),(800,NULL,0,'On change','es','Al cambiar'),(801,NULL,0,'My Teams','en',''),(802,NULL,0,'My Teams','fr','Mes équipes'),(803,NULL,0,'On click','es','al Click'),(804,NULL,0,'My open tasks','en',''),(805,NULL,0,'My open tasks','fr','Mes tâches ouvertes'),(806,NULL,0,'On new','es','En la creación'),(807,NULL,0,'Name','en',''),(808,NULL,295,'Name','fr','nom'),(809,NULL,0,'On save','es','Al guardar'),(810,NULL,0,'Name field','en',''),(811,NULL,0,'Name field','fr','Champ de nom'),(812,NULL,0,'OneToMany','es','OneToMany'),(813,NULL,0,'Name length should be greater than 2.','en',''),(814,NULL,0,'Name length should be greater than 2.','fr','La longueur du nom doit être supérieur à 2'),(815,NULL,0,'OneToOne','es','OneToOne'),(816,NULL,0,'Navigation','en',''),(817,NULL,0,'Navigation','fr','Navigation'),(818,NULL,0,'Only if','es','solamente si'),(819,NULL,0,'New','en',''),(820,NULL,0,'New','fr','Nouveau'),(821,NULL,0,'Only use this menu-item if the given expression is true (ie `if` condition).','es','Utiliser uniquement ce menu-item si l\'expression donnée est vraie (càd condition `if`)'),(822,NULL,0,'New password','en',''),(823,NULL,296,'New password','fr','Nouveau mot de passe'),(824,NULL,0,'Only use this menu-item if the given module is installed (ie `if-module` condition).','es','Utiliser uniquement ce menu-item si le module est installé (càd condition `if-module`)'),(825,NULL,0,'New password of the user','en',''),(826,NULL,0,'New password of the user','fr','Nouveau mot de passe de l’utilisateur'),(827,NULL,0,'Options','es','Opciones'),(828,NULL,0,'Next','en',''),(829,NULL,295,'Next','fr','Suivant'),(830,NULL,0,'Order','es','Orden'),(831,NULL,0,'No archived messages!','en',''),(832,NULL,0,'No archived messages!','fr','Aucun message archivé'),(833,NULL,0,'Order by','es','Ordenado por'),(834,NULL,0,'No help','en',''),(835,NULL,0,'No help','fr','Aucune aide'),(836,NULL,0,'Overview','es','General'),(837,NULL,0,'No important messages!','en',''),(838,NULL,0,'No important messages!','fr','Aucun message important'),(839,NULL,0,'Owner','es','Propietario'),(840,NULL,0,'Normal','en',''),(841,NULL,0,'Normal','fr','Normal'),(842,NULL,0,'Package','es','Nombre del paquete'),(843,NULL,0,'Not allowed','en',''),(844,NULL,0,'Not allowed','fr','Non autorisé'),(845,NULL,0,'Padding','es','Relleno'),(846,NULL,0,'Object','en',''),(847,NULL,0,'Object','fr','Objet'),(848,NULL,0,'Panel','es','Panel'),(849,NULL,0,'Object name','en',''),(850,NULL,0,'Object name','fr','Nom de l\'objet'),(851,NULL,0,'Params','es','Parámetros'),(852,NULL,0,'On change','en',''),(853,NULL,0,'On change','fr','Au changement'),(854,NULL,0,'Parent','es','Padre'),(855,NULL,0,'On click','en',''),(856,NULL,0,'On click','fr','Au clic'),(857,NULL,0,'Parent menu','es','Menu padre'),(858,NULL,0,'On new','en',''),(859,NULL,0,'On new','fr','À la création'),(860,NULL,0,'Password','es','Clave'),(861,NULL,0,'On save','en',''),(862,NULL,0,'On save','fr','À l\'enregistrement'),(863,NULL,0,'Password doesn\'t match configured pattern.','es','La clave no coincide con el patrón de clave configurado.'),(864,NULL,0,'OneToMany','en',''),(865,NULL,0,'OneToMany','fr','OneToMany'),(866,NULL,0,'Pending','es','Pendiente'),(867,NULL,0,'OneToOne','en',''),(868,NULL,0,'OneToOne','fr','OneToOne'),(869,NULL,0,'Permission','es','Permiso'),(870,NULL,0,'Only if','en',''),(871,NULL,0,'Only if','fr','Seulement si'),(872,NULL,295,'Permissions','es','Permisos'),(873,NULL,0,'Only use this menu-item if the given expression is true (ie `if` condition).','en',''),(874,NULL,0,'Only use this menu-item if the given expression is true (ie `if` condition).','fr','Utiliser uniquement ce menu-item si l\'expression donnée est vraie (càd condition `if`)'),(875,NULL,0,'Permissions (fields)','es','Permisos (campos)'),(876,NULL,0,'Only use this menu-item if the given module is installed (ie `if-module` condition).','en',''),(877,NULL,0,'Only use this menu-item if the given module is installed (ie `if-module` condition).','fr','Utiliser uniquement ce menu-item si le module est installé (càd condition `if-module`)'),(878,NULL,0,'Personal','es','Personal'),(879,NULL,0,'Options','en',''),(880,NULL,0,'Options','fr','Options'),(881,NULL,0,'Personalized View','es','Vista personalizada'),(882,NULL,0,'Orange','en',''),(883,NULL,0,'Orange','fr','Orange'),(884,NULL,0,'Personalized Views','es','Vistas personalizadas'),(885,NULL,0,'Order by','en',''),(886,NULL,0,'Order by','fr','Trier par'),(887,NULL,0,'Photo','es','Foto'),(888,NULL,0,'Overview','en',''),(889,NULL,0,'Overview','fr','Général'),(890,NULL,0,'Placeholder','es','Marcador'),(891,NULL,0,'Owner','en',''),(892,NULL,0,'Owner','fr','Propriétaire'),(893,NULL,295,'Please change your password.','es','Porfavor, cambie su clave.'),(894,NULL,0,'Package','en',''),(895,NULL,0,'Package','fr','Nom du package'),(896,NULL,0,'Please log back in.','es','Por favor, vuelva a conectarse.'),(897,NULL,0,'Padding','en',''),(898,NULL,0,'Padding','fr','Remplissage'),(899,NULL,0,'Please refresh your browser to see updated views.','es','Porfavor, refresque navegador para ver la actualización de vistas.'),(900,NULL,0,'Panel','en',''),(901,NULL,0,'Panel','fr','Panneau'),(902,NULL,0,'Precision','es','Precisión'),(903,NULL,0,'Params','en',''),(904,NULL,0,'Params','fr','Paramètres'),(905,NULL,0,'Preferences','es','Preferencias'),(906,NULL,0,'Parent','en',''),(907,NULL,0,'Parent','fr','Parent'),(908,NULL,0,'Prefix','es','Prefijo'),(909,NULL,0,'Parent menu','en',''),(910,NULL,0,'Parent menu','fr','Menu parent'),(911,NULL,0,'Priority','es','Prioridad'),(912,NULL,0,'Password','en',''),(913,NULL,296,'Password','fr','Mot de passe'),(914,NULL,0,'Read','es','Lectura'),(915,NULL,0,'Password doesn\'t match configured pattern.','en',''),(916,NULL,0,'Password doesn\'t match configured pattern.','fr','Le mot de passe ne correspond pas au motif configuré.'),(917,NULL,0,'Readonly','es','Lectura sólamente'),(918,NULL,0,'Password of the new user','en',''),(919,NULL,0,'Password of the new user','fr','Mot de passe du nouvel utilisateur'),(920,NULL,0,'Readonly if','es','Lectura sólamente si'),(921,NULL,0,'Permission','en',''),(922,NULL,0,'Permission','fr','Permission'),(923,NULL,0,'Recipients','es','Destinatarios'),(924,NULL,0,'Permissions','en',''),(925,NULL,295,'Permissions','fr','Permissions'),(926,NULL,0,'Record created','es','Registro creado'),(927,NULL,0,'Permissions (fields)','en',''),(928,NULL,0,'Permissions (fields)','fr','Permissions (champs)'),(929,NULL,0,'Record updated','es','Registro actualizado'),(930,NULL,0,'Personal','en',''),(931,NULL,0,'Personal','fr','Personnel'),(932,NULL,0,'Record was updated or deleted by another transaction','es','El registro fué actualizado o eliminado por otra transacción'),(933,NULL,0,'Personalized View','en',''),(934,NULL,0,'Personalized View','fr','Vue personnalisée'),(935,NULL,0,'Reference error','es','Error de referencia'),(936,NULL,0,'Personalized Views','en',''),(937,NULL,0,'Personalized Views','fr','Vues personnalisées'),(938,NULL,0,'Regex','es','Regex'),(939,NULL,0,'Photo','en',''),(940,NULL,0,'Photo','fr','Photo'),(941,NULL,0,'Related','es','Relacionado a'),(942,NULL,0,'Pink','en',''),(943,NULL,0,'Pink','fr','Rose'),(944,NULL,0,'Related document id','es','ID de documento relacionado'),(945,NULL,0,'Placeholder','en',''),(946,NULL,0,'Placeholder','fr','Marque substitutive'),(947,NULL,0,'Related document model','es','Model du document lié'),(948,NULL,0,'Please change your password.','en',''),(949,NULL,0,'Please change your password.','fr','Veuillez changer votre mot de passe.'),(950,NULL,0,'Related document name','es','Nom du document lié'),(951,NULL,0,'Please log back in.','en',''),(952,NULL,0,'Please log back in.','fr','Veuillez vous reconnecter.'),(953,NULL,0,'Related model','es','Modelo relacionado'),(954,NULL,0,'Please refresh your browser to see updated views.','en',''),(955,NULL,0,'Please refresh your browser to see updated views.','fr','Merci de rafraîchir votre navigateur afin d\'afficher les mises à jour.'),(956,NULL,0,'Related name','es','Nombre de la relación'),(957,NULL,0,'Precision','en',''),(958,NULL,0,'Precision','fr','Précision'),(959,NULL,0,'Related object','es','Objeto relacionado'),(960,NULL,0,'Preferences','en',''),(961,NULL,0,'Preferences','fr','Préférences'),(962,NULL,0,'Relationship','es','Relación'),(963,NULL,0,'Prefix','en',''),(964,NULL,0,'Prefix','fr','Prefix'),(965,NULL,0,'Removable','es','Eliminable ?'),(966,NULL,0,'Priority','en',''),(967,NULL,0,'Priority','fr','Priorité'),(968,NULL,0,'Remove','es','Eliminar'),(969,NULL,0,'Purple','en',''),(970,NULL,0,'Purple','fr','Violet'),(971,NULL,0,'Replies','es','Respuestas'),(972,NULL,0,'Read','en',''),(973,NULL,0,'Read','fr','Lecture'),(974,NULL,0,'Required','es','Requerido'),(975,NULL,0,'Readonly','en',''),(976,NULL,0,'Readonly','fr','Lecture seule'),(977,NULL,0,'Required if','es','Requerido si'),(978,NULL,0,'Readonly if','en',''),(979,NULL,0,'Readonly if','fr','Lecture seule si'),(980,NULL,0,'Restart jobs','es','Reiniciar jobs'),(981,NULL,0,'Recipients','en',''),(982,NULL,0,'Recipients','fr','Destinataires'),(983,NULL,0,'Restart the server for updates to take effect.','es','Reinicie el servidor para que las cambios tengan efecto.'),(984,NULL,0,'Record created','en',''),(985,NULL,0,'Record created','fr','Enregistrement créé'),(986,NULL,0,'Restore all...','es','Refrescar todo...'),(987,NULL,0,'Record updated','en',''),(988,NULL,0,'Record updated','fr','Enregistrement modifié'),(989,NULL,0,'Role','es','Role'),(990,NULL,0,'Record was updated or deleted by another transaction','en',''),(991,NULL,0,'Record was updated or deleted by another transaction','fr','L\'enregistrement a été mis à jour ou supprimé par une autre transaction'),(992,NULL,0,'Roles','es','Los Roles'),(993,NULL,0,'Red','en',''),(994,NULL,0,'Red','fr','Rouge'),(995,NULL,0,'Root','es','Raíz'),(996,NULL,0,'Reference error','en',''),(997,NULL,0,'Reference error','fr','Erreur de référence'),(998,NULL,0,'Rule','es','Regla'),(999,NULL,0,'Regex','en',''),(1000,NULL,0,'Regex','fr','Regex'),(1001,NULL,0,'Rules','es','Reglas'),(1002,NULL,0,'Related','en',''),(1003,NULL,0,'Related','fr','Lié à'),(1004,NULL,0,'SQL error','es','Error de SQL'),(1005,NULL,0,'Related document id','en',''),(1006,NULL,0,'Related document id','fr','Id du document lié'),(1007,NULL,0,'Scale','es','Escala'),(1008,NULL,0,'Related document model','en',''),(1009,NULL,0,'Related document model','fr','Model du document lié'),(1010,NULL,0,'Schedule','es','Planificador'),(1011,NULL,0,'Related document name','en',''),(1012,NULL,0,'Related document name','fr','Nom du document lié'),(1013,NULL,0,'Schedules','es','planificadores'),(1014,NULL,0,'Related model','en',''),(1015,NULL,0,'Related model','fr','Modèle lié'),(1016,NULL,0,'Schema','es','Definición'),(1017,NULL,0,'Related name','en',''),(1018,NULL,0,'Related name','fr','Nom lié'),(1019,NULL,295,'Search','es','Búsqueda'),(1020,NULL,0,'Related object','en',''),(1021,NULL,0,'Related object','fr','Objet lié'),(1022,NULL,295,'Select','es','Seleccionar'),(1023,NULL,0,'Relationship','en',''),(1024,NULL,0,'Relationship','fr','Relation'),(1025,NULL,0,'Select Item','es','Elemento seleccionado'),(1026,NULL,0,'Remove','en',''),(1027,NULL,0,'Remove','fr','Supprimer'),(1028,NULL,0,'Selection','es','Selección'),(1029,NULL,0,'Replies','en',''),(1030,NULL,0,'Replies','fr','Réponses'),(1031,NULL,0,'Selects','es','Las selecciones'),(1032,NULL,0,'Required','en',''),(1033,NULL,0,'Required','fr','Requis'),(1034,NULL,0,'Separator','es','Separador'),(1035,NULL,0,'Required if','en',''),(1036,NULL,0,'Required if','fr','Requis si'),(1037,NULL,0,'Sequence','es','Secuencia'),(1038,NULL,0,'Restart jobs','en',''),(1039,NULL,0,'Restart jobs','fr','Redémarrer'),(1040,NULL,0,'Sequence order','es','Orden de secuencia'),(1041,NULL,0,'Restore all…','en',''),(1042,NULL,0,'Restore all…','fr','Tout restaurer…'),(1043,NULL,0,'Server expression to check whether to use this field.','es','Expresión del servidor para chequear si se utiliza este campo.'),(1044,NULL,0,'Role','en',''),(1045,NULL,0,'Role','fr','Role'),(1046,NULL,0,'Shared','es','Compartir ?'),(1047,NULL,0,'Roles','en',''),(1048,NULL,0,'Roles','fr','Les Roles'),(1049,NULL,0,'Shared with me','es','Compartido conmigo'),(1050,NULL,0,'Root','en',''),(1051,NULL,0,'Root','fr','Racine'),(1052,NULL,0,'Show Model','es','Mostrar el modelo'),(1053,NULL,0,'Rule','en',''),(1054,NULL,0,'Rule','fr','Règle'),(1055,NULL,0,'Show if','es','Mostrar si'),(1056,NULL,0,'Rules','en',''),(1057,NULL,0,'Rules','fr','Règles'),(1058,NULL,0,'Show in top menu','es','Mostrar en el menú de arriba'),(1059,NULL,0,'SQL error','en',''),(1060,NULL,0,'SQL error','fr','Erreur SQL'),(1061,NULL,0,'Show permissions','es','Mostrar permisos'),(1062,NULL,0,'Scale','en',''),(1063,NULL,0,'Scale','fr','Échelle'),(1064,NULL,0,'Single tab','es','Tab sencilla'),(1065,NULL,0,'Schedule','en',''),(1066,NULL,0,'Schedule','fr','Planificateur'),(1067,NULL,0,'Size','es','Tamaño'),(1068,NULL,0,'Schedules','en',''),(1069,NULL,0,'Schedules','fr','Planificateurs'),(1070,NULL,0,'Size in bytes','es','Tamaño en bytes'),(1071,NULL,0,'Schema','en',''),(1072,NULL,0,'Schema','fr','Définition'),(1073,NULL,0,'Spacer','es','Espaciador'),(1074,NULL,0,'Search','en',''),(1075,NULL,295,'Search','fr','Rechercher'),(1076,NULL,0,'Specify whether the members of this group are technical staff.','es','Especifica si los miembros del grupo es personal técnico.'),(1077,NULL,0,'Select','en',''),(1078,NULL,0,'Select','fr','Sélectionner'),(1079,NULL,0,'Specify whether this action can be used as home action.','es','Indicar si esta acción puede servir como acción inicial.'),(1080,NULL,0,'Select Item','en',''),(1081,NULL,0,'Select Item','fr','Élément de la sélection'),(1082,NULL,0,'Status','es','Estado'),(1083,NULL,0,'Selection','en',''),(1084,NULL,0,'Selection','fr','Sélection'),(1085,NULL,0,'Stop service','es','Parar el servicio'),(1086,NULL,0,'Selects','en',''),(1087,NULL,0,'Selects','fr','Les Sélections'),(1088,NULL,0,'String','es','Cadena de caracteres'),(1089,NULL,0,'Separator','en',''),(1090,NULL,0,'Separator','fr','Séparateurs'),(1091,NULL,0,'Style','es','Estilo'),(1092,NULL,0,'Sequence','en',''),(1093,NULL,0,'Sequence','fr','Séquence'),(1094,NULL,0,'Subject','es','Asunto'),(1095,NULL,0,'Sequence order','en',''),(1096,NULL,0,'Sequence order','fr','Ordre d\'affichage'),(1097,NULL,0,'Subscribe','es','Suscribir'),(1098,NULL,0,'Server expression to check whether to use this field.','en',''),(1099,NULL,0,'Server expression to check whether to use this field.','fr','Expression serveur pour utiliser ce champ ou non'),(1100,NULL,443,'Success','es','Exitóso'),(1101,NULL,0,'Shared','en',''),(1102,NULL,0,'Shared','fr','Partagé ?'),(1103,NULL,0,'Suffix','es','Sufijo'),(1104,NULL,0,'Shared with me','en',''),(1105,NULL,0,'Shared with me','fr','Partagés avec moi'),(1106,NULL,0,'Summary','es','Resúmen'),(1107,NULL,0,'Show Model','en',''),(1108,NULL,0,'Show Model','fr','Voir le modèle'),(1109,NULL,0,'System notification','es','Sistema de notificación'),(1110,NULL,0,'Show if','en',''),(1111,NULL,0,'Show if','fr','Afficher si'),(1112,NULL,0,'Table','es','Tabla'),(1113,NULL,0,'Show in top menu','en',''),(1114,NULL,0,'Show in top menu','fr','Afficher dans le menu du haut'),(1115,NULL,0,'Tag','es','Etiqueta'),(1116,NULL,0,'Show permissions','en',''),(1117,NULL,0,'Show permissions','fr','Voir les permissions'),(1118,NULL,0,'Tag count','es','Contador'),(1119,NULL,0,'Single tab','en',''),(1120,NULL,0,'Single tab','fr','Onglet unique'),(1121,NULL,0,'Tag label','es','Identificación de la etiqueta'),(1122,NULL,0,'Size','en',''),(1123,NULL,0,'Size','fr','Taille'),(1124,NULL,0,'Tag method','es','Método de cálculo'),(1125,NULL,0,'Size in bytes','en',''),(1126,NULL,0,'Size in bytes','fr','Taille en bytes'),(1127,NULL,0,'Tag style','es','Estilo de etiqueta'),(1128,NULL,0,'Spacer','en',''),(1129,NULL,0,'Spacer','fr','Espace'),(1130,NULL,0,'Tags','es','Etiquetas'),(1131,NULL,0,'Specify whether the members of this group are technical staff.','en',''),(1132,NULL,0,'Specify whether the members of this group are technical staff.','fr','Indiquez si les membres de ce groupe sont des utilisateurs technique.'),(1133,NULL,0,'Target custom model','es','Modèle personnalisé cible'),(1134,NULL,0,'Specify whether the members of this group can view collaboration','en',''),(1135,NULL,0,'Specify whether the members of this group can view collaboration','fr','Indique si les membres de ce groupe peuvent voir la collaboration'),(1136,NULL,0,'Target json model','es','Modèle Json cible'),(1137,NULL,0,'Specify whether this action can be used as home action.','en',''),(1138,NULL,0,'Specify whether this action can be used as home action.','fr','Indique si cette action peut être utilisé comme action par défaut.'),(1139,NULL,0,'Target model','es','Modelo objetivo'),(1140,NULL,0,'Status','en',''),(1141,NULL,0,'Status','fr','Statut'),(1142,NULL,0,'Task','es','Tarea'),(1143,NULL,0,'Stop service','en',''),(1144,NULL,0,'Stop service','fr','Arrêter le service'),(1145,NULL,0,'Task closed','es','Tarea cerrada'),(1146,NULL,0,'String','en',''),(1147,NULL,0,'String','fr','Chaîne de caractère'),(1148,NULL,0,'Task created','es','Tarea creada'),(1149,NULL,0,'Style','en',''),(1150,NULL,0,'Style','fr','Style'),(1151,NULL,0,'Task date','es','Fecha de la tarea'),(1152,NULL,0,'Subject','en',''),(1153,NULL,0,'Subject','fr','Sujet'),(1154,NULL,0,'Task deadline','es','Fecha límite de la tarea'),(1155,NULL,0,'Subscribe','en',''),(1156,NULL,0,'Subscribe','fr','S\'abonner'),(1157,NULL,0,'Task duration','es','Duración de la tarea'),(1158,NULL,0,'Success','en',''),(1159,NULL,443,'Success','fr','Succès'),(1160,NULL,0,'Tasks','es','Tareas'),(1161,NULL,0,'Suffix','en',''),(1162,NULL,0,'Suffix','fr','Suffixe'),(1163,NULL,0,'Tasks assigned to me','es','Asignadas a mí'),(1164,NULL,0,'Summary','en',''),(1165,NULL,0,'Summary','fr','Sommaire'),(1166,NULL,0,'Tasks created by me','es','Creadas por mi'),(1167,NULL,0,'System notification','en',''),(1168,NULL,0,'System notification','fr','Système de notification'),(1169,NULL,295,'Tasks due','es','Ya vencieron'),(1170,NULL,0,'Table','en',''),(1171,NULL,0,'Table','fr','Table'),(1172,NULL,295,'Tasks todo','es','Por realizar'),(1173,NULL,0,'Tag','en',''),(1174,NULL,0,'Tag','fr','Tag'),(1175,NULL,0,'Team','es','Equipo'),(1176,NULL,0,'Tag count','en',''),(1177,NULL,0,'Tag count','fr','Compteur'),(1178,NULL,0,'Teams','es','Equipos'),(1179,NULL,0,'Tag label','en',''),(1180,NULL,0,'Tag label','fr','Libellé du tag'),(1181,NULL,0,'Teamwork','es','Equipos de trabajo'),(1182,NULL,0,'Tag method','en',''),(1183,NULL,0,'Tag method','fr','Méthode de calcul'),(1184,NULL,0,'Technical staff','es','Personal técnico'),(1185,NULL,0,'Tag style','en',''),(1186,NULL,0,'Tag style','fr','Style de tag'),(1187,NULL,0,'The addition data for UI widgets','es','Données additionnelles utilisées par l\'interface'),(1188,NULL,0,'Tags','en',''),(1189,NULL,0,'Tags','fr','Tags'),(1190,NULL,0,'The image icon to show in UI widgets','es','Icône utilisée par l\'interface'),(1191,NULL,0,'Target custom model','en',''),(1192,NULL,0,'Target custom model','fr','Modèle personnalisé cible'),(1193,NULL,0,'The module can\'t be uninstalled because other modules are pending. Please restart the server before.','es','Le module ne peut pas être désinstallé car d\'autres modules sont en attente. Redémarrer le serveur avant.'),(1194,NULL,0,'Target json model','en',''),(1195,NULL,0,'Target json model','fr','Modèle Json cible'),(1196,NULL,0,'The module can\'t be uninstalled because other non-removable modules depend on it.','es','Le module ne peut pas être désinstallé car d\'autres modules non supprimable en dépendent.'),(1197,NULL,0,'Target model','en',''),(1198,NULL,0,'Target model','fr','Modèle cible'),(1199,NULL,0,'The record(s) are referenced by other records, please remove all the references first.','es','Cet enregistrement est déjà utilisé dans d\'autres enregistrements, veuillez d’abord supprimer ces références.'),(1200,NULL,0,'Task','en',''),(1201,NULL,0,'Task','fr','Tâche'),(1202,NULL,0,'The record(s) can\'t be updated as it violates unique constraint.','es','L\'enregistrement ne peut pas être mis à jour car il enfreint la contrainte d\'unicité.'),(1203,NULL,0,'Task closed','en',''),(1204,NULL,0,'Task closed','fr','Tâche fermée'),(1205,NULL,0,'The scheduler service has been stopped.','es','Le service de planificateur est arrêté.'),(1206,NULL,0,'Task created','en',''),(1207,NULL,0,'Task created','fr','Tâche créée'),(1208,NULL,0,'The scheduler service is disabled.','es','Le service de planificateur est désactivé.'),(1209,NULL,0,'Task date','en',''),(1210,NULL,0,'Task date','fr','Date de tâche'),(1211,NULL,0,'The select item title','es','Título de la selección'),(1212,NULL,0,'Task deadline','en',''),(1213,NULL,0,'Task deadline','fr','Date limite de tâche'),(1214,NULL,0,'The select item value','es','Valor de la selección'),(1215,NULL,0,'Task duration','en',''),(1216,NULL,0,'Task duration','fr','Durée de tâche'),(1217,NULL,0,'Theme','es','Theme'),(1218,NULL,0,'Tasks','en',''),(1219,NULL,0,'Tasks','fr','Tâches à réaliser'),(1220,NULL,0,'This may terminate any running jobs. Are sure to continue ?','es','Cela va arrêter les instances en cours. Voulez-vous continuer ?'),(1221,NULL,0,'Tasks assigned to me','en',''),(1222,NULL,0,'Tasks assigned to me','fr','Mes tâches assignées'),(1223,NULL,0,'This will update job with current settings. Are sure to continue ?','es','Cela va mettre à jour l’instance avec les paramètres actuels. Voulez-vous continuer ?'),(1224,NULL,0,'Tasks created by me','en',''),(1225,NULL,0,'Tasks created by me','fr','Mes tâches soumises'),(1226,NULL,0,'Time','es','Tiempo'),(1227,NULL,0,'Tasks due','en',''),(1228,NULL,295,'Tasks due','fr','Tâche échue'),(1229,NULL,0,'Title','es','Título'),(1230,NULL,0,'Tasks todo','en',''),(1231,NULL,295,'Tasks todo','fr','Tâche à faire'),(1232,NULL,0,'Tooltip','es','Tooltip'),(1233,NULL,0,'Teal','en',''),(1234,NULL,0,'Teal','fr','Bleu canard'),(1235,NULL,0,'Top menu','es','Menú de arriba'),(1236,NULL,0,'Team','en',''),(1237,NULL,0,'Team','fr','Équipe'),(1238,NULL,0,'Topic','es','Tema'),(1239,NULL,0,'Teams','en',''),(1240,NULL,0,'Teams','fr','Équipes'),(1241,NULL,0,'Topic closed','es','Team cerrado'),(1242,NULL,0,'Teamwork','en',''),(1243,NULL,0,'Teamwork','fr','Travail d’équipe'),(1244,NULL,0,'Topic created','es','Tema creado'),(1245,NULL,0,'Technical staff','en',''),(1246,NULL,0,'Technical staff','fr','Données techniques'),(1247,NULL,0,'Topic re-opened','es','Tema re-abierto'),(1248,NULL,0,'The addition data for UI widgets','en',''),(1249,NULL,0,'The addition data for UI widgets','fr','Données additionnelles utilisées par l\'interface'),(1250,NULL,0,'Topics','es','Temas'),(1251,NULL,0,'The color to use for tags','en',''),(1252,NULL,0,'The color to use for tags','fr','La couleur à utiliser pour les tags'),(1253,NULL,0,'Translation','es','Traducción'),(1254,NULL,0,'The image icon to show in UI widgets','en',''),(1255,NULL,0,'The image icon to show in UI widgets','fr','Icône utilisée par l\'interface'),(1256,NULL,0,'Tree','es','Arbol'),(1257,NULL,0,'The record(s) can\'t be updated as it violates unique constraint.','en',''),(1258,NULL,0,'The record(s) can\'t be updated as it violates unique constraint.','fr','L\'enregistrement ne peut pas être mis à jour car il enfreint la contrainte d\'unicité.'),(1259,NULL,295,'Type','es','Type'),(1260,NULL,0,'The scheduler service has been stopped.','en',''),(1261,NULL,0,'The scheduler service has been stopped.','fr','Le service de planificateur est arrêté.'),(1262,NULL,0,'Unexpected database error occurred on the server.','es','Error inesperado de la base de datos ha ocurrido en el servidor.'),(1263,NULL,0,'The scheduler service is disabled.','en',''),(1264,NULL,0,'The scheduler service is disabled.','fr','Le service de planificateur est désactivé.'),(1265,NULL,0,'Uninstall','es','Desinstalar'),(1266,NULL,0,'The select item title','en',''),(1267,NULL,0,'The select item title','fr','Titre de la sélection'),(1268,NULL,0,'Unique constraint violation','es','Violación de restricción registro único'),(1269,NULL,0,'The select item value','en',''),(1270,NULL,0,'The select item value','fr','Valeur de la sélection'),(1271,NULL,0,'Unique message identifier','es','Identificador único del mensaje'),(1272,NULL,0,'Theme','en',''),(1273,NULL,0,'Theme','fr','Thème'),(1274,NULL,0,'Unread','es','No léido'),(1275,NULL,0,'This may terminate any running jobs. Are you sure you want to continue?','en',''),(1276,NULL,0,'This may terminate any running jobs. Are you sure you want to continue?','fr','Cela va arrêter les instances en cours. Voulez-vous continuer ?'),(1277,NULL,0,'Unsubscribe','es','Cancelar subscripción'),(1278,NULL,0,'This will update job with current settings. Are you sure you want to continue?','en',''),(1279,NULL,0,'This will update job with current settings. Are you sure you want to continue?','fr','Cela va mettre à jour l’instance avec les paramètres actuels. Voulez-vous continuer ?'),(1280,NULL,0,'Update','es','Actualizar'),(1281,NULL,0,'Time','en',''),(1282,NULL,0,'Time','fr','Heure'),(1283,NULL,0,'Updated by','es','Actualizado por'),(1284,NULL,0,'Title','en',''),(1285,NULL,0,'Title','fr','Titre'),(1286,NULL,0,'Updated on','es','Actualizado el'),(1287,NULL,0,'Tooltip','en',''),(1288,NULL,0,'Tooltip','fr','Info-bulle'),(1289,NULL,0,'Urgent','es','Urgente'),(1290,NULL,0,'Top menu','en',''),(1291,NULL,0,'Top menu','fr','Menu du haut'),(1292,NULL,0,'Used as home action','es','Utizada como acción inicial'),(1293,NULL,0,'Topic','en',''),(1294,NULL,0,'Topic','fr','Sujet'),(1295,NULL,0,'User','es','Usuario'),(1296,NULL,0,'Topic closed','en',''),(1297,NULL,0,'Topic closed','fr','Sujet fermé'),(1298,NULL,0,'User Management','es','Gestión de usuarios'),(1299,NULL,0,'Topic created','en',''),(1300,NULL,0,'Topic created','fr','Sujet créé'),(1301,NULL,0,'User preferences','es','Preferencias'),(1302,NULL,0,'Topic re-opened','en',''),(1303,NULL,0,'Topic re-opened','fr','Sujet rouvert'),(1304,NULL,0,'Users','es','Usuarios'),(1305,NULL,0,'Topics','en',''),(1306,NULL,0,'Topics','fr','Sujets'),(1307,NULL,0,'Valid cron. Next execution dates are :','es','Cron válido. Las próximas fechas de ejecución son: '),(1308,NULL,0,'Translation','en',''),(1309,NULL,0,'Translation','fr','Traduction'),(1310,NULL,0,'Validate','es','Validar'),(1311,NULL,0,'Tree','en',''),(1312,NULL,0,'Tree','fr','Arbre'),(1313,NULL,0,'Validation error','es','Error de validación'),(1314,NULL,0,'Type','en',''),(1315,NULL,0,'Type','fr','Type'),(1316,NULL,295,'Value','es','valor'),(1317,NULL,0,'Unexpected database error occurred on the server.','en',''),(1318,NULL,0,'Unexpected database error occurred on the server.','fr','Une erreur de base de données est survenue sur le serveur.'),(1319,NULL,0,'Value Expression','es','Expresión'),(1320,NULL,0,'Unique constraint violation','en',''),(1321,NULL,0,'Unique constraint violation','fr','Violation de contrainte unique'),(1322,NULL,0,'Version','es','Versión'),(1323,NULL,0,'Unique message identifier','en',''),(1324,NULL,0,'Unique message identifier','fr','Identifiant unique de message'),(1325,NULL,0,'View','es','Vista'),(1326,NULL,0,'Unread','en',''),(1327,NULL,0,'Unread','fr','Non lus'),(1328,NULL,0,'View Help','es','Vista de ayuda'),(1329,NULL,0,'Unsubscribe','en',''),(1330,NULL,0,'Unsubscribe','fr','Se désabonner'),(1331,NULL,0,'View Management','es','Gestión de vistas'),(1332,NULL,0,'Update','en',''),(1333,NULL,0,'Update','fr','Mettre à jour'),(1334,NULL,0,'Views','es','Las vistas'),(1335,NULL,0,'Updated by','en',''),(1336,NULL,0,'Updated by','fr','Mis à jour par'),(1337,NULL,0,'Visibility','es','Visibilidad'),(1338,NULL,0,'Updated on','en',''),(1339,NULL,0,'Updated on','fr','Mis à jour le'),(1340,NULL,0,'Visible','es','Visible'),(1341,NULL,0,'Urgent','en',''),(1342,NULL,0,'Urgent','fr','Urgent'),(1343,NULL,0,'Visible in grid','es','Visible en la lista'),(1344,NULL,0,'Used as home action','en',''),(1345,NULL,0,'Used as home action','fr','Utilisable comme action d\'accueil'),(1346,NULL,295,'Warning','es','Advertencia'),(1347,NULL,0,'User','en',''),(1348,NULL,295,'User','fr','Utilisateur'),(1349,NULL,0,'Whether to grant create access.','es','Autorise un accès en creation'),(1350,NULL,0,'User Management','en',''),(1351,NULL,0,'User Management','fr','Gestion des utilisateurs'),(1352,NULL,0,'Whether to grant export access.','es','Autorise l\'export'),(1353,NULL,0,'User preferences','en',''),(1354,NULL,0,'User preferences','fr','Préférences'),(1355,NULL,0,'Whether to grant read access.','es','Autorise un accès en lecture'),(1356,NULL,0,'Users','en',''),(1357,NULL,0,'Users','fr','Les Utilisateurs'),(1358,NULL,0,'Whether to grant remove access.','es','Autorise un accès en suppression'),(1359,NULL,0,'Valid cron. Next execution dates are:','en',''),(1360,NULL,0,'Valid cron. Next execution dates are:','fr','Cron valide. Les prochaines dates d’exécution sont :'),(1361,NULL,0,'Whether to grant write access.','es','Autorise un accès en modification'),(1362,NULL,0,'Validate','en',''),(1363,NULL,0,'Validate','fr','Valider'),(1364,NULL,0,'Whether to show help messages.','es','Mostrar los mensajes de ayuda'),(1365,NULL,0,'Validation error','en',''),(1366,NULL,0,'Validation error','fr','Erreur de validation'),(1367,NULL,0,'Whether to use tabbed ui.','es','Navegación con tabs en la interfaz'),(1368,NULL,0,'Value','en',''),(1369,NULL,295,'Value','fr','valeur'),(1370,NULL,0,'Widget','es','Widget'),(1371,NULL,0,'Value Expression','en',''),(1372,NULL,0,'Value Expression','fr','Expression de valeur'),(1373,NULL,0,'Widget Attributes','es','Atributos de widget'),(1374,NULL,0,'Version','en',''),(1375,NULL,0,'Version','fr','Version'),(1376,NULL,0,'Widget attrs','es','Attrs widget'),(1377,NULL,0,'View','en',''),(1378,NULL,0,'View','fr','Vue'),(1379,NULL,0,'Write','es','Modificar'),(1380,NULL,0,'View Attribute','en',''),(1381,NULL,0,'View Attribute','fr','Attribut de vue'),(1382,NULL,0,'Wrong current password','es','clave actual no válida'),(1383,NULL,0,'View Attributes','en',''),(1384,NULL,0,'View Attributes','fr','Attributs de vue'),(1385,NULL,0,'Wrong username or password','es','Usuario ó clave no válidos'),(1386,NULL,0,'View Help','en',''),(1387,NULL,0,'View Help','fr','Aide des vues'),(1388,NULL,0,'Xml','es','Xml'),(1389,NULL,0,'View Management','en',''),(1390,NULL,0,'View Management','fr','Gestion des vues'),(1391,NULL,0,'You are not allowed to remove this filter','es','Usted no está autorizado para eliminar este filtro'),(1392,NULL,0,'View customization','en',''),(1393,NULL,0,'View customization','fr','Personnalisation des vues'),(1394,NULL,0,'You are not authorized to create this resource.','es','Usted no está autorizado para crear este recurso.'),(1395,NULL,0,'View customization permission','en',''),(1396,NULL,0,'View customization permission','fr','Permission de personnalisation des vues'),(1397,NULL,0,'You are not authorized to export the data.','es','Usted no está autorizado para exportar este recurso.'),(1398,NULL,0,'Views','en',''),(1399,NULL,0,'Views','fr','Les Vues'),(1400,NULL,0,'You are not authorized to read this resource.','es','Usted no está autorizado para leer este recurso.'),(1401,NULL,0,'Visibility','en',''),(1402,NULL,0,'Visibility','fr','Visibilité'),(1403,NULL,0,'You are not authorized to remove this resource.','es','Usted no está autorizado para eliminar este recurso.'),(1404,NULL,0,'Visible','en',''),(1405,NULL,0,'Visible','fr','Visible'),(1406,NULL,0,'You are not authorized to update this resource.','es','Usted no está autorizado para actualizar este recurso.'),(1407,NULL,0,'Visible in grid','en',''),(1408,NULL,0,'Visible in grid','fr','Visible dans la liste'),(1409,NULL,295,'You can\'t create document here.','es','Usted no puede crear un documento acá.'),(1410,NULL,0,'Warning','en',''),(1411,NULL,295,'Warning','fr','Avertissement'),(1412,NULL,0,'You can\'t move document here.','es','Usted no puede mover el documento acá.'),(1413,NULL,0,'Whether to grant create access.','en',''),(1414,NULL,0,'Whether to grant create access.','fr','Autorise un accès en creation'),(1415,NULL,0,'Your password','es','Su clave'),(1416,NULL,0,'Whether to grant export access.','en',''),(1417,NULL,0,'Whether to grant export access.','fr','Autorise l\'export'),(1418,NULL,0,'action-attrs','es','action-attrs'),(1419,NULL,0,'Whether to grant read access.','en',''),(1420,NULL,0,'Whether to grant read access.','fr','Autorise un accès en lecture'),(1421,NULL,0,'action-condition','es','action-condition'),(1422,NULL,0,'Whether to grant remove access.','en',''),(1423,NULL,0,'Whether to grant remove access.','fr','Autorise un accès en suppression'),(1424,NULL,0,'action-export','es','action-export'),(1425,NULL,0,'Whether to grant write access.','en',''),(1426,NULL,0,'Whether to grant write access.','fr','Autorise un accès en modification'),(1427,NULL,0,'action-group','es','action-group'),(1428,NULL,0,'Whether to show help messages.','en',''),(1429,NULL,0,'Whether to show help messages.','fr','Afficher les messages d\'aide'),(1430,NULL,0,'action-import','es','action-import'),(1431,NULL,0,'Whether to use tabbed ui.','en',''),(1432,NULL,0,'Whether to use tabbed ui.','fr','Navigation sans onglets'),(1433,NULL,0,'action-method','es','action-method'),(1434,NULL,0,'White','en',''),(1435,NULL,0,'White','fr','Blanc'),(1436,NULL,0,'action-record','es','action-record'),(1437,NULL,0,'Widget','en',''),(1438,NULL,0,'Widget','fr','Widget'),(1439,NULL,0,'action-report','es','action-report'),(1440,NULL,0,'Widget Attributes','en',''),(1441,NULL,0,'Widget Attributes','fr','Attributs de widget'),(1442,NULL,0,'action-script','es','action-script'),(1443,NULL,0,'Widget attrs','en',''),(1444,NULL,0,'Widget attrs','fr','Attrs widget'),(1445,NULL,0,'action-validate','es','action-validate'),(1446,NULL,0,'Write','en',''),(1447,NULL,0,'Write','fr','Modification'),(1448,NULL,0,'action-view','es','acción-vista'),(1449,NULL,0,'Wrong current password','en',''),(1450,NULL,0,'Wrong current password','fr','Mauvais mot de passe actuel'),(1451,NULL,0,'action-ws','es','acción-ws'),(1452,NULL,0,'Wrong username or password','en',''),(1453,NULL,0,'Wrong username or password','fr','Mauvais identifiant ou mot de passe'),(1454,NULL,0,'added comment','es','comentario añadido'),(1455,NULL,0,'Xml','en',''),(1456,NULL,0,'Xml','fr','Xml'),(1457,NULL,0,'Yellow','en',''),(1458,NULL,0,'form::Select','es','Selección'),(1459,NULL,0,'Yellow','fr','Jaune'),(1460,NULL,0,'You are not allowed to customize views.','en',''),(1461,NULL,0,'login name','es','login'),(1462,NULL,0,'You are not allowed to customize views.','fr','Vous n’êtes pas autorisé(e) à personnaliser des vues.'),(1463,NULL,0,'You are not allowed to execute this action.','en',''),(1464,NULL,0,'You are not allowed to execute this action.','fr','Vous n’êtes pas autorisé(e) à exécuter cette action.'),(1465,NULL,0,'updated document','es','documento actualizado'),(1466,NULL,0,'You are not allowed to remove this filter','en',''),(1467,NULL,0,'You are not allowed to remove this filter','fr','Vous n’êtes pas autorisé(e) à supprimer ce filtre.'),(1468,NULL,0,'user group','es','grupo'),(1469,NULL,0,'You are not allowed to share custom views.','en',''),(1470,NULL,0,'You are not allowed to share custom views.','fr','Vous n’êtes pas autorisé(e) à partager des vues personnalisées.'),(1471,NULL,0,'user name','es','usuario'),(1472,NULL,0,'You are not authorized to create this resource.','en',''),(1473,NULL,0,'You are not authorized to create this resource.','fr','Vous n’êtes pas autorisé(e) à créer cette ressource.'),(1474,NULL,0,'{0} customized view is deleted.','es','{0} vista personalizadas eliminadas'),(1475,NULL,0,'You are not authorized to export the data.','en',''),(1476,NULL,0,'You are not authorized to export the data.','fr','Vous n’êtes pas autorisé(e) à exporter cette ressource.'),(1477,NULL,0,'{0} customized views are deleted.','es','{0} vistas personalizadas eliminadas'),(1478,NULL,0,'You are not authorized to read this resource.','en',''),(1479,NULL,0,'You are not authorized to read this resource.','fr','Vous n’êtes pas autorisé(e) à lire cette ressource.'),(1480,NULL,0,'You are not authorized to remove this resource.','en',''),(1481,NULL,0,'You are not authorized to remove this resource.','fr','Vous n’êtes pas autorisé(e) à supprimer cette ressource.'),(1482,NULL,0,'You are not authorized to update this resource.','en',''),(1483,NULL,0,'You are not authorized to update this resource.','fr','Vous n’êtes pas autorisé(e) à modifier cette ressource.'),(1484,NULL,0,'You can\'t create document here.','en',''),(1485,NULL,0,'You can\'t create document here.','fr','Vous ne pouvez pas créer un document ici.'),(1486,NULL,0,'You can\'t move document here.','en',''),(1487,NULL,0,'You can\'t move document here.','fr','Vous ne pouvez pas déplacer le document ici.'),(1488,NULL,0,'Your current password','en',''),(1489,NULL,295,'Your current password','fr','votre mot de passe actuel'),(1490,NULL,0,'action-attrs','en',''),(1491,NULL,0,'action-attrs','fr','action-attrs'),(1492,NULL,0,'action-condition','en',''),(1493,NULL,0,'action-condition','fr','action-condition'),(1494,NULL,0,'action-export','en',''),(1495,NULL,0,'action-export','fr','action-export'),(1496,NULL,0,'action-group','en',''),(1497,NULL,0,'action-group','fr','action-group'),(1498,NULL,0,'action-import','en',''),(1499,NULL,0,'action-import','fr','action-import'),(1500,NULL,0,'action-method','en',''),(1501,NULL,0,'action-method','fr','action-method'),(1502,NULL,0,'action-record','en',''),(1503,NULL,0,'action-record','fr','action-record'),(1504,NULL,0,'action-report','en',''),(1505,NULL,0,'action-report','fr','action-report'),(1506,NULL,0,'action-script','en',''),(1507,NULL,0,'action-script','fr','action-script'),(1508,NULL,0,'action-validate','en',''),(1509,NULL,0,'action-validate','fr','action-validate'),(1510,NULL,0,'action-view','en',''),(1511,NULL,0,'action-view','fr','action-view'),(1512,NULL,0,'action-ws','en',''),(1513,NULL,0,'action-ws','fr','action-ws'),(1514,NULL,0,'added comment','en',''),(1515,NULL,0,'added comment','fr','commentaire ajouté'),(1516,NULL,0,'aop.meta.order','en','Order'),(1517,NULL,0,'aop.meta.order','fr','Ordre'),(1518,NULL,0,'form::Select','en','Select'),(1519,NULL,0,'form::Select','fr','Sélection'),(1520,NULL,0,'login name','en',''),(1521,NULL,0,'login name','fr','login'),(1522,NULL,0,'updated document','en',''),(1523,NULL,0,'user group','en',''),(1524,NULL,0,'updated document','fr','a modifié le document'),(1525,NULL,0,'user name','en',''),(1526,NULL,0,'user group','fr','groupe'),(1527,NULL,0,'user.password.pattern-title','en','Please use at least 4 characters.'),(1528,NULL,0,'user name','fr','nom'),(1529,NULL,0,'{0} customized view is deleted.','en',''),(1530,NULL,0,'user.password.pattern-title','fr','Veuillez utiliser au moins 4 caractères.'),(1531,NULL,0,'{0} customized views are deleted.','en',''),(1532,NULL,0,'{0} customized view is deleted.','fr','{0} vue personnalisée est supprimée'),(1533,NULL,0,'{0} customized views are deleted.','fr','{0} vues personnalisées sont supprimées'),(1534,NULL,0,'%d days','es','%d días'),(1535,NULL,0,'%d days','en',''),(1536,NULL,0,'%d days','fr','%d jours'),(1537,NULL,0,'%d hours','es','%d horas'),(1538,NULL,0,'%d hours','en',''),(1539,NULL,0,'%d hours','fr','%d heures'),(1540,NULL,0,'%d minutes','es','%d minutos'),(1541,NULL,0,'%d minutes','en',''),(1542,NULL,0,'%d minutes','fr','%d minutes'),(1543,NULL,0,'%d months','es','%d meses'),(1544,NULL,0,'%d months','en',''),(1545,NULL,0,'%d months','fr','%d mois'),(1546,NULL,0,'%d years','es','%d años'),(1547,NULL,0,'%d years','en',''),(1548,NULL,0,'%d years','fr','%d ans'),(1549,NULL,0,'%s ago','es','hace %s'),(1550,NULL,0,'%s ago','en',''),(1551,NULL,0,'%s ago','fr','il y a %s'),(1552,NULL,0,'(end)','es','(fin)'),(1553,NULL,0,'(end)','en',''),(1554,NULL,0,'(end)','fr','(fin)'),(1555,NULL,0,'(start)','es','(inicio)'),(1556,NULL,0,'(start)','en',''),(1557,NULL,0,'(start)','fr','(début)'),(1558,NULL,0,'({0} items)','es','({0} elementos)'),(1559,NULL,0,'({0} items)','en',''),(1560,NULL,0,'({0} items)','fr','({0} éléments)'),(1561,NULL,0,'About','es','Acerca de'),(1562,NULL,0,'A server error occurred. Please contact the administrator.','en',''),(1563,NULL,0,'A server error occurred. Please contact the administrator.','fr','Une erreur serveur s\'est produite. Veuillez contacter l\'administrateur.'),(1564,NULL,0,'Action Category','es','Categoría'),(1565,NULL,0,'About','en',''),(1566,NULL,0,'About','fr','À propos'),(1567,NULL,0,'Action Sub-Category','es','Sub Categoría'),(1568,NULL,0,'Action Category','en',''),(1569,NULL,0,'Action Category','fr','Catégorie'),(1570,NULL,0,'Active Users','es','Usuarios Activos'),(1571,NULL,0,'Action Sub-Category','en',''),(1572,NULL,0,'Action Sub-Category','fr','Sous-catégorie'),(1573,NULL,0,'Adblocker detected!','es','Dispositif de blocage de publicités détecté!'),(1574,NULL,0,'Action…','en',''),(1575,NULL,0,'Action…','fr','Action…'),(1576,NULL,0,'Add','es','Agregar'),(1577,NULL,0,'Active Users','en',''),(1578,NULL,0,'Active Users','fr','Utilisateurs actifs'),(1579,NULL,0,'Add Field','es','Agregar campo'),(1580,NULL,0,'Adblocker detected!','en',''),(1581,NULL,0,'Adblocker detected!','fr','Dispositif de blocage de publicités détecté!'),(1582,NULL,0,'Add filter','es','Agregar filtro'),(1583,NULL,0,'Add','en',''),(1584,NULL,0,'Add','fr','Ajouter'),(1585,NULL,0,'Add followers','es','Agregar seguidores'),(1586,NULL,0,'Add Field','en',''),(1587,NULL,0,'Add Field','fr','Ajouter un champ'),(1588,NULL,0,'Add some tags','es','Agregar etiquetas'),(1589,NULL,0,'Add and new','en',''),(1590,NULL,0,'Add and new','fr','Ajouter et nouveau'),(1591,NULL,0,'Add to favorites...','es','Agregar a favoritos...'),(1592,NULL,0,'Add filter','en',''),(1593,NULL,0,'Add filter','fr','Ajouter filtre'),(1594,NULL,0,'Advanced Search','es','Búsqueda avanzada'),(1595,NULL,0,'Add followers','en',''),(1596,NULL,0,'Add followers','fr','Ajouter des abonnés'),(1597,NULL,0,'Alert','es','Alerta'),(1598,NULL,0,'Add some tags','en',''),(1599,NULL,0,'Add some tags','fr','Ajouter des tags'),(1600,NULL,0,'All Day','es','Todo el día'),(1601,NULL,0,'Add to favorites...','en',''),(1602,NULL,0,'Add to favorites...','fr','Ajouter aux favoris…'),(1603,NULL,0,'Apply','es','Aplicar'),(1604,NULL,0,'Advanced Search','en',''),(1605,NULL,0,'Advanced Search','fr','Recherche avancée'),(1606,NULL,0,'Apr','es','Abr'),(1607,NULL,0,'Alert','en',''),(1608,NULL,0,'Alert','fr','Alerte'),(1609,NULL,0,'April','es','Abril'),(1610,NULL,0,'All Day','en',''),(1611,NULL,0,'All Day','fr','Toute la journée'),(1612,NULL,0,'Archive','es','Archivar'),(1613,NULL,0,'Alt','en',''),(1614,NULL,0,'Alt','fr',''),(1615,NULL,0,'Are you sure to unfollow this document?','es','Está seguro(a) de dejar de seguir este documento ?'),(1616,NULL,0,'Apply','en',''),(1617,NULL,0,'Apply','fr','Appliquer'),(1618,NULL,0,'Are you sure to unfollow this group?','es','Está seguro(a) de dejar de seguir este grupo  ?'),(1619,NULL,0,'Apply as default for all users','en',''),(1620,NULL,0,'Apply as default for all users','fr','Appliquer par défaut pour tous les utilisateurs'),(1621,NULL,0,'Are you sure you want to delete the {0} selected documents?','es','Está seguro(a) de eliminar los {0} documentos seleccionados ?'),(1622,NULL,0,'Apr','en',''),(1623,NULL,0,'Apr','fr','Avril'),(1624,NULL,0,'Are you sure you want to delete {0}?','es','Está seguro(a) de eliminar {0} ?'),(1625,NULL,0,'April','en',''),(1626,NULL,0,'April','fr','Avril'),(1627,NULL,0,'Attached to...','es','Adjunto a'),(1628,NULL,0,'Archive','en',''),(1629,NULL,0,'Archive','fr','Archiver'),(1630,NULL,0,'Attachments','es','Adjuntos'),(1631,NULL,0,'Are you sure to unfollow this document?','en',''),(1632,NULL,0,'Are you sure to unfollow this document?','fr','Êtes-vous sûr de vouloir vous désabonner de ce document ?'),(1633,NULL,0,'Aug','es','Ago'),(1634,NULL,0,'Are you sure to unfollow this group?','en',''),(1635,NULL,0,'Are you sure to unfollow this group?','fr','Êtes-vous sûr de vouloir vous désabonner de ce groupe ?'),(1636,NULL,0,'August','es','Agosto'),(1637,NULL,0,'Are you sure you want to delete the {0} selected documents?','en',''),(1638,NULL,0,'Are you sure you want to delete the {0} selected documents?','fr','Êtes-vous sûr de vouloir supprimer les {0} documents sélictionnés ?'),(1639,NULL,0,'Back','es','Regresar'),(1640,NULL,0,'Are you sure you want to delete {0}?','en',''),(1641,NULL,0,'Are you sure you want to delete {0}?','fr','Êtes-vous sûr de vouloir supprimer {0} ?'),(1642,NULL,0,'Background color','es','Color de fondo'),(1643,NULL,0,'Are you sure you want to reset this view customization?','en',''),(1644,NULL,0,'Are you sure you want to reset this view customization?','fr','Voulez-vous vraiment réinitialiser cette personnalisation ?'),(1645,NULL,0,'Blockquote','es','Cita'),(1646,NULL,0,'Attached to...','en',''),(1647,NULL,0,'Attached to...','fr','Attaché à'),(1648,NULL,0,'Bold (Ctrl+B)','es','Negrilla (Ctrl+B)'),(1649,NULL,0,'Attachments','en',''),(1650,NULL,0,'Attachments','fr','Pièces jointes'),(1651,NULL,0,'Cancel','es','Cancelar'),(1652,NULL,0,'Aug','en',''),(1653,NULL,0,'Aug','fr','Août'),(1654,NULL,0,'Cancelled','es','Cancelado'),(1655,NULL,0,'August','en',''),(1656,NULL,0,'August','fr','Août'),(1657,NULL,0,'Center','es','Centro'),(1658,NULL,0,'Authentication error','en',''),(1659,NULL,0,'Authentication error','fr','Erreur d’authentification'),(1660,NULL,0,'Change password','es','Cambiar la clave'),(1661,NULL,0,'Back','en',''),(1662,NULL,0,'Back','fr','Retour'),(1663,NULL,0,'Clear','es','Limpiar'),(1664,NULL,0,'Background color','en',''),(1665,NULL,0,'Background color','fr','Couleur de fond'),(1666,NULL,0,'Click or drop image','es','Click ó depositar imagen'),(1667,NULL,0,'Blockquote','en',''),(1668,NULL,0,'Blockquote','fr','Citation'),(1669,NULL,0,'Close','es','Cerrar'),(1670,NULL,0,'Bold (Ctrl+B)','en',''),(1671,NULL,0,'Bold (Ctrl+B)','fr','Gras (Ctrl+B)'),(1672,NULL,0,'Close All','es','Cerrar todo'),(1673,NULL,0,'Cancel','en',''),(1674,NULL,0,'Cancel','fr','Annuler'),(1675,NULL,0,'Close Others','es','Cerrar los otros'),(1676,NULL,0,'Cancelled','en',''),(1677,NULL,0,'Cancelled','fr','Annulé'),(1678,NULL,0,'Center','en',''),(1679,NULL,0,'Confirm password doesn\'t match.','es','Error en la confirmación de clave.'),(1680,NULL,0,'Center','fr','Centrer'),(1681,NULL,0,'Change password','en',''),(1682,NULL,0,'Create \"{0}\" and select...','es','Crear \"{0}\" y seleccionar...'),(1683,NULL,0,'Change password','fr','Changer le mot de passe'),(1684,NULL,0,'Clear','en',''),(1685,NULL,0,'Create \"{0}\"...','es','Crear \"{0}\"...'),(1686,NULL,0,'Clear','fr','Effacer'),(1687,NULL,0,'Close','en',''),(1688,NULL,0,'Create document','es','Crear documento'),(1689,NULL,0,'Close','fr','Fermer'),(1690,NULL,0,'Close All','en',''),(1691,NULL,0,'Create folder','es','Crear folder'),(1692,NULL,0,'Close All','fr','Fermer tout'),(1693,NULL,0,'Close Others','en',''),(1694,NULL,0,'Create spreadsheet','es','Crear Hoja'),(1695,NULL,0,'Close Others','fr','Fermer les autres'),(1696,NULL,0,'Columns','en',''),(1697,NULL,0,'Create...','es','Crear...'),(1698,NULL,0,'Columns','fr','Colonnes'),(1699,NULL,0,'Confirm','en',''),(1700,NULL,0,'Created By:','es','Creado por :'),(1701,NULL,0,'Confirm','fr','Confirmer'),(1702,NULL,0,'Confirm password doesn\'t match.','en',''),(1703,NULL,0,'Created On:','es','Creado el :'),(1704,NULL,0,'Confirm password doesn\'t match.','fr','Le mot de passe de confirmation ne correspond pas.'),(1705,NULL,0,'Create \"{0}\" and select...','en',''),(1706,NULL,0,'Current changes will be lost.','es','Los cambios no se guardarán.'),(1707,NULL,0,'Create \"{0}\" and select...','fr','Créer \"{0}\" et sélectionner...'),(1708,NULL,0,'Create \"{0}\"...','en',''),(1709,NULL,0,'Current changes will be lost. Do you really want to proceed?','es','Los cambios no se guardarán, está seguro(a) de continuar ?'),(1710,NULL,0,'Create \"{0}\"...','fr','Créer \"{0}\"...'),(1711,NULL,0,'Create document','en',''),(1712,NULL,0,'Custom ({0})','es','Personalizado ({0})'),(1713,NULL,0,'Create document','fr','Créer document'),(1714,NULL,0,'Create folder','en',''),(1715,NULL,0,'Customize...','es','Personalizar ...'),(1716,NULL,0,'Create folder','fr','Créer dossier'),(1717,NULL,0,'Create spreadsheet','en',''),(1718,NULL,0,'Day','es','Día'),(1719,NULL,0,'Create spreadsheet','fr','Tableur'),(1720,NULL,0,'Create...','en',''),(1721,NULL,0,'Days','es','Días'),(1722,NULL,0,'Create...','fr','Créer...'),(1723,NULL,0,'Created By:','en',''),(1724,NULL,0,'Dec','es','Dic'),(1725,NULL,0,'Created By:','fr','Créé par :'),(1726,NULL,0,'Created On:','en',''),(1727,NULL,0,'December','es','Diciembre'),(1728,NULL,0,'Created On:','fr','Créé le :'),(1729,NULL,0,'Ctrl','en',''),(1730,NULL,0,'Delete','es','Eliminar'),(1731,NULL,0,'Ctrl','fr',''),(1732,NULL,0,'Current changes will be lost.','en',''),(1733,NULL,0,'Delete...','es','Eliminar...'),(1734,NULL,0,'Current changes will be lost.','fr','Les modifications en cours vont être perdues.'),(1735,NULL,0,'Current changes will be lost. Do you really want to proceed?','en',''),(1736,NULL,0,'Current changes will be lost. Do you really want to proceed?','fr','Les modifications en cours vont être perdues, voulez-vous continuer ?'),(1737,NULL,0,'Do you really want to archive the selected record(s)?','es','Desea realmente archivar el registros seleccionado(s) ?'),(1738,NULL,0,'Custom ({0})','en',''),(1739,NULL,0,'Custom ({0})','fr','Perso. ({0})'),(1740,NULL,0,'Do you really want to archive the selected record?','es','Desea realmente archivar el registro seleccionado ?'),(1741,NULL,0,'Customize…','en',''),(1742,NULL,0,'Customize…','fr','Personnaliser…'),(1743,NULL,0,'Do you really want to delete the selected record(s)?','es','Desea realmente eliminar el registro seleccionado(s) ?'),(1744,NULL,0,'Day','en',''),(1745,NULL,295,'Day','fr','jour'),(1746,NULL,0,'Do you really want to delete the selected record?','es','Desea realmente eliminar el registro seleccionado ?'),(1747,NULL,0,'Days','en',''),(1748,NULL,295,'Days','fr','jours'),(1749,NULL,0,'Do you really want to unarchive the selected record(s)?','es','Desea realmente recuperar el registros seleccionado(s) ?'),(1750,NULL,0,'Dec','en',''),(1751,NULL,0,'Dec','fr','Déc'),(1752,NULL,0,'Do you really want to unarchive the selected record?','es','Desea realmente archivar el registros seleccionado ?'),(1753,NULL,0,'December','en',''),(1754,NULL,0,'December','fr','Décembre'),(1755,NULL,0,'Do you really want to update all {0} record(s)?','es','Desea actualizar los {0} registro(s) ?'),(1756,NULL,0,'Delete','en',''),(1757,NULL,0,'Delete','fr','Supprimer'),(1758,NULL,0,'Delete...','en',''),(1759,NULL,0,'Done','es','Listo'),(1760,NULL,0,'Delete...','fr','Supprimer...'),(1761,NULL,0,'Display limited to {0}','en',''),(1762,NULL,0,'Downloading {0}...','es','Descargando {0}...'),(1763,NULL,0,'Display process','en',''),(1764,NULL,0,'Display limited to {0}','fr','Affichage limité à {0}'),(1765,NULL,0,'Drop your files to start upload.','es','Deposite acá sus archivos para empezar la carga. '),(1766,NULL,0,'Do you really want to archive the selected record(s)?','en',''),(1767,NULL,0,'Display process','fr','Voir processus'),(1768,NULL,0,'Duplicate','es','Copiar'),(1769,NULL,0,'Do you really want to archive the selected record?','en',''),(1770,NULL,0,'Do you really want to archive the selected record(s)?','fr','Êtes-vous sûr de vouloir archiver les enregistrements sélectionnés ?'),(1771,NULL,0,'Duration','es','Duración'),(1772,NULL,0,'Do you really want to delete the selected record(s)?','en',''),(1773,NULL,0,'Do you really want to archive the selected record?','fr','Êtes-vous sûr de vouloir archiver l’enregistrement sélectionné ?'),(1774,NULL,0,'Edit','es','Modificar'),(1775,NULL,0,'Do you really want to delete the selected record?','en',''),(1776,NULL,0,'Do you really want to delete the selected record(s)?','fr','Êtes-vous sûr de vouloir supprimer ce(s) enregistrement(s) ?'),(1777,NULL,0,'Edit event','es','Evento de Modificación'),(1778,NULL,0,'Do you really want to unarchive the selected record(s)?','en',''),(1779,NULL,0,'Do you really want to delete the selected record?','fr','Êtes-vous sûr de vouloir supprimer l\'enregistrement sélectionné ?'),(1780,NULL,0,'Edit...','es','Modificar'),(1781,NULL,0,'Do you really want to unarchive the selected record?','en',''),(1782,NULL,0,'Do you really want to unarchive the selected record(s)?','fr','Êtes-vous sûr de vouloir désarchiver les enregistrements sélectionnés ?'),(1783,NULL,0,'Error','es','Error'),(1784,NULL,0,'Do you really want to update all {0} record(s)?','en',''),(1785,NULL,0,'Do you really want to unarchive the selected record?','fr','Êtes-vous sûr de vouloir désarchiver l’enregistrement sélectionné ?'),(1786,NULL,0,'Expanded','es','Expandir'),(1787,NULL,0,'Do you really want to update all {0} record(s)?','fr','Êtes-vous sûr de vouloir mettre à jour ces {0} enregistrement(s) ?'),(1788,NULL,0,'Downloading file…','en',''),(1789,NULL,0,'Export full','es','Exportar completo'),(1790,NULL,0,'Downloading {0}…','en',''),(1791,NULL,0,'Downloading file…','fr','Téléchargement du fichier…'),(1792,NULL,0,'Failed','es','Falló'),(1793,NULL,0,'Drop your files to start upload.','en',''),(1794,NULL,0,'Downloading {0}…','fr','Téléchargement de {0}…'),(1795,NULL,0,'Failed!','es','Falló!'),(1796,NULL,0,'Duplicate','en',''),(1797,NULL,0,'Drop your files to start upload.','fr','Déposez vos fichiers pour commencer le chargement. '),(1798,NULL,0,'False','es','Falso'),(1799,NULL,0,'Duration','en',''),(1800,NULL,0,'Duplicate','fr','Copier'),(1801,NULL,0,'Feb','es','Feb'),(1802,NULL,0,'Edit','en',''),(1803,NULL,0,'Duration','fr','Durée'),(1804,NULL,0,'February','es','Febrero'),(1805,NULL,0,'Edit event','en',''),(1806,NULL,0,'Edit','fr','Modifier'),(1807,NULL,0,'Field Name','es','Nombre del campo'),(1808,NULL,0,'Edit...','en',''),(1809,NULL,0,'Edit event','fr','Modifier évènement'),(1810,NULL,0,'Field Type','es','Tipo de campo'),(1811,NULL,0,'Editing since {0}','en',''),(1812,NULL,0,'Edit...','fr','Éditer…'),(1813,NULL,0,'File upload','es','Subir archivo'),(1814,NULL,0,'Either select or create a record.','en',''),(1815,NULL,0,'Editing since {0}','fr','En saisie {0}'),(1816,NULL,0,'File {0} does not exist.','es','El archivo {0} no existe.'),(1817,NULL,0,'Error','en',''),(1818,NULL,0,'Either select or create a record.','fr','Sélectionnez ou créez un enregistrement.'),(1819,NULL,0,'Filter','es','Filtro'),(1820,NULL,0,'Expand','en',''),(1821,NULL,0,'Error','fr','Erreur'),(1822,NULL,0,'Filters ({0})','es','Filtros ({0})'),(1823,NULL,0,'Expanded','en',''),(1824,NULL,0,'Expand','fr','Développer'),(1825,NULL,0,'Folder','es','Folder'),(1826,NULL,0,'Export full','en',''),(1827,NULL,0,'Expanded','fr','Étendu'),(1828,NULL,0,'Follow: {0}','es','Seguir: {0}'),(1829,NULL,0,'Failed','en',''),(1830,NULL,0,'Export full','fr','Tout exporter'),(1831,NULL,0,'Followers','es','Seguidores'),(1832,NULL,0,'Failed!','en',''),(1833,NULL,0,'Failed','fr','Échec'),(1834,NULL,0,'Font','es','Fuente'),(1835,NULL,0,'False','en',''),(1836,NULL,0,'Failed!','fr','Échec'),(1837,NULL,0,'Font size','es','Tamaño fuente'),(1838,NULL,0,'Feb','en',''),(1839,NULL,0,'False','fr','Faux'),(1840,NULL,0,'Formatted','es','Formateado'),(1841,NULL,0,'February','en',''),(1842,NULL,0,'Feb','fr','Févr'),(1843,NULL,0,'Fr','es','Lib'),(1844,NULL,0,'Field Name','en',''),(1845,NULL,0,'February','fr','Février'),(1846,NULL,0,'Free Memory','es','Memoria libre'),(1847,NULL,0,'Field Type','en',''),(1848,NULL,0,'Field Name','fr','Nom du champ'),(1849,NULL,0,'Fri','es','Vier'),(1850,NULL,0,'File does not exist.','en',''),(1851,NULL,0,'Field Type','fr','Type de champ'),(1852,NULL,0,'Friday','es','Viernes'),(1853,NULL,0,'File upload','en',''),(1854,NULL,0,'File does not exist.','fr','Le fichier n’existe pas.'),(1855,NULL,0,'Go','es','Ir'),(1856,NULL,0,'File {0} does not exist.','en',''),(1857,NULL,0,'File upload','fr','Charger fichiers'),(1858,NULL,0,'Group by','es','Agrupado por'),(1859,NULL,0,'Filter','en',''),(1860,NULL,0,'File {0} does not exist.','fr','Le fichier {0} n’existe pas.'),(1861,NULL,0,'Grouped','es','Agrupado'),(1862,NULL,0,'Filters ({0})','en',''),(1863,NULL,0,'Filter','fr','Filtre'),(1864,NULL,0,'Header 1','es','Título nivel 1'),(1865,NULL,0,'Fixed line','en',''),(1866,NULL,0,'Filters ({0})','fr','Filtres ({0})'),(1867,NULL,0,'Header 2','es','Título nivel 2'),(1868,NULL,0,'Fixed line or mobile','en',''),(1869,NULL,0,'Fixed line','fr','Ligne fixe'),(1870,NULL,0,'Header 3','es','Título nivel 3'),(1871,NULL,0,'Folder','en',''),(1872,NULL,0,'Fixed line or mobile','fr','Ligne fixe ou mobile'),(1873,NULL,0,'Header 4','es','Título nivel 4'),(1874,NULL,0,'Follow: {0}','en',''),(1875,NULL,0,'Folder','fr','Dossier'),(1876,NULL,0,'Header 5','es','Título nivel 5'),(1877,NULL,0,'Followers','en',''),(1878,NULL,0,'Follow: {0}','fr','Suivre: {0}'),(1879,NULL,0,'Header 6','es','Título nivel 6'),(1880,NULL,0,'Font','en',''),(1881,NULL,0,'Followers','fr','Abonnés'),(1882,NULL,0,'Hide','es','Esconder'),(1883,NULL,0,'Font size','en',''),(1884,NULL,0,'Font','fr','Police'),(1885,NULL,0,'Home','es','Inicio'),(1886,NULL,0,'Formatted','en',''),(1887,NULL,0,'Font size','fr','Taille police'),(1888,NULL,0,'Hour','es','Hora'),(1889,NULL,0,'Fr','en',''),(1890,NULL,0,'Formatted','fr','Formaté'),(1891,NULL,0,'Hours','es','Horas'),(1892,NULL,0,'Free Memory','en',''),(1893,NULL,0,'Fr','fr','V'),(1894,NULL,0,'Indent','es','Augmenter le retrait'),(1895,NULL,0,'Fri','en',''),(1896,NULL,0,'Free Memory','fr','Mémoire libre'),(1897,NULL,0,'Insert image','es','Insertar imagen'),(1898,NULL,0,'Friday','en',''),(1899,NULL,0,'Fri','fr','Ven'),(1900,NULL,0,'Insert link','es','Insertar link'),(1901,NULL,0,'Go','en',''),(1902,NULL,0,'Friday','fr','Vendredi'),(1903,NULL,0,'Invalid permissions','es','Permisos invalidos'),(1904,NULL,0,'Grid requires at least one field.','en',''),(1905,NULL,0,'Go','fr','Lancer'),(1906,NULL,0,'Invalid use of \"{0}\" action, must be the first action.','es','Utilisation incorrecte de l\'action \"{0}\", doit être la première action.'),(1907,NULL,0,'Grouped','en',''),(1908,NULL,0,'Grid requires at least one field.','fr','La liste doit contenir au moins un champ.'),(1909,NULL,0,'Invalid use of \"{0}\" action, must be the last action.','es','Utilisation incorrecte de l\'action \"{0}\", doit être la dernière action.'),(1910,NULL,0,'Header 1','en',''),(1911,NULL,0,'Grouped','fr','Groupé'),(1912,NULL,0,'Italic (Ctrl+I)','es','Italica (Ctrl+I)'),(1913,NULL,0,'Header 2','en',''),(1914,NULL,0,'Header 1','fr','Titre niveau 1'),(1915,NULL,0,'Jan','es','En'),(1916,NULL,0,'Header 3','en',''),(1917,NULL,0,'Header 2','fr','Titre niveau 2'),(1918,NULL,0,'January','es','Enero'),(1919,NULL,0,'Header 4','en',''),(1920,NULL,0,'Header 3','fr','Titre niveau 3'),(1921,NULL,0,'Java Runtime','es','Runtime Java'),(1922,NULL,0,'Header 5','en',''),(1923,NULL,0,'Header 4','fr','Titre niveau 4'),(1924,NULL,0,'Java Version','es','Version Java'),(1925,NULL,0,'Header 6','en',''),(1926,NULL,0,'Header 5','fr','Titre niveau 5'),(1927,NULL,0,'Jul','es','Jul'),(1928,NULL,0,'Headings','en',''),(1929,NULL,0,'Header 6','fr','Titre niveau 6'),(1930,NULL,0,'July','es','Julio'),(1931,NULL,0,'Hide','en',''),(1932,NULL,0,'Headings','fr','En-têtes'),(1933,NULL,0,'Jun','es','Jun'),(1934,NULL,0,'Hide legend','en',''),(1935,NULL,0,'Hide','fr','Cacher'),(1936,NULL,0,'June','es','Junio'),(1937,NULL,0,'Home','en',''),(1938,NULL,0,'Hide legend','fr','Cacher légende'),(1939,NULL,0,'Justify','es','Justificar'),(1940,NULL,0,'Hour','en',''),(1941,NULL,0,'Home','fr','Accueil'),(1942,NULL,0,'L','es','L'),(1943,NULL,0,'Hours','en',''),(1944,NULL,0,'Hour','fr','Heure'),(1945,NULL,0,'Large','es','Grande'),(1946,NULL,0,'Indent','en',''),(1947,NULL,0,'Hours','fr','Heures'),(1948,NULL,0,'Larger','es','Más grande'),(1949,NULL,0,'Insert code block','en',''),(1950,NULL,0,'Indent','fr','Augmenter le retrait'),(1951,NULL,0,'Last access time','es','Ultima hora de acceso'),(1952,NULL,0,'Insert image','en',''),(1953,NULL,0,'Insert code block','fr','Insérer un bloc de code'),(1954,NULL,0,'Last modified...','es','Ultima modificación...'),(1955,NULL,0,'Insert inline code','en',''),(1956,NULL,0,'Insert image','fr','Insérer une image'),(1957,NULL,0,'Left','es','Izquierda'),(1958,NULL,0,'Insert link','en',''),(1959,NULL,0,'Insert inline code','fr','Insérer du code en ligne'),(1960,NULL,0,'Loading','es','Cargando'),(1961,NULL,0,'Insert quote','en',''),(1962,NULL,0,'Insert link','fr','Insérer un lien'),(1963,NULL,0,'Log in','es','Conectarse'),(1964,NULL,0,'Insert table','en',''),(1965,NULL,0,'Insert quote','fr','Insérer une citation'),(1966,NULL,0,'Log in attempt failed.','es','Intento de conexión fallido'),(1967,NULL,0,'Insert.Key','en','Insert'),(1968,NULL,0,'Insert table','fr','Insérer un tableau'),(1969,NULL,0,'Log in time','es','Hora de conexión'),(1970,NULL,0,'Invalid country code','en',''),(1971,NULL,0,'Insert.Key','fr','Insert'),(1972,NULL,0,'Log in with %s','es','Se conecta con %s'),(1973,NULL,0,'Invalid length','en',''),(1974,NULL,0,'Log out','es','Desconectarse'),(1975,NULL,0,'Invalid country code','fr','Code de pays invalide'),(1976,NULL,0,'Invalid number','en',''),(1977,NULL,0,'Mar','es','Mar'),(1978,NULL,0,'Invalid length','fr','Longueur invalide'),(1979,NULL,0,'Invalid number type','en',''),(1980,NULL,0,'March','es','Marzo'),(1981,NULL,0,'Invalid number','fr','Numéro invalide'),(1982,NULL,0,'Invalid permissions','en',''),(1983,NULL,0,'Mark as important','es','Marcar como importante'),(1984,NULL,0,'Invalid number type','fr','Type de numéro invalide'),(1985,NULL,0,'Invalid use of \"{0}\" action, must be the first action.','en',''),(1986,NULL,0,'Mark as not important','es','Marcar como no importante'),(1987,NULL,0,'Invalid permissions','fr','Permissions invalides'),(1988,NULL,0,'Invalid use of \"{0}\" action, must be the last action.','en',''),(1989,NULL,0,'Mark as read','es','Marcar como leído'),(1990,NULL,0,'Invalid use of \"{0}\" action, must be the first action.','fr','Utilisation incorrecte de l\'action \"{0}\", doit être la première action.'),(1991,NULL,0,'Italic (Ctrl+I)','en',''),(1992,NULL,0,'Mark as unread','es','Marcar como no leído'),(1993,NULL,0,'Invalid use of \"{0}\" action, must be the last action.','fr','Utilisation incorrecte de l\'action \"{0}\", doit être la dernière action.'),(1994,NULL,0,'Jan','en',''),(1995,NULL,0,'Mass Update','es','Actualización masiva'),(1996,NULL,0,'Italic (Ctrl+I)','fr','Italique (Ctrl+I)'),(1997,NULL,0,'January','en',''),(1998,NULL,0,'Max Memory','es','Memoria máxima'),(1999,NULL,0,'Jan','fr','Janv'),(2000,NULL,0,'Java Runtime','en',''),(2001,NULL,0,'May','es','Mayo'),(2002,NULL,0,'January','fr','Janvier'),(2003,NULL,0,'Java Version','en',''),(2004,NULL,0,'Medium','es','Medio'),(2005,NULL,0,'Java Runtime','fr','Runtime Java'),(2006,NULL,0,'Joined {0}','en',''),(2007,NULL,0,'Memory Information','es','Información de la memoria'),(2008,NULL,0,'Java Version','fr','Version Java'),(2009,NULL,0,'Jul','en',''),(2010,NULL,0,'Milestone','es','Etapa'),(2011,NULL,0,'Joined {0}','fr','Rejoint {0}'),(2012,NULL,0,'July','en',''),(2013,NULL,0,'Minute','es','Minuto'),(2014,NULL,0,'Jul','fr','Juil'),(2015,NULL,0,'Jun','en',''),(2016,NULL,0,'Minutes','es','Minutos'),(2017,NULL,0,'July','fr','Juillet'),(2018,NULL,0,'June','en',''),(2019,NULL,0,'Mo','es','L'),(2020,NULL,0,'Jun','fr','Juin'),(2021,NULL,0,'Justify','en',''),(2022,NULL,0,'Mon','es','Lun'),(2023,NULL,0,'June','fr','Juin'),(2024,NULL,0,'Keyboard Shortcuts','en',''),(2025,NULL,0,'Monday','es','Lunes'),(2026,NULL,0,'Justify','fr','Justifier'),(2027,NULL,0,'L','en',''),(2028,NULL,0,'Month','es','Més'),(2029,NULL,0,'Keyboard Shortcuts','fr','Raccourcis clavier'),(2030,NULL,0,'Large','en',''),(2031,NULL,0,'Months','es','Meses'),(2032,NULL,0,'L','fr','L'),(2033,NULL,0,'Larger','en',''),(2034,NULL,0,'More','es','Más'),(2035,NULL,0,'Large','fr','Grand'),(2036,NULL,0,'Last access time','en',''),(2037,NULL,0,'More actions','es','Más acciones'),(2038,NULL,0,'Larger','fr','Plus grand'),(2039,NULL,0,'Last modified...','en',''),(2040,NULL,0,'More...','es','Más...'),(2041,NULL,0,'Last access time','fr','Heure du dernier accès'),(2042,NULL,0,'Left','en',''),(2043,NULL,0,'Move to archive','es','Archivar'),(2044,NULL,0,'Last modified...','fr','Dernière modification...'),(2045,NULL,0,'Loading','en',''),(2046,NULL,0,'Move to inbox','es','Mover a bandeja de entrada'),(2047,NULL,0,'Left','fr','Gauche'),(2048,NULL,0,'Log in','en',''),(2049,NULL,0,'My Filters','es','Mis filtros'),(2050,NULL,0,'Loading','fr','Chargement'),(2051,NULL,0,'Log in attempt failed.','en',''),(2052,NULL,0,'N/A','es','N/A'),(2053,NULL,0,'Log in','fr','Se connecter'),(2054,NULL,0,'Log in time','en',''),(2055,NULL,0,'New Document','es','Nuevo documento'),(2056,NULL,0,'Log in attempt failed.','fr','Tentative de connexion échouée.'),(2057,NULL,0,'Log in with %s','en',''),(2058,NULL,0,'New Folder','es','Nuevo folder'),(2059,NULL,0,'Log in time','fr','Heure de connexion'),(2060,NULL,0,'Log out','en',''),(2061,NULL,0,'New Spreadsheet','es','Nueva hoja de cálculo'),(2062,NULL,0,'Log in with %s','fr','Se connecter avec %s'),(2063,NULL,0,'Mar','en',''),(2064,NULL,0,'New password must be different.','es','La nueva clave debe de ser diferente'),(2065,NULL,0,'Log out','fr','Déconnexion'),(2066,NULL,0,'March','en',''),(2067,NULL,0,'New task','es','Nueva tarea'),(2068,NULL,0,'Mar','fr','Mars'),(2069,NULL,0,'Mark as important','en',''),(2070,NULL,0,'March','fr','Mars'),(2071,NULL,0,'No','es','No'),(2072,NULL,0,'Mark as not important','en',''),(2073,NULL,0,'Mark as important','fr','Marquer comme important'),(2074,NULL,0,'No documents found.','es','No se encontraron documentos'),(2075,NULL,0,'Mark as read','en',''),(2076,NULL,0,'Mark as not important','fr','Marquer comme non important'),(2077,NULL,0,'No filters available','es','No hay filtros disponibles'),(2078,NULL,0,'Mark as unread','en',''),(2079,NULL,0,'Mark as read','fr','Marquer comme lu'),(2080,NULL,0,'No records found.','es','Sin registros.'),(2081,NULL,0,'Mass Update','en',''),(2082,NULL,0,'Mark as unread','fr','Marquer comme non lu'),(2083,NULL,0,'No results found','es','Sin resultados'),(2084,NULL,0,'Max Memory','en',''),(2085,NULL,0,'Mass Update','fr','Mise à jour en masse'),(2086,NULL,0,'Normalize','es','Normalizar'),(2087,NULL,0,'May','en',''),(2088,NULL,0,'Max Memory','fr','Mémoire max'),(2089,NULL,0,'Nov','es','Nov'),(2090,NULL,0,'Me','en',''),(2091,NULL,0,'May','fr','Mai'),(2092,NULL,0,'November','es','Noviembre'),(2093,NULL,0,'Medium','en',''),(2094,NULL,0,'Me','fr','Moi'),(2095,NULL,0,'Now','es','Ahora'),(2096,NULL,0,'Memory Information','en',''),(2097,NULL,0,'Medium','fr','Moyen'),(2098,NULL,0,'OK','es','OK'),(2099,NULL,0,'Milestone','en',''),(2100,NULL,0,'Memory Information','fr','Information mémoire'),(2101,NULL,0,'Oct','es','Oct'),(2102,NULL,0,'Minute','en',''),(2103,NULL,0,'Milestone','fr','Étape'),(2104,NULL,0,'October','es','Octubre'),(2105,NULL,0,'Minutes','en',''),(2106,NULL,0,'Minute','fr','Minute'),(2107,NULL,0,'Offline!','es','Fuera de línea'),(2108,NULL,0,'Mo','en',''),(2109,NULL,0,'Minutes','fr','Minutes'),(2110,NULL,0,'Operating System','es','Sistema operativo'),(2111,NULL,0,'Mobile','en',''),(2112,NULL,0,'Mo','fr','L'),(2113,NULL,0,'Ordered list','es','Lista ordenada'),(2114,NULL,0,'Model…','en',''),(2115,NULL,0,'Mobile','fr','Mobile'),(2116,NULL,0,'Organize favorites...','es','Organizar favoritos'),(2117,NULL,0,'Mon','en',''),(2118,NULL,0,'Model…','fr','Modèle…'),(2119,NULL,0,'Orig. Value','es','Valor orig.'),(2120,NULL,0,'Monday','en',''),(2121,NULL,0,'Mon','fr','Lun'),(2122,NULL,0,'Outdent','es','Diminuer le retrait'),(2123,NULL,0,'Month','en',''),(2124,NULL,0,'Monday','fr','Lundi'),(2125,NULL,0,'Months','en',''),(2126,NULL,0,'Permissions ({0})','es','Permisos ({0})'),(2127,NULL,295,'Month','fr','mois'),(2128,NULL,0,'More','en',''),(2129,NULL,0,'Permissions...','es','Permisos...'),(2130,NULL,295,'Months','fr','mois'),(2131,NULL,0,'More actions','en',''),(2132,NULL,0,'More','fr','Plus'),(2133,NULL,0,'Please correct the invalid form values.','es','Porfavor, corrija los valores del formulario no válidos.'),(2134,NULL,0,'More...','en',''),(2135,NULL,0,'More actions','fr','Plus d\'actions'),(2136,NULL,0,'Please disable the adblocker as it may slow down the application.','es','Veuillez désactiver le dispositif de blocage de publicités, car cela pourrait ralentir l\'application.'),(2137,NULL,0,'Move to archive','en',''),(2138,NULL,0,'More...','fr','Plus…'),(2139,NULL,0,'Please sign in','es','Porfavor, conéctese'),(2140,NULL,0,'Move to inbox','en',''),(2141,NULL,0,'Move to archive','fr','Archiver'),(2142,NULL,0,'Please wait...','es','porfavor, espere...'),(2143,NULL,0,'My Filters','en',''),(2144,NULL,0,'Move to inbox','fr','Déplacer vers la boîte de reception'),(2145,NULL,0,'Post','es','Enviar'),(2146,NULL,0,'N/A','en',''),(2147,NULL,0,'My Filters','fr','Mes filtres'),(2148,NULL,0,'Prev','es','Previo'),(2149,NULL,0,'New Document','en',''),(2150,NULL,0,'N/A','fr','N/A'),(2151,NULL,0,'Print','es','Imprimir'),(2152,NULL,0,'New Folder','en',''),(2153,NULL,0,'New Document','fr','Nouveau document'),(2154,NULL,0,'Project','es','Proyecto'),(2155,NULL,0,'New Spreadsheet','en',''),(2156,NULL,0,'New Folder','fr','Nouveau dossier'),(2157,NULL,0,'Question','es','Pregunta'),(2158,NULL,0,'New password must be different.','en',''),(2159,NULL,0,'New Spreadsheet','fr','Nouvelle feuille de calcul'),(2160,NULL,0,'Reference','es','Referencia'),(2161,NULL,0,'New task','en',''),(2162,NULL,0,'New password must be different.','fr','Le nouveau mot de passe doit être différent.'),(2163,NULL,0,'Refresh','es','Actualizar'),(2164,NULL,0,'No','en',''),(2165,NULL,0,'New task','fr','Nouvelle tâche'),(2166,NULL,0,'Remember me','es','Recordarme'),(2167,NULL,0,'No documents found.','en',''),(2168,NULL,0,'No','fr','Non'),(2169,NULL,0,'Remove format','es','Eliminar el formato'),(2170,NULL,0,'No filters available','en',''),(2171,NULL,0,'No documents found.','fr','Aucun document trouvé'),(2172,NULL,0,'Rename...','es','Renombrar...'),(2173,NULL,0,'No records found.','en',''),(2174,NULL,0,'No filters available','fr','Aucun filtre disponible'),(2175,NULL,0,'Report attached to current object. Would you like to download?','es','Reporte adjunto al registro actual. Desea descargarlo ?'),(2176,NULL,0,'No results found','en',''),(2177,NULL,0,'No records found.','fr','Aucune donnée trouvée.'),(2178,NULL,0,'Retry','es','Reintentar'),(2179,NULL,0,'None','en',''),(2180,NULL,0,'No results found','fr','Aucun résultat trouvé'),(2181,NULL,0,'Right','es','Derecho'),(2182,NULL,0,'Normalize','en',''),(2183,NULL,0,'None','fr','Aucun'),(2184,NULL,0,'Sa','es','Sa'),(2185,NULL,0,'Nov','en',''),(2186,NULL,0,'Normalize','fr','Normaliser'),(2187,NULL,0,'Sat','es','Sab'),(2188,NULL,0,'November','en',''),(2189,NULL,0,'Nov','fr','Nov'),(2190,NULL,0,'Saturday','es','Sábado'),(2191,NULL,0,'Now','en',''),(2192,NULL,0,'November','fr','Novembre'),(2193,NULL,0,'Save','es','Guardar'),(2194,NULL,0,'OK','en',''),(2195,NULL,0,'Now','fr','Maintenant'),(2196,NULL,0,'Save as','es','Guardar como'),(2197,NULL,0,'Oct','en',''),(2198,NULL,0,'OK','fr','OK'),(2199,NULL,0,'Save filter as','es','Guardar filtro como'),(2200,NULL,0,'October','en',''),(2201,NULL,0,'Oct','fr','Oct'),(2202,NULL,0,'Search Objects','es','Seleccionar objectos'),(2203,NULL,0,'Offline!','en',''),(2204,NULL,0,'October','fr','Octobre'),(2205,NULL,0,'Search more...','es','Más resultados...'),(2206,NULL,0,'Operating System','en',''),(2207,NULL,0,'Offline!','fr','Hors ligne'),(2208,NULL,0,'Search...','es','Buscar...'),(2209,NULL,0,'Ordered list','en',''),(2210,NULL,0,'Operating System','fr','Système d\'exploitation'),(2211,NULL,0,'Second','es','Segundo'),(2212,NULL,0,'Organize favorites...','en',''),(2213,NULL,0,'Ordered list','fr','Liste numérotée'),(2214,NULL,0,'Select \"{0}\"...','es','Seleccionar \"{0}\"...'),(2215,NULL,0,'Orig. Value','en',''),(2216,NULL,0,'Organize favorites...','fr','Organiser les favoris…'),(2217,NULL,0,'Send','es','Enviar'),(2218,NULL,0,'Outdent','en',''),(2219,NULL,0,'Orig. Value','fr','Valeur orig.'),(2220,NULL,0,'Sep','es','Sept'),(2221,NULL,0,'Pager','en',''),(2222,NULL,0,'Outdent','fr','Diminuer le retrait'),(2223,NULL,0,'September','es','Septiembre'),(2224,NULL,0,'Pending','en',''),(2225,NULL,0,'Pager','fr','Pager'),(2226,NULL,0,'Server is not responding.','es','El servidor no reponde.'),(2227,NULL,0,'Permissions ({0})','en',''),(2228,NULL,0,'Pending','fr','En attente'),(2229,NULL,0,'Share','es','Compartir'),(2230,NULL,0,'Permissions...','en',''),(2231,NULL,0,'Show','es','Mostrar'),(2232,NULL,0,'Permissions ({0})','fr','Permissions ({0})'),(2233,NULL,0,'Personal number','en',''),(2234,NULL,0,'Show Details','es','Mostrar detalles'),(2235,NULL,0,'Permissions...','fr','Permissions...'),(2236,NULL,0,'Show archived','es','Mostrar archivados'),(2237,NULL,0,'Please correct the invalid form values.','en',''),(2238,NULL,0,'Personal number','fr','Numéro personnel'),(2239,NULL,0,'Show translations.','es','Mostrar las traducciones.'),(2240,NULL,0,'Please disable the adblocker as it may slow down the application.','en',''),(2241,NULL,0,'Please correct the invalid form values.','fr','Merci de corriger les champs du formulaire non valides.'),(2242,NULL,0,'Small','es','Pequeño'),(2243,NULL,0,'Please wait...','en',''),(2244,NULL,0,'Please disable the adblocker as it may slow down the application.','fr','Veuillez désactiver le dispositif de blocage de publicités, car cela pourrait ralentir l\'application.'),(2245,NULL,0,'Smaller','es','Más pequeño'),(2246,NULL,0,'Post','en',''),(2247,NULL,0,'Please wait...','fr','Merci de patienter...'),(2248,NULL,0,'Sort Ascending','es','Ordenar ascendente'),(2249,NULL,0,'Post','fr','Envoyer'),(2250,NULL,0,'Premium rate','en',''),(2251,NULL,0,'Sort Descending','es','Ordenar descendente'),(2252,NULL,0,'Premium rate','fr','Surtaxé'),(2253,NULL,0,'Prev','en',''),(2254,NULL,0,'Spreadsheet','es','Hoja de cálculo'),(2255,NULL,0,'Prev','fr','Précédent'),(2256,NULL,0,'Print','en',''),(2257,NULL,0,'Stack %','es','Apilar %'),(2258,NULL,0,'Print','fr','Imprimer'),(2259,NULL,0,'Project','en',''),(2260,NULL,0,'Stacked','es','Apilado'),(2261,NULL,0,'Project','fr','Projet'),(2262,NULL,0,'Question','en',''),(2263,NULL,0,'Start time','es','Hora de inicio'),(2264,NULL,0,'Question','fr','Question'),(2265,NULL,0,'Reference','en',''),(2266,NULL,0,'Stream','es','Flujo'),(2267,NULL,0,'Reference','fr','Référence'),(2268,NULL,0,'Refresh','en',''),(2269,NULL,0,'Strikethrough (Ctrl+S)','es','Subrayado'),(2270,NULL,0,'Refresh','fr','Actualiser'),(2271,NULL,0,'Remember me','en',''),(2272,NULL,0,'Su','es','D'),(2273,NULL,0,'Remember me','fr','Se souvenir de moi'),(2274,NULL,0,'Remove format','en',''),(2275,NULL,0,'Submit','es','Enviar'),(2276,NULL,0,'Remove format','fr','Supprimer la mise en forme'),(2277,NULL,0,'Rename...','en',''),(2278,NULL,0,'Sun','es','Dom'),(2279,NULL,0,'Rename...','fr','Renommer...'),(2280,NULL,0,'Report attached to current object. Would you like to download?','en',''),(2281,NULL,0,'Sunday','es','Domingo'),(2282,NULL,0,'Report attached to current object. Would you like to download?','fr','Rapport attaché à l\'objet courant. Voulez-vous le télécharger?'),(2283,NULL,0,'Reset','en',''),(2284,NULL,0,'System Information','es','Información del sistema'),(2285,NULL,0,'Reset','fr','Réinitialiser'),(2286,NULL,0,'Retry','en',''),(2287,NULL,0,'Task name','es','Nombre de la tarea'),(2288,NULL,0,'Retry','fr','Réessayer'),(2289,NULL,0,'Right','en',''),(2290,NULL,0,'Task will be deleted permanently, are you sure?','es','La tarea será eliminada, esta seguro(a) ? '),(2291,NULL,0,'Right','fr','Droite'),(2292,NULL,0,'Sa','en',''),(2293,NULL,0,'Sa','fr','S'),(2294,NULL,0,'Text color','es','Color del texto'),(2295,NULL,0,'Sat','en',''),(2296,NULL,0,'Sat','fr','Sam'),(2297,NULL,0,'Th','es','J'),(2298,NULL,0,'Saturday','en',''),(2299,NULL,0,'Saturday','fr','Samedi'),(2300,NULL,0,'The following fields are invalid:','es','Los siguientes campos no son válidos:'),(2301,NULL,0,'Save','en',''),(2302,NULL,0,'Save','fr','Enregistrer'),(2303,NULL,0,'The record has been updated or delete by another action.','es','El registro ha sido actualizado ó eliminado por otra acción.'),(2304,NULL,0,'Save as','en',''),(2305,NULL,0,'Save as','fr','Enregistrer sous'),(2306,NULL,0,'The {0}={1} event can\'t call \'save\' action on unsaved o2m item.','es','L\'événement {0}={1} ne peut pas appeler l\'action «save» sur un élément de O2M non persisté.'),(2307,NULL,0,'Save column widths','en',''),(2308,NULL,0,'Save column widths','fr','Enregistrer la largeur des colonnes'),(2309,NULL,0,'There are some invalid rows.','es','Hay algunas filas no válidas.'),(2310,NULL,0,'Save filter as','en',''),(2311,NULL,0,'Save filter as','fr','Enregistrer le filtre sous'),(2312,NULL,0,'Thu','es','Jue'),(2313,NULL,0,'Saved and left {0}','en',''),(2314,NULL,0,'Saved and left {0}','fr','Enregistré et quitté {0}'),(2315,NULL,0,'Thursday','es','Jueves'),(2316,NULL,0,'Saved {0}','en',''),(2317,NULL,0,'Saved {0}','fr','Enregistré {0}'),(2318,NULL,0,'Time period','es','Periodo de tiempo'),(2319,NULL,0,'Search Objects','en',''),(2320,NULL,0,'Search Objects','fr','Sélectionner objet'),(2321,NULL,0,'Today','es','Hoy'),(2322,NULL,0,'Search more...','en',''),(2323,NULL,0,'Search more...','fr','Plus de résultats...'),(2324,NULL,0,'Toggle','es','Toggle'),(2325,NULL,0,'Search...','en',''),(2326,NULL,0,'Search...','fr','Rechercher...'),(2327,NULL,0,'Total Memory','es','Memoria total'),(2328,NULL,0,'Second','en',''),(2329,NULL,0,'Second','fr','Seconde'),(2330,NULL,0,'Translations','es','Traducciones'),(2331,NULL,0,'Select \"{0}\"...','en',''),(2332,NULL,0,'Select \"{0}\"...','fr','Sélectionner \"{0}\"...'),(2333,NULL,0,'True','es','True'),(2334,NULL,0,'Select image','en',''),(2335,NULL,0,'Select image','fr','Sélectionner une image'),(2336,NULL,0,'Tu','es','M'),(2337,NULL,0,'Select/Deselect All','en',''),(2338,NULL,0,'Select/Deselect All','fr','Tout sélectionner/désélectionner'),(2339,NULL,0,'Tue','es','Mar'),(2340,NULL,0,'Send','en',''),(2341,NULL,0,'Send','fr','Envoyer'),(2342,NULL,0,'Tuesday','es','Martes'),(2343,NULL,0,'Sep','en',''),(2344,NULL,0,'Sep','fr','Sept'),(2345,NULL,0,'Unarchive','es','Desarchivar'),(2346,NULL,0,'September','en',''),(2347,NULL,0,'September','fr','Septembre'),(2348,NULL,0,'Underline (Ctrl+U)','es','Subrayar (Ctrl+U)'),(2349,NULL,0,'Server is not responding.','en',''),(2350,NULL,0,'Server is not responding.','fr','Le serveur ne répond pas.'),(2351,NULL,0,'Ungroup','es','Desagrupar'),(2352,NULL,0,'Share','en',''),(2353,NULL,0,'Share','fr','Partager'),(2354,NULL,0,'Unknown','es','Desconocido'),(2355,NULL,0,'Shared cost','en',''),(2356,NULL,0,'Shared cost','fr','Frais partagés'),(2357,NULL,0,'Unordered list','es','Listado desordenado'),(2358,NULL,0,'Shortcuts','en',''),(2359,NULL,0,'Shortcuts','fr','Raccourcis'),(2360,NULL,0,'Update all','es','Actualizar todos'),(2361,NULL,0,'Show','en',''),(2362,NULL,0,'Show','fr','Voir'),(2363,NULL,0,'Update your browser!','es','Actualice su navegador!'),(2364,NULL,0,'Show Details','en',''),(2365,NULL,0,'Show Details','fr','Afficher les détails'),(2366,NULL,0,'Updated By:','es','Actualizado por :'),(2367,NULL,0,'Show archived','en',''),(2368,NULL,0,'Show archived','fr','Afficher archives'),(2369,NULL,0,'Updated On:','es','Actualizado el :'),(2370,NULL,0,'Show legend','en',''),(2371,NULL,0,'Show legend','fr','Afficher légende'),(2372,NULL,0,'Upload complete','es','Carga finalizada'),(2373,NULL,0,'Show translations.','en',''),(2374,NULL,0,'Show translations.','fr','Afficher les traductions.'),(2375,NULL,0,'Uploading files...','es','Cargando archivos'),(2376,NULL,0,'Small','en',''),(2377,NULL,0,'Small','fr','Plus petit'),(2378,NULL,0,'Used Memory','es','Memoria utilizada'),(2379,NULL,0,'Smaller','en',''),(2380,NULL,0,'Smaller','fr','Petit'),(2381,NULL,0,'Username','es','Nombre del usuario'),(2382,NULL,0,'Sort Ascending','en',''),(2383,NULL,0,'Sort Ascending','fr','Tri croissant'),(2384,NULL,0,'Sort Descending','en',''),(2385,NULL,0,'Sort Descending','fr','Tri décroissant'),(2386,NULL,0,'Warning!','es','Advertencia !'),(2387,NULL,0,'Spreadsheet','en',''),(2388,NULL,0,'Spreadsheet','fr','Feuille de calcul'),(2389,NULL,0,'We','es','M'),(2390,NULL,0,'Stack %','en',''),(2391,NULL,0,'Stack %','fr','Empilé %'),(2392,NULL,0,'Wed','es','Mie'),(2393,NULL,0,'Stacked','en',''),(2394,NULL,0,'Stacked','fr','Empilé'),(2395,NULL,0,'Wednesday','es','Miércoles'),(2396,NULL,0,'Start time','en',''),(2397,NULL,0,'Start time','fr','Heure de début'),(2398,NULL,0,'Week','es','Semana'),(2399,NULL,0,'Stream','en',''),(2400,NULL,0,'Stream','fr','Flux'),(2401,NULL,0,'Wk','es','Sem.'),(2402,NULL,0,'Strikethrough (Ctrl+S)','en',''),(2403,NULL,0,'Strikethrough (Ctrl+S)','fr','Barré (Ctrl+S)'),(2404,NULL,0,'Would you like to reload the current record?','es','Desea recargar el registro actual ?'),(2405,NULL,0,'Su','en',''),(2406,NULL,0,'Su','fr','D'),(2407,NULL,0,'Would you like to remove the filter?','es','Desea eliminar el filtro ?'),(2408,NULL,0,'Submit','en',''),(2409,NULL,0,'Submit','fr','Soumettre'),(2410,NULL,0,'Write your comment here','es','Escriba acá su comentario'),(2411,NULL,0,'Sun','en',''),(2412,NULL,0,'Sun','fr','Dim'),(2413,NULL,0,'Year','es','Año'),(2414,NULL,0,'Sunday','en',''),(2415,NULL,0,'Sunday','fr','Dimanche'),(2416,NULL,0,'Years','es','Años'),(2417,NULL,0,'System Information','en',''),(2418,NULL,0,'System Information','fr','Information système'),(2419,NULL,0,'Yes','es','Sí'),(2420,NULL,0,'Task list','en',''),(2421,NULL,0,'Task list','fr','Liste de tâches'),(2422,NULL,0,'You are not allow to upload a file bigger than','es','No está autorizado para cargar un archivo mayor a'),(2423,NULL,0,'Task name','en',''),(2424,NULL,0,'Task name','fr','Nom tâche'),(2425,NULL,0,'[Last] dddd [at] LT','es','dddd [a las] LT'),(2426,NULL,0,'Task will be deleted permanently, are you sure?','en',''),(2427,NULL,0,'Task will be deleted permanently, are you sure?','fr','La tâche va être supprimée, êtes-vous sûr? '),(2428,NULL,0,'[Today at] LT','es','[Hoy a las] LT'),(2429,NULL,0,'Text color','en',''),(2430,NULL,0,'[Tomorrow at] LT','es','[Mañana a las] LT'),(2431,NULL,0,'Text color','fr','Couleur du texte'),(2432,NULL,0,'Th','en',''),(2433,NULL,0,'[Yesterday at] LT','es','[Ayer a las] LT'),(2434,NULL,0,'Th','fr','J'),(2435,NULL,0,'The following fields are invalid:','en',''),(2436,NULL,0,'a day','es','un día'),(2437,NULL,0,'The following fields are invalid:','fr','Les champs suivants sont invalides:'),(2438,NULL,0,'The record has been updated or delete by another action.','en',''),(2439,NULL,0,'a few seconds','es','unos segundos'),(2440,NULL,0,'The record has been updated or delete by another action.','fr','L\'enregistrement a été modifié ou supprimé par une autre action.'),(2441,NULL,0,'The {0}={1} event can\'t call \'save\' action on unsaved o2m item.','en',''),(2442,NULL,0,'a minute','es','un minuto'),(2443,NULL,0,'The {0}={1} event can\'t call \'save\' action on unsaved o2m item.','fr','L\'événement {0}={1} ne peut pas appeler l\'action «save» sur un élément de O2M non persisté.'),(2444,NULL,0,'There are some invalid rows.','en',''),(2445,NULL,0,'a month','es','un mes'),(2446,NULL,0,'There are some invalid rows.','fr','Il y a des lignes invalides.'),(2447,NULL,0,'Thu','en',''),(2448,NULL,0,'a year','es','un año'),(2449,NULL,0,'Thu','fr','Jeu'),(2450,NULL,0,'Thursday','en',''),(2451,NULL,0,'an hour','es','una hora'),(2452,NULL,0,'Thursday','fr','Jeudi'),(2453,NULL,0,'Time period','en',''),(2454,NULL,0,'and','es','y'),(2455,NULL,0,'Time period','fr','Période de temps'),(2456,NULL,0,'Today','en',''),(2457,NULL,0,'and {0} more','es','y {0} más'),(2458,NULL,0,'Today','fr','Aujourd’hui'),(2459,NULL,0,'Toggle','en',''),(2460,NULL,0,'contains','es','contiene'),(2461,NULL,0,'Toggle','fr','Réduire'),(2462,NULL,0,'Toll free','en',''),(2463,NULL,0,'dddd [at] LT','es','dddd [el] LT'),(2464,NULL,0,'Toll free','fr','Sans frais'),(2465,NULL,0,'Too long','en',''),(2466,NULL,0,'doesn\'t contain','es','no contiene'),(2467,NULL,0,'Too long','fr','Trop long'),(2468,NULL,0,'Too short','en',''),(2469,NULL,0,'equals','es','igual'),(2470,NULL,0,'Too short','fr','Trop court'),(2471,NULL,0,'Total Memory','en',''),(2472,NULL,0,'greater or equal','es','superior a'),(2473,NULL,0,'Total Memory','fr','Mémoire totale'),(2474,NULL,0,'Translations','en',''),(2475,NULL,0,'greater than','es','mayor a'),(2476,NULL,0,'Translations','fr','Traductions'),(2477,NULL,0,'True','en',''),(2478,NULL,0,'in','es','en'),(2479,NULL,0,'True','fr','Vrai'),(2480,NULL,0,'Tu','en',''),(2481,NULL,0,'in %s','es','en %s'),(2482,NULL,0,'Tu','fr','M'),(2483,NULL,0,'Tue','en',''),(2484,NULL,0,'in range','es','entre'),(2485,NULL,0,'Tue','fr','Mar'),(2486,NULL,0,'Tuesday','en',''),(2487,NULL,0,'is false','es','es falso'),(2488,NULL,0,'Tuesday','fr','Mardi'),(2489,NULL,0,'UAN','en',''),(2490,NULL,0,'is not null','es','no es nulo'),(2491,NULL,0,'UAN','fr','UAN'),(2492,NULL,0,'Unarchive','en',''),(2493,NULL,0,'is null','es','es nulo'),(2494,NULL,0,'Unarchive','fr','Désarchiver'),(2495,NULL,0,'Underline (Ctrl+U)','en',''),(2496,NULL,0,'is true','es','es verdadero'),(2497,NULL,0,'Underline (Ctrl+U)','fr','Souligné (Ctrl+U)'),(2498,NULL,0,'Ungroup','en',''),(2499,NULL,0,'less or equal','es','menor o igual'),(2500,NULL,0,'Ungroup','fr','Dégrouper'),(2501,NULL,0,'Unknown','en',''),(2502,NULL,0,'less than','es','menor a'),(2503,NULL,0,'Unknown','fr','Inconnu'),(2504,NULL,0,'Unordered list','en',''),(2505,NULL,0,'load more','es','cargar más'),(2506,NULL,0,'Unordered list','fr','Liste à puces'),(2507,NULL,0,'Update all','en',''),(2508,NULL,0,'no tasks','es','no hay tareas'),(2509,NULL,0,'Update all','fr','Tout mettre à jour'),(2510,NULL,0,'Update your browser!','en',''),(2511,NULL,0,'not equal','es','no igual'),(2512,NULL,0,'Update your browser!','fr','Mettez à jour votre navigateur!'),(2513,NULL,0,'Updated By:','en',''),(2514,NULL,0,'not in','es','no contenido en'),(2515,NULL,0,'Updated By:','fr','Mis à jour par :'),(2516,NULL,0,'Updated On:','en',''),(2517,NULL,0,'not in range','es','no en el rango'),(2518,NULL,0,'Updated On:','fr','Mis à jour le :'),(2519,NULL,0,'Upload complete','en',''),(2520,NULL,0,'or','es','o'),(2521,NULL,0,'Upload complete','fr','Chargement terminé'),(2522,NULL,0,'Uploading files...','en',''),(2523,NULL,0,'replies ({0} of {1})','es','respuestas ({0} de {1})'),(2524,NULL,0,'Uploading files...','fr','Chargement des fichiers'),(2525,NULL,0,'Use offline...','en',''),(2526,NULL,0,'will be deleted','es','serán eliminados'),(2527,NULL,0,'Use offline...','fr','Utiliser hors ligne...'),(2528,NULL,0,'Used Memory','en',''),(2529,NULL,0,'{0} of {1}','es','{0} de {1}'),(2530,NULL,0,'Used Memory','fr','Mémoire utilisé'),(2531,NULL,0,'Username','en',''),(2532,NULL,0,'{0} records exported.','es','{0} registros exportados.'),(2533,NULL,0,'Username','fr','Nom de l’utilisateur'),(2534,NULL,0,'{0} task','es','{0} tarea'),(2535,NULL,0,'View…','en',''),(2536,NULL,0,'View…','fr','Vue…'),(2537,NULL,0,'{0} tasks','es','{0} tareas'),(2538,NULL,0,'VoIP','en',''),(2539,NULL,0,'VoIP','fr','VoIP'),(2540,NULL,0,'{0} to {1} of {2}','es','{0} a {1} de {2}'),(2541,NULL,0,'Voicemail','en',''),(2542,NULL,0,'Voicemail','fr','Messagerie vocale'),(2543,NULL,0,'Warning!','en',''),(2544,NULL,0,'Warning!','fr','Avertissement !'),(2545,NULL,0,'We','en',''),(2546,NULL,0,'We','fr','M'),(2547,NULL,0,'Wed','en',''),(2548,NULL,0,'Wed','fr','Mer'),(2549,NULL,0,'Wednesday','en',''),(2550,NULL,0,'Wednesday','fr','Mercredi'),(2551,NULL,0,'Week','en',''),(2552,NULL,295,'Week','fr','semaine'),(2553,NULL,0,'Wk','en',''),(2554,NULL,0,'Wk','fr','Sem.'),(2555,NULL,0,'Would you like to reload the current record?','en',''),(2556,NULL,0,'Would you like to reload the current record?','fr','Voulez-vous actualiser l\'enregistrement actuel ?'),(2557,NULL,0,'Would you like to remove the filter?','en',''),(2558,NULL,0,'Would you like to remove the filter?','fr','Voulez-vous supprimer le filtre ?'),(2559,NULL,0,'Write your comment here','en',''),(2560,NULL,0,'Write your comment here','fr','Entrez votre commentaire'),(2561,NULL,0,'Year','en',''),(2562,NULL,295,'Year','fr','année'),(2563,NULL,0,'Years','en',''),(2564,NULL,295,'Years','fr','années'),(2565,NULL,0,'Yes','en',''),(2566,NULL,0,'Yes','fr','Oui'),(2567,NULL,0,'You are not allowed to upload a file bigger than {0} MB.','en',''),(2568,NULL,0,'You are not allowed to upload a file bigger than {0} MB.','fr','Vous n’êtes pas autorisé(e) à envoyer un fichier de plus de {0} Mo.'),(2569,NULL,0,'[Last] dddd [at] LT','en',''),(2570,NULL,0,'[Last] dddd [at] LT','fr','dddd [dernier à] LT'),(2571,NULL,0,'[Today at] LT','en',''),(2572,NULL,0,'[Today at] LT','fr','[Aujourd\'hui à] LT'),(2573,NULL,0,'[Tomorrow at] LT','en',''),(2574,NULL,0,'[Tomorrow at] LT','fr','[Demain à] LT'),(2575,NULL,0,'[Yesterday at] LT','en',''),(2576,NULL,0,'[Yesterday at] LT','fr','[Hier à] LT'),(2577,NULL,0,'a day','en',''),(2578,NULL,0,'a day','fr','un jour'),(2579,NULL,0,'a few seconds','en',''),(2580,NULL,0,'a few seconds','fr','quelques secondes'),(2581,NULL,0,'a minute','en',''),(2582,NULL,0,'a minute','fr','une minute'),(2583,NULL,0,'a month','en',''),(2584,NULL,0,'a month','fr','un mois'),(2585,NULL,0,'a year','en',''),(2586,NULL,0,'a year','fr','un an'),(2587,NULL,0,'an hour','en',''),(2588,NULL,0,'an hour','fr','une heure'),(2589,NULL,0,'and','en',''),(2590,NULL,0,'and','fr','et'),(2591,NULL,0,'and {0} more','en',''),(2592,NULL,0,'and {0} more','fr','et {0} plus'),(2593,NULL,0,'close the current view tab','en',''),(2594,NULL,0,'close the current view tab','fr','fermer l’onglet de la vue actuelle'),(2595,NULL,0,'contains','en',''),(2596,NULL,0,'contains','fr','contient'),(2597,NULL,0,'create new record','en',''),(2598,NULL,0,'create new record','fr','créer un nouvel enregistrement'),(2599,NULL,0,'dddd [at] LT','en',''),(2600,NULL,0,'dddd [at] LT','fr','dddd [à] LT'),(2601,NULL,0,'delete current/selected record(s)','en',''),(2602,NULL,0,'delete current/selected record(s)','fr','supprimer l’enregistrement actuel ou les enregistrements sélectionnés'),(2603,NULL,0,'doesn\'t contain','en',''),(2604,NULL,0,'doesn\'t contain','fr','ne contient pas'),(2605,NULL,0,'edit selected record','en',''),(2606,NULL,0,'edit selected record','fr','modifier l’enregistrement sélectionné'),(2607,NULL,0,'equals','en',''),(2608,NULL,0,'equals','fr','égal'),(2609,NULL,0,'focus first or selected item in view','en',''),(2610,NULL,0,'focus first or selected item in view','fr','aller sur le premier élément ou l’élément sélectionné dans la vue'),(2611,NULL,0,'focus left menu search box','en',''),(2612,NULL,0,'focus left menu search box','fr','aller sur la barre de recherche du menu de gauche'),(2613,NULL,0,'greater or equal','en',''),(2614,NULL,0,'greater or equal','fr','supérieur ou égal'),(2615,NULL,0,'greater than','en',''),(2616,NULL,0,'greater than','fr','supérieure à'),(2617,NULL,0,'in','en',''),(2618,NULL,0,'in','fr','dans'),(2619,NULL,0,'in %s','en',''),(2620,NULL,0,'in %s','fr','dans %s'),(2621,NULL,0,'in range','en',''),(2622,NULL,0,'in range','fr','compris entre'),(2623,NULL,0,'in the current','en',''),(2624,NULL,0,'in the current','fr','dans le courant'),(2625,NULL,0,'in the next','en',''),(2626,NULL,0,'in the next','fr','dans les prochains'),(2627,NULL,0,'in the past','en',''),(2628,NULL,0,'in the past','fr','dans les derniers'),(2629,NULL,0,'is current group','en',''),(2630,NULL,0,'is current group','fr','est le groupe courant'),(2631,NULL,0,'is current user','en',''),(2632,NULL,0,'is current user','fr','est l’utilisateur courant'),(2633,NULL,0,'is empty','en',''),(2634,NULL,0,'is empty','fr','est vide'),(2635,NULL,0,'is false','en',''),(2636,NULL,0,'is false','fr','est faux'),(2637,NULL,0,'is not empty','en',''),(2638,NULL,0,'is not empty','fr','n’est pas vide'),(2639,NULL,0,'is not null','en',''),(2640,NULL,0,'is not null','fr','n\'est pas null'),(2641,NULL,0,'is null','en',''),(2642,NULL,0,'is null','fr','est null'),(2643,NULL,0,'is true','en',''),(2644,NULL,0,'is true','fr','est vrai'),(2645,NULL,0,'less or equal','en',''),(2646,NULL,0,'less or equal','fr','inférieure ou égale'),(2647,NULL,0,'less than','en',''),(2648,NULL,0,'less than','fr','inférieure à'),(2649,NULL,0,'load more','en',''),(2650,NULL,0,'load more','fr','charger plus'),(2651,NULL,0,'navigate to next page/record','en',''),(2652,NULL,0,'navigate to next page/record','fr','naviguer vers la page suivante ou l’enregistrement suivant'),(2653,NULL,0,'navigate to previous page/record','en',''),(2654,NULL,0,'navigate to previous page/record','fr','naviguer vers la page précédente ou l’enregistrement précédent'),(2655,NULL,0,'no tasks','en',''),(2656,NULL,0,'no tasks','fr','aucune tâche'),(2657,NULL,0,'not equal','en',''),(2658,NULL,0,'not equal','fr','pas égal'),(2659,NULL,0,'not in','en',''),(2660,NULL,0,'not in','fr','pas dans'),(2661,NULL,0,'not in range','en',''),(2662,NULL,0,'not in range','fr','non compris entre'),(2663,NULL,0,'or','en',''),(2664,NULL,0,'or','fr','ou'),(2665,NULL,0,'quarter','en',''),(2666,NULL,0,'quarter','fr','trimestre'),(2667,NULL,0,'quarters','en',''),(2668,NULL,0,'quarters','fr','trimestres'),(2669,NULL,0,'refresh current view','en',''),(2670,NULL,0,'refresh current view','fr','actualiser la vue en cours'),(2671,NULL,0,'replies ({0} of {1})','en',''),(2672,NULL,0,'replies ({0} of {1})','fr','réponses ({0} sur {1})'),(2673,NULL,0,'save current record','en',''),(2674,NULL,0,'save current record','fr','enregistrer l’enregistrement actuel'),(2675,NULL,0,'search for records','en',''),(2676,NULL,0,'search for records','fr','rechercher des enregistrements'),(2677,NULL,0,'toggle left menu','en',''),(2678,NULL,0,'toggle left menu','fr','basculer le menu de gauche'),(2679,NULL,0,'weeks','en',''),(2680,NULL,0,'weeks','fr','semaines'),(2681,NULL,0,'will be deleted','en',''),(2682,NULL,0,'will be deleted','fr','sera supprimé'),(2683,NULL,0,'{0} of {1}','en',''),(2684,NULL,0,'{0} of {1}','fr','{0} sur {1}'),(2685,NULL,0,'{0} records exported.','en',''),(2686,NULL,0,'{0} records exported.','fr','{0} enregistrements exportés.'),(2687,NULL,0,'{0} task','en',''),(2688,NULL,0,'{0} task','fr','{0} tâche'),(2689,NULL,0,'{0} tasks','en',''),(2690,NULL,0,'{0} tasks','fr','{0} tâches'),(2691,NULL,0,'{0} to {1} of {2}','en',''),(2692,NULL,0,'{0} to {1} of {2}','fr','{0} à {1} sur {2}'),(2693,NULL,0,'{0} users','en',''),(2694,NULL,0,'{0} users','fr','{0} utilisateurs'),(2695,NULL,0,'{0} users on this record','en',''),(2696,NULL,0,'{0} users on this record','fr','{0} utilisateurs sur cet enregistrement'),(2697,NULL,0,'⌃','en',''),(2698,NULL,0,'⌃','fr',''),(2699,NULL,0,'⌤','en',''),(2700,NULL,0,'⌤','fr',''),(2701,NULL,0,'⌥','en',''),(2702,NULL,0,'⌥','fr',''),(2703,NULL,0,'Afghanistan','fr','Afghanistan'),(2704,NULL,0,'Åland Islands','fr','Åland'),(2705,NULL,0,'Albania','fr','Albanie'),(2706,NULL,0,'Algeria','fr','Algérie'),(2707,NULL,0,'American Samoa','fr','Samoa américaines'),(2708,NULL,0,'Andorra','fr','Andorre'),(2709,NULL,0,'Angola','fr','Angola'),(2710,NULL,0,'Anguilla','fr','Anguilla'),(2711,NULL,0,'Antigua and Barbuda','fr','Antigua-et-Barbuda'),(2712,NULL,0,'Argentina','fr','Argentine'),(2713,NULL,0,'Armenia','fr','Arménie'),(2714,NULL,0,'Aruba','fr','Aruba'),(2715,NULL,0,'Ascension Island','fr','Île de l’Ascension'),(2716,NULL,0,'Australia','fr','Australie'),(2717,NULL,0,'Austria','fr','Autriche'),(2718,NULL,0,'Azerbaijan','fr','Azerbaïdjan'),(2719,NULL,0,'Bahamas','fr','Bahamas'),(2720,NULL,0,'Bahrain','fr','Bahreïn'),(2721,NULL,0,'Bangladesh','fr','Bangladesh'),(2722,NULL,0,'Barbados','fr','Barbade'),(2723,NULL,0,'Belarus','fr','Biélorussie'),(2724,NULL,0,'Belgium','fr','Belgique'),(2725,NULL,0,'Belize','fr','Belize'),(2726,NULL,0,'Benin','fr','Bénin'),(2727,NULL,0,'Bermuda','fr','Bermudes'),(2728,NULL,0,'Bhutan','fr','Bhoutan'),(2729,NULL,0,'Bolivia','fr','Bolivie'),(2730,NULL,0,'Bosnia and Herzegovina','fr','Bosnie-Herzégovine'),(2731,NULL,0,'Botswana','fr','Botswana'),(2732,NULL,0,'Brazil','fr','Brésil'),(2733,NULL,0,'British Indian Ocean Territory','fr','Territoire britannique de l’océan Indien'),(2734,NULL,0,'British Virgin Islands','fr','Îles Vierges britanniques'),(2735,NULL,0,'Brunei','fr','Brunei'),(2736,NULL,0,'Bulgaria','fr','Bulgarie'),(2737,NULL,0,'Burkina Faso','fr','Burkina Faso'),(2738,NULL,0,'Burundi','fr','Burundi'),(2739,NULL,0,'Cambodia','fr','Cambodge'),(2740,NULL,0,'Cameroon','fr','Cameroun'),(2741,NULL,0,'Canada','fr','Canada'),(2742,NULL,0,'Cape Verde','fr','Cap-Vert'),(2743,NULL,0,'Caribbean Netherlands','fr','Pays-Bas caribéens'),(2744,NULL,0,'Cayman Islands','fr','Îles Caïmans'),(2745,NULL,0,'Central African Republic','fr','République centrafricaine'),(2746,NULL,0,'Chad','fr','Tchad'),(2747,NULL,0,'Chile','fr','Chili'),(2748,NULL,0,'China','fr','Chine'),(2749,NULL,0,'Christmas Island','fr','Île Christmas'),(2750,NULL,0,'Cocos (Keeling) Islands','fr','Îles Cocos'),(2751,NULL,0,'Colombia','fr','Colombie'),(2752,NULL,0,'Comoros','fr','Comores'),(2753,NULL,0,'Congo (DRC)','fr','Congo (RDC)'),(2754,NULL,0,'Congo (Republic)','fr','Congo (République)'),(2755,NULL,0,'Cook Islands','fr','Îles Cook'),(2756,NULL,0,'Costa Rica','fr','Costa Rica'),(2757,NULL,0,'Côte d’Ivoire','fr','Côte d’Ivoire'),(2758,NULL,0,'Croatia','fr','Croatie'),(2759,NULL,0,'Cuba','fr','Cuba'),(2760,NULL,0,'Curaçao','fr','Curaçao'),(2761,NULL,0,'Cyprus','fr','Chypre'),(2762,NULL,0,'Czech Republic','fr','Tchéquie'),(2763,NULL,0,'Denmark','fr','Danemark'),(2764,NULL,0,'Djibouti','fr','Djibouti'),(2765,NULL,0,'Dominica','fr','Dominique'),(2766,NULL,0,'Dominican Republic','fr','République dominicaine'),(2767,NULL,0,'Ecuador','fr','Équateur'),(2768,NULL,0,'Egypt','fr','Égypte'),(2769,NULL,0,'El Salvador','fr','Salvador'),(2770,NULL,0,'Equatorial Guinea','fr','Guinée équatoriale'),(2771,NULL,0,'Eritrea','fr','Érythrée'),(2772,NULL,0,'Estonia','fr','Estonie'),(2773,NULL,0,'Eswatini','fr','Eswatini'),(2774,NULL,0,'Ethiopia','fr','Éthiopie'),(2775,NULL,0,'Falkland Islands','fr','Îles Malouines'),(2776,NULL,0,'Faroe Islands','fr','Îles Féroé'),(2777,NULL,0,'Fiji','fr','Fidji'),(2778,NULL,0,'Finland','fr','Finlande'),(2779,NULL,0,'France','fr','France'),(2780,NULL,0,'French Guiana','fr','Guyane'),(2781,NULL,0,'French Polynesia','fr','Polynésie française'),(2782,NULL,0,'Gabon','fr','Gabon'),(2783,NULL,0,'Gambia','fr','Gambie'),(2784,NULL,0,'Georgia','fr','Géorgie'),(2785,NULL,0,'Germany','fr','Allemagne'),(2786,NULL,0,'Ghana','fr','Ghana'),(2787,NULL,0,'Gibraltar','fr','Gibraltar'),(2788,NULL,0,'Greece','fr','Grèce'),(2789,NULL,0,'Greenland','fr','Groenland'),(2790,NULL,0,'Grenada','fr','Grenade'),(2791,NULL,0,'Guadeloupe','fr','Guadeloupe'),(2792,NULL,0,'Guam','fr','Guam'),(2793,NULL,0,'Guatemala','fr','Guatemala'),(2794,NULL,0,'Guernsey','fr','Guernesey'),(2795,NULL,0,'Guinea-Bissau','fr','Guinée-Bissau'),(2796,NULL,0,'Guinea','fr','Guinée'),(2797,NULL,0,'Guyana','fr','Guyana'),(2798,NULL,0,'Haiti','fr','Haïti'),(2799,NULL,0,'Honduras','fr','Honduras'),(2800,NULL,0,'Hong Kong','fr','Hong Kong'),(2801,NULL,0,'Hungary','fr','Hongrie'),(2802,NULL,0,'Iceland','fr','Islande'),(2803,NULL,0,'India','fr','Inde'),(2804,NULL,0,'Indonesia','fr','Indonésie'),(2805,NULL,0,'Iran','fr','Iran'),(2806,NULL,0,'Iraq','fr','Irak'),(2807,NULL,0,'Ireland','fr','Irlande'),(2808,NULL,0,'Isle of Man','fr','Île de Man'),(2809,NULL,0,'Israel','fr','Israël'),(2810,NULL,0,'Italy','fr','Italie'),(2811,NULL,0,'Jamaica','fr','Jamaïque'),(2812,NULL,0,'Japan','fr','Japon'),(2813,NULL,0,'Jersey','fr','Jersey'),(2814,NULL,0,'Jordan','fr','Jordanie'),(2815,NULL,0,'Kazakhstan','fr','Kazakhstan'),(2816,NULL,0,'Kenya','fr','Kenya'),(2817,NULL,0,'Kiribati','fr','Kiribati'),(2818,NULL,0,'Kosovo','fr','Kosovo'),(2819,NULL,0,'Kuwait','fr','Koweït'),(2820,NULL,0,'Kyrgyzstan','fr','Kirghizistan'),(2821,NULL,0,'Laos','fr','Laos'),(2822,NULL,0,'Latvia','fr','Lettonie'),(2823,NULL,0,'Lebanon','fr','Liban'),(2824,NULL,0,'Lesotho','fr','Lesotho'),(2825,NULL,0,'Liberia','fr','Liberia'),(2826,NULL,0,'Libya','fr','Libye'),(2827,NULL,0,'Liechtenstein','fr','Liechtenstein'),(2828,NULL,0,'Lithuania','fr','Lituanie'),(2829,NULL,0,'Luxembourg','fr','Luxembourg'),(2830,NULL,0,'Macau','fr','Macao'),(2831,NULL,0,'Macedonia (FYROM)','fr','Macédoine du Nord'),(2832,NULL,0,'Madagascar','fr','Madagascar'),(2833,NULL,0,'Malawi','fr','Malawi'),(2834,NULL,0,'Malaysia','fr','Malaisie'),(2835,NULL,0,'Maldives','fr','Maldives'),(2836,NULL,0,'Mali','fr','Mali'),(2837,NULL,0,'Malta','fr','Malte'),(2838,NULL,0,'Marshall Islands','fr','Îles Marshall'),(2839,NULL,0,'Martinique','fr','Martinique'),(2840,NULL,0,'Mauritania','fr','Mauritanie'),(2841,NULL,0,'Mauritius','fr','Maurice'),(2842,NULL,0,'Mayotte','fr','Mayotte'),(2843,NULL,0,'Mexico','fr','Mexique'),(2844,NULL,0,'Micronesia','fr','Micronésie'),(2845,NULL,0,'Moldova','fr','Moldavie'),(2846,NULL,0,'Monaco','fr','Monaco'),(2847,NULL,0,'Mongolia','fr','Mongolie'),(2848,NULL,0,'Montenegro','fr','Monténégro'),(2849,NULL,0,'Montserrat','fr','Montserrat'),(2850,NULL,0,'Morocco','fr','Maroc'),(2851,NULL,0,'Mozambique','fr','Mozambique'),(2852,NULL,0,'Myanmar (Burma)','fr','Birmanie'),(2853,NULL,0,'Namibia','fr','Namibie'),(2854,NULL,0,'Nauru','fr','Nauru'),(2855,NULL,0,'Nepal','fr','Népal'),(2856,NULL,0,'Netherlands','fr','Pays-Bas'),(2857,NULL,0,'New Caledonia','fr','Nouvelle-Calédonie'),(2858,NULL,0,'New Zealand','fr','Nouvelle-Zélande'),(2859,NULL,0,'Nicaragua','fr','Nicaragua'),(2860,NULL,0,'Niger','fr','Niger'),(2861,NULL,0,'Nigeria','fr','Nigeria'),(2862,NULL,0,'Niue','fr','Niue'),(2863,NULL,0,'Norfolk Island','fr','Île Norfolk'),(2864,NULL,0,'North Korea','fr','Corée du Nord'),(2865,NULL,0,'Northern Mariana Islands','fr','Îles Mariannes du Nord'),(2866,NULL,0,'Norway','fr','Norvège'),(2867,NULL,0,'Oman','fr','Oman'),(2868,NULL,0,'Pakistan','fr','Pakistan'),(2869,NULL,0,'Palau','fr','Palaos'),(2870,NULL,0,'Palestine','fr','Palestine'),(2871,NULL,0,'Panama','fr','Panama'),(2872,NULL,0,'Papua New Guinea','fr','Papouasie-Nouvelle-Guinée'),(2873,NULL,0,'Paraguay','fr','Paraguay'),(2874,NULL,0,'Peru','fr','Pérou'),(2875,NULL,0,'Philippines','fr','Philippines'),(2876,NULL,0,'Poland','fr','Pologne'),(2877,NULL,0,'Portugal','fr','Portugal'),(2878,NULL,0,'Puerto Rico','fr','Porto Rico'),(2879,NULL,0,'Qatar','fr','Qatar'),(2880,NULL,0,'Réunion','fr','Réunion'),(2881,NULL,0,'Romania','fr','Roumanie'),(2882,NULL,0,'Russia','fr','Russie'),(2883,NULL,0,'Rwanda','fr','Rwanda'),(2884,NULL,0,'Saint Barthélemy','fr','Saint-Barthélemy'),(2885,NULL,0,'Saint Helena','fr','Sainte-Hélène'),(2886,NULL,0,'Saint Kitts and Nevis','fr','Saint-Christophe-et-Niévès'),(2887,NULL,0,'Saint Lucia','fr','Sainte-Lucie'),(2888,NULL,0,'Saint Martin','fr','Saint-Martin (Antilles françaises)'),(2889,NULL,0,'Saint Pierre and Miquelon','fr','Saint-Pierre-et-Miquelon'),(2890,NULL,0,'Saint Vincent and the Grenadines','fr','Saint-Vincent-et-les-Grenadines'),(2891,NULL,0,'Samoa','fr','Samoa'),(2892,NULL,0,'San Marino','fr','Saint-Marin'),(2893,NULL,0,'São Tomé and Príncipe','fr','Sao Tomé-et-Principe'),(2894,NULL,0,'Saudi Arabia','fr','Arabie saoudite'),(2895,NULL,0,'Senegal','fr','Sénégal'),(2896,NULL,0,'Serbia','fr','Serbie'),(2897,NULL,0,'Seychelles','fr','Seychelles'),(2898,NULL,0,'Sierra Leone','fr','Sierra Leone'),(2899,NULL,0,'Singapore','fr','Singapour'),(2900,NULL,0,'Sint Maarten','fr','Saint-Martin (royaume des Pays-Bas)'),(2901,NULL,0,'Slovakia','fr','Slovaquie'),(2902,NULL,0,'Slovenia','fr','Slovénie'),(2903,NULL,0,'Solomon Islands','fr','Îles Salomon'),(2904,NULL,0,'Somalia','fr','Somalie'),(2905,NULL,0,'South Africa','fr','Afrique du Sud'),(2906,NULL,0,'South Korea','fr','Corée du Sud'),(2907,NULL,0,'South Sudan','fr','Soudan du Sud'),(2908,NULL,0,'Spain','fr','Espagne'),(2909,NULL,0,'Sri Lanka','fr','Sri Lanka'),(2910,NULL,0,'Sudan','fr','Soudan'),(2911,NULL,0,'Suriname','fr','Suriname'),(2912,NULL,0,'Svalbard and Jan Mayen','fr','Svalbard et Jan Mayen'),(2913,NULL,0,'Sweden','fr','Suède'),(2914,NULL,0,'Switzerland','fr','Suisse'),(2915,NULL,0,'Syria','fr','Syrie'),(2916,NULL,0,'Taiwan','fr','Taïwan'),(2917,NULL,0,'Tajikistan','fr','Tadjikistan'),(2918,NULL,0,'Tanzania','fr','Tanzanie'),(2919,NULL,0,'Thailand','fr','Thaïlande'),(2920,NULL,0,'Timor-Leste','fr','Timor oriental'),(2921,NULL,0,'Togo','fr','Togo'),(2922,NULL,0,'Tokelau','fr','Tokelau'),(2923,NULL,0,'Tonga','fr','Tonga'),(2924,NULL,0,'Trinidad and Tobago','fr','Trinité-et-Tobago'),(2925,NULL,0,'Tunisia','fr','Tunisie'),(2926,NULL,0,'Turkey','fr','Turquie'),(2927,NULL,0,'Turkmenistan','fr','Turkménistan'),(2928,NULL,0,'Turks and Caicos Islands','fr','Îles Turques-et-Caïques'),(2929,NULL,0,'Tuvalu','fr','Tuvalu'),(2930,NULL,0,'U.S. Virgin Islands','fr','Îles Vierges des États-Unis'),(2931,NULL,0,'Uganda','fr','Ouganda'),(2932,NULL,0,'Ukraine','fr','Ukraine'),(2933,NULL,0,'United Arab Emirates','fr','Émirats arabes unis'),(2934,NULL,0,'United Kingdom','fr','Royaume-Uni'),(2935,NULL,0,'United States','fr','États-Unis'),(2936,NULL,0,'Uruguay','fr','Uruguay'),(2937,NULL,0,'Uzbekistan','fr','Ouzbékistan'),(2938,NULL,0,'Vanuatu','fr','Vanuatu'),(2939,NULL,0,'Vatican City','fr','Vatican'),(2940,NULL,0,'Venezuela','fr','Venezuela'),(2941,NULL,0,'Vietnam','fr','Viêt Nam'),(2942,NULL,0,'Wallis and Futuna','fr','Wallis-et-Futuna'),(2943,NULL,0,'Western Sahara','fr','Sahara occidental'),(2944,NULL,0,'Yemen','fr','Yémen'),(2945,NULL,0,'Zambia','fr','Zambie'),(2946,NULL,0,'Zimbabwe','fr','Zimbabwe');
/*!40000 ALTER TABLE `meta_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_translation_seq`
--

DROP TABLE IF EXISTS `meta_translation_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_translation_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_translation_seq`
--

LOCK TABLES `meta_translation_seq` WRITE;
/*!40000 ALTER TABLE `meta_translation_seq` DISABLE KEYS */;
INSERT INTO `meta_translation_seq` VALUES (2947);
/*!40000 ALTER TABLE `meta_translation_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_task`
--

DROP TABLE IF EXISTS `team_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_task` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `attrs` json DEFAULT NULL,
  `description` longtext,
  `name` varchar(255) NOT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `related_id` bigint DEFAULT NULL,
  `related_model` varchar(255) DEFAULT NULL,
  `related_name` varchar(255) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `task_date` date DEFAULT NULL,
  `task_deadline` date DEFAULT NULL,
  `task_duration` int DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `assigned_to` bigint DEFAULT NULL,
  `team` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `team_task_team_IDX` (`team`),
  KEY `team_task_name_IDX` (`name`),
  KEY `team_task_assigned_to_IDX` (`assigned_to`),
  KEY `FK_tib02qleudwtw6hbssabrqjiv` (`created_by`),
  KEY `FK_kj0791oi7y9bcvdh62n9yiydq` (`updated_by`),
  CONSTRAINT `FK_g6cv6vflla5vtrq2nylf79q8l` FOREIGN KEY (`assigned_to`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_kj0791oi7y9bcvdh62n9yiydq` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_rlnp19qymiqtgcc0ql5jnpbww` FOREIGN KEY (`team`) REFERENCES `team_team` (`id`),
  CONSTRAINT `FK_tib02qleudwtw6hbssabrqjiv` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_task`
--

LOCK TABLES `team_task` WRITE;
/*!40000 ALTER TABLE `team_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_task_seq`
--

DROP TABLE IF EXISTS `team_task_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_task_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_task_seq`
--

LOCK TABLES `team_task_seq` WRITE;
/*!40000 ALTER TABLE `team_task_seq` DISABLE KEYS */;
INSERT INTO `team_task_seq` VALUES (1);
/*!40000 ALTER TABLE `team_task_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_team`
--

DROP TABLE IF EXISTS `team_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_team` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `attrs` json DEFAULT NULL,
  `description` longtext,
  `image` longblob,
  `name` varchar(255) NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ko56a60en1krbjiwvsglnasg2` (`name`),
  KEY `FK_2j3e2xtgohvudsbekmmfvpxck` (`created_by`),
  KEY `FK_loi0nbq58gcek6j6dlahdy7r5` (`updated_by`),
  CONSTRAINT `FK_2j3e2xtgohvudsbekmmfvpxck` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_loi0nbq58gcek6j6dlahdy7r5` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_team`
--

LOCK TABLES `team_team` WRITE;
/*!40000 ALTER TABLE `team_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_team_members`
--

DROP TABLE IF EXISTS `team_team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_team_members` (
  `team_team` bigint NOT NULL,
  `members` bigint NOT NULL,
  PRIMARY KEY (`team_team`,`members`),
  KEY `FK_gksj7ngocpnflj4xmxe38wc70` (`members`),
  CONSTRAINT `FK_gksj7ngocpnflj4xmxe38wc70` FOREIGN KEY (`members`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_k5i1gy5i6qjssxb6mym2oxq1w` FOREIGN KEY (`team_team`) REFERENCES `team_team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_team_members`
--

LOCK TABLES `team_team_members` WRITE;
/*!40000 ALTER TABLE `team_team_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_team_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_team_roles`
--

DROP TABLE IF EXISTS `team_team_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_team_roles` (
  `team_team` bigint NOT NULL,
  `roles` bigint NOT NULL,
  PRIMARY KEY (`team_team`,`roles`),
  KEY `FK_ejd8kyjweo0qohdqstojbhd48` (`roles`),
  CONSTRAINT `FK_ejd8kyjweo0qohdqstojbhd48` FOREIGN KEY (`roles`) REFERENCES `auth_role` (`id`),
  CONSTRAINT `FK_hwp5ppb22g8vio0t68c41bvkg` FOREIGN KEY (`team_team`) REFERENCES `team_team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_team_roles`
--

LOCK TABLES `team_team_roles` WRITE;
/*!40000 ALTER TABLE `team_team_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_team_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_team_seq`
--

DROP TABLE IF EXISTS `team_team_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_team_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_team_seq`
--

LOCK TABLES `team_team_seq` WRITE;
/*!40000 ALTER TABLE `team_team_seq` DISABLE KEYS */;
INSERT INTO `team_team_seq` VALUES (1);
/*!40000 ALTER TABLE `team_team_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_topic`
--

DROP TABLE IF EXISTS `team_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_topic` (
  `id` bigint NOT NULL,
  `archived` bit(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `attrs` json DEFAULT NULL,
  `description` longtext,
  `name` varchar(255) NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `team` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `team_topic_name_IDX` (`name`),
  KEY `team_topic_team_IDX` (`team`),
  KEY `FK_sm0n6470i1k4symkpwxl00gsh` (`created_by`),
  KEY `FK_91udap3bm9ija5b843y3skine` (`updated_by`),
  CONSTRAINT `FK_4erjscaumniey2gxh9secevav` FOREIGN KEY (`team`) REFERENCES `team_team` (`id`),
  CONSTRAINT `FK_91udap3bm9ija5b843y3skine` FOREIGN KEY (`updated_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `FK_sm0n6470i1k4symkpwxl00gsh` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_topic`
--

LOCK TABLES `team_topic` WRITE;
/*!40000 ALTER TABLE `team_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_topic_seq`
--

DROP TABLE IF EXISTS `team_topic_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_topic_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_topic_seq`
--

LOCK TABLES `team_topic_seq` WRITE;
/*!40000 ALTER TABLE `team_topic_seq` DISABLE KEYS */;
INSERT INTO `team_topic_seq` VALUES (1);
/*!40000 ALTER TABLE `team_topic_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-22 18:42:33
