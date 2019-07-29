-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: Cars
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `Cars`
--

DROP TABLE IF EXISTS `Cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cars` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) DEFAULT NULL,
  `extcolor` varchar(100) DEFAULT NULL,
  `intcolor` varchar(100) DEFAULT NULL,
  `price` float(13,2) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `transmission` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cars`
--

LOCK TABLES `Cars` WRITE;
/*!40000 ALTER TABLE `Cars` DISABLE KEYS */;
INSERT INTO `Cars` VALUES (1,'BMW','White','Black',41690.00,2018,'8-Speed Automatic','(603) 944-4485'),(2,'BMW','Black','Black',43285.00,2019,'8-Speed Automatic','(203) 666-4284'),(3,'BMW','Blue','Canberra Beg/Blk Dak Cont Stic',61585.00,2019,'AUTOMATIC','(888) 645-5819'),(4,'BMW','Gray','Black',58835.00,2019,'8-Speed Automatic','(888) 746-7970'),(5,'BMW','Gray','Black',59550.00,2019,'8-Speed Automatic','(855) 919-4878'),(6,'BMW','Brown','Black',42985.00,2019,'8-Speed Automatic','(518) 708-8649'),(7,'BMW','Blue','Black',66245.00,2019,'8-Speed Automatic','(518) 708-8649'),(8,'BMW','Brown','Beige',63905.00,2019,'8-Speed Automatic','(518) 708-8649'),(9,'BMW','Black','Canberra Beige',64345.00,2019,'8-Speed Automatic','(888) 844-8903'),(10,'BMW','Black','beige',61160.00,2019,'8-Speed Automatic','(888) 254-4922'),(11,'BMW','Blue','Ivory White w/Dakota Leather Upholstery',57795.00,2019,'Automatic','(352) 771-4074'),(12,'BMW','White','Canberra Beige',50335.00,2019,'8-Speed Automatic','(330) 752-0972'),(13,'BMW','Gray','Black',47685.00,2019,'8-Speed Automatic','(888) 269-3039'),(14,'BMW','Blue','Canberra Beige/Black',46695.00,2019,'8-Speed Automatic w/OD','(478) 787-6866'),(15,'BMW','Black','Black',61855.00,2019,'8-Speed Automatic','(866) 906-1484'),(16,'BMW','White','Black',47485.00,2019,'8-Speed Automatic','(937) 314-4094'),(17,'BMW','White','Cognac',63835.00,2019,'8-Speed Automatic w/OD','(513) 297-2647'),(18,'BMW','White','Canberra Beige',50885.00,2019,'8-Speed Automatic','(260) 247-9057'),(19,'BMW','Brown','Canberra Beige',53545.00,2019,'8-Speed Automatic','(231) 930-4162'),(20,'BMW','Black','Black w/Dakota Leather Upholstery',63935.00,2019,'Automatic','(317) 660-9481'),(21,'BMW','Other','Canberrabeige',57375.00,2018,'8-Speed Automatic w/OD','(812) 758-4187'),(22,'BMW','Black','Black',50335.00,2019,'8-Speed Automatic','(815) 580-3174'),(23,'BMW','Silver','',63175.00,2019,'8-Speed Automatic','(877) 438-1873'),(24,'BMW','Black','Black',64085.00,2019,'8-Speed Automatic','(314) 332-2785'),(25,'BMW','Black','Black',52735.00,2019,'8-Speed Automatic','(952) 955-7663'),(26,'BMW','Silver','Canberra Beige',63270.00,2019,'8-Speed Automatic','(866) 951-4086'),(27,'BMW','Black','Black',67595.00,2019,'8-Speed Automatic','(402) 682-7252'),(28,'BMW','Blue','Ivory White',61285.00,2019,'8-Speed Automatic w/OD','(888) 336-9358'),(29,'BMW','Gray','Black',49195.00,2019,'8-Speed Automatic','(866) 709-4366'),(30,'BMW','Orange','Black',35900.00,2019,'Automatic','(210) 428-6838'),(31,'BMW','Black','Black',62270.00,2019,'8-Speed Automatic','(888) 281-6275'),(32,'BMW','Silver','Black w/Red Stitching',49450.00,2019,'8-Speed Automatic w/OD','(877) 289-9658'),(33,'BMW','White','Black Dakota Leather',65635.00,2019,'AUTOMATIC','(253) 248-4882'),(34,'BMW','Silver','Black',48045.00,2019,'8-Speed Automatic','(888) 721-4882'),(35,'BMW','Gray','Black',42645.00,2019,'8-Speed Automatic','(971) 270-4475'),(36,'BMW','Black','Deka Dark',52945.00,2019,'1-Speed Automatic','(971) 270-4475'),(37,'BMW','Black','Black',66470.00,2019,'8-Speed Automatic','(971) 270-4475'),(38,'BMW','White','Black',57295.00,2019,'8-Speed Automatic','(866) 686-4840'),(39,'BMW','White','Black',66160.00,2019,'8-Speed Automatic','(888) 408-0244'),(40,'BMW','Other','Alpine White',64135.00,2019,'8-Speed Automatic','(541) 359-3038'),(41,'BMW','White','Black',69425.00,2019,'8-Speed Automatic','(541) 359-3038'),(42,'BMW','Black','Black',57920.00,2019,'8-Speed Automatic','(888) 862-0689'),(43,'BMW','Black','Cognac',63005.00,2019,'8-Speed Automatic','(541) 292-5067'),(44,'BMW','White','Cognac',55400.00,2019,'8-Speed Automatic','(916) 265-2367'),(45,'BMW','Blue','Canberra Beige/Black SensaTec',58740.00,2019,'8-Speed A/T','(925) 521-8452'),(46,'BMW','Gray','Black SensaTec',46545.00,2019,'AUTOMATIC','(510) 338-4813'),(47,'BMW','White','Black',50335.00,2019,'8-Speed Automatic','(831) 240-0089'),(48,'BMW','Black','Black',47195.00,2019,'8-Speed Automatic','(831) 240-0089'),(49,'BMW','Black','Deka Dark',54195.00,2019,'1-Speed Automatic','(831) 240-0089'),(50,'BMW','Black','Black',58395.00,2019,'8-Speed Automatic','(808) 664-0349'),(51,'Ford','White','Black',27280.00,2020,'8-Speed Automatic w/OD','(888) 512-6017'),(52,'Ford','White','Ebony',31655.00,2019,'8-Speed Automatic','(252) 505-0611'),(53,'Ford','White','Ebony',23292.00,2019,'8-Speed Automatic','(888) 649-5229'),(54,'Ford','White','Pewter',33538.00,2019,'6-Speed Automatic','(912) 480-6160'),(55,'Ford','Gray','Medium Light Stone',24318.00,2019,'6-Speed Automatic','(866) 706-0357'),(56,'Ford','Black','Black',45424.00,2019,'10-Speed Automatic','(330) 538-8018'),(57,'Ford','White','Medium Light Stone',32335.00,2019,'6-Speed Automatic','(330) 538-8018'),(58,'Ford','White','Black',29409.00,2020,'8-Speed Automatic','(877) 228-1148'),(59,'Ford','Blue','Medium Light Stone',27317.00,2019,'6-Speed Automatic','(330) 735-6151'),(60,'Ford','White','Ebony',26635.00,2020,'8-Speed Automatic w/OD','(877) 534-2990'),(61,'Ford','Black','Ebony',39680.00,2019,'8-Speed Automatic','(888) 257-4921'),(62,'Ford','Blue','Black',44326.00,2019,'6-Speed Automatic w/OD','(877) 509-6561'),(63,'Ford','Black','Ebony',38692.00,2019,'10-Speed Automatic','(888) 242-7613'),(64,'Ford','White','Medium Earth Gray',44095.00,2019,'10-Speed Automatic w/OD','(888) 255-1493'),(65,'Ford','White','Ebony',25860.00,2019,'8-Speed Automatic','(419) 740-6661'),(66,'Ford','White','Ebony',23155.00,2019,'8-Speed Automatic','(888) 328-3159'),(67,'Ford','White','Pewter',34001.00,2019,'6-Speed Automatic','(888) 882-0781'),(68,'Ford','Red','Ebony',33426.00,2019,'10-Speed Automatic','(334) 528-0426'),(69,'Ford','Gray','Ebony',27500.00,2019,'10-Speed Automatic','(334) 528-0426'),(70,'Ford','Black','Black',42104.00,2019,'10-Speed Automatic','(517) 213-4321'),(71,'Ford','Black','Black',45944.00,2019,'10-Speed Automatic','(260) 218-4598'),(72,'Ford','White','',24292.00,2019,'6-Speed Automatic w/OD','(231) 518-4464'),(73,'Ford','White','Pewter',34770.00,2019,'6-Speed Automatic','(269) 743-0961'),(74,'Ford','Black','Light Putty',20931.00,2019,'6-Speed Automatic','(269) 743-0961'),(75,'Ford','Gray','Ebony',32664.00,2019,'8-Speed Automatic','(866) 864-1545'),(76,'Ford','Orange','Charcoal Black',26096.00,2019,'6-Speed Automatic','(630) 300-0052'),(77,'Ford','White','Ebony',28511.00,2020,'8-Speed Automatic w/OD','(630) 343-5048'),(78,'Ford','Red','Ebony',20441.00,2019,'6-Speed Automatic','(815) 981-9831'),(79,'Ford','White','Charcoal Black',36049.00,2019,'AUTOMATIC','(262) 558-4180'),(80,'Ford','White','Medium Light Stone',27164.00,2019,'6-Speed Automatic','(888) 881-2643'),(81,'Ford','Gray','Medium Earth Gray',36603.00,2019,'10-Speed Automatic','(888) 468-8618'),(82,'Ford','White','Ceramic',38135.00,2019,'8-Speed Automatic','(662) 655-0349'),(83,'Ford','Gray','Dune',33055.00,2019,'8-Speed Automatic','(573) 208-4113'),(84,'Ford','White','Charcoal Black',34395.00,2019,'6-Speed Automatic with Over','(314) 222-2617'),(85,'Ford','Silver','Gray',25783.00,2019,'6-Speed Automatic','(888) 856-6813'),(86,'Ford','White','Camelback',66845.00,2019,'10-Speed Automatic','(888) 856-6813'),(87,'Ford','Black','Ebony Black',22535.00,2019,'6-Speed Automatic','(866) 979-2307'),(88,'Ford','Red','Charcoal Black',26720.00,2019,'6-Speed Automatic','(715) 318-7963'),(89,'Ford','Blue','Black',46827.00,2019,'Automatic','(888) 253-2220'),(90,'Ford','Black','Medium Light Stone',20355.00,2019,'6-Speed Automatic','(573) 458-5083'),(91,'Ford','Silver','Medium Earth Gray',44013.00,2019,'10-Speed Automatic','(319) 493-3267'),(92,'Ford','White','black',36751.00,2019,'6-Speed Automatic with Over','(952) 955-6236'),(93,'Ford','Other','Ebony',35358.00,2019,'10-Speed Automatic','(218) 366-9589'),(94,'Ford','White','Ebony',29149.00,2019,'6-Speed Automatic','(541) 787-3208'),(95,'Ford','White','Ebony',22733.00,2019,'8-Speed Automatic','(888) 472-0283'),(96,'Ford','Gray','Ebony',40359.00,2019,'8-Speed Automatic','(210) 428-6618'),(97,'Ford','White','Chromite Gray',25162.00,2019,'6-Speed Automatic','(888) 727-6014'),(98,'Ford','White','Charcoal Black',35586.00,2019,'6-Speed Automatic Overdrive Transmission with Sele','(928) 328-8541'),(99,'Ford','Red','Black',42995.00,2019,'10-Speed Automatic','(425) 374-4624'),(100,'Ford','White','Ebony',23994.00,2019,'Automatic','(877) 832-3191');
/*!40000 ALTER TABLE `Cars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-30  2:28:50
