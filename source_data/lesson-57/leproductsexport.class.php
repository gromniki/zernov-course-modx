<?php
require_once dirname(dirname(__DIR__)).'/vendor/autoload.php';

class leProductsExport {
    /** @var modX */
    public $modx;
    public $config;
    /** @var \Sabre\Xml\Writer */
    protected $xmlWriter;

    protected $productProperties = [];

    public function __construct(&$modx, $config = [])
    {
        $this->modx = &$modx;
        $defaultConfig = [];
        $this->config = array_merge($defaultConfig, $config);
    }

    public function process($pathToFile){
        //TODO необходимо реализовать логику обхода БД и выгрузки товаров

        $this->xmlWriter = new Sabre\Xml\Writer();
        $this->xmlWriter->openMemory();
        $this->xmlWriter->startDocument('1.0', 'utf-8');
        $this->xmlWriter->setIndent(true);
        $this->xmlWriter->startElement('КоммерческаяИнформация');
        //ВерсияСхемы="2.05" ДатаФормирования="2014-07-15T14:59:28"
        $this->xmlWriter->writeAttribute('ВерсияСхемы', '2.05');
        $this->xmlWriter->writeAttribute('ДатаФормирования', date('c'));

        $this->xmlWriter->startElement('Классификатор');
        $this->xmlWriter->writeAttribute('СодержитТолькоИзменения', "false");

        $this->generateClassificatorXml();

        $this->xmlWriter->endElement();

        $this->xmlWriter->startElement('Каталог');
        $this->xmlWriter->writeAttribute('СодержитТолькоИзменения',"true");

        $this->xmlWriter->startElement('Товары');
        $this->generateProductsXml();
        $this->xmlWriter->endElement();

        $this->xmlWriter->endElement();
        $this->xmlWriter->endElement();

        file_put_contents($pathToFile, $this->xmlWriter->outputMemory());
    }

    protected function generateClassificatorXml(){
        $this->xmlWriter->startElement('Свойства');

        $id = $this->genUuid();
        $this->productProperties['Размер'] = $id;
        $this->xmlWriter->startElement('Свойство');
        $this->xmlWriter->writeAttribute('Ид', $id);
        $this->xmlWriter->writeAttribute('Наименование', 'Размер');
        $this->xmlWriter->writeAttribute('ДляТоваров', 'true');
        $this->xmlWriter->endElement();


        $id = $this->genUuid();
        $this->productProperties['Новый'] = $id;
        $this->xmlWriter->startElement('Свойство');
        $this->xmlWriter->writeAttribute('Ид', $id);
        $this->xmlWriter->writeAttribute('Наименование', 'Новый');
        $this->xmlWriter->writeAttribute('ДляТоваров', 'true');
        $this->xmlWriter->endElement();


        $id = $this->genUuid();
        $this->productProperties['Вес'] = $id;
        $this->xmlWriter->startElement('Свойство');
        $this->xmlWriter->writeAttribute('Ид', $id);
        $this->xmlWriter->writeAttribute('Наименование', 'Вес');
        $this->xmlWriter->writeAttribute('ДляТоваров', 'true');
        $this->xmlWriter->endElement();

        $this->xmlWriter->endElement();
    }

    protected function generateProductsXml(){
        /** @var msProduct[] $products */
        $products = $this->modx->getIterator('msProduct', [
            'class_key' => 'msProduct'
        ]);
        foreach($products as $product){
            $this->xmlWriter->startElement('Товар');
//            <Артикул>П2</Артикул>
//            <Наименование>Платье 2</Наименование>
//            <БазоваяЕдиница Код="796" НаименованиеПолное="Штука" МеждународноеСокращение="PCE">шт</БазоваяЕдиница>

            $this->xmlWriter->writeElement('Артикул', $product->get('article'));
            $this->xmlWriter->writeElement('Наименование', $product->get('pagetitle'));
            $this->xmlWriter->endElement();
        }
    }

    function genUuid() {
        return sprintf( '%04x%04x-%04x-%04x-%04x-%04x%04x%04x',
            // 32 bits for "time_low"
            mt_rand( 0, 0xffff ), mt_rand( 0, 0xffff ),

            // 16 bits for "time_mid"
            mt_rand( 0, 0xffff ),

            // 16 bits for "time_hi_and_version",
            // four most significant bits holds version number 4
            mt_rand( 0, 0x0fff ) | 0x4000,

            // 16 bits, 8 bits for "clk_seq_hi_res",
            // 8 bits for "clk_seq_low",
            // two most significant bits holds zero and one for variant DCE1.1
            mt_rand( 0, 0x3fff ) | 0x8000,

            // 48 bits for "node"
            mt_rand( 0, 0xffff ), mt_rand( 0, 0xffff ), mt_rand( 0, 0xffff )
        );
    }
}
