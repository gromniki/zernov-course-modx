<?php
/**
 * Хук для отправки данных формы в CRM Bitrix 24
 * @var fiHooks $hook
 */

/** @var leBitrixCrm $bitrixCrm */
$bitrixCrm = $modx->getService('leBitrixCrm', 'leBitrixCrm', MODX_CORE_PATH.'components/lectshop/model/bitrix/');

$result = $bitrixCrm->addLead([
    'TITLE' => 'Заполнена форма заявки на сайте ('.$hook->getValue('name').')',
    'NAME' => $hook->getValue('name'),
    'PHONE' => [["VALUE" => $hook->getValue('phone'), "VALUE_TYPE" => "WORK" ]],
    'EMAIL' => [["VALUE" => $hook->getValue('email'), "VALUE_TYPE" => "WORK" ]],
    'COMMENTS' => $hook->getValue('comment')
]);

if(!$result['success']){
    $modx->log(MODX_LOG_LEVEL_ERROR, '[fiSendToCrmHook] Ошибка при отправке данных в CRM: '.$result['message']);
    $modx->log(MODX_LOG_LEVEL_ERROR, '[fiSendToCrmHook] '.print_r($result, true));
}

return true;