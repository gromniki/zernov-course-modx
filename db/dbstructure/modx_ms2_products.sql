/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `modx_ms2_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_ms2_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article` varchar(50) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT '0.00',
  `old_price` decimal(12,2) DEFAULT '0.00',
  `weight` decimal(13,3) DEFAULT '0.000',
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `vendor` int(10) unsigned DEFAULT '0',
  `made_in` varchar(100) DEFAULT '',
  `new` tinyint(1) unsigned DEFAULT '0',
  `popular` tinyint(1) unsigned DEFAULT '0',
  `favorite` tinyint(1) unsigned DEFAULT '0',
  `tags` text,
  `color` text,
  `size` text,
  `source` int(10) unsigned DEFAULT '1',
  `count` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `article` (`article`),
  KEY `price` (`price`),
  KEY `old_price` (`old_price`),
  KEY `vendor` (`vendor`),
  KEY `new` (`new`),
  KEY `favorite` (`favorite`),
  KEY `popular` (`popular`),
  KEY `made_in` (`made_in`),
  KEY `count` (`count`)
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

