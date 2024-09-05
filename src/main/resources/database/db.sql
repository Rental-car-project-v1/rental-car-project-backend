-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: sys_car_rental
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `end_date_time` datetime(6) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `start_date_time` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `car_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `FKj1y19nc7wf0rdp24pyhomn7ck` (`car_id`),
  KEY `FKeyog2oic85xg7hsu2je2lx3s6` (`user_id`),
  CONSTRAINT `FKeyog2oic85xg7hsu2je2lx3s6` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKj1y19nc7wf0rdp24pyhomn7ck` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2024-07-29 17:41:00.000000',NULL,'2024-07-31 17:41:55.611000','COMPLETED',8,8),(2,'2025-01-03 19:00:00.000000',NULL,'2025-01-01 16:00:00.000000','PENDING_DEPOSIT',9,9),(3,'2025-02-04 08:00:00.000000',NULL,'2025-02-01 08:00:00.000000','PENDING_DEPOSIT',10,9),(4,'2025-03-02 12:00:00.000000',NULL,'2025-03-01 12:00:00.000000','PENDING_DEPOSIT',11,9),(5,'2025-01-07 12:00:00.000000',NULL,'2025-01-05 12:00:00.000000','PENDING_DEPOSIT',9,7),(6,'2025-02-09 09:00:00.000000',NULL,'2025-02-07 09:00:00.000000','PENDING_DEPOSIT',10,7),(7,'2025-03-06 10:00:00.000000',NULL,'2025-03-04 10:00:00.000000','PENDING_DEPOSIT',11,7),(8,'2025-04-02 10:30:00.000000',NULL,'2025-04-01 10:30:00.000000','PENDING_DEPOSIT',12,7),(9,'2025-01-10 17:00:00.000000',NULL,'2025-01-08 17:00:00.000000','PENDING_DEPOSIT',9,7),(10,'2025-01-14 19:00:00.000000',NULL,'2025-01-12 19:00:00.000000','PENDING_DEPOSIT',9,7),(11,'2025-03-06 10:00:00.000000',NULL,'2025-03-04 10:00:00.000000','PENDING_DEPOSIT',11,7),(12,'2025-04-02 10:30:00.000000',NULL,'2025-04-01 10:30:00.000000','PENDING_DEPOSIT',12,7),(13,'2025-02-28 12:00:00.000000',NULL,'2025-02-28 10:00:00.000000','PENDING_DEPOSIT',14,7),(14,'2025-03-02 12:00:00.000000',NULL,'2025-03-01 12:00:00.000000','PENDING_DEPOSIT',11,9),(15,'2025-04-05 23:00:00.000000',NULL,'2025-04-03 22:00:00.000000','PENDING_DEPOSIT',14,9),(16,'2025-01-21 19:00:00.000000',NULL,'2025-01-20 19:00:00.000000','PENDING_DEPOSIT',13,9),(17,'2025-02-21 11:15:00.000000',NULL,'2025-02-20 11:15:00.000000','PENDING_DEPOSIT',14,9),(18,'2025-02-16 12:00:00.000000',NULL,'2025-02-14 12:00:00.000000','PENDING_DEPOSIT',10,8),(19,'2025-04-12 11:00:00.000000',NULL,'2025-04-09 11:00:00.000000','PENDING_DEPOSIT',14,8),(20,'2025-01-03 10:00:00.000000',NULL,'2025-01-01 10:00:00.000000','PENDING_DEPOSIT',13,8),(21,'2025-02-19 19:00:00.000000',NULL,'2025-02-17 19:00:00.000000','PENDING_DEPOSIT',14,8),(22,'2025-03-08 16:00:00.000000',NULL,'2025-03-06 16:00:00.000000','PENDING_DEPOSIT',11,10),(23,'2025-04-08 16:00:00.000000',NULL,'2025-04-07 16:00:00.000000','PENDING_DEPOSIT',14,10),(24,'2024-07-29 17:41:00.000000',NULL,'2024-07-31 17:41:55.611000','CONFIRMED',11,7),(25,'2024-07-29 17:41:00.000000',NULL,'2024-07-31 17:41:55.611000','PENDING_DEPOSIT',11,7),(26,'2024-07-29 17:41:00.000000',NULL,'2024-07-31 17:41:55.611000','COMPLETED',11,7),(27,'2024-07-29 17:41:00.000000',NULL,'2024-07-31 17:41:55.611000','PENDING_DEPOSIT',11,7),(28,'2024-07-29 17:41:00.000000',NULL,'2024-07-31 17:41:55.611000','PENDING_DEPOSIT',11,7),(29,'2023-11-05 14:00:00.000000','MY_WALLET','2023-11-04 14:00:00.000000','PENDING_DEPOSIT',11,7),(30,'2024-08-15 09:20:00.000000','MY_WALLET','2024-08-15 08:10:00.000000','PENDING_DEPOSIT',11,7),(31,'2024-08-15 13:00:00.000000','MY_WALLET','2024-08-15 10:00:00.000000','COMPLETED',12,7),(32,'2024-08-15 08:20:00.000000','MY_WALLET','2024-08-15 07:10:00.000000','PENDING_DEPOSIT',21,7),(33,'2024-08-15 08:09:00.000000','MY_WALLET','2024-08-15 07:10:00.000000','PENDING_DEPOSIT',11,7),(34,'2024-08-19 08:09:00.000000','MY_WALLET','2024-08-18 07:10:00.000000','CONFIRMED',11,7),(35,'2024-09-08 00:21:00.000000','MY_WALLET','2024-08-18 00:21:00.000000','COMPLETED',22,7),(36,'2024-08-20 00:40:00.000000','MY_WALLET','2024-08-18 00:40:00.000000','CANCELLED',20,7),(37,'2024-09-05 08:09:00.000000','MY_WALLET','2024-09-04 07:10:00.000000','PENDING_DEPOSIT',11,7),(38,'2024-09-06 08:09:00.000000','MY_WALLET','2024-09-06 07:20:00.000000','PENDING_DEPOSIT',11,7),(39,'2024-09-07 08:09:00.000000','MY_WALLET','2024-09-07 07:20:00.000000','PENDING_DEPOSIT',11,7),(40,'2024-09-08 08:09:00.000000','MY_WALLET','2024-09-08 07:20:00.000000','PENDING_DEPOSIT',11,7),(41,'2024-09-09 08:09:00.000000','MY_WALLET','2024-09-09 07:20:00.000000','PENDING_DEPOSIT',11,7),(42,'2024-09-11 08:09:00.000000','MY_WALLET','2024-09-11 07:20:00.000000','PENDING_DEPOSIT',11,7),(43,'2024-08-20 23:57:00.000000','MY_WALLET','2024-08-18 23:57:00.000000','COMPLETED',22,7),(44,'2024-08-20 23:57:00.000000','MY_WALLET','2024-08-18 23:57:00.000000','CANCELLED',20,7),(45,'2024-08-21 17:12:00.000000','MY_WALLET','2024-08-19 17:12:00.000000','COMPLETED',27,7);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `car_id` int NOT NULL AUTO_INCREMENT,
  `additional_functions` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `base_price` double DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `fuel_consumption` float NOT NULL,
  `fuel_type` varchar(255) DEFAULT NULL,
  `is_available` bit(1) NOT NULL,
  `license_plate` varchar(255) DEFAULT NULL,
  `mileage` int NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number_of_seats` int NOT NULL,
  `production_year` int NOT NULL,
  `terms_of_use` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `car_owner_id` int DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `car_transimission` enum('AUTOMATIVE','MANUAL') DEFAULT NULL,
  `is_stopped` bit(1) DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  KEY `FKmukrk0he9t42o9jhbw610v0lf` (`car_owner_id`),
  CONSTRAINT `FKmukrk0he9t42o9jhbw610v0lf` FOREIGN KEY (`car_owner_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (8,'Bluuetooh,GPS,Childlock,USB,DVD','10,Vân Động,Lục Nam,Bắc Giang',0.9,'Vinfast','Yellow','2024-07-30 13:51:37.042000',15,'Đây là dòng xe Mini phù hợp với các nhân và gia đình di chuyển trong nội đô',10.5,'DIESEL',_binary '','98-Y4 23985',2389,'Thương mại','Vinfast VF3',4,2024,'NoSmoking,NoPet,Other',NULL,1,_binary '',NULL,'MANUAL',_binary '\0'),(9,'Bluetooth,Sun roof,USB','12,Bách Khoa,Hai Bà Trưng,Hà Nội',0.9,'Vinfast','Red','2024-07-31 17:33:37.136000',15,'Xe gia đình tiện nghi với nhiều tính năng hiện đại, phù hợp cho các chuyến đi xa.',12,'PETRO',_binary '','29-B2 71508 ',1250,'Thương mại','Vinfast VF5',6,2024,'NoSmoking,NoPet,Other',NULL,1,_binary '',NULL,'AUTOMATIVE',_binary ''),(10,'Bluetooth,Sun roof,Child seat,DVD,USB','34,Dịch Vọng,Cầu Giấy,Hà Nội',0.9,'Vinfast','Blue','2024-07-31 17:44:12.459000',15,'Xe nhỏ gọn,lý tưởng cho việc di chuyển trong thành phố và khu vực nội đô.',9.8,'PETRO',_binary '','90-C4 67934 ',2200,'Thương mại','Vinfast VF6',8,2024,'NoSmoking,NoPet,Other',NULL,1,_binary '',NULL,'MANUAL',_binary ''),(11,'Bluetooth,Sun roof,USB','15,Mai Động,Hoàng Mai,Hà Nội',0.9,'Vinfast','Black','2024-07-31 17:59:11.522000',15,'Xe nhỏ gọn và tiết kiệm nhiên liệu, lý tưởng cho môi trường đô thị.',9.5,'DIESEL',_binary '','30-D5 83721',2200,'Thương mại','Vinfast VF9',8,2024,'NoSmoking,NoPet,Other',NULL,1,_binary '',NULL,'MANUAL',_binary '\0'),(12,'Bluetooth,Sun roof,USB','10,Bưởi,Tây Hồ,Hồ Chí Minh',0.9,'Hyundai','Black','2024-07-31 18:09:13.855000',15,'Xe nhỏ gọn và tiết kiệm nhiên liệu, lý tưởng cho môi trường đô thị.',8.2,'PETRO',_binary '','29-B3 49258',1590,'Thương mại','Hyundai i10',8,2024,'NoSmoking,NoPet,Other',NULL,1,_binary '',4.3333,'AUTOMATIVE',_binary ''),(13,'Child seat,DVD,USB','25,Yên Hòa,Cầu Giấy,Đà Lạt',0.9,'Ford','White','2024-07-31 18:17:08.010000',15,'Xe với thiết kế mạnh mẽ và hiệu suất cao, phù hợp cho các chuyến đi dài.',10.7,'PETRO',_binary '','31-G8 78321',1640,'Thương mại','Ford EcoSport',4,2021,'NoSmoking,NoPet,Other',NULL,1,_binary '',NULL,'AUTOMATIVE',_binary '\0'),(14,'Sun roof,Child seet,Child Lock','30,Phú Đô,Nam Từ Liêm,Đà Nẵng',0.9,'Mitsubishi','White','2024-07-31 18:30:37.701000',15,'Xe với không gian nội thất rộng rãi và nhiều tính năng tiện ích cho gia đình.',10.3,'PETRO',_binary '','30-H9 98234',1700,'Thương mại','Mitsubishi Xpander',6,2020,'NoSmoking,NoPet,Other',NULL,1,_binary '',NULL,'AUTOMATIVE',_binary '\0'),(15,'Child Lock,DVD,USB','35,Trung Liệt,Đống Đa,Hồ Chí Minh',0.9,'Nissan','Orange','2024-07-31 18:38:00.020000',15,'Xe đa dụng với khả năng chịu tải tốt và phù hợp cho cả gia đình lớn.',15,'PETRO',_binary '','97-Y6 67890',1500,'Thương mại','Nissan Navara',6,2020,'NoSmoking,NoPet,Other',NULL,1,_binary '',NULL,'MANUAL',_binary '\0'),(16,'Sun roof,Child seat','22,Bách Khoa,Hai Bà Trưng,Hà Nội',0.9,'Hyundai','Red','2024-07-31 18:43:08.054000',15,'Xe gia đình tiện nghi với nhiều tính năng hiện đại, phù hợp cho các chuyến đi xa.',8.3,'PETRO',_binary '','29-B3 12345',1500,'Thương mại','Hyundai Elantra',6,2020,'NoSmoking,NoPet,Other',NULL,1,_binary '',NULL,'AUTOMATIVE',_binary '\0'),(17,'Bluetooth,Sun roof,Child seat','22,Nhổn,Trung Kính,Đà Nẵng',0.9,'Honda','Blue','2024-07-31 18:47:51.368000',15,'Xe nhỏ gọn, lý tưởng cho việc di chuyển trong thành phố và khu vực nội đô.',9.8,'DIESEL',_binary '','30-C4 67890',2200,'Thương mại','Honda Civic',6,2022,'NoSmoking,NoPet,Other',NULL,1,_binary '',NULL,'MANUAL',_binary '\0'),(18,'Child seat,Child Lock','20,Bưởi,Tây Hồ,Hồ Chí Minh\r',0.9,'Toyota','Black','2024-07-31 18:51:51.419000',15,'Xe đa dụng với sức chứa lớn, phù hợp cho gia đình lớn và chuyến đi dài.',11,'PETRO',_binary '','30-D5 54321',1800,'Thương mại','Toyota Corolla',7,2010,'NoSmoking,NoPet,Other',NULL,1,_binary '',NULL,'MANUAL',_binary '\0'),(19,'Child seat,Child Lock','115,Mai Động,Hoàng Mai,Đà Nẵng',0.9,'Mazda','Green','2024-07-31 18:54:36.584000',15,'Xe đa dụng với sức chứa lớn, phù hợp cho gia đình lớn và chuyến đi dài.',20.1,'DIESEL',_binary '','43-E6 98765',2000,'Thương mại','Mazda 3',4,2010,'NoSmoking,NoPet,Other',NULL,1,_binary '',NULL,'MANUAL',_binary '\0'),(20,'Bluetooth,Sun roof,Child seat','20,Ngọc Hà,Ba Đình,Hà Nội',0.9,'Ford','Silver','2024-07-31 19:00:16.579000',15,'Xe thể thao tiện nghi với nhiều tính năng cao cấp và thiết kế hiện đại.',20.5,'DIESEL',_binary '','43-F7 45678',1600,'Thương mại','Ford Fiesta',4,2010,'NoSmoking,NoPet,Other',NULL,1,_binary '',NULL,'AUTOMATIVE',_binary '\0'),(21,'Sun roof,Child seat,Child Lock','255,Yên Hòa,Cầu Giấy,Hồ Chí Minh',0.9,'Nissan','White','2024-07-31 19:05:32.700000',15,'Xe với thiết kế mạnh mẽ và hiệu suất cao, phù hợp cho các chuyến đi dài.',20.5,'PETRO',_binary '','31-G8 12398',100,'Thương mại','Nissan Altima',4,2015,'NoSmoking,NoPet,Other',NULL,1,_binary '',NULL,'MANUAL',_binary '\0'),(22,'Child seat,Child Lock','35,Trung Liệt,Đống Đa,Hà Nội',0.9,'Subaru','Brown','2024-07-31 19:11:41.946000',15,'Xe với thiết kế mạnh mẽ và hiệu suất cao, phù hợp cho các chuyến đi dài.',20.5,'DIESEL',_binary '','49-J0 56789',1257,'Thương mại','Subaru Legacy',12,2013,'NoSmoking,NoPet,Other',NULL,1,_binary '',4.5,'MANUAL',_binary '\0'),(23,'Bluetooh,GPS,Childlock','Chũ,Lục Ngạn, Bắc Giang',0.9,'Vinfast','Yellow','2024-08-07 21:29:14.326000',15,'Đây là dòng xe Mini phù hợp với các nhân và gia đình di chuyển trên mọi cung đường',11.1,'DIESEL',_binary '','98-Y4 23985',1111,'Thương mại','Vinfast VF3',4,2024,'NoSmoking,NoPet,Other',NULL,1,_binary '',NULL,'MANUAL',_binary '\0'),(24,'Childlock,USB','1111, 1111, 111, 11',0.9,'Vinfast','Yellow','2024-08-17 23:26:03.638000',15,'Đây là xe do Phương thiết kế',2.2,'DIESEL',_binary '','99H-99999',111,'2024','Vinfast Vf3',4,2024,'NoPet,Other,NoFoodInCars,NoSmoking',NULL,1,_binary '',NULL,NULL,_binary '\0'),(25,'Bluetooth,Childseat','22222, 2222, 222, 22',0.6,'Vinfast','Yellow','2024-08-18 22:50:06.232000',20,'Đây là dognf xe mới 2',2.1,'DIESEL',_binary '','99H-88888',2222,'2024','Vinfast Vf1',4,2030,'NoSmoking,Other',NULL,1,_binary '',NULL,NULL,_binary '\0'),(26,'Bluetooth,DVD,USB','Hà Nội, Bắc Từ Liêm, Minh Khai, 15',0.3,'Vinfast','Red','2024-08-19 15:58:06.075000',16,'Đây là dòng xe của tương lai',1.3,'DIESEL',_binary '','98Y2-44444',1111,'2030','Vinfast Vf0',5,2035,'NoFoodInCars,NoPet',NULL,1,_binary '',NULL,NULL,_binary '\0'),(27,'GPS,USB,Childseat','Hà Nội, Bắc Từ Liêm, Minh Khai, 16',0.1,'Vinfast','Red','2024-08-19 16:10:59.073000',17,'Đây là xe mới',1.2,'DIESEL',_binary '','98Y2-44444',2222,'2030','Vinfast Vfe34',4,2025,'NoSmoking,Other',NULL,1,_binary '',4,NULL,_binary '\0');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbacks` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `rating` int NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `booking_id` int DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  UNIQUE KEY `UK32cetrrxomtxj5ujwkyc6rscg` (`booking_id`),
  CONSTRAINT `FK2d6mwbywefil2s33do529yc7b` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (1,'oki',4,'2024-08-01 10:37:02.802000',13),(4,'ok sss i',3,'2024-08-01 10:46:09.111000',17),(5,'Good trip',4,'2024-08-09 15:24:18.900000',28),(6,'Feedback21',3,'2024-08-09 15:24:18.900000',21),(7,'Feedback8',4,'2024-08-09 15:24:18.900000',8),(8,'Feedback12',5,'2024-08-09 15:24:18.900000',12),(9,'Feedback16',4,'2024-08-09 15:24:18.900000',16),(10,'Feedback20',4,'2024-08-09 15:24:18.900000',20),(12,'Good trip',4,'2024-08-17 09:10:21.211000',31),(13,'Xe good',5,'2024-08-17 23:39:54.366000',35),(14,'Good trip',4,'2024-08-18 23:06:15.920000',43),(15,'Good trip',4,'2024-08-19 16:22:37.551000',45);
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `image_public_id` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `when_created` datetime(6) DEFAULT NULL,
  `car_id` int DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `FK79gaadgp4fm6x4f6mm3yeuk8` (`car_id`),
  CONSTRAINT `FK79gaadgp4fm6x4f6mm3yeuk8` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (15,'RentalCar/Avatar/yvv5rrgtsp2noe5wvj1k','http://res.cloudinary.com/datrzbogl/image/upload/v1722310881/RentalCar/Avatar/yvv5rrgtsp2noe5wvj1k.png','avt1','2024-07-30 10:41:20.845000',NULL),(16,'RentalCar/Avatar/znkesth5sfs9fjibdku5','http://res.cloudinary.com/datrzbogl/image/upload/v1722310956/RentalCar/Avatar/znkesth5sfs9fjibdku5.png','avt2','2024-07-30 10:42:35.686000',NULL),(17,'RentalCar/Avatar/pqw3xcumcjsajxxz91l6','http://res.cloudinary.com/datrzbogl/image/upload/v1722311031/RentalCar/Avatar/pqw3xcumcjsajxxz91l6.png','avt3','2024-07-30 10:43:51.188000',NULL),(18,'RentalCar/Avatar/eu5ez2wagjvja2emuqxs','http://res.cloudinary.com/datrzbogl/image/upload/v1722311106/RentalCar/Avatar/eu5ez2wagjvja2emuqxs.png','avt4','2024-07-30 10:45:06.025000',NULL),(19,'RentalCar/Avatar/gb7yhe8o0xo4qe17pmth','http://res.cloudinary.com/datrzbogl/image/upload/v1722311178/RentalCar/Avatar/gb7yhe8o0xo4qe17pmth.png','avt5','2024-07-30 10:46:17.690000',NULL),(20,'RentalCar/Avatar/olfhagcfry4q8oracvb2','http://res.cloudinary.com/datrzbogl/image/upload/v1722311399/RentalCar/Avatar/olfhagcfry4q8oracvb2.png','avt6','2024-07-30 10:49:59.136000',NULL),(21,'RentalCar/Avatar/rwthdsri09goh2e8xnm8','http://res.cloudinary.com/datrzbogl/image/upload/v1722311525/RentalCar/Avatar/rwthdsri09goh2e8xnm8.png','avt7','2024-07-30 10:52:05.029000',NULL),(22,'RentalCar/Avatar/znjvaffdfmdovkioxfut','http://res.cloudinary.com/datrzbogl/image/upload/v1722311600/RentalCar/Avatar/znjvaffdfmdovkioxfut.png','avt8','2024-07-30 10:53:20.189000',NULL),(23,'RentalCar/Avatar/y23u6zirqrfsuqggmryj','http://res.cloudinary.com/datrzbogl/image/upload/v1722311673/RentalCar/Avatar/y23u6zirqrfsuqggmryj.png','avt8','2024-07-30 10:54:33.303000',NULL),(24,'RentalCar/Avatar/yjrvv3dkvtpehh3srnd4','http://res.cloudinary.com/datrzbogl/image/upload/v1722311849/RentalCar/Avatar/yjrvv3dkvtpehh3srnd4.png','avt9','2024-07-30 10:57:29.327000',NULL),(25,'RentalCar/Avatar/dbhxoqkzgw1e0acabdwy','http://res.cloudinary.com/datrzbogl/image/upload/v1722311976/RentalCar/Avatar/dbhxoqkzgw1e0acabdwy.png','avt10','2024-07-30 10:59:35.883000',NULL),(27,'RentalCar/Car/rafaeokqrlwq1gmtfllg','http://res.cloudinary.com/datrzbogl/image/upload/v1722322300/RentalCar/Car/rafaeokqrlwq1gmtfllg.webp','vf-5',NULL,8),(28,'RentalCar/Car/h2h6cmsn8xtox0tbmttk','http://res.cloudinary.com/datrzbogl/image/upload/v1722322302/RentalCar/Car/h2h6cmsn8xtox0tbmttk.webp','vf-6',NULL,8),(29,'RentalCar/Car/sqyeyztbrci9rfg6bmu7','http://res.cloudinary.com/datrzbogl/image/upload/v1722322304/RentalCar/Car/sqyeyztbrci9rfg6bmu7.webp','vf-7',NULL,8),(30,'RentalCar/Car/yy8mwblsxcy1mrrx4msx','http://res.cloudinary.com/datrzbogl/image/upload/v1722322306/RentalCar/Car/yy8mwblsxcy1mrrx4msx.webp','vf-8',NULL,8),(31,'RentalCar/Car/ozjbxhkeitiebmblgitj','http://res.cloudinary.com/datrzbogl/image/upload/v1722422020/RentalCar/Car/ozjbxhkeitiebmblgitj.webp','vf-5',NULL,9),(32,'RentalCar/Car/ztdp6rfpvw4jdhy5fksa','http://res.cloudinary.com/datrzbogl/image/upload/v1722422022/RentalCar/Car/ztdp6rfpvw4jdhy5fksa.webp','vf-6',NULL,9),(33,'RentalCar/Car/vdyqep0xq0vg1sot9noq','http://res.cloudinary.com/datrzbogl/image/upload/v1722422024/RentalCar/Car/vdyqep0xq0vg1sot9noq.webp','vf-9',NULL,9),(34,'RentalCar/Car/wwa1ild1hniephbotg46','http://res.cloudinary.com/datrzbogl/image/upload/v1722422026/RentalCar/Car/wwa1ild1hniephbotg46.webp','vf-e34',NULL,9),(35,'RentalCar/Car/axu99auu3jounivczqk2','http://res.cloudinary.com/datrzbogl/image/upload/v1722422655/RentalCar/Car/axu99auu3jounivczqk2.jpg','pexels-adrian-dorobantu-989175-2127733',NULL,10),(36,'RentalCar/Car/uup04ehemfdsdvfeg14l','http://res.cloudinary.com/datrzbogl/image/upload/v1722422659/RentalCar/Car/uup04ehemfdsdvfeg14l.jpg','pexels-mikebirdy-1335077',NULL,10),(37,'RentalCar/Car/m3wzaopdqzcvjbrqm7ib','http://res.cloudinary.com/datrzbogl/image/upload/v1722422664/RentalCar/Car/m3wzaopdqzcvjbrqm7ib.jpg','pexels-aaronmcurtis-119435',NULL,10),(38,'RentalCar/Car/yncc43vq4zpdqlz1pjek','http://res.cloudinary.com/datrzbogl/image/upload/v1722422667/RentalCar/Car/yncc43vq4zpdqlz1pjek.jpg','pexels-thuanymarcante-1805053',NULL,10),(39,'RentalCar/Car/xfd7zvvm7rq5g07pqpbh','http://res.cloudinary.com/datrzbogl/image/upload/v1722423555/RentalCar/Car/xfd7zvvm7rq5g07pqpbh.jpg','pexels-mikebirdy-1335077',NULL,11),(40,'RentalCar/Car/tld0lvxidsiuvm4wiv6g','http://res.cloudinary.com/datrzbogl/image/upload/v1722423558/RentalCar/Car/tld0lvxidsiuvm4wiv6g.jpg','pexels-aaronmcurtis-119435',NULL,11),(41,'RentalCar/Car/idvukat86z8yfxvnmao2','http://res.cloudinary.com/datrzbogl/image/upload/v1722423562/RentalCar/Car/idvukat86z8yfxvnmao2.jpg','pexels-thuanymarcante-1805053',NULL,11),(42,'RentalCar/Car/t0vt4d6drl03by2qux6j','http://res.cloudinary.com/datrzbogl/image/upload/v1722423564/RentalCar/Car/t0vt4d6drl03by2qux6j.jpg','pexels-lynxexotics-3802510',NULL,11),(43,'RentalCar/Car/pqlz53h3skci4wg6kvm8','http://res.cloudinary.com/datrzbogl/image/upload/v1722424158/RentalCar/Car/pqlz53h3skci4wg6kvm8.jpg','pexels-trace-707046',NULL,12),(44,'RentalCar/Car/ylk5ozccfocusdoeeiaw','http://res.cloudinary.com/datrzbogl/image/upload/v1722424161/RentalCar/Car/ylk5ozccfocusdoeeiaw.jpg','pexels-mikebirdy-244206',NULL,12),(45,'RentalCar/Car/rnyoovg4ngffezzpqcmd','http://res.cloudinary.com/datrzbogl/image/upload/v1722424165/RentalCar/Car/rnyoovg4ngffezzpqcmd.jpg','pexels-mikebirdy-810357',NULL,12),(46,'RentalCar/Car/nm2daz8qkgzssoillljc','http://res.cloudinary.com/datrzbogl/image/upload/v1722424167/RentalCar/Car/nm2daz8qkgzssoillljc.jpg','pexels-mikebirdy-120049',NULL,12),(47,'RentalCar/Car/rc6lqahb2x45valxenxy','http://res.cloudinary.com/datrzbogl/image/upload/v1722424632/RentalCar/Car/rc6lqahb2x45valxenxy.jpg','pexels-pixabay-210019',NULL,13),(48,'RentalCar/Car/z54hgqysltl5id3x5w2g','http://res.cloudinary.com/datrzbogl/image/upload/v1722424635/RentalCar/Car/z54hgqysltl5id3x5w2g.jpg','pexels-mikebirdy-170811',NULL,13),(49,'RentalCar/Car/wgmajwl8bgaamrvvwam3','http://res.cloudinary.com/datrzbogl/image/upload/v1722424639/RentalCar/Car/wgmajwl8bgaamrvvwam3.jpg','pexels-thuanymarcante-1805053',NULL,13),(50,'RentalCar/Car/rmmhudfzniejmqxkulw2','http://res.cloudinary.com/datrzbogl/image/upload/v1722424642/RentalCar/Car/rmmhudfzniejmqxkulw2.jpg','pexels-lynxexotics-3802510',NULL,13),(51,'RentalCar/Car/oo4ex6pkixxsl5pmc58s','http://res.cloudinary.com/datrzbogl/image/upload/v1722425441/RentalCar/Car/oo4ex6pkixxsl5pmc58s.jpg','pexels-nordic-overdrive-202768-627678',NULL,14),(52,'RentalCar/Car/cwrtcijyb8o8ijvwwhbx','http://res.cloudinary.com/datrzbogl/image/upload/v1722425444/RentalCar/Car/cwrtcijyb8o8ijvwwhbx.jpg','pexels-mikebirdy-120049',NULL,14),(53,'RentalCar/Car/g6wlbv6ocqewsorioqg1','http://res.cloudinary.com/datrzbogl/image/upload/v1722425446/RentalCar/Car/g6wlbv6ocqewsorioqg1.jpg','pexels-tdcat-70912',NULL,14),(54,'RentalCar/Car/upouogmjafg5jx2xiei7','http://res.cloudinary.com/datrzbogl/image/upload/v1722425448/RentalCar/Car/upouogmjafg5jx2xiei7.jpg','pexels-alexgtacar-745150-1592384',NULL,14),(55,'RentalCar/Car/rmlig2y3fkvkmse5qnss','http://res.cloudinary.com/datrzbogl/image/upload/v1722425884/RentalCar/Car/rmlig2y3fkvkmse5qnss.jpg','pexels-mikebirdy-1335077',NULL,15),(56,'RentalCar/Car/jquwyqcgxh0rrdrdlrtj','http://res.cloudinary.com/datrzbogl/image/upload/v1722425887/RentalCar/Car/jquwyqcgxh0rrdrdlrtj.jpg','pexels-lynxexotics-3802510',NULL,15),(57,'RentalCar/Car/luyed2xe5vdcexykd09l','http://res.cloudinary.com/datrzbogl/image/upload/v1722425890/RentalCar/Car/luyed2xe5vdcexykd09l.jpg','pexels-avinashpatel-445399',NULL,15),(58,'RentalCar/Car/t580i1dpu5hiptu9w9np','http://res.cloudinary.com/datrzbogl/image/upload/v1722425893/RentalCar/Car/t580i1dpu5hiptu9w9np.jpg','pexels-nordic-overdrive-202768-627678',NULL,15),(59,'RentalCar/Car/ylwokuc5f4cxy076rhsg','http://res.cloudinary.com/datrzbogl/image/upload/v1722426192/RentalCar/Car/ylwokuc5f4cxy076rhsg.jpg','pexels-mikebirdy-1335077',NULL,16),(60,'RentalCar/Car/jflzxobblzz1u4opdba1','http://res.cloudinary.com/datrzbogl/image/upload/v1722426195/RentalCar/Car/jflzxobblzz1u4opdba1.jpg','pexels-aaronmcurtis-119435',NULL,16),(61,'RentalCar/Car/qwo2xncxzmoc8lgw9gjw','http://res.cloudinary.com/datrzbogl/image/upload/v1722426198/RentalCar/Car/qwo2xncxzmoc8lgw9gjw.jpg','pexels-nordic-overdrive-202768-627678',NULL,16),(62,'RentalCar/Car/ugduk9b2vvivuqiezxnf','http://res.cloudinary.com/datrzbogl/image/upload/v1722426202/RentalCar/Car/ugduk9b2vvivuqiezxnf.jpg','pexels-mikebirdy-120049',NULL,16),(63,'RentalCar/Car/kujsdp9fhx0hnqgkml6v','http://res.cloudinary.com/datrzbogl/image/upload/v1722426475/RentalCar/Car/kujsdp9fhx0hnqgkml6v.jpg','pexels-adrian-dorobantu-989175-2127733',NULL,17),(64,'RentalCar/Car/nlae5s8sjhbf78exejma','http://res.cloudinary.com/datrzbogl/image/upload/v1722426477/RentalCar/Car/nlae5s8sjhbf78exejma.jpg','pexels-lynxexotics-3802510',NULL,17),(65,'RentalCar/Car/jplv1qnts1728bj3s066','http://res.cloudinary.com/datrzbogl/image/upload/v1722426480/RentalCar/Car/jplv1qnts1728bj3s066.jpg','pexels-zvolskiy-1637859',NULL,17),(66,'RentalCar/Car/x4lnoqo9kdk7vtxshtzy','http://res.cloudinary.com/datrzbogl/image/upload/v1722426483/RentalCar/Car/x4lnoqo9kdk7vtxshtzy.jpg','pexels-mikebirdy-244206',NULL,17),(67,'RentalCar/Car/kbks9ycmxcyobi0ulmz1','http://res.cloudinary.com/datrzbogl/image/upload/v1722426715/RentalCar/Car/kbks9ycmxcyobi0ulmz1.jpg','pexels-mikebirdy-1335077',NULL,18),(68,'RentalCar/Car/acnlgmtjklx7yvgvrqej','http://res.cloudinary.com/datrzbogl/image/upload/v1722426719/RentalCar/Car/acnlgmtjklx7yvgvrqej.jpg','pexels-thuanymarcante-1805053',NULL,18),(69,'RentalCar/Car/sxnnm9lacmdfci7cs7kv','http://res.cloudinary.com/datrzbogl/image/upload/v1722426722/RentalCar/Car/sxnnm9lacmdfci7cs7kv.jpg','pexels-nordic-overdrive-202768-627678',NULL,18),(70,'RentalCar/Car/ec8aadgzx6qqgd0i0kba','http://res.cloudinary.com/datrzbogl/image/upload/v1722426725/RentalCar/Car/ec8aadgzx6qqgd0i0kba.jpg','pexels-mikebirdy-120049',NULL,18),(71,'RentalCar/Car/vfqmbbvxsha1ykaclav5','http://res.cloudinary.com/datrzbogl/image/upload/v1722426880/RentalCar/Car/vfqmbbvxsha1ykaclav5.jpg','pexels-adrian-dorobantu-989175-2127733',NULL,19),(72,'RentalCar/Car/kxbkcu0nuhcnc49cfg8u','http://res.cloudinary.com/datrzbogl/image/upload/v1722426884/RentalCar/Car/kxbkcu0nuhcnc49cfg8u.jpg','pexels-aaronmcurtis-119435',NULL,19),(73,'RentalCar/Car/esetzulorf72wkjbqxkq','http://res.cloudinary.com/datrzbogl/image/upload/v1722426886/RentalCar/Car/esetzulorf72wkjbqxkq.jpg','pexels-lynxexotics-3802510',NULL,19),(74,'RentalCar/Car/gcvqqllq813ochee0gvv','http://res.cloudinary.com/datrzbogl/image/upload/v1722426888/RentalCar/Car/gcvqqllq813ochee0gvv.jpg','pexels-christian-9-454702-1164778',NULL,19),(75,'RentalCar/Car/z3qqwnqyocccvjyzpyug','http://res.cloudinary.com/datrzbogl/image/upload/v1722427219/RentalCar/Car/z3qqwnqyocccvjyzpyug.jpg','pexels-alexgtacar-745150-1592384',NULL,20),(76,'RentalCar/Car/zyqhxjovjmlc6w1lheox','http://res.cloudinary.com/datrzbogl/image/upload/v1722427222/RentalCar/Car/zyqhxjovjmlc6w1lheox.jpg','pexels-lynxexotics-3802510',NULL,20),(77,'RentalCar/Car/yrdihgdjshgex9ra7mtn','http://res.cloudinary.com/datrzbogl/image/upload/v1722427225/RentalCar/Car/yrdihgdjshgex9ra7mtn.jpg','pexels-zvolskiy-1637859',NULL,20),(78,'RentalCar/Car/qosxkhg4hkqh9mkkvizi','http://res.cloudinary.com/datrzbogl/image/upload/v1722427229/RentalCar/Car/qosxkhg4hkqh9mkkvizi.jpg','pexels-mikebirdy-244206',NULL,20),(79,'RentalCar/Car/xakos1fi17wtgodsl4hx','http://res.cloudinary.com/datrzbogl/image/upload/v1722427536/RentalCar/Car/xakos1fi17wtgodsl4hx.jpg','pexels-adrian-dorobantu-989175-2127733',NULL,21),(80,'RentalCar/Car/qeetzi3wmgcaw5dxi83i','http://res.cloudinary.com/datrzbogl/image/upload/v1722427539/RentalCar/Car/qeetzi3wmgcaw5dxi83i.jpg','pexels-thuanymarcante-1805053',NULL,21),(81,'RentalCar/Car/nxgavnprbbjkgsz4kyhz','http://res.cloudinary.com/datrzbogl/image/upload/v1722427542/RentalCar/Car/nxgavnprbbjkgsz4kyhz.jpg','pexels-lynxexotics-3802510',NULL,21),(82,'RentalCar/Car/nmhqnxydzdbyc4gwczbn','http://res.cloudinary.com/datrzbogl/image/upload/v1722427545/RentalCar/Car/nmhqnxydzdbyc4gwczbn.jpg','pexels-christian-9-454702-1164778',NULL,21),(83,'RentalCar/Car/aw17xx72fepsjnpncejw','http://res.cloudinary.com/datrzbogl/image/upload/v1722427908/RentalCar/Car/aw17xx72fepsjnpncejw.jpg','pexels-adrian-dorobantu-989175-2127733',NULL,22),(84,'RentalCar/Car/o4ouoxxwotormpzaomjs','http://res.cloudinary.com/datrzbogl/image/upload/v1722427911/RentalCar/Car/o4ouoxxwotormpzaomjs.jpg','pexels-christian-9-454702-1164778',NULL,22),(85,'RentalCar/Car/zzbeyinhwfx1uygezgc6','http://res.cloudinary.com/datrzbogl/image/upload/v1722427915/RentalCar/Car/zzbeyinhwfx1uygezgc6.jpg','pexels-mikebirdy-112460',NULL,22),(86,'RentalCar/Car/qfckxu7reibbzv8zshlj','http://res.cloudinary.com/datrzbogl/image/upload/v1722427917/RentalCar/Car/qfckxu7reibbzv8zshlj.jpg','pexels-mikebirdy-170811',NULL,22),(87,'RentalCar/Car/ewv6j9ibe7gnn3rvu3zs','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723040954/RentalCar/Car/ewv6j9ibe7gnn3rvu3zs.jpg',NULL,'2024-08-07 21:29:16.472000',23),(88,'RentalCar/Car/cmotjgziwrzbrnl8klef','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723041242/RentalCar/Car/cmotjgziwrzbrnl8klef.jpg',NULL,'2024-08-07 21:29:17.698000',23),(89,'RentalCar/Car/lgejwp8o6dvkairafrqw','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723040957/RentalCar/Car/lgejwp8o6dvkairafrqw.jpg',NULL,'2024-08-07 21:29:18.950000',23),(90,'RentalCar/Car/rgl0us3eqxjut7ro9xhq','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723041245/RentalCar/Car/rgl0us3eqxjut7ro9xhq.jpg',NULL,'2024-08-07 21:29:20.069000',23),(91,'RentalCar/Car/rgl0us3eqxjut7ro9xhq','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723041245/RentalCar/Car/rgl0us3eqxjut7ro9xhq.jpg','pexels-mikebirdy-170811','2024-08-17 22:29:18.463000',NULL),(92,'RentalCar/Car/rgl0us3eqxjut7ro9xhq','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723041245/RentalCar/Car/rgl0us3eqxjut7ro9xhq.jpg','pexels-mikebirdy-170811','2024-08-17 22:32:27.915000',NULL),(93,'RentalCar/Car/rgl0us3eqxjut7ro9xhq','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723041245/RentalCar/Car/rgl0us3eqxjut7ro9xhq.jpg','pexels-mikebirdy-170811','2024-08-17 22:33:47.034000',NULL),(94,'RentalCar/Car/rgl0us3eqxjut7ro9xhq','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723041245/RentalCar/Car/rgl0us3eqxjut7ro9xhq.jpg','pexels-mikebirdy-170811','2024-08-17 22:42:01.635000',NULL),(95,'RentalCar/Car/rgl0us3eqxjut7ro9xhq','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723041245/RentalCar/Car/rgl0us3eqxjut7ro9xhq.jpg','pexels-mikebirdy-170811','2024-08-17 22:47:13.509000',NULL),(96,'RentalCar/Car/rgl0us3eqxjut7ro9xhq','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723041245/RentalCar/Car/rgl0us3eqxjut7ro9xhq.jpg','pexels-mikebirdy-170811','2024-08-17 22:53:21.449000',NULL),(97,'RentalCar/Car/rgl0us3eqxjut7ro9xhq','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723041245/RentalCar/Car/rgl0us3eqxjut7ro9xhq.jpg','pexels-mikebirdy-170811','2024-08-17 22:57:28.819000',NULL),(98,'RentalCar/Car/hvhni0lrijkqa9behzdy','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723912085/RentalCar/Car/hvhni0lrijkqa9behzdy.png',NULL,'2024-08-17 23:26:06.842000',24),(99,'RentalCar/Car/qhepyqerbeozydlttrn5','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723912088/RentalCar/Car/qhepyqerbeozydlttrn5.png',NULL,'2024-08-17 23:26:09.689000',24),(100,'RentalCar/Car/watawtxkzlqbtmx1becw','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723912090/RentalCar/Car/watawtxkzlqbtmx1becw.png',NULL,'2024-08-17 23:26:11.718000',24),(101,'RentalCar/Car/thyfb5nh7cnofwdfd08h','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723912093/RentalCar/Car/thyfb5nh7cnofwdfd08h.png',NULL,'2024-08-17 23:26:13.399000',24),(102,'','','Default Avatar','2024-08-18 07:39:36.363000',NULL),(103,'','','Default Avatar','2024-08-18 07:47:16.695000',NULL),(104,'','','Default Avatar','2024-08-18 22:43:03.027000',NULL),(105,'RentalCar/Car/ome2noxws6tr8xpkd84g','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723996283/RentalCar/Car/ome2noxws6tr8xpkd84g.png',NULL,'2024-08-18 22:50:09.786000',25),(106,'RentalCar/Car/kh2ngkdjlkpdyb4rwf7d','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723996212/RentalCar/Car/kh2ngkdjlkpdyb4rwf7d.png',NULL,'2024-08-18 22:50:11.813000',25),(107,'RentalCar/Car/aezra6672gayffvdvn7o','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723996214/RentalCar/Car/aezra6672gayffvdvn7o.png',NULL,'2024-08-18 22:50:14.119000',25),(108,'RentalCar/Car/q9smtx6g20xv4gy3jdhq','http://res.cloudinary.com/dtcokd0bb/image/upload/v1723996216/RentalCar/Car/q9smtx6g20xv4gy3jdhq.png',NULL,'2024-08-18 22:50:16.441000',25),(109,'','','Default Avatar','2024-08-19 15:44:42.514000',NULL),(110,'RentalCar/Car/iyk8cf5mm2gticfzipsl','http://res.cloudinary.com/dtcokd0bb/image/upload/v1724057889/RentalCar/Car/iyk8cf5mm2gticfzipsl.png',NULL,'2024-08-19 15:58:09.236000',26),(111,'RentalCar/Car/os2t3etfrvxyuf4ncn9y','http://res.cloudinary.com/dtcokd0bb/image/upload/v1724057892/RentalCar/Car/os2t3etfrvxyuf4ncn9y.png',NULL,'2024-08-19 15:58:12.165000',26),(112,'RentalCar/Car/nbjkridg3srfsrvcmxxu','http://res.cloudinary.com/dtcokd0bb/image/upload/v1724057895/RentalCar/Car/nbjkridg3srfsrvcmxxu.png',NULL,'2024-08-19 15:58:15.174000',26),(113,'RentalCar/Car/flngyqxgqlw3zotgswl5','http://res.cloudinary.com/dtcokd0bb/image/upload/v1724057898/RentalCar/Car/flngyqxgqlw3zotgswl5.png',NULL,'2024-08-19 15:58:18.098000',26),(114,'','','Default Avatar','2024-08-19 16:04:52.253000',NULL),(115,'RentalCar/Car/mfldhap5sm4ingqwl2vf','http://res.cloudinary.com/dtcokd0bb/image/upload/v1724058661/RentalCar/Car/mfldhap5sm4ingqwl2vf.jpg',NULL,'2024-08-19 16:11:00.677000',27),(116,'RentalCar/Car/dhbzx0cthnf0eono62pa','http://res.cloudinary.com/dtcokd0bb/image/upload/v1724058662/RentalCar/Car/dhbzx0cthnf0eono62pa.jpg',NULL,'2024-08-19 16:11:02.004000',27),(117,'RentalCar/Car/mzlvog1gnnzspzkdhjyc','http://res.cloudinary.com/dtcokd0bb/image/upload/v1724058663/RentalCar/Car/mzlvog1gnnzspzkdhjyc.jpg',NULL,'2024-08-19 16:11:03.126000',27),(118,'RentalCar/Car/zx7fby4wiqi8ewwpmhib','http://res.cloudinary.com/dtcokd0bb/image/upload/v1724058665/RentalCar/Car/zx7fby4wiqi8ewwpmhib.jpg',NULL,'2024-08-19 16:11:04.363000',27);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `permission_id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER',NULL),(2,'ROLE_ADMIN',NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_permissions`
--

DROP TABLE IF EXISTS `roles_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_permissions` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `FKbx9r9uw77p58gsq4mus0mec0o` (`permission_id`),
  CONSTRAINT `FKbx9r9uw77p58gsq4mus0mec0o` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`permission_id`),
  CONSTRAINT `FKqi9odri6c1o81vjox54eedwyh` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_permissions`
--

LOCK TABLES `roles_permissions` WRITE;
/*!40000 ALTER TABLE `roles_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `booking_id` int DEFAULT NULL,
  `car_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `transaction_type` enum('OFFSET_FINAL_PAYMENT','PAY_DEPOSIT','RECEIVE_DEPOSIT','REFUND_DEPOSIT','TOP_UP','WITHDRAW') DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `FKqwv7rmvc8va8rep7piikrojds` (`user_id`),
  CONSTRAINT `FKqwv7rmvc8va8rep7piikrojds` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `transactions_chk_1` CHECK ((`transaction_type` between 0 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,21,21,'Vinfast VF3',NULL,'PAY_DEPOSIT',7),(2,30,32,'Vinfast VF9',NULL,'PAY_DEPOSIT',7),(3,-15,25,'Vinfast VF9','2024-08-08 15:55:44.788000','PAY_DEPOSIT',NULL),(4,15,25,'Vinfast VF9','2024-08-08 15:55:44.797000','RECEIVE_DEPOSIT',NULL),(5,-15,26,'Vinfast VF9','2024-08-08 15:58:45.867000','PAY_DEPOSIT',7),(6,15,26,'Vinfast VF9','2024-08-08 15:58:45.873000','RECEIVE_DEPOSIT',1),(7,-15,26,'Vinfast VF9','2024-08-08 19:59:54.150000','REFUND_DEPOSIT',1),(8,15,26,'Vinfast VF9','2024-08-08 19:59:54.207000','REFUND_DEPOSIT',7),(9,-15,27,'Vinfast VF9','2024-08-09 10:24:19.179000','PAY_DEPOSIT',7),(10,15,27,'Vinfast VF9','2024-08-09 10:24:19.200000','RECEIVE_DEPOSIT',1),(11,-15,28,'Vinfast VF9','2024-08-09 10:26:12.590000','PAY_DEPOSIT',7),(12,15,28,'Vinfast VF9','2024-08-09 10:26:12.592000','RECEIVE_DEPOSIT',1),(13,-15,29,'Vinfast VF9','2024-08-14 16:00:44.594000','PAY_DEPOSIT',7),(14,15,29,'Vinfast VF9','2024-08-14 16:00:44.618000','RECEIVE_DEPOSIT',12),(15,-15,30,'Vinfast VF9','2024-08-14 23:04:03.278000','PAY_DEPOSIT',7),(16,15,30,'Vinfast VF9','2024-08-14 23:04:03.293000','RECEIVE_DEPOSIT',12),(17,-60,31,'Hyundai i10','2024-08-14 23:07:00.496000','PAY_DEPOSIT',7),(18,60,31,'Hyundai i10','2024-08-14 23:07:00.499000','RECEIVE_DEPOSIT',1),(19,-75,32,'Nissan Altima','2024-08-15 08:47:01.715000','PAY_DEPOSIT',7),(20,75,32,'Nissan Altima','2024-08-15 08:47:01.722000','RECEIVE_DEPOSIT',16),(21,-15,33,'Vinfast VF9','2024-08-15 08:47:41.406000','PAY_DEPOSIT',7),(22,15,33,'Vinfast VF9','2024-08-15 08:47:41.408000','RECEIVE_DEPOSIT',12),(23,-15,34,'Vinfast VF9','2024-08-16 19:49:49.115000','PAY_DEPOSIT',7),(24,15,34,'Vinfast VF9','2024-08-16 19:49:49.133000','RECEIVE_DEPOSIT',12),(25,-72.4,35,'Subaru Legacy','2024-08-17 23:37:39.796000','PAY_DEPOSIT',7),(26,72.4,35,'Subaru Legacy','2024-08-17 23:37:39.802000','RECEIVE_DEPOSIT',1),(27,-15,36,'Ford Fiesta','2024-08-17 23:44:01.618000','PAY_DEPOSIT',7),(28,15,36,'Ford Fiesta','2024-08-17 23:44:01.626000','RECEIVE_DEPOSIT',1),(29,-15,36,'Ford Fiesta','2024-08-17 23:45:59.677000','REFUND_DEPOSIT',1),(30,15,36,'Ford Fiesta','2024-08-17 23:45:59.688000','REFUND_DEPOSIT',7),(31,-15,37,'Vinfast VF9','2024-08-18 08:05:43.191000','PAY_DEPOSIT',7),(32,15,37,'Vinfast VF9','2024-08-18 08:05:43.204000','RECEIVE_DEPOSIT',1),(33,-15,38,'Vinfast VF9','2024-08-18 08:09:04.696000','PAY_DEPOSIT',7),(34,15,38,'Vinfast VF9','2024-08-18 08:09:04.703000','RECEIVE_DEPOSIT',1),(35,-15,39,'Vinfast VF9','2024-08-18 08:10:32.149000','PAY_DEPOSIT',7),(36,15,39,'Vinfast VF9','2024-08-18 08:10:32.155000','RECEIVE_DEPOSIT',1),(37,-15,40,'Vinfast VF9','2024-08-18 08:12:44.822000','PAY_DEPOSIT',7),(38,15,40,'Vinfast VF9','2024-08-18 08:12:44.828000','RECEIVE_DEPOSIT',1),(39,-15,41,'Vinfast VF9','2024-08-18 08:21:14.367000','PAY_DEPOSIT',7),(40,15,41,'Vinfast VF9','2024-08-18 08:21:14.371000','RECEIVE_DEPOSIT',1),(41,-15,42,'Vinfast VF9','2024-08-18 08:48:19.467000','PAY_DEPOSIT',7),(42,15,42,'Vinfast VF9','2024-08-18 08:48:19.485000','RECEIVE_DEPOSIT',1),(43,-15,43,'Subaru Legacy','2024-08-18 23:04:36.597000','PAY_DEPOSIT',7),(44,15,43,'Subaru Legacy','2024-08-18 23:04:36.616000','RECEIVE_DEPOSIT',1),(45,-13.2,43,'Subaru Legacy','2024-08-18 23:06:05.159000','OFFSET_FINAL_PAYMENT',1),(46,13.2,43,'Subaru Legacy','2024-08-18 23:06:05.165000','OFFSET_FINAL_PAYMENT',7),(47,-15,44,'Ford Fiesta','2024-08-18 23:14:00.417000','PAY_DEPOSIT',7),(48,15,44,'Ford Fiesta','2024-08-18 23:14:00.428000','RECEIVE_DEPOSIT',1),(49,-15,44,'Ford Fiesta','2024-08-18 23:14:13.053000','REFUND_DEPOSIT',1),(50,15,44,'Ford Fiesta','2024-08-18 23:14:13.057000','REFUND_DEPOSIT',7),(51,-17,45,'Vinfast Vfe34','2024-08-19 16:16:09.802000','PAY_DEPOSIT',7),(52,17,45,'Vinfast Vfe34','2024-08-19 16:16:09.821000','RECEIVE_DEPOSIT',1),(53,-16.8,45,'Vinfast Vfe34','2024-08-19 16:22:13.994000','OFFSET_FINAL_PAYMENT',1),(54,16.8,45,'Vinfast Vfe34','2024-08-19 16:22:14.003000','OFFSET_FINAL_PAYMENT',7);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_infors`
--

DROP TABLE IF EXISTS `user_infors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_infors` (
  `user_infor_id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `driving_license` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `national_id` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `user_infor_type` enum('DRIVER','RENTER') DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `booking_id` int DEFAULT NULL,
  PRIMARY KEY (`user_infor_id`),
  KEY `FKccjdvroir5ad6gecm8hri42ec` (`booking_id`),
  CONSTRAINT `FKccjdvroir5ad6gecm8hri42ec` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_infors`
--

LOCK TABLES `user_infors` WRITE;
/*!40000 ALTER TABLE `user_infors` DISABLE KEYS */;
INSERT INTO `user_infors` VALUES (1,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','RENTER','Thế Hùng',1),(2,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','quang@gmail.com','43456','34653546','DRIVER','Việt Quang',1),(3,'8,Ngọc Khánh,Ba Đình,Hà Nội','2001-07-23','B2','phuong99@gmail.com','704','0987345612','RENTER','Đỗ Công Thanh Phương',2),(4,'Vân Động, Lục Nam,Bắc Giang','1999-01-01','B2','quang@gmail.com','704','0334653546','DRIVER','Việt Quang',2),(5,'8,Ngọc Khánh,Ba Đình,Hà Nội','2001-07-23','B2','phuong99@gmail.com','704','0987345612','RENTER','Đỗ Công Thanh Phương',3),(6,'10,Thanh Xuân,Hoàn Kiếm,Hà Nội','1999-01-01','B1','vietnam123@gmail.com','704','0336452729','DRIVER','Việt Nam',3),(7,'8,Ngọc Khánh,Ba Đình,Hà Nội','2001-07-23','B2','phuong99@gmail.com','704','0987345612','RENTER','Đỗ Công Thanh Phương',4),(8,'10,Cầu Diễn,Bắc Từ Liêm,Hà Nội','1999-01-01','B1','haihoa111@gmail.com','704','0336452729','DRIVER','Hải Hòa',4),(9,'15,Phú Thọ Hòa,Tân Phú,Hồ Chí Minh','2003-04-19','B1','huynq1122@gmail.com','704','0839204756','RENTER','Nguyễn Quang Huy',5),(10,'10,Cầu Diễn,Bắc Từ Liêm,Hà Nội','1999-01-01','B1','haihoa111@gmail.com','704','0336452729','DRIVER','Hải Hòa',5),(11,'15,Phú Thọ Hòa,Tân Phú,Hồ Chí Minh','2003-04-19','B1','huynq1122@gmail.com','704','0839204756','RENTER','Nguyễn Quang Huy',6),(12,'90,Cầu Diễn,Nam Từ Liêm,Hà Nội','1999-01-01','B2','xuanduong999@gmail.com','704','033347623','DRIVER','Xuân Dương',6),(13,'15,Phú Thọ Hòa,Tân Phú,Hồ Chí Minh','2003-04-19','B1','huynq1122@gmail.com','704','0839204756','RENTER','Nguyễn Quang Huy',7),(14,'90,Phú Đô,Nam Từ Liêm,Hà Nội','1999-01-01','B1','xuanminh@gmail.com','704','033333223','DRIVER','Xuân Minh',7),(15,'15,Phú Thọ Hòa,Tân Phú,Hồ Chí Minh','2003-04-19','B1','huynq1122@gmail.com','704','0839204756','RENTER','Nguyễn Quang Huy',8),(16,'10,Thanh Xuân,Nam Từ Liêm,Hà Nội','1999-01-01','B1','hau@gmail.com','704','0333423223','DRIVER','Hà Hậu',8),(17,'15,Phú Thọ Hòa,Tân Phú,Hồ Chí Minh','2003-04-19','B1','huynq1122@gmail.com','704','0839204756','RENTER','Nguyễn Quang Huy',9),(18,'10,Thanh Xuân,Nam Từ Liêm,Hà Nội','1999-01-01','B1','hanam@gmail.com','704','0333423223','DRIVER','Hà Nam',9),(19,'15,Phú Thọ Hòa,Tân Phú,Hồ Chí Minh','2003-04-19','B1','huynq1122@gmail.com','704','0839204756','RENTER','Nguyễn Quang Huy',10),(20,'10,Thanh Xuân,Nam Từ Liêm,Hà Nội','1999-01-01','B1','habac@gmail.com','704','0333423223','DRIVER','Hà Bắc',10),(21,'15,Phú Thọ Hòa,Tân Phú,Hồ Chí Minh','2003-04-19','B1','huynq1122@gmail.com','704','0839204756','RENTER','Nguyễn Quang Huy',11),(22,'10,Thanh Xuân,Nam Từ Liêm,Hà Nội','1999-01-01','B1','huong@gmail.com','704','0233423223','DRIVER','Thu Hường',11),(23,'15,Phú Thọ Hòa,Tân Phú,Hồ Chí Minh','2003-04-19','B1','huynq1122@gmail.com','704','0839204756','RENTER','Nguyễn Quang Huy',12),(24,'10,Thanh Xuân,Nam Từ Liêm,Hà Nội','1999-01-01','B1','huong@gmail.com','704','0233423223','DRIVER','Thu Hường',12),(25,'15,Phú Thọ Hòa,Tân Phú,Hồ Chí Minh','2003-04-19','B1','huynq1122@gmail.com','704','0839204756','RENTER','Nguyễn Quang Huy',13),(26,'10,Thanh Xuân,Nam Từ Liêm,Hà Nội','1999-01-01','B1','huong@gmail.com','704','0233423223','DRIVER','Thu Hường',13),(27,'8,Ngọc Khánh,Ba Đình,Hà Nội','2001-07-23','B2','phuong99@gmail.com','704','0987345612','RENTER','Đỗ Công Thanh Phương',14),(28,'10,Thanh Xuân,Nam Từ Liêm,Hà Nội','1999-01-01','B1','hien@gmail.com','704','0233423223','DRIVER','Thu Hiền',14),(29,'8,Ngọc Khánh,Ba Đình,Hà Nội','2001-07-23','B2','phuong99@gmail.com','704','0987345612','RENTER','Đỗ Công Thanh Phương',15),(30,'10,Thanh Xuân,Nam Từ Liêm,Hà Nội','1999-01-01','B1','hien@gmail.com','704','0233423223','DRIVER','Thu Hiền',15),(31,'8,Ngọc Khánh,Ba Đình,Hà Nội','2001-07-23','B2','phuong99@gmail.com','704','0987345612','RENTER','Đỗ Công Thanh Phương',16),(32,'10,Thanh Xuân,Nam Từ Liêm,Hà Nội','1999-01-01','B1','hien1@gmail.com','704','0233423223','DRIVER','Thu Hiền1',16),(33,'8,Ngọc Khánh,Ba Đình,Hà Nội','2001-07-23','B2','phuong99@gmail.com','704','0987345612','RENTER','Đỗ Công Thanh Phương',17),(34,'10,Thanh Xuân,Nam Từ Liêm,Hà Nội','1999-01-01','B1','hien1@gmail.com','704','0233423223','DRIVER','Thu Hiền1',17),(35,'25,Đa Kao,1,Hồ Chí Minh','2000-04-20','B1','namnh123@gmail.com','704','0978153624','RENTER','Nguyễn Hải Nam',18),(36,'10,Thanh Xuân,Nam Từ Liêm,Hà Nội','1999-01-01','B1','hoangha@gmail.com','704','0233423223','DRIVER','Hoàng Hà',18),(37,'25,Đa Kao,1,Hồ Chí Minh','2000-04-20','B1','namnh123@gmail.com','704','0978153624','RENTER','Nguyễn Hải Nam',19),(38,'10,Thanh Xuân,Nam Từ Liêm,Hà Nội','1999-01-01','B1','hoangha@gmail.com','704','0233423223','DRIVER','Hoàng Hà',19),(39,'25,Đa Kao,1,Hồ Chí Minh','2000-04-20','B1','namnh123@gmail.com','704','0978153624','RENTER','Nguyễn Hải Nam',20),(40,'10,Thanh Xuân,Nam Từ Liêm,Hà Nội','1999-01-01','B1','hoangha@gmail.com','704','0233423223','DRIVER','Hoàng Hà',20),(41,'25,Đa Kao,1,Hồ Chí Minh','2000-04-20','B1','namnh123@gmail.com','704','0978153624','RENTER','Nguyễn Hải Nam',21),(42,'10,Thanh Xuân,Nam Từ Liêm,Hà Nội','1999-01-01','B1','hoangha@gmail.com','704','0233423223','DRIVER','Hoàng Hà',21),(43,'20,Hòa Thuận Đông,Hải Châu,Đà Nẵng','2002-01-29','B1','lam1122@gmail.com','704','0568102373','DRIVER','Phạm Thành Lâm',22),(44,'20,Hòa Thuận Đông,Hải Châu,Đà Nẵng','2002-01-29','B1','lam1122@gmail.com','704','0568102373','RENTER','Phạm Thành Lâm',23),(45,'10,Thanh Xuân,Nam Từ Liêm,Hà Nội','1999-01-01','B1','hoangha1@gmail.com','704','0233423223','DRIVER','Hoàng Hà1',23),(46,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','RENTER','Thế Hùng',24),(47,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','quang@gmail.com','43456','34653546','DRIVER','Việt Quang',24),(48,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','RENTER','Thế Hùng',25),(49,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','quang@gmail.com','43456','34653546','DRIVER','Việt Quang',25),(50,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','RENTER','Thế Hùng',26),(51,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','quang@gmail.com','43456','34653546','DRIVER','Việt Quang',26),(52,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','RENTER','Thế Hùng',27),(53,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','quang@gmail.com','43456','34653546','DRIVER','Việt Quang',27),(54,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','RENTER','Thế Hùng',28),(55,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','quang@gmail.com','43456','34653546','DRIVER','Việt Quang',28),(56,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','RENTER','Thế Hùng',29),(57,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','quang@gmail.com','43456','34653546','DRIVER','Việt Quang',29),(58,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','RENTER','Thế Hùng',30),(59,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','quang@gmail.com','43456','34653546','DRIVER','Việt Quang',30),(60,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','RENTER','Thế Hùng',31),(61,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','quang@gmail.com','43456','34653546','DRIVER','Việt Quang',31),(62,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','RENTER','Thế Hùng',32),(63,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','quang@gmail.com','43456','34653546','DRIVER','Việt Quang',32),(64,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','RENTER','Thế Hùng',33),(65,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','quang@gmail.com','43456','34653546','DRIVER','Việt Quang',33),(66,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','RENTER','Thế Hùng',34),(67,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','quang@gmail.com','43456','34653546','DRIVER','Việt Quang',34),(68,'3333, 333, 33, 3','2024-08-08','3','thithptquocgia2003@gmail.com','3','0839204756','RENTER','Phạm Đức Thông',35),(69,'3333, 333, 33, 3','2024-08-08','3','thithptquocgia2003@gmail.com','3','0839204756','DRIVER','Phạm Đức Thông',35),(70,'2222,222,222,22222','2024-07-01','22','thong@gmail.com','22','11111','RENTER','Phạm Đức Thông 1',36),(71,'11111, 1111, 111, 11','2024-07-30','11','thithptquocgia2003@gmail.com','11','0839204756','DRIVER','Phạm Đức Thông',36),(72,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','DRIVER','Thế Hùng',37),(73,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','DRIVER','Thế Hùng',38),(74,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','DRIVER','Thế Hùng',39),(75,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','DRIVER','Thế Hùng',40),(76,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','DRIVER','Thế Hùng',NULL),(77,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','RENTER','Thế Hùng',42),(78,'Vân Động, Lục Nam,Bắc Giang','2003-12-02','243908yh8','hung@gmail.com','42358y04u','42358904','DRIVER','Thế Hùng',42),(79,'15, Phú Thọ Hòa, Tân Phú, Hồ Chí Minh','2003-04-19','B1','thithptquocgia2003@gmail.com','123456','0839204756','RENTER','Phạm Đức Thông',43),(80,'15, Phú Thọ Hòa, Tân Phú, Hồ Chí Minh','2003-04-19','B1','thithptquocgia2003@gmail.com','123456','0839204756','DRIVER','Phạm Đức Thông',43),(81,'15, Phú Thọ Hòa, Tân Phú, Hồ Chí Minh','2003-04-19','B1','thithptquocgia2003@gmail.com','123456','0839204756','RENTER','Phạm Đức Thông',44),(82,'15, Phú Thọ Hòa, Tân Phú, Hồ Chí Minh','2003-04-19','B1','thithptquocgia2003@gmail.com','123456','0839204756','DRIVER','Phạm Đức Thông',44),(83,'15, Phú Thọ Hòa, Tân Phú, Hồ Chí Minh','2003-04-19','B1','thithptquocgia2003@gmail.com','123456','0839204756','RENTER','Phạm Đức Thông Upd',45),(84,'12, Minh Khai, Bắc Từ Liêm, Hà Nội','2024-08-15','1111','thong@gmail.com','1','1111','DRIVER','Huy',45);
/*!40000 ALTER TABLE `user_infors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `driving_license` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `wallet` double NOT NULL,
  `image_id` int DEFAULT NULL,
  `user_type` enum('CUSTOMER','OWNER') DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `national_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK94dj9ry3k3tmcsyg8eatp7vvn` (`image_id`),
  CONSTRAINT `FK17herqt2to4hyl5q5r5ogbxk9` FOREIGN KEY (`image_id`) REFERENCES `images` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'19,Ninh Hòa,Hoa Lư,Hà Nội','1996-09-14','2024-07-30 10:53:16.805000','A1','nguyenthiminh19111964@gmail.com',_binary '','VietNam','$2a$10$vIVnmlLXJGNexW/HHY6hz.Pj8CkWpyxmkHCjR8Rqga.BFm5TMgEwK','0865312974',NULL,100.2,22,'OWNER','Nguyễn Thị Minh','12334'),(7,'15,Phú Thọ Hòa,Tân Phú,Hồ Chí Minh','2003-04-19','2024-07-30 10:41:17.877000','B1','thithptquocgia2003@gmail.com',_binary '','VietNam','$2a$10$vIVnmlLXJGNexW/HHY6hz.Pj8CkWpyxmkHCjR8Rqga.BFm5TMgEwK','0839204756',NULL,99.8,15,'CUSTOMER','Phạm Đức Thông','123456'),(8,'25,Đa Kao,1,Hồ Chí Minh','2000-04-20','2024-07-30 10:42:32.987000','B1','admin@gmail.com',_binary '','VietNam','$2a$10$vIVnmlLXJGNexW/HHY6hz.Pj8CkWpyxmkHCjR8Rqga.BFm5TMgEwK','0978153624',NULL,100,16,'CUSTOMER','Nguyễn Hải Nam',NULL),(9,'8,Ngọc Khánh,Ba Đình,Hà Nội','2001-07-23','2024-07-30 10:43:48.378000','B2','phuong99@gmail.com',_binary '','VietNam','$2a$10$g1aYljEZ/3PvfVD1uop9ve9RcpQ9zu/.9NNCiSLl4s6.MLTJWAsq6','0987345612',NULL,100,17,'CUSTOMER','Đỗ Công Thanh Phương',NULL),(10,'20,Hòa Thuận Đông,Hải Châu,Đà Nẵng','2002-01-29','2024-07-30 10:45:02.949000','B1','lam1122@gmail.com',_binary '','VietNam','$2a$10$g1aYljEZ/3PvfVD1uop9ve9RcpQ9zu/.9NNCiSLl4s6.MLTJWAsq6','0568102373',NULL,100,18,'CUSTOMER','Phạm Thành Lâm',NULL),(11,'50,Trường Thi,Vinh,Nghệ An','2003-08-10','2024-07-30 10:46:14.247000','B1','thongdp@gmail.com',_binary '','VietNam','$2a$10$rb5A7Vbvo6yO3lkh4ZFgpuGrWIKLRRMvs5z2mDoZL1je9s3eucXg2','0987345612',NULL,100,19,'CUSTOMER','Phạm Đức Thông',NULL),(12,'12,Phước Long,Nha Trang,Đà Lạt','1990-08-12','2024-07-30 10:49:56.506000','B1','datmusic@gmail.com',_binary '','VietNam','$2a$10$WjIJl90h55l5svNiQ0x8xucNH23oqwJSoDHyqHJRZg6LepUnaNXdO','0709213845',NULL,100,20,'OWNER','Đỗ Duy Đạt',NULL),(13,'5,An Khánh,2,Hồ Chí Minh','1991-03-19','2024-07-30 10:52:01.929000','A1','ducmau@gmail.com',_binary '','VietNam','$2a$10$TWZAwHq4AdCUI.O7BfQgO.ya7LKBlpMUx44rVJBND37IDMOfYH.lq','0865312974',NULL,100,21,'OWNER','Phạm Minh Đức',NULL),(15,'10,Thanh Xuân,Thanh Xuân,Hà Nội','1999-09-19','2024-07-30 10:54:29.112000','A2','tucr7@gmail.com',_binary '','VietNam','$2a$10$GH8Cz4fd9TalYDV4fpLAd.sFzv56kCJSVl9YSUZtijbfyvfQG09xi','0885129347',NULL,100,23,'OWNER','Lê Anh Tú',NULL),(16,'19,Ninh Hòa,Vũ Thư,Thái Bình','1999-09-19','2024-07-30 10:57:26.143000','A2','hai1111@gmail.com',_binary '','VietNam','$2a$10$zK3.r6ZOTNXunwQ08Jz47uGUrh8GPZ8AKZsyOQ.x8SK7yh.P7n6uS','0875569347',NULL,100,24,'OWNER','Phạm Văn Hải',NULL),(17,'2,Thanh Xuân,Hoàng Mai,Hà Nội','2000-02-19','2024-07-30 10:59:32.963000','A1','do1922@gmail.com',_binary '','VietNam','$2a$10$s4PXkH9h1mRlnbgphcwugu8k4.haK6DNq9BtBFbwZwC.zjQf5b0Me','0878567345',NULL,100,25,'OWNER','Nguyễn Đông Đô',NULL),(18,NULL,NULL,'2024-08-17 22:29:18.388000',NULL,'docongthanhphuong@gmail.com',_binary '',NULL,'$2a$10$t2EJCLCcD05Ys59CJHoequ0IOefHaQ52Zqb/JO4ThbWvDLoEb.JKe','234859235',NULL,100,91,'CUSTOMER','Đỗ Công Thanh Phương',NULL),(19,NULL,NULL,'2024-08-17 22:32:27.836000',NULL,'huy@gmail.com',_binary '',NULL,'$2a$10$6V97mmLVnfBKh3.5pl1d3OA59gkJyQukdJiM6MMSmKf4tDnKnlItW','326547',NULL,100,92,'OWNER','Nguyễn Quang Huy',NULL),(20,NULL,NULL,'2024-08-17 22:33:46.950000',NULL,'huy1@gmail.com',_binary '',NULL,'$2a$10$KDq0AS1umLs7p7LzvNOsuO6c8k3hA2GAF911T3WoXF3kmrh6JFuiO','3125y90436',NULL,100,93,'OWNER','Nguyễn Quang Huy',NULL),(21,NULL,NULL,'2024-08-17 22:42:01.503000',NULL,'huy2@gmail.com',_binary '',NULL,'$2a$10$5rnV4VBse6HtvL0JPJajaOITrxY79SyZt6QJNKTQSGyo58BeC1nvC','326547',NULL,100,94,'OWNER','Nguyễn Quang Huy',NULL),(22,NULL,NULL,'2024-08-17 22:47:13.443000',NULL,'huy3@gmail.com',_binary '',NULL,'$2a$10$1.Gf.L6NeXQmRfCO5T/o9ujQWMHW1OZA8nZdeRmByKdhaK2fVSNOi','326547',NULL,100,95,'OWNER','Nguyễn Quang Huy',NULL),(23,NULL,NULL,'2024-08-17 22:53:21.364000',NULL,'huy4@gmail.com',_binary '',NULL,'$2a$10$9Bw1ppcNXKby6M8xIeDb..XUfRByjHtL/KDz6C8JXy3lgBLLEKd/e','235',NULL,100,96,'OWNER','Nguyễn Quang Huy',NULL),(24,'22,222,2222,22222','1972-10-01','2024-08-17 22:57:28.748000','22222','huy5@gmail.com',_binary '',NULL,'$2a$10$C20PHFRyBQH7f.ng14JIVuluAaeQBQG5pSMMh5XWEKXn7/Er6ngKe','12345','2024-08-17 23:12:49.507000',100,97,'OWNER','Nguyễn Quang Huy','22'),(25,NULL,NULL,'2024-08-18 07:39:36.265000',NULL,'phuong3@gmail.com',_binary '',NULL,'$2a$10$CZQbHaFm2UVqyoW0pUJRqOV0RgcpUxmTs6MqUwswE45DRpzuaKGLm','0123456789',NULL,100,102,'CUSTOMER','DoCongThanhPhuong',NULL),(26,NULL,NULL,'2024-08-18 07:47:16.599000',NULL,'phuong4@gmail.com',_binary '',NULL,'$2a$10$18M.uGOstwy87fTfwm5G0.9k9O09om9Ob8B43CyY6eOvPjsw74.qe','0123456789',NULL,100,103,'OWNER','DoCongThanhPhuong',NULL),(27,'5555, 555, 55, 5','2024-09-26','2024-08-18 22:43:02.946000','5555555','huy6@gmail.com',_binary '',NULL,'$2a$10$kWmMj2MMAFVIKxX44BeEre6r7mREbgduEzbtozS/TOOow6CRVu5bq','5555555 Udp','2024-08-18 22:43:52.567000',100,104,'OWNER','Nguyễn Quang Huy Upd','555555'),(28,'15, Minh Khai, Bắc Từ Liêm, Hà Nội','2024-09-06','2024-08-19 15:44:42.412000','222','huy7@gmail.com',_binary '',NULL,'$2a$10$9l/qQH9ICA0ajNuhDZx5oucrqFTueGBHFb7AlEPcadrv3g7lijblq','222222','2024-08-19 15:45:48.456000',0,109,'OWNER','Nguyễn Quang Huy Udp','22222'),(29,'16, Minh Khai, Bắc Từ Liêm, Hà Nội','2024-08-30','2024-08-19 16:04:52.139000','333333','huy8@gmail.com',_binary '',NULL,'$2a$10$y.CjuVI43pu5gvKa/O8gcu53Q/nn5J2qJIW9T1EheoPoQKFfAVr1y','33333','2024-08-19 16:05:24.614000',0,114,'OWNER','Nguyễn Quang Huy Upd2','333');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`),
  CONSTRAINT `FK2o0jvgh89lemvvo17cbqvdxaa` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKj6m8fwv7oqv74fcehir1a9ffy` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1),(1,2),(8,2);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-20 10:41:28
