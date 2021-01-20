<?php
/**
 * Плагин для отправки данных в CRM
 */

switch ($modx->event->name){
    case 'msOnCreateOrder':
        /** @var msOrder $msOrder */
        $msOrder = $modx->event->params['msOrder'];
        $orderHandler = $modx->event->params['order'];
        /** @var leBitrixCrm $bitrixCrm */
        $bitrixCrm = $modx->getService('leBitrixCrm', 'leBitrixCrm', MODX_CORE_PATH.'components/lectshop/model/bitrix/');

        /** @var modUserProfile $profile */
        $profile = $msOrder->getOne('UserProfile');
        /** @var msOrderAddress $address */
        $address = $msOrder->getOne('Address');
        $formData = $order->get();
        if(!$profile) return;

        $result = $bitrixCrm->addLead([
            'TITLE' => 'Заполнена форма заявки на сайте ('.$profile->get('fullname').')',
            'NAME' => $formData['firstname'],
            'LAST_NAME' => $formData['lastname'],
            'SECOND_NAME' => $formData['middlename'],
            'COMPANY_TITLE' => $formData['company'],
            'PHONE' => [["VALUE" => $address->get('phone'), "VALUE_TYPE" => "WORK" ]],
            'EMAIL' => [["VALUE" => $profile->get('email'), "VALUE_TYPE" => "WORK" ]],
            'ADDRESS' => $formData['address'],
            'CRM_1597808018' => $msOrder->get('id')
        ]);

        if(!$result['success']){
            $modx->log(MODX_LOG_LEVEL_ERROR, '[fiSendToCrmHook] Ошибка при отправке данных в CRM: '.$result['message']);
            $modx->log(MODX_LOG_LEVEL_ERROR, '[fiSendToCrmHook] '.print_r($result, true));
        }
        break;
}