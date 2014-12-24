-- MySQL dump 10.13  Distrib 5.5.29, for osx10.8 (i386)
--
-- Host: localhost    Database: jessica_development
-- ------------------------------------------------------
-- Server version	5.5.28

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_approve` tinyint(1) DEFAULT '0',
  `is_admin` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_name` (`name`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','$2a$10$JymAZPp6Axd1oGIwr2xCb.rTWSz9iw/NAosI0OGojoVVmaDuq9PEm',NULL,NULL,NULL,1,'2014-12-23 03:27:07','2014-12-23 03:27:07','127.0.0.1','127.0.0.1',1,1,'2014-12-23 03:26:29','2014-12-23 03:27:07');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20141220052102'),('20141222014644'),('20141222062408');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `en_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (2,'关于我们',NULL,'Home',NULL,'不论你学习英语是为了满足日常沟通的需要，还是为了工作和职业的发展，不论你现在的英语水平处在 那个阶段，想要前往那 个阶段，杰西卡英语都能帮你达成目标。来自于美国硅谷“DynEd International” 历经16年在全球80多个国家的成功实践， 听 说读写全面覆盖的教学内容，实用而有趣的教材设计针对不同阶段的学员水平，从入门到精通的8个级别 的英语晋升阶梯，让 你的学习成为轻松、快乐的旅程！高雅、舒适的教学环境，为您提供一个高端人士社交 的平台，专业的个人课程顾问和双语指 导老师将对您的学习效果提供保障。',NULL,NULL,1,'2014-12-23 03:30:57','2014-12-23 03:30:57'),(3,'成人英语','Aduit English','Service','老外陪你练口语，纯正母语环境，快速掌握标准发音，清楚理解语音语义。用英语巩小时固自己的职场竞争力，完成了职场大跨步。实行一对或小班教学，30-300小时。','<span style=\"color:#777777;font-family:微软雅黑;font-size:14px;line-height:20px;background-color:#FFFFFF;\">老外陪你练口语，纯正母语环境，快速掌握标准发音，清楚理解语音语义。用英语巩小时固自己的职场竞争力，完成了职场大跨步。实行一对或小班教学，30-300小时。</span>',NULL,NULL,1,'2014-12-23 03:39:13','2014-12-23 03:39:13'),(4,'商务英语','Business English','Service','课程以适应商业实战的语言需求为目的，内容涉及到商务活动的诸多方面。以商务案例分析等话题为导引，实行一对或小班教学，30-300小时。','<span style=\"color:#777777;font-family:微软雅黑;font-size:14px;line-height:20px;background-color:#FFFFFF;\">课程以适应商业实战的语言需求为目的，内容涉及到商务活动的诸多方面。以商务案例分析等话题为导引，实行一对或小班教学，30-300小时。</span>',NULL,NULL,2,'2014-12-23 03:40:37','2014-12-23 03:40:37'),(5,'旅游英语','Travel English','Service','老外陪你练口语，纯正母语环境，快速掌握标准发音，清楚理解语音语义。用英语巩小时固自己的职场竞争力，完成了职场大跨步。实行一对或小班教学，30-300小时。','<span style=\"color:#777777;font-family:微软雅黑;font-size:14px;line-height:20px;background-color:#FFFFFF;\">老外陪你练口语，纯正母语环境，快速掌握标准发音，清楚理解语音语义。用英语巩小时固自己的职场竞争力，完成了职场大跨步。实行一对或小班教学，30-300小时。</span>',NULL,NULL,3,'2014-12-23 03:41:32','2014-12-23 03:41:32'),(6,'剑桥英语','Cambridge English','Service','老外陪你练口语，纯正母语环境，快速掌握标准发音，清楚理解语音语义。用英语巩小时固自己的职场竞争力，完成了职场大跨步。实行一对或小班教学，30-300小时。','<span style=\"color:#777777;font-family:微软雅黑;font-size:14px;line-height:20px;background-color:#FFFFFF;\">老外陪你练口语，纯正母语环境，快速掌握标准发音，清楚理解语音语义。用英语巩小时固自己的职场竞争力，完成了职场大跨步。实行一对或小班教学，30-300小时。</span>',NULL,NULL,4,'2014-12-23 03:42:25','2014-12-23 03:42:25'),(7,'新概念英语','NewConcept English','Service','老外陪你练口语，纯正母语环境，快速掌握标准发音，清楚理解语音语义。用英语巩小时固自己的职场竞争力，完成了职场大跨步。实行一对或小班教学，30-300小时。','<span style=\"color:#777777;font-family:微软雅黑;font-size:14px;line-height:20px;background-color:#FFFFFF;\">老外陪你练口语，纯正母语环境，快速掌握标准发音，清楚理解语音语义。用英语巩小时固自己的职场竞争力，完成了职场大跨步。实行一对或小班教学，30-300小时。</span>',NULL,NULL,5,'2014-12-23 03:43:08','2014-12-23 03:43:08'),(8,'托福/雅思/SSAT/SAT/GRE/GMAT/ESL','GRE English','Service','老外陪你练口语，纯正母语环境，快速掌握标准发音，清楚理解语音语义。用英语巩小时固自己的职场竞争力，完成了职场大跨步。实行一对或小班教学，30-300小时。','<span style=\"color:#777777;font-family:微软雅黑;font-size:14px;line-height:20px;background-color:#FFFFFF;\">老外陪你练口语，纯正母语环境，快速掌握标准发音，清楚理解语音语义。用英语巩小时固自己的职场竞争力，完成了职场大跨步。实行一对或小班教学，30-300小时。</span>',NULL,NULL,6,'2014-12-23 03:43:42','2014-12-23 03:43:42'),(9,'随时随地学习',NULL,'Advantage','一年三百六十五天，一天二十四小时， 风雨无阻不缺席。从办公室到卧室、 从咖啡店到马路边、天涯海角不离开。',NULL,'img01.jpg',NULL,1,'2014-12-23 03:51:54','2014-12-23 03:51:54'),(10,'实时互动纠错',NULL,'Advantage','实现学习者与专业外籍顾问的互动，第一时间纠正错误，享受纯英语学习环境。',NULL,'team2.jpg',NULL,2,'2014-12-23 03:52:17','2014-12-23 03:52:17'),(11,'专业保护隐私',NULL,'Advantage','教学设计的单向视频模式，保证了您的个人隐私，真人互动 实时对谈， 让你大方开口不扭捏！',NULL,'team3.jpg',NULL,3,'2014-12-23 03:53:05','2014-12-23 03:53:05'),(12,'量身定制课程',NULL,'Advantage','动态生成学习系统DCGS，针对每位客户的学习需求，最佳配对，私人定制您的专属课程。',NULL,'team1.jpg',NULL,4,'2014-12-23 03:54:40','2014-12-23 03:54:40');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-23 12:29:19
