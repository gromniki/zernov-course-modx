<?php
/**
 * Скрипт для подключения кастомных полей товара
 */
define("MODX_API_MODE", true);
include dirname(__DIR__).'/www/index.php';

/** @var miniShop2 $miniShop2 */
if ($miniShop2 = $modx->getService('miniShop2')) {
    $miniShop2->addPlugin('count', '{core_path}components/lectshop/ms2plugins/index.php');
}
