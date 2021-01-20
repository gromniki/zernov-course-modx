<?php
/**
 * Class leBitrixCrm
 * Класс для работы с CRM Bitrix24
 */

class leBitrixCrm
{
    /** @var modX */
    public $modx;
    public $config;

    /**
     * leBitrixCrm constructor.
     * @param modX $modx
     * @param array $config
     */
    public function __construct(&$modx, $config = [])
    {
        $this->modx = &$modx;
        $defaultConfig = [
            'url' => $modx->getOption('le_bitrix_url'),
            'secret' => $modx->getOption('le_bitrix_secret'),
        ];
        $this->config = array_merge($defaultConfig, $config);
    }

    public function addLead($fields){
        $result = $this->sendRequest('crm.lead.add',[
            'fields' => $fields
        ]);

        if($result['data']['error_description']){
            $result['success'] = false;
            $result['message'] = $result['data']['error_description'];
        }
        return $result;
    }

    public function sendRequest($method, $params)
    {
        $postData = $params;

        $obCurl = curl_init();
        curl_setopt($obCurl, CURLOPT_URL, $this->config['url'].$this->config['secret'].'/'.$method);
        curl_setopt($obCurl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($obCurl, CURLOPT_POSTREDIR, 10);
        curl_setopt($obCurl, CURLOPT_USERAGENT, 'Bitrix24 CRest PHP');
        if($postData)
        {
            curl_setopt($obCurl, CURLOPT_POST, true);
            curl_setopt($obCurl, CURLOPT_POSTFIELDS, http_build_query($postData));
        }
        curl_setopt($obCurl, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($obCurl, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($obCurl, CURLOPT_SSL_VERIFYHOST, false);
        $out = curl_exec($obCurl);

        $success = true;
        $errorMessage = '';
        if(curl_errno($obCurl))
        {
            $errorMessage = curl_error($obCurl);
            $success = false;
        }
        $result = json_decode($out, true);
        curl_close($obCurl);

        return [
            'success' => $success,
            'message' => $errorMessage,
            'data' => $result
        ];
    }
}