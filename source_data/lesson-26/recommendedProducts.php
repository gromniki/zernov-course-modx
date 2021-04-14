<?php
/**
 * Сниппет для вывода рекомендуемых товаров в шаблоне группы товаров
 * Принимает все те же параметры, что и msProducts
 */

$parentId = $modx->getOption('parentId', $scriptProperties, $modx->resource->id);
$linkId = $modx->getOption('linkId', $scriptProperties, 1);

$siteContentTableName = $modx->getTableName('modResource');
$linksTableName = $modx->getTableName('msProductLink');

//Одним запросом получаем все рекомендуемые товары
$sql = <<<SQL
SELECT pl.slave
FROM {$linksTableName} pl
INNER JOIN {$siteContentTableName} sc ON sc.id = pl.master
WHERE sc.class_key = 'msProduct'
  AND sc.parent = :parent
  AND sc.published = 1
  AND sc.deleted = 0
  AND pl.link = :link
SQL;

$query = $modx->prepare($sql);
$query->bindValue('parent', $parentId);
$query->bindValue('link', $linkId);

if(!$query->execute() || $query->rowCount() == 0) return '';

$rows = $query->fetchAll(PDO::FETCH_ASSOC);
$resourceIds = [];
foreach($rows as $row){
    $resourceIds[] = $row['slave'];
}

return $modx->runSnippet('msProducts', array_merge($scriptProperties,[
    'parents' => 0,
    'resources' => implode(',',$resourceIds)
]));