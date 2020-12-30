-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: census
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.11-MariaDB

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
-- Temporary view structure for view `average_age_for_masters`
--

DROP TABLE IF EXISTS `average_age_for_masters`;
/*!50001 DROP VIEW IF EXISTS `average_age_for_masters`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `average_age_for_masters` AS SELECT 
 1 AS `Average Respondent age`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bachelor_average_individual_income`
--

DROP TABLE IF EXISTS `bachelor_average_individual_income`;
/*!50001 DROP VIEW IF EXISTS `bachelor_average_individual_income`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `bachelor_average_individual_income` AS SELECT 
 1 AS `Average Individual Income`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `education_id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_highest_educ` varchar(30) DEFAULT NULL,
  `institution_type` varchar(30) DEFAULT NULL,
  `institution_name` varchar(45) DEFAULT NULL,
  `family_highest_educ` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`education_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,'Bachelors','Private University','New York University','Bachelors'),(2,'Masters','Private University','Columbia University','Doctorate'),(3,'Bachelors','Private University','University of Pennsylvania','Masters'),(4,'Bachelors','Public University','Kean University','Bachelors'),(5,'Bachelors','Public University','University of Houston','Bachelors'),(6,'Bachelors','Public University','University of Arizona','Bachelors'),(7,'Masters','Private University','University of Miami','Masters'),(8,'Bachelors','Public University','University of Washington','Bachelors'),(9,'Associates','Public College','Cypress College','Bachelors'),(10,'Associates','Public College','Clark State Community College','Bachelors'),(11,'Masters','Private University','The University of Chicago','Bachelors'),(12,'Masters','Public University','University of Michigan','Masters'),(13,'J.D.','Private Law School','Columbia Law School','J.D.'),(14,'J.D.','Private Law School','Columbia Law School','J.D.'),(15,'J.D.','Public Law School','Rutgers Law School','Bachelors'),(16,'Bachelors','Public College','Georgia College','Bachelors'),(17,'Bachelors','Public University','The University of Texas at Austin','Bachelors'),(18,'Bachelors','Public University','Northern Arizona University','Bachelors'),(19,'Bachelors','Public College','Dalton State College','Masters'),(20,'Bachelors','Public College','Dalton State College','Bachelors'),(21,'Bachelors','Public University','Texas A&M University','Masters'),(22,'Bachelors','Public University','Texas Tech University','Masters'),(23,'J.D.','Private Law School','Sandra Day O\'Connor College of Law','J.D.'),(24,'Bachelors','Private University','Baldwin Wallace University','Masters'),(25,'Bachelors','Public University','Eastern Illinois University','Bachelors'),(26,'Bachelors','Public University','Northeastern Illinois University','Bachelors'),(27,'Bachelors','Private University','Case Western Reserve University','Masters'),(28,'J.D.','Private Law School','California Western School of Law','J.D.'),(29,'Bachelors','Public University','University of North Georgia','Masters'),(30,'Bachelors','Public University','Georgia Southern University','Bachelors');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `household_below_average`
--

DROP TABLE IF EXISTS `household_below_average`;
/*!50001 DROP VIEW IF EXISTS `household_below_average`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `household_below_average` AS SELECT 
 1 AS `Average Family Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `housetype`
--

DROP TABLE IF EXISTS `housetype`;
/*!50001 DROP VIEW IF EXISTS `housetype`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `housetype` AS SELECT 
 1 AS `respondent_age`,
 1 AS `house_id`,
 1 AS `house_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `housing`
--

DROP TABLE IF EXISTS `housing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `housing` (
  `house_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_type` varchar(30) DEFAULT NULL,
  `family_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `housing`
--

LOCK TABLES `housing` WRITE;
/*!40000 ALTER TABLE `housing` DISABLE KEYS */;
INSERT INTO `housing` VALUES (1,'Tenancy in Common',2),(2,'Rental',1),(3,'Rental',1),(4,'Sole Ownership',1),(5,'Community Property',2),(6,'Joint Tenancy',3),(7,'Tenancy in Common',4),(8,'Rental',1),(9,'Rental',1),(10,'Joint Tenancy',2),(11,'Rental',2),(12,'Sole Ownership',2),(13,'Sole Ownership',4),(14,'Sole Ownership',1),(15,'Sole Ownership',5),(16,'Rental',2),(17,'Community Property',3),(18,'Community Property',3),(19,'Rental',2),(20,'Rental',2),(21,'Community Property',3),(22,'Community Property',4),(23,'Sole Ownership',1),(24,'Joint Tenancy',2),(25,'Tenancy in Common',3),(26,'Tenancy in Common',4),(27,'Joint Tenancy',2),(28,'Sole Ownership',2),(29,'Community Property',3),(30,'Community Property',2);
/*!40000 ALTER TABLE `housing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `income` (
  `income_id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_income` double DEFAULT NULL,
  `family_income` double DEFAULT NULL,
  PRIMARY KEY (`income_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (1,350656,401472),(2,125000,125000),(3,102000,102000),(4,75000,75000),(5,79000,390100),(6,32900.62,100065.93),(7,120000.72,203654.72),(8,54600.3,54600.3),(9,400430,400430),(10,27930.32,98700.93),(11,65700,108323),(12,289900,314787.72),(13,402797.27,808329.84),(14,680000,680000),(15,690900,780200.83),(16,28300.41,96700.83),(17,99240.79,134978.65),(18,56470.73,142564.48),(19,34300.45,106702.93),(20,39600.51,103440.66),(21,86000,299200),(22,92000,385050),(23,490000,490000),(24,349260,420400),(25,40000.62,12065.99),(26,55000.62,132065),(27,344440,400205),(28,502000,641000),(29,81000,400100),(30,94000,399070);
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `population`
--

DROP TABLE IF EXISTS `population`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `population` (
  `population_id` int(11) NOT NULL AUTO_INCREMENT,
  `respondent_id` int(11) NOT NULL,
  `population_count` bigint(20) DEFAULT NULL,
  `census_year` year(4) DEFAULT NULL,
  PRIMARY KEY (`population_id`),
  KEY `respondent_id_idx` (`respondent_id`),
  CONSTRAINT `respondent_id` FOREIGN KEY (`respondent_id`) REFERENCES `respondents` (`respondent_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `population`
--

LOCK TABLES `population` WRITE;
/*!40000 ALTER TABLE `population` DISABLE KEYS */;
INSERT INTO `population` VALUES (1,1,19849399,2017),(2,2,19849399,2017),(3,3,12805537,2017),(4,4,9055644,2017),(5,5,28304596,2017),(6,6,7016270,2017),(7,7,20984400,2017),(8,8,7405743,2017),(9,9,39536653,2017),(10,10,11658609,2017),(11,11,12802023,2017),(12,12,9962311,2017),(13,13,19849399,2017),(14,14,19849399,2017),(15,15,9055644,2017),(16,16,10429379,2017),(17,17,28304596,2017),(18,18,7016270,2017),(19,19,10429379,2017),(20,20,10429379,2017),(21,21,28304596,2017),(22,22,28304596,2017),(23,23,7016270,2017),(24,24,11658609,2017),(25,25,12802023,2017),(26,26,12802023,2017),(27,27,11658609,2017),(28,28,39536653,2017),(29,29,10429379,2017),(30,30,10429379,2017);
/*!40000 ALTER TABLE `population` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regions` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `region_name` varchar(30) DEFAULT NULL,
  `party_affiliation` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`region_id`),
  KEY `state_id_idx` (`state_id`),
  CONSTRAINT `state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,1,'Northeast','Democrat'),(2,2,'Northeast','Democrat'),(3,3,'Northeast','Democrat'),(4,4,'Northeast','Democrat'),(5,10,'Midwest','Republican'),(6,11,'Midwest','Democrat'),(7,12,'Midwest','Democrat'),(8,5,'South','Republican'),(9,7,'South','Republican'),(10,16,'South','Republican'),(11,9,'West','Democrat'),(12,8,'West','Democrat'),(13,6,'West','Republican'),(14,13,'Northeast','Democrat'),(15,14,'Northeast','Democrat'),(16,15,'Northeast','Democrat'),(17,17,'South','Republican'),(18,18,'West','Republican'),(19,19,'South','Republican'),(20,20,'South','Republican'),(21,21,'South','Republican'),(22,22,'South','Republican'),(23,23,'West','Republican'),(24,24,'Midwest','Republican'),(25,25,'Midwest','Democrat'),(26,26,'Midwest','Democrat'),(27,27,'Midwest','Republican'),(28,28,'West','Democrat'),(29,29,'South','Republican'),(30,30,'South','Republican');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respondents`
--

DROP TABLE IF EXISTS `respondents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respondents` (
  `respondent_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` int(11) NOT NULL,
  `respondent_age` int(11) DEFAULT NULL,
  `income_id` int(11) NOT NULL,
  `education_id` int(11) NOT NULL,
  PRIMARY KEY (`respondent_id`),
  KEY `house_id_idx` (`house_id`),
  KEY `income_id_idx` (`income_id`),
  KEY `education_id_idx` (`education_id`),
  CONSTRAINT `education_id` FOREIGN KEY (`education_id`) REFERENCES `education` (`education_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `house_id` FOREIGN KEY (`house_id`) REFERENCES `housing` (`house_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `income_id` FOREIGN KEY (`income_id`) REFERENCES `income` (`income_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respondents`
--

LOCK TABLES `respondents` WRITE;
/*!40000 ALTER TABLE `respondents` DISABLE KEYS */;
INSERT INTO `respondents` VALUES (1,1,60,1,1),(2,2,23,2,2),(3,3,22,3,3),(4,4,30,4,4),(5,5,47,5,5),(6,6,27,6,6),(7,7,24,7,7),(8,8,22,8,8),(9,9,22,9,9),(10,10,25,10,10),(11,11,26,11,11),(12,12,52,12,12),(13,13,59,13,13),(14,14,65,14,14),(15,15,54,15,15),(16,16,30,16,16),(17,17,30,17,17),(18,18,29,18,18),(19,19,32,19,19),(20,20,34,20,20),(21,21,35,21,21),(22,22,33,22,22),(23,23,50,23,23),(24,24,59,24,24),(25,25,26,25,25),(26,26,28,26,26),(27,27,61,27,27),(28,28,46,28,28),(29,29,31,29,29),(30,30,27,30,30);
/*!40000 ALTER TABLE `respondents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `senior_income`
--

DROP TABLE IF EXISTS `senior_income`;
/*!50001 DROP VIEW IF EXISTS `senior_income`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `senior_income` AS SELECT 
 1 AS `respondent_id`,
 1 AS `respondent_age`,
 1 AS `individual_income`,
 1 AS `income_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(30) DEFAULT NULL,
  `population_id` int(11) NOT NULL,
  PRIMARY KEY (`state_id`),
  KEY `population_id_idx` (`population_id`),
  CONSTRAINT `population_id` FOREIGN KEY (`population_id`) REFERENCES `population` (`population_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'New York',1),(2,'New York',2),(3,'Pennsylvania',3),(4,'New Jersey',4),(5,'Texas',5),(6,'Arizona',6),(7,'Florida',7),(8,'Washington',8),(9,'California',9),(10,'Ohio',10),(11,'Illinois',11),(12,'Michigan',12),(13,'New York',13),(14,'New York',14),(15,'New Jersey',15),(16,'Georgia',16),(17,'Texas',17),(18,'Arizona',18),(19,'Georgia',19),(20,'Georgia',20),(21,'Texas',21),(22,'Texas',22),(23,'Arizona',23),(24,'Ohio',24),(25,'Illinois',25),(26,'Illinois',26),(27,'Ohio',27),(28,'California',28),(29,'Georgia',29),(30,'Georgia',30);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'census'
--

--
-- Dumping routines for database 'census'
--

--
-- Final view structure for view `average_age_for_masters`
--

/*!50001 DROP VIEW IF EXISTS `average_age_for_masters`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `average_age_for_masters` AS select avg(`r`.`respondent_age`) AS `Average Respondent age` from (`respondents` `r` join `education` `e` on(`r`.`education_id` = `e`.`education_id`)) where `e`.`individual_highest_educ` = 'Masters' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bachelor_average_individual_income`
--

/*!50001 DROP VIEW IF EXISTS `bachelor_average_individual_income`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bachelor_average_individual_income` AS select avg(`i`.`individual_income`) AS `Average Individual Income` from ((`respondents` `r` join `income` `i` on(`i`.`income_id` = `r`.`income_id`)) join `education` `e` on(`r`.`education_id` = `e`.`education_id`)) where `e`.`individual_highest_educ` = 'Bachelors' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `household_below_average`
--

/*!50001 DROP VIEW IF EXISTS `household_below_average`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `household_below_average` AS select avg(`h`.`family_count`) AS `Average Family Count` from ((`respondents` `r` join `housing` `h` on(`r`.`house_id` = `h`.`house_id`)) join `income` `i` on(`r`.`income_id` = `i`.`income_id`)) where `i`.`individual_income` < '196280.97866666672' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `housetype`
--

/*!50001 DROP VIEW IF EXISTS `housetype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `housetype` AS select `respondents`.`respondent_age` AS `respondent_age`,`housing`.`house_id` AS `house_id`,`housing`.`house_type` AS `house_type` from (`housing` join `respondents` on(`housing`.`house_id` = `respondents`.`house_id`)) where `housing`.`house_type` = 'Rental' or `housing`.`house_type` = 'Sole Ownership' and `respondents`.`respondent_age` < (select avg(`respondents`.`respondent_age`) from `respondents`) order by `respondents`.`respondent_age` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `senior_income`
--

/*!50001 DROP VIEW IF EXISTS `senior_income`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `senior_income` AS select `respondents`.`respondent_id` AS `respondent_id`,`respondents`.`respondent_age` AS `respondent_age`,`income`.`individual_income` AS `individual_income`,`income`.`income_id` AS `income_id` from (`income` join `respondents` on(`income`.`income_id` = `respondents`.`income_id`)) where `respondents`.`respondent_age` > 55 and `income`.`individual_income` > (select avg(`income`.`individual_income`) from `income`) order by `income`.`individual_income` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-13 17:24:12

