-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cus_id` int NOT NULL,
  `cus_name` varchar(45) NOT NULL,
  `cus_email` varchar(45) NOT NULL,
  `cus_phone` varchar(45) NOT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'chan Rotah','chan Rotha@gmail.com','011775546'),(2,'heng veasna','heng veasna@gmail.com','012343444'),(3,'sok chea','sok chea@gmail.com','012345678'),(4,'va vichea','va vichea@gmail.com','034567894'),(5,'pen sathya','pen sathya@gmail.com','034234324'),(6,'bun saran','bun saran@gmail.com','012456765'),(7,'sa rayu','sa rayu@gmail.com','037646277'),(8,'ra sami','ra sami@gmail.com','012678543'),(9,'fa yata','fa yata@gmail.com','035654777'),(10,'mi saki','mi saki@gmail.com','011118888'),(11,'min sakea','min sakea@gmail.com','036478282'),(12,'sa minu','sa minu@gmail.com','011875678'),(13,'ka vasoki','ka vasoki@gmail.com','022275778'),(14,'bes cima','bes cima@gmail.com','098766253'),(15,'ron nado','ron nado@gmail.com','098736432'),(16,'ne ma','ne ma@gmail.com','099973744'),(17,'pu tong','pu tong@gmail.com','024637438'),(18,'ka vina','ka vina@gmail.com','034567897'),(19,'li sa','li sa@gmail.com','021312312'),(20,'li ya','li ya@gmail.com','083472734');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-19  8:01:23

-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: makert
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pro_id` int NOT NULL,
  `pro_name` varchar(45) NOT NULL,
  `pro_expire_date` varchar(45) NOT NULL,
  `pro_price` varchar(45) NOT NULL,
  `pro_catagory` varchar(45) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'boostrong','null','1','drink'),(2,'viger','null','0.6','drink'),(3,'string','null','0.5','drink'),(4,'samural','null','0.5','drink'),(5,'wurkz','null','1','drink'),(6,'coffee maker','null','3','homehold_Appliances'),(7,'blender','null','1','homehold_Appliances'),(8,'mixer','null','5','homehold_Appliances'),(9,'crock_pot','null','10','homehold_Appliances'),(10,'toaster','null','7','homehold_Appliances'),(11,'screen','null','6','phone_accessories'),(12,'handsfrees','null','12','phone_accessories'),(13,'car charger','null','16','phone_accessories'),(14,'memory cards','null','30','phone_accessories'),(15,'tools','null','4','accessories'),(16,'bumper','null','9','phone_accessories'),(17,'tools','null','0.1','accessories'),(18,'case','null','4','phone_accessories'),(19,'phone holder','null','5','phone_accessories'),(20,'batteries','null','18','phone_accessories');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-19  8:01:23

-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: makert
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `rec_id` int NOT NULL,
  `rec_name` varchar(45) NOT NULL,
  `rec_quantity` varchar(45) NOT NULL,
  `rec_date` varchar(45) NOT NULL,
  `rec__payment_type` varchar(45) NOT NULL,
  PRIMARY KEY (`rec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` VALUES (1,'boostrong','2','null','ABA'),(2,'viger','1','null','CASE'),(3,'string','4','null','AC'),(4,'samural','3','null','CASE'),(5,'wurkz','10','null','ABA'),(6,'coffee maker','7','null','ABA'),(7,'blender','6','null','AC'),(8,'mixer','2','null','CASE'),(9,'crock_pot','5','null','ABA'),(10,'toaster','11','null','CASE'),(11,'screen','13','null','AC'),(12,'handsfrees','16','null','AC'),(13,'car charger','19','null','CASE'),(14,'memory cards','20','null','CASE'),(15,'tools','1','null','ABA'),(16,'bumper','3','null','AC'),(17,'tools','4','null','ABA'),(18,'case','5','null','ABA'),(19,'phone holder','8','null','CASE'),(20,'batteries','9','null','AC');
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-19  8:01:23

-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: makert
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `stuff`
--

DROP TABLE IF EXISTS `stuff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stuff` (
  `stu_id` int NOT NULL,
  `stu_name` varchar(45) NOT NULL,
  `stu_email` varchar(45) NOT NULL,
  `stu_gender` varchar(45) NOT NULL,
  `stu_dob` varchar(45) NOT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuff`
--

LOCK TABLES `stuff` WRITE;
/*!40000 ALTER TABLE `stuff` DISABLE KEYS */;
INSERT INTO `stuff` VALUES (1,'ti da','ti da@gmail.com','f','02-04-2000'),(2,'sa ryka','sa ryka','f','02-02-2000'),(3,'som piseth','som piseth','m','03-05-2003'),(4,'heng lisa','heng lisa@gmail.com','f','03-07-1999'),(5,'ni yata','ni yata@gmail.com','m','07-09-2004'),(6,'ha seyha','ha seyha@gmail.com','m','02-04-1989'),(7,'ra misa','ra misa@gmail.com','f','06-03-2001'),(8,'ta saki','ta saki@gmail.com','f','05-09-2000'),(9,'mi sani','mi sani@gmail.com','f','03-07-2000'),(10,'sa kako','sa kako@gmail.com','m','09-01-2001'),(11,'ki lozin','ki lozin@gmail.com','m','12-12-2001'),(12,'song sakkana','song sakkana@gmail.com','m','15-11-2004'),(13,'son nina','son nina@gmail.com','f','22-10-2000'),(14,'sa rivanthong','sa rivanthong@gmail.com','m','30-09-2001'),(15,'kak dasothon','kak dasothon@gmail.com','m','29-04-2003'),(16,'phal sopon','phal sopon@gmail.com','m','17-01-2001'),(17,'vin vannak','vin vannak@gmail.com','f','27-03-1997'),(18,'tan jiro','tan jiro@gmail.com','m','25-12-1999'),(19,'tong tong','tong tong@gmail.com','m','23-11-2000'),(20,'sa na','sa na@gmail.com','f','11-11-1988');
/*!40000 ALTER TABLE `stuff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-19  8:01:23

