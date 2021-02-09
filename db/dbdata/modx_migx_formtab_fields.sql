
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*!40000 ALTER TABLE `modx_migx_formtab_fields` DISABLE KEYS */;
REPLACE INTO `modx_migx_formtab_fields` VALUES (1,1,1,'title','Заголовок','',1,0,'','','','','','','config','','','','');
REPLACE INTO `modx_migx_formtab_fields` VALUES (2,1,1,'link','Ссылка','Ссылка, публикуемая рядом с файлом (опционально)',2,0,'','','','','','','config','','','','');
REPLACE INTO `modx_migx_formtab_fields` VALUES (3,1,1,'file','Файл','Файл для скачивания',3,0,'','file','','','','','config','[{\"MIGX_id\":\"1\",\"context\":\"web\",\"sourceid\":\"2\"},{\"MIGX_id\":\"2\",\"context\":\"mgr\",\"sourceid\":\"2\"}]','','','');
/*!40000 ALTER TABLE `modx_migx_formtab_fields` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
