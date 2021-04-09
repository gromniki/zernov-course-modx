<?php
require_once dirname(dirname(__DIR__)).'/vendor/autoload.php';

class leProductsImport {
    /** @var modX */
    public $modx;
    public $config;
    /** @var \Sabre\Xml\Reader */
    protected $xmlReader;

    public function __construct(&$modx, $config = [])
    {
        $this->modx = &$modx;
        $defaultConfig = [];
        $this->config = array_merge($defaultConfig, $config);
    }

    public function process($pathToFile){
        //TODO необходимо реализовать логику парсинга и загрузки
        $input = file_get_contents($pathToFile);

        $this->xmlReader = new Sabre\Xml\Reader();
        $this->xmlReader->xml($input, 'utf-8');
        $structure = $this->xmlReader->parse();
        foreach($structure['value'][1]['value'][0]['value'] as $productData){
            $article = $productData['value'][0]['value'];
            $pagetitle = $productData['value'][1]['value'];

            if(empty($article)){
                $this->modx->log(MODX_LOG_LEVEL_ERROR, 'Пустой артикул. Наименование: '.$pagetitle);
                continue;
            }

            /** @var msProductData $productData */
            $productData = $this->modx->getObject('msProductData', [
                'article' => $article
            ]);

            if(!$productData){
                $this->modx->log(MODX_LOG_LEVEL_ERROR, 'Товар не найден. Наименование: '.$pagetitle);
                continue;
            }
            /** @var msProduct $product */
            $product = $productData->getOne('Product');
            $product->set('pagetitle', $pagetitle);
            //$product->save();
        }
    }
}
