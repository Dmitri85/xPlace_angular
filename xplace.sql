-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: xplace
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `country` text,
  `lat` text,
  `lng` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Sebewe','Indonesia','-8.4788','117.4788'),(2,'San Rafael','United States','38.068','-122.741'),(4,'Banho e Carvalhosa','Portugal','41.15','-8.5111'),(5,'Bugo','Philippines','8.50833','124.75944'),(6,'Avignon','France','43.9483','4.8089'),(7,'Samuhú','Argentina','-27.52116','-60.39167'),(8,'Lípa','Czech Republic','49.55418','15.54465'),(9,'Muroto-misakicho','Japan','33.28662','134.16832'),(10,'Loppi','Finland','60.71667','24.45'),(11,'Lovran','Croatia','45.29194','14.27417'),(12,'Porto Seguro','Brazil','-16.44972','-39.06472'),(13,'Hong Kong','Hong Kong','22.28552','114.15769'),(14,'Benavila','Portugal','39.1167','-7.8667'),(15,'Pringu','Indonesia','-8.0951','112.6843'),(16,'Non Suwan','Thailand','14.58044','102.59689'),(17,'Taiyangling','China','33.03648','106.00312'),(18,'Ashibetsu','Japan','43.50972','142.18556'),(19,'Irving','United States','32.8479','-96.974'),(21,'Nevers','France','46.9896','3.159'),(22,'Limonade','Haiti','19.66775','-72.12284'),(23,'Rancapanjang','Indonesia','-7.0267','108.0059'),(24,'Caucaguita','Venezuela','10.35782','-66.80252'),(25,'Ojos de Agua','Honduras','14.6','-87.93333'),(26,'Huerta Grande','Argentina','-31.07524','-64.49063'),(27,'Ayia Napa','Cyprus','34.98213','34.00183'),(28,'Songwon','South Korea','36.91556','127.13139'),(29,'Lingbei','China','27.59885','119.66064'),(30,'Värnamo','Sweden','57.186','14.04'),(31,'Askersund','Sweden','58.8799','14.9023'),(32,'Karonga','Malawi','-9.93333','33.93333'),(33,'Comodoro Rivadavia','Argentina','-45.86414','-67.49656'),(34,'Issad','Russia','60.06743','32.34331'),(35,'Patrocínio','Brazil','-18.94389','-46.9925'),(36,'Camgyai','China','28','86.3'),(37,'Huanglian','China','28.48833','107.00806'),(38,'Vratsa','Bulgaria','43.21','23.5625'),(39,'Rakhmanovo','Russia','55.74401','38.61124'),(40,'São Bento','Brazil','-2.69583','-44.82139'),(41,'Senj','Croatia','44.98944','14.90583'),(42,'Zhuji','China','29.71876','120.24233'),(43,'Makur','Micronesia','8.985','150.1275'),(44,'Tabuaço','Portugal','40.85','-8.05'),(45,'Zhourui','China','24.20432','116.55336'),(46,'La Rochelle','France','46.1667','-1.15'),(47,'Krasnoye','Russia','54.6068','85.3899'),(48,'Nunchía','Colombia','5.64056','-72.19861'),(49,'Dushk','Albania','40.72667','19.75722'),(50,'Barbalha','Brazil','-7.31111','-39.30417'),(51,'Los Angeles','United States','33.7866','-118.2987'),(52,'Sundbyberg','Sweden','59.3613','17.9711'),(53,'Honolulu','United States','21.3068','-157.8607'),(54,'Dadong','China','24.02943','113.06948'),(55,'Lavrica','Slovenia','46.00002','14.5573'),(56,'Casal da Anja','Portugal','39.8833','-8.9167'),(57,'San Francisco','Philippines','15.35566','120.84001'),(58,'Yanqul','Oman','23.59051','56.55008'),(59,'Norcasia','Colombia','5.57782','-74.88521'),(60,'Esquipulas','Guatemala','14.56667','-89.35'),(61,'Nowogard','Poland','53.67437','15.1163'),(62,'Salamá','Honduras','14.83333','-86.58333'),(63,'Kovilj','Serbia','45.23422','20.02327'),(64,'Sapiranga','Brazil','-29.63806','-51.00694'),(65,'Bringinanom','Indonesia','-7.7427','113.4538'),(66,'Fengdian','China','31.62398','114.38047'),(67,'Sindangheula','Indonesia','-7.0879','108.8106'),(68,'Calidñgan','Philippines','10.1','123.63333'),(69,'Lianran','China','24.92271','102.48496'),(70,'Magburaka','Sierra Leone','8.71667','-11.95'),(71,'Mouriscas','Portugal','39.55','-8.4417'),(72,'Andou','China','33.00149','101.54716'),(73,'Tipo-Tipo','Philippines','6.58139','122.17944'),(74,'Opi','Nigeria','6.78223','7.43319'),(75,'Purorejo','Indonesia','-8.3041','112.9473'),(76,'Fushëkuqe','Albania','41.65028','19.62'),(77,'Villanova','Italy','44.6355','10.1074'),(79,'Zhongzi','China','29.02268','89.46032'),(80,'Pasirmukti','Indonesia','-7.4405','108.3423'),(81,'Moycullen','Ireland','53.33783','-9.18002'),(82,'Cikotok','Indonesia','-6.8612','106.3067'),(83,'Las Matas de Farfán','Dominican Republic','18.87309','-71.51656'),(84,'Asheville','United States','35.6203','-82.5286'),(85,'Hengdian','China','30.80532','114.29172'),(86,'El Banco','Colombia','9.00114','-73.97581'),(87,'João Alfredo','Brazil','-7.85583','-35.58833'),(88,'Tournai','Belgium','50.6','3.3833'),(89,'Bellavista','Mexico','20.3632','-101.1196'),(90,'Zákynthos','Greece','37.79139','20.89528'),(91,'la Massana','Andorra','42.54499','1.51483'),(92,'La Palma','Mexico','19.1661','-100.0533'),(93,'Takahama','Japan','34.91667','136.98333'),(94,'Cachoeira do Sul','Brazil','-30.03917','-52.89389'),(95,'5 de Mayo','Mexico','24.0167','-98.75'),(96,'Jorochito','Bolivia','-18.05514','-63.42821'),(97,'Suzaka','Japan','36.65','138.31667'),(98,'Báguanos','Cuba','20.75167','-76.02694'),(100,'Kameyama','Japan','34.85','136.45');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_skill`
--

DROP TABLE IF EXISTS `job_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_skill`
--

LOCK TABLES `job_skill` WRITE;
/*!40000 ALTER TABLE `job_skill` DISABLE KEYS */;
INSERT INTO `job_skill` VALUES (8,1,5),(9,1,10),(10,1,12),(11,598788,5),(12,598788,10),(13,598788,12),(14,598788,14),(15,598788,18),(16,598789,5),(17,598789,2),(18,598789,1),(19,598789,3),(20,598790,2),(21,598790,1),(22,598790,11),(23,598791,6),(24,598791,5),(25,598791,7),(26,598791,8),(27,598792,51),(28,598792,52),(29,598792,1),(30,598792,2),(31,598792,11),(32,598792,15),(33,598793,10),(34,598793,12),(35,598793,16),(36,598793,31),(37,598793,45),(38,598793,27),(39,598793,1),(40,598794,5),(41,598794,12),(42,598794,14),(43,598795,4),(44,598795,10),(45,598796,16),(46,598796,2),(47,598797,1),(48,598797,2),(49,598798,4),(50,598798,15),(51,598798,32),(52,598799,2),(53,598799,1),(54,598799,5),(55,598799,39),(56,598800,2),(57,598800,1),(58,598800,5),(59,598800,39),(60,598800,39),(61,598800,27),(62,598800,2),(63,598801,1),(64,598801,3),(65,598801,6),(66,598801,14),(67,598802,1),(68,598802,3),(69,598802,6),(70,598802,14),(71,598802,55),(72,598802,51),(73,598803,26),(74,598803,18),(75,598804,26),(76,598804,18),(77,598804,14),(78,598804,39),(79,598805,1),(80,598805,46),(81,598805,53),(82,598806,1),(83,598806,46),(84,598806,53),(85,598806,40),(86,598806,52),(87,598807,1),(88,598807,46),(89,598807,53),(90,598807,40),(91,598807,52),(92,598808,1),(93,598808,46),(94,598808,53),(95,598808,40),(96,598808,52),(97,598808,39),(98,598809,1),(99,598809,46),(100,598809,53),(101,598809,40),(102,598809,52),(103,598809,39),(104,598810,1),(105,598810,46),(106,598810,53),(107,598810,40),(108,598810,52),(109,598810,39),(110,598811,1),(111,598811,46),(112,598811,53),(113,598811,40),(114,598811,52),(115,598811,39),(116,598812,1),(117,598812,46),(118,598812,53),(119,598812,40),(120,598812,52),(121,598812,39),(122,598812,55),(123,598812,46),(124,598813,1),(125,598813,46),(126,598813,53),(127,598813,40),(128,598813,52),(129,598813,39),(130,598813,55),(131,598813,46),(132,598814,1),(133,598814,46),(134,598814,53),(135,598814,40),(136,598814,52),(137,598814,39),(138,598814,55),(139,598814,46),(140,598815,1),(141,598815,46),(142,598815,53),(143,598815,40),(144,598815,52),(145,598815,39),(146,598815,55),(147,598815,46),(148,598816,1),(149,598816,46),(150,598816,53),(151,598816,40),(152,598816,52),(153,598816,39),(154,598816,55),(155,598816,46),(156,598817,1),(157,598817,46),(158,598817,53),(159,598817,40),(160,598817,52),(161,598817,39),(162,598817,55),(163,598817,46),(164,598818,1),(165,598819,1),(166,598819,2),(167,598820,1),(168,598820,2),(169,598821,1),(170,598821,2),(171,598822,1),(172,598822,2),(173,598823,1),(174,598823,2),(175,598824,1),(176,598824,2),(177,598824,13),(178,598824,1),(179,598824,2),(180,598824,39),(181,598825,1),(182,598825,2),(183,598825,13),(184,598825,1),(185,598825,2),(186,598825,39),(187,598826,1),(188,598826,2),(189,598826,13),(190,598826,1),(191,598826,2),(192,598826,39),(193,598827,17),(194,598827,5),(195,598828,3),(196,598828,14),(197,598828,11),(198,598829,5),(199,598829,11),(200,598829,15),(201,598830,11),(202,598830,15),(203,598830,19),(204,598831,14),(205,598831,17),(206,598832,8),(207,598832,14),(208,598833,8),(209,598833,1),(210,598833,10),(211,598834,8),(212,598834,1),(213,598834,10),(214,598834,15),(215,598835,8),(216,598835,1),(217,598835,10),(218,598835,15),(219,598835,36),(220,598835,24),(221,598836,8),(222,598836,1),(223,598836,10),(224,598836,15),(225,598836,36),(226,598836,24),(227,598837,4),(228,598837,13),(229,598838,13),(230,598838,48),(231,598838,35),(232,598838,22),(233,598838,9),(234,598839,4),(235,598839,9),(236,598839,6),(237,598839,14),(238,598839,12),(239,598839,12),(240,598840,4),(241,598840,10),(242,598840,14),(243,598840,20),(244,598840,50),(245,598841,4),(246,598841,14),(247,598841,50),(248,598842,22),(249,598842,12);
/*!40000 ALTER TABLE `job_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `city_id` int(11) NOT NULL,
  `company` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `avalible` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=598842 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'first','dfsgdsfg',4,'azariya',2,'2017-08-01',1),(598788,'web developer for kakamaika','dfsgdsfg sdfs dfglsdlfjgkln  lfdgdflk ;lldsf;gksdf; ;ldsfkg;ksd;',15,'azariya',2,'2017-08-01',1),(598789,'best job','Array of config objects for currently pending requests. This is primarily meant to be used for debugging purposes.',2,'azariya',2,'2017-08-01',1),(598790,'last job','Now while this service may be quite handy, there is a point of redundancy in its design. Wouldn\'t it be nice to not have to pass the API key every time we want to make a call?',9,'azariya',2,'2017-08-01',1),(598791,'real time promramer','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',18,'azariya',2,'2017-08-01',1),(598792,'job for everybody','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',63,'azariya',2,'2017-08-01',1),(598793,'expert developer','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',4,'asaf',9,'2017-08-01',1),(598794,'stam avoda','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',2,'asaf',9,'2017-08-01',1),(598795,'sdklfj salasdf','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',10,'asaf',9,'2017-08-01',1),(598796,'dsf dsfg','packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by',43,'asaf',9,'2017-08-01',1),(598797,'fdgsdg rtyoieru','packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by',88,'asaf',9,'2017-08-01',1),(598798,'fdgsfg gdh fd dh','The example above executes the $http service with an object as an argument. The object is specifying the HTTP method, the url, what to do on success, and what to do on failure.',47,'dgdfg',1,'2017-08-01',1),(598799,'fjk gdklfgj fdhkljlh fhjfg','The example above executes the $http service with an object as an argument. The object is specifying the HTTP method, the url, what to do on success, and what to do on failure.',93,'dgdfg',1,'2017-08-01',1),(598800,'dsffjuyitui fgjf','The example above executes the $http service with an object as an argument. The object is specifying the HTTP method, the url, what to do on success, and what to do on failure.',97,'dgdfg',1,'2017-08-01',1),(598801,'qqq ccc trhtjhjhk kjhkghk','The data you get from the response is expected to be in JSON format.\nJSON is a great way of transporting data, and it is easy to use within AngularJS, or any other JavaScript.',6,'dgdfg',1,'2017-08-01',1),(598802,'qqq ccc','The data you get from the response is expected to be',82,'dgdfg',1,'2017-08-01',1),(598803,'ewfrer gff','Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding',8,'dgdfg',1,'2017-08-01',1),(598804,'mgfgfd assae','Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding',1,'dgdfg',1,'2017-08-01',1),(598805,'tre sadadst','Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding',5,'mark',17,'2017-08-01',1),(598806,'oipo sfoidfjlk','Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding',12,'mark',17,'2017-08-01',1),(598807,'fdghfddfh','Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding Use Bootstrap\'s predefined grid classes to align labels and groups of form controls in a horizontal layout by adding',2,'mark',17,'2017-08-01',1),(598808,'yurewcsdc  dffdg','Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.',1,'mark',17,'2017-08-01',1),(598809,'yurewcsdc  dffdg','Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.',2,'mark',17,'2017-08-01',1),(598810,'yurewcsdc  dffdg','Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.',4,'mark',17,'2017-08-01',1),(598811,'yurewcsdc  dffdg','Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.',6,'mark',17,'2017-08-01',1),(598812,'kejtjl sdkaflj','Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.',1,'mark',17,'2017-08-01',1),(598813,'kejtjl sdkaflj','Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.',2,'mark',17,'2017-08-01',1),(598814,'kejtjl sdkaflj','Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.',4,'mark',17,'2017-08-01',1),(598815,'kejtjl sdkaflj','Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.',5,'mark',17,'2017-08-01',1),(598816,'kejtjl sdkaflj','Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.',7,'mark',17,'2017-08-01',1),(598817,'kejtjl sdkaflj','Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.Imagine that you have written an Angular service that can be used to retrieve weather data from a public API. The object returned by the service is as follows.',8,'mark',17,'2017-08-01',1),(598818,'dsgsdfg','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',1,'dc',8,'2017-08-01',1),(598819,'fdhs fdshsdf','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',1,'dc',8,'2017-08-01',1),(598820,'fdhs fdshsdf','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',2,'dc',8,'2017-08-01',1),(598821,'fdhs fdshsdf','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',4,'dc',8,'2017-08-01',1),(598822,'fdhs fdshsdf','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',5,'dc',8,'2017-08-01',1),(598823,'fdhs fdshsdf','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',6,'dc',8,'2017-08-01',1),(598824,'fdhs fdshsdf','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',31,'dc',8,'2017-08-01',1),(598825,'fdhs fdshsdf','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',41,'dc',8,'2017-08-01',1),(598826,'fdhs fdshsdf','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',62,'dc',8,'2017-08-01',1),(598827,'dfsfsdg','dfsgsdfg',2,'asaf',9,'2017-08-01',1),(598837,'gfdsg','dfsg',37,'azariya',6,'2017-08-07',1),(598840,'dsnfmsd','dflgnk dfh gihddsfi hgkjsdh ljgkdfs jkfbdsjk gbser  jgjnads lkhsl',2,'azariya',6,'2017-08-08',1),(598841,'zzzzzzzzzzzzzz','a aaaa  aaadflgnk dfh gihddsfi hgkjsdh ljgkdfs jkfbdsjk gbser  jgjnads lkhsl',4,'azariya',6,'2017-08-08',1);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs_apply`
--

DROP TABLE IF EXISTS `jobs_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs_apply`
--

LOCK TABLES `jobs_apply` WRITE;
/*!40000 ALTER TABLE `jobs_apply` DISABLE KEYS */;
INSERT INTO `jobs_apply` VALUES (30,598788,'6'),(33,598792,'6'),(34,598806,'6'),(35,598813,'6'),(36,598791,'9'),(37,598792,'9'),(38,598794,'9'),(39,598798,'9'),(40,598803,'9'),(41,1,'6');
/*!40000 ALTER TABLE `jobs_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (1,'dmitri','123'),(2,'oshri','123');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'html'),(2,'css'),(3,'json'),(4,'javascript'),(5,'java'),(6,'c++'),(7,'c'),(8,'c#'),(9,'ajax'),(10,'node'),(11,'nodejs'),(12,'phyton'),(13,'angularjs'),(14,'angular2'),(15,'react'),(16,'redux'),(17,'vue'),(18,'sass'),(19,'less'),(20,'gulp'),(21,'grunt'),(22,'webpack'),(23,'websokets'),(24,'jasmin'),(25,'karma'),(26,'handlebars'),(27,'lodash'),(28,'rubi'),(29,'mysql'),(30,'mongodb'),(31,'nosql'),(32,'cloud servers'),(33,'virtual machines'),(34,'pascal'),(35,'visual basic'),(36,'esembly'),(37,'swift'),(38,'qa'),(39,'qa atomation'),(40,'linux'),(41,'unix'),(42,'osx'),(43,'windows'),(44,'android'),(45,'word'),(46,'exel'),(47,'powerpoint'),(48,'ios'),(49,'algoritems'),(50,'.net'),(51,'jquery'),(52,'bootstrap'),(53,'jquery-ui'),(54,'jquery-mobile'),(55,'express'),(56,'passport');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_job`
--

DROP TABLE IF EXISTS `user_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` varchar(45) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_job`
--

LOCK TABLES `user_job` WRITE;
/*!40000 ALTER TABLE `user_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `about` varchar(500) NOT NULL,
  `company` varchar(45) NOT NULL,
  `cityId` int(11) NOT NULL,
  `maxDist` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dima','123','Dmitri','dima','dw@gmail.com','<!-- Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita voluptatibus sunt blanditiis nisi iste, cupiditate eligendi eius facere natus? Amet quisquam consequuntur obcaecati est soluta optio fugiat ipsam voluptate, voluptas modi, voluptatibus similique culpa dolore accusamus sunt eum vitae? Necessitatibus, amet ipsa reiciendis ratione officia! Maiores, ratione odio voluptatum enim officiis placeat aliquid quis accusamus, sequi nihil','dgdfg',5,1),(5,'yonatan','123','yonatan','levinson','yonatan@gmail.com','<!-- Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita voluptatibus sunt blanditiis nisi iste, cupiditate eligendi eius facere natus? Amet quisquam consequuntur obcaecati est soluta optio fugiat ipsam voluptate, voluptas modi, voluptatibus similique culpa dolore accusamus sunt eum vitae? Necessitatibus, amet ipsa reiciendis ratione officia! Maiores, ratione odio voluptatum enim officiis placeat aliquid quis accusamus, sequi nihil','yonatan',5,5),(6,'oshri','123','oshri','azariya','azariya@gmail.com','<!-- Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita voluptatibus sunt blanditiis nisi iste, cupiditate eligendi eius facere natus? Amet quisquam consequuntur obcaecati est soluta optio fugiat ipsam voluptate, voluptas modi, voluptatibus similique culpa dolore accusamus sunt eum vitae? Necessitatibus, amet ipsa reiciendis ratione officia! Maiores, ratione odio voluptatum enim officiis placeat aliquid quis accusamus, sequi nihil','azariya',15,9),(7,'liron','123','liron','kahani','liron@gmail.com','<!-- Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita voluptatibus sunt blanditiis nisi iste, cupiditate eligendi eius facere natus? Amet quisquam consequuntur obcaecati est soluta optio fugiat vitae? Necessitatibus, amet ipsa reiciendis ratione officia! Maiores, placeat aliquid quis accusamus, sequi nihil','marvel',55,50),(8,'kobi','123','kobi','amar','kobi@gmail.com','natus? Amet quisquam consequuntur obcaecati est soluta optio fugiat vitae? Necessitatibus, amet ipsa reiciendis ratione officia! Maiores, placeat aliquid quis accusamus, sequi nihil','dc',95,100),(9,'asaf','123','asaf','mozes','asaf@gmail.com','gdfd.hnkldhjlh;kdhl;','asaf',10,150),(11,'leon','123','leon','Rivin','leon@gmail.com','ghdfhopjdghp kfp hopjo hjofd jhof gioj osdfj oidfj o[jdf ohj odf hklhjgfkl okgfhkl jdh jkldfj hkljdh;kdfjho[ jdo hopdsfj ohjdsfo jhksldfj hoksfdfo hj','leon',90,123),(12,'artur','123','artur','Rivin','artur@gmail.com','dsfs sdkvhkgjhsd j indi gkk ifg igbds gojds go sdogj osd ;jfgo;sdkjfkgjlsdfgk j dfslkg jklsdfj lkgnsdfjk gj kldfn','artur',2,5),(17,'mark','123','mark','segal','mark@gmail.com','dsfs sdkvhkgjhsd j indi gkk ifg igbds gojds go sdogj osd ;jfgo;sdkjfkgjlsdfgk j dfslkg jklsdfj lkgnsdfjk gj kldfn','mark',2,11),(18,'gil','123','gil','Baadai','gil@gmail.com','dsgfdso gifdj goigdsf iogdsf gojds dfo gjgfd\\df ogoidj\ndfogjodsfkg\nfdgljdsfgksdfjlkgjlsdfjgkljdsfklgkldsfg\ndfshsdf','pasim',25,1000),(19,'kaka','123','kaka','maka','kaka@gmail.com','safasdf dad gdsf gdsf gsdf g s','fuckaaa',1,2500),(20,'kaka 2','123','kaka 2','maka 2','kaka2@gmail.com','safasdf dad gdsf gdsf gsdf g s','fuckaaa gds',1,2500),(23,'moshiko','123','moshiko','moshiko','moshiko@gmail.com','fdsgsdf df hgfhj fhj jf ghj','moshiko',5,1200),(27,'kakama','123','kakama','kakama','kakama@gmail.com','kakamakakamakakamakakamakakama','kakama',1,1236);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_skills`
--

DROP TABLE IF EXISTS `users_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_skills`
--

LOCK TABLES `users_skills` WRITE;
/*!40000 ALTER TABLE `users_skills` DISABLE KEYS */;
INSERT INTO `users_skills` VALUES (18,9,34),(19,9,36),(20,9,35),(21,9,7),(78,6,1),(79,6,7),(80,6,8),(81,6,14);
/*!40000 ALTER TABLE `users_skills` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-08 11:09:52
