<?php

define("MODX_API_MODE", true);
require dirname(dirname(dirname(__DIR__))) . '/index.php';
/** @var miniShop2 $minishop2 */
$minishop2 = $modx->getService('miniShop2');

/** @var leBitrixCrm $bitrixCrm */
$bitrixCrm = $modx->getService('leBitrixCrm', 'leBitrixCrm', MODX_CORE_PATH.'components/lectshop/model/bitrix/');

//TODO для корректной работы, измените код ниже:
// Добавьте необходимые исходящие хуки в Bitrix24, а затем добавьте реакцию на соответствующие события
// Не забудьте проверить правомерность входящего запроса при помощи кода авторизации
$event = $_REQUEST['event'];
switch($event){
    case 'onCrmLeadUpdate':
        //TODO код ниже — это пример, дающий общее представление о способе синхронизации
        $leadId = $_REQUEST['FIELDS']['ID'];
        $result = $bitrixCrm->sendRequest('crm.lead.get',[
            'ID' => $leadId
        ]);

        $orderId = $result['data']['CRM_1597808018'];
        $minishop2->changeOrderStatus($orderId, 3);
        break;
}