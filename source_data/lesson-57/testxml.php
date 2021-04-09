<?php

define("MODX_API_MODE", true);
include dirname(__DIR__).'/www/index.php';
ob_end_clean();
$modx->setLogLevel(MODX_LOG_LEVEL_INFO);
$modx->setLogTarget('ECHO');

/** @var leProductsExport $leProductExport */
$leProductExport = $modx->getService('leProductsExport', 'leProductsExport', MODX_CORE_PATH.'components/leimportexport/model/leimportexport/', [
    //можно указать конфигурацию
]);

$leProductExport->process('text.xml');
