<?php

/**
 * РАЗБОР переменной layout
 */
$layout = $modx->getOption('layout', $_REQUEST, 'list');
switch ($layout) {
    default:
    case 'list':
        $scriptProperties['tpl'] = $scriptProperties['tplList'];
        break;
    case 'cell':
        $scriptProperties['tpl'] = $scriptProperties['tplCell'];
        break;
}

/**
 * Разбор переменной sort
 */
$allowedSortBy = ['id', 'Data.price', 'pagetitle'];
$allowedSortDir = ['asc', 'desc'];
$sort = $modx->getOption('sort', $_REQUEST, 'id:asc');
list($sortBy, $sortDir) = explode(':', $sort);
if (!in_array($sortBy, $allowedSortBy)) $sortBy = $allowedSortBy[0];
if (!in_array($sortDir, $allowedSortDir)) $sortDir = $allowedSortDir[0];
$scriptProperties['sortby'] = json_encode([
    $sortBy => $sortDir
]);

/**
 * Разбор переменных option_
 */
$optionFilters = [];
foreach ($_REQUEST as $key => $value) {
    if (strpos($key, 'option_') === false) continue;
    $realKey = substr($key, 7);
    $optionFilters[$realKey . ":IN"] = $value;
}
$scriptProperties['optionFilters'] = json_encode($optionFilters);


/**
 * Разбор поля price_from price_to
 */
$priceFrom = $modx->getOption('price_from', $_REQUEST, '0');
$priceTo = $modx->getOption('price_to', $_REQUEST, '');
$where = [];
if ($priceFrom) {
    $priceFrom = intval($priceFrom, 10);
    $where['Data.price:>='] = $priceFrom;
}
if ($priceTo) {
    $priceTo = intval($priceTo, 10);
    $where['Data.price:<='] = $priceTo;
}
if(!empty($where)){
    $scriptProperties['where'] = json_encode($where);
}


return $modx->runSnippet('msProducts', $scriptProperties);