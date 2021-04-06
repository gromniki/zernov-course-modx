<?php
/**
 * Плагин для сбора просмотренных товаров в сессионную переменную
 * В дальнейшем эту переменную можно использовать для передачи в сниппет msProducts
 */
if($modx->event->name != 'OnLoadWebDocument') return;

if(!$modx->resource instanceof msProduct) return;

if(!isset($_SESSION['le_viewed_products'])){
    $_SESSION['le_viewed_products'] = [];
}

$_SESSION['le_viewed_products'][] = $modx->resource->id;
$_SESSION['le_viewed_products'] = array_unique($_SESSION['le_viewed_products']);

$_SESSION['le_viewed_products'] = array_reverse($_SESSION['le_viewed_products']);
if(count($_SESSION['le_viewed_products']) > 12){
    $_SESSION['le_viewed_products'] = array_slice($_SESSION['le_viewed_products'],0, 12);
}
$_SESSION['le_viewed_products'] = array_reverse($_SESSION['le_viewed_products']);