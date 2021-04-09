<?php

define("MODX_API_MODE", true);
include dirname(__DIR__).'/www/index.php';
ob_end_clean();
$modx->setLogLevel(MODX_LOG_LEVEL_INFO);
$modx->setLogTarget('ECHO');

/** @var leProductsImport $leProductsImport */
$leProductsImport = $modx->getService('leProductsImport', 'leProductsImport', MODX_CORE_PATH.'components/leimportexport/model/leimportexport/', [
    //можно указать конфигурацию
]);

$leProductsImport->process('text.xml');
