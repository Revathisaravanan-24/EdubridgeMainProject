-- MySQL dump 10.10
--
-- Host: localhost    Database: hotel_reservation
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

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
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE `hotels` (
  `id` int(11) NOT NULL auto_increment,
  `area` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `cost` double NOT NULL,
  `country` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `pin` bigint(20) NOT NULL,
  `state` varchar(255) default NULL,
  `zip` bigint(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--


/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
LOCK TABLES `hotels` WRITE;
INSERT INTO `hotels` VALUES (1,'Dangechowk','Pune',200,'India','Sai Hotel',414103,'Maharashtra',414103);
UNLOCK TABLES;
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;

--
-- Table structure for table `registered_users`
--

DROP TABLE IF EXISTS `registered_users`;
CREATE TABLE `registered_users` (
  `id` int(11) NOT NULL auto_increment,
  `email_id` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `user_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered_users`
--


/*!40000 ALTER TABLE `registered_users` DISABLE KEYS */;
LOCK TABLES `registered_users` WRITE;
INSERT INTO `registered_users` VALUES (1,'kadamk33@gmail.com','java@1991','kishor'),(2,'kadamk329@yahoo.com','java@1991','kk');
UNLOCK TABLES;
/*!40000 ALTER TABLE `registered_users` ENABLE KEYS */;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE `reservations` (
  `id` int(11) NOT NULL auto_increment,
  `checkInDate` date default NULL,
  `checkOutDate` date default NULL,
  `hotelId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservations`
--


/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
LOCK TABLES `reservations` WRITE;
INSERT INTO `reservations` VALUES (1,'3918-08-23','3918-08-24',1,1),(2,'3918-08-23','3918-08-24',1,2),(3,'3919-08-14','3919-08-18',1,1),(4,'3919-08-14','3919-08-17',1,2);
UNLOCK TABLES;
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

