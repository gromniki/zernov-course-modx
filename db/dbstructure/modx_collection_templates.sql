/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `modx_collection_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_collection_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `global_template` int(1) NOT NULL DEFAULT '0',
  `bulk_actions` int(1) NOT NULL DEFAULT '0',
  `allow_dd` int(1) NOT NULL DEFAULT '1',
  `page_size` int(10) NOT NULL DEFAULT '20',
  `sort_field` varchar(100) NOT NULL DEFAULT 'id',
  `sort_dir` varchar(4) NOT NULL DEFAULT 'asc',
  `sort_type` varchar(64) DEFAULT NULL,
  `child_template` int(10) unsigned DEFAULT NULL,
  `child_resource_type` varchar(100) NOT NULL DEFAULT 'modDocument',
  `resource_type_selection` int(1) NOT NULL DEFAULT '1',
  `tab_label` varchar(255) NOT NULL DEFAULT 'collections.children',
  `button_label` varchar(255) NOT NULL DEFAULT 'collections.children.create',
  `content_place` varchar(255) NOT NULL DEFAULT 'original',
  `view_for` int(1) unsigned NOT NULL DEFAULT '0',
  `link_label` varchar(255) NOT NULL DEFAULT 'selections.create',
  `context_menu` varchar(512) NOT NULL DEFAULT 'view,edit,duplicate,publish,unpublish,-,delete,undelete,remove,-,unlink',
  `buttons` varchar(512) NOT NULL DEFAULT 'open,view,edit,duplicate,publish:orange,unpublish,delete,undelete,remove,unlink',
  `allowed_resource_types` varchar(512) NOT NULL DEFAULT '',
  `back_to_collection_label` varchar(255) NOT NULL DEFAULT 'collections.children.back_to_collection_label',
  `back_to_selection_label` varchar(255) NOT NULL DEFAULT 'selections.back_to_selection_label',
  `selection_create_sort` varchar(255) NOT NULL DEFAULT 'id:desc',
  `child_hide_from_menu` int(1) DEFAULT NULL,
  `child_published` int(1) DEFAULT NULL,
  `child_cacheable` int(1) DEFAULT NULL,
  `child_searchable` int(1) DEFAULT NULL,
  `child_richtext` int(1) DEFAULT NULL,
  `child_content_type` int(10) NOT NULL DEFAULT '0',
  `parent` varchar(100) NOT NULL DEFAULT '',
  `child_content_disposition` int(1) DEFAULT NULL,
  `permanent_sort_before` varchar(255) NOT NULL DEFAULT '',
  `permanent_sort_after` varchar(255) NOT NULL DEFAULT '',
  `selection_link_condition` text,
  `search_query_exclude_tvs` int(1) NOT NULL DEFAULT '0',
  `search_query_exclude_tagger` int(1) NOT NULL DEFAULT '0',
  `search_query_title_only` int(1) NOT NULL DEFAULT '0',
  `show_quick_create` tinyint(1) NOT NULL DEFAULT '1',
  `quick_create_label` varchar(255) NOT NULL DEFAULT 'collections.children.quick_create',
  `fred_default_blueprint` varchar(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

