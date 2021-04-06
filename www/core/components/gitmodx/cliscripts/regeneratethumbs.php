#!/usr/bin/php
<?php
define('MODX_API_MODE', true);
//define('XPDO_CLI_MODE',false);
require_once dirname(dirname(dirname(dirname(dirname(__FILE__))))) . '/index.php';

$modx->setLogLevel(xPDO::LOG_LEVEL_INFO);
$modx->setLogTarget('ECHO');

ob_end_clean();

$products = $modx->getIterator('msProduct', array(
    'class_key' => 'msProduct'
));
include_once MODX_CORE_PATH . '/model/modx/modprocessor.class.php';
$modx->processors[MODX_CORE_PATH . 'components/minishop2/processors/mgr/gallery/generateall.class.php'] = 'msProductFileGenerateAllProcessor';
include_once MODX_CORE_PATH . 'components/minishop2/processors/mgr/gallery/generateall.class.php';


/* @var msProduct[] $products */
foreach ($products as $product) {
    $modx->log(MODX_LOG_LEVEL_INFO, $product->id);
    $ids = array();

    $productData = $product->getOne('Data');

    $data = array(
        'product_id' => $product->get('id'),
    );

    if ($modx->error && $modx->error->hasError()) {
        $modx->error->reset();
    }

    /* @var modProcessorResponse $response */
    $response = $modx->runProcessor('mgr/gallery/generateall', $data, array(
        'processors_path' => MODX_CORE_PATH . 'components/minishop2/processors/'
    ));

    if ($response->response['success']) {
        $modx->log(MODX_LOG_LEVEL_INFO, 'Успешно сгенерированы превьюшки для товара ' . $product->id);
    }
}

exit;
