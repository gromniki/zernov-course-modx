<?php
/**
 * Сниппет для сборки боковой формы фильтра по опциям дочерних товаров текущей категории
 * @var array $scriptProperties
 */

$parentId = $modx->getOption('parentId', $scriptProperties, $modx->resource->id);
$tpl = $modx->getOption('tpl', $scriptProperties, '');

$sql = <<<SQL
SELECT po.*, o.* FROM modx_ms2_product_options po
JOIN modx_ms2_options o ON o.`key` = po.`key`
JOIN modx_site_content sc ON sc.id = po.product_id
WHERE sc.parent = :parent
    AND sc.published = 1
    AND sc.deleted = 0
GROUP BY po.`value`
SQL;


$query = $modx->prepare($sql);
$query->bindValue('parent', $parentId);

if(!$query->execute() || $query->rowCount() == 0) return '';

$groupedOptionValuesByKey = [];
while($row = $query->fetch(PDO::FETCH_ASSOC)){

    //Сначала инициализируем новую группу, если она раньше еще не встречалась
    if(!isset($groupedOptionValuesByKey[$row['key']])){
        $keys = $row;
        unset($keys['value']);
        $groupedOptionValuesByKey[$row['key']] = $keys;
        //В поле values будем складывать все различные значения выбранной опции
        $groupedOptionValuesByKey[$row['key']]['values'] = [];
    }
    $groupedOptionValuesByKey[$row['key']]['values'][] = $row['value'];
}

//Необходимо исключить те опции, у которых всего одно значение из возможных
foreach ($groupedOptionValuesByKey as $key => $info){
    if(count($info['values']) < 2) unset($groupedOptionValuesByKey[$key]);
}

/** @var pdoFetch $pdoFetch */
$pdoFetch = $modx->getService('pdoFetch');
return $pdoFetch->getChunk($tpl,['options' => $groupedOptionValuesByKey]);