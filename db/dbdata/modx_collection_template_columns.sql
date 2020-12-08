
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*!40000 ALTER TABLE `modx_collection_template_columns` DISABLE KEYS */;
REPLACE INTO `modx_collection_template_columns` VALUES (1,1,'id','id',1,1,40,'','','',1,NULL);
REPLACE INTO `modx_collection_template_columns` VALUES (2,1,'publishedon','publishedon',0,1,40,'','Collections.renderer.datetimeTwoLines','',2,NULL);
REPLACE INTO `modx_collection_template_columns` VALUES (3,1,'pagetitle','pagetitle',0,1,170,'','Collections.renderer.pagetitleWithButtons','',3,NULL);
REPLACE INTO `modx_collection_template_columns` VALUES (4,1,'alias','alias',0,1,100,'','','',4,NULL);
REPLACE INTO `modx_collection_template_columns` VALUES (5,1,'resource_menuindex','menuindex',1,1,50,'{\"xtype\":\"numberfield\",\"allowNegative\":false,\"allowDecimal\":false}','','',0,NULL);
/*!40000 ALTER TABLE `modx_collection_template_columns` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

