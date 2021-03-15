<?php
/**
 * Скрипт для импорта тестовых товаров и категорий на сайт
 */
define("MODX_API_MODE", true);
include dirname(__DIR__).'/www/index.php';
ob_end_clean();

//TODO Укажите корректный ID родительского каталога и шаблонов
const PARENT_CATEGORY_ID = 5;
const CATEGORY_TEMPLATE_ID = 27; // Шаблон категории catalog_single
const PRODUCT_GROUP_TEMPLATE_ID = 26; // catalog_product
const PRODUCT_TEMPLATE_ID = 41;
const SAMPLE_DATA_DIR = __DIR__ . '/sampledata';
const CATEGORY_MEDIA_SOURCE_ID = 11;
const PRODUCT_GROUP_MEDIA_SOURCE_ID = 11;
const PRODUCT_MEDIA_SOURCE_ID = 6;


function importCategory($parentId, $categoryDataFromJson){
    global $modx;
    $categoryFields = [
        'template' => isset($categoryDataFromJson['products']) ? PRODUCT_GROUP_TEMPLATE_ID : CATEGORY_TEMPLATE_ID,
        'pagetitle' => $categoryDataFromJson['pagetitle'],
        'content' => processContentString($categoryDataFromJson['introtext']),
        'parent' => $parentId,
        'class_key' => 'msCategory',
        'context_key' => 'web',
        'published' => 1,
        'properties' => ["ms2gallery" => ["media_source" => isset($categoryDataFromJson['products']) ? PRODUCT_GROUP_MEDIA_SOURCE_ID : CATEGORY_MEDIA_SOURCE_ID]]
        //TODO добавить TV для картинки или сделать загрузку через ms2Gallery
    ];
    $category = $modx->getObject('msCategory',[
        'pagetitle' => $categoryDataFromJson['pagetitle']
    ]);
    if(!$category){
        if($modx->error){
            $modx->error->reset();
        }
        /** @var modProcessorResponse $response */
        $response = $modx->runProcessor('mgr/category/create', $categoryFields, [
            'processors_path' => MODX_CORE_PATH.'components/minishop2/processors/'
        ]);
        if(!$response->response['success']){
            processResponseErrors($response,['class_key' => 'msCategory', 'title' => $categoryDataFromJson['pagetitle']]);
            return;
        }
        $categoryId = $response->response['object']['id'];
    }
    else{
        $categoryId = $category->get('id');
    }

    createCategoryImages($categoryId,[$categoryDataFromJson['imageUrl']]);

    if(isset($categoryDataFromJson['subcats'])){
        foreach($categoryDataFromJson['subcats'] as $subcatDataFromJson){
            importCategory($categoryId, $subcatDataFromJson);
        }
    }
    elseif(isset($categoryDataFromJson['products'])){
        foreach($categoryDataFromJson['products'] as $productDataFromJson){
            importProduct($categoryId, $productDataFromJson);
        }
    }
}

function importProduct($parentId, $productDataFromJson){
    global $modx;
    $price = rand(500,20000);
    $productFields = [
        'template' => PRODUCT_TEMPLATE_ID,
        'pagetitle' => $productDataFromJson['pagetitle'],
        'content' => processContentString($productDataFromJson['content']),
        'parent' => $parentId,
        'price' => $price,
        'old_price' => rand(0,1) ? round($price * 1.5) : '',
        'class_key' => 'msProduct',
        'context_key' => 'web',
        'published' => 1,
        'new' => rand(0,1),
        'popular' => rand(0,1),
        'favorite' => rand(0,1),
        'properties' => ["ms2gallery" => ["media_source" => PRODUCT_MEDIA_SOURCE_ID]]
    ];
    $product = $modx->getObject('msProduct',[
        'pagetitle' => $productDataFromJson['pagetitle'],
        'parent' => $parentId,
    ]);
    if(!$product){
        $optionFields = createOptions($parentId, $productDataFromJson['options']);
        $productFields = array_merge($productFields, $optionFields);

        if($modx->error){
            $modx->error->reset();
        }
        /** @var modProcessorResponse $response */
        $response = $modx->runProcessor('mgr/product/create', $productFields, [
            'processors_path' => MODX_CORE_PATH.'components/minishop2/processors/'
        ]);
        if(!$response->response['success']){
            processResponseErrors($response, ['class_key' => 'msProduct', 'title' => $productDataFromJson['pagetitle']]);
            return;
        }
        $productId = $response->response['object']['id'];
    }
    else{
        $productId = $product->get('id');
    }

    //Добавить картинки
    createProductImages($productId, $productDataFromJson['images']);

}

function createProductImages($productId, $imagesArray){
    global $modx;

    if(empty($imagesArray)) return;
    foreach($imagesArray as $imageLink) {
        $imageLink = preg_replace('#^https?://[^/]+/#ui','',$imageLink);
        $imageLink = SAMPLE_DATA_DIR.'/images/'.$imageLink;
        if($modx->error){
            $modx->error->reset();
        }
        /** @var modProcessorResponse $response */
        $response = $modx->runProcessor('mgr/gallery/upload', [
            'id' => $productId,
            'file' => $imageLink
        ], [
            'processors_path' => MODX_CORE_PATH . 'components/minishop2/processors/'
        ]);
        if(!$response->response['success']){
            processResponseErrors($response,['class_key' => 'msProductFile','title' => $imageLink]);
        }
    }
}

function createCategoryImages($categoryId, $imagesArray){
    global $modx;

    if(empty($imagesArray)) return;
    foreach($imagesArray as $imageLink) {
        $imageLink = preg_replace('#^https?://[^/]+/#ui','',$imageLink);
        $imageLink = SAMPLE_DATA_DIR.'/images/'.$imageLink;
        if($modx->error){
            $modx->error->reset();
        }
        /** @var modProcessorResponse $response */
        $response = $modx->runProcessor('mgr/gallery/upload', [
            'id' => $categoryId,
            'file' => $imageLink
        ], [
            'processors_path' => MODX_CORE_PATH . 'components/ms2gallery/processors/'
        ]);
        if(!$response->response['success']){
            processResponseErrors($response,['class_key' => 'msResourceFile','title' => $imageLink]);
        }
    }
}

function createOptions($categoryId, $options){
    if(empty($options)) return [];
    global $modx;
    /** @var modTransliterate $translit */
    $translit = $modx->getService('translit','modTransliterate',MODX_CORE_PATH.'components/translit/model/modx/translit/');

    $outputArray = [];
    foreach($options as $optionName => $optionValue){
        //Формируем ключ опции
        $optionTitle = '';
        $optionUnit = '';
        if(preg_match('#(.+),? \(.+\)#mui', $optionName, $matches)){
            $optionTitle = preg_replace('/,$/','',$matches[1]);
            $optionUnit = $matches[2];
        }
        else{
            $optionTitle = $optionName;
        }
        $optionKey = $translit->translate($optionTitle, 'russian');
        $optionKey = str_replace([' ','.'],['_',''],$optionKey);
        $optionKey = preg_replace('/([^a-zA-Z0-9\\x2d-\\x2f\\x7f-\\xff-_])/','',$optionKey);
        $optionKey = str_replace('℃','', $optionKey);
        //Если опции еще нет, создаем ее
        /** @var msOption $msOption */
        $msOption = $modx->getObject('msOption', ['key' => $optionKey]);
        if(!$msOption) {
            if($modx->error){
                $modx->error->reset();
            }
            /** @var modProcessorResponse $response */
            $response = $modx->runProcessor('mgr/settings/option/create', [
                'key' => $optionKey,
                'caption' => $optionTitle,
                'measure_unit' => $optionUnit,
                'type' => 'textfield',
            ], [
                'processors_path' => MODX_CORE_PATH . 'components/minishop2/processors/',
            ]);
            if(!$response->response['success']){
                echo "[ОШИБКА] Не удалось создать опцию: ".$optionTitle." - ".$optionKey."\n";
                processResponseErrors($response,['class_key' => 'msOption', 'title' => $optionTitle]);
                exit;
            }
            else{
                //echo "[УСПЕШНО СОЗДАНА ОПЦИЯ] ".$optionKey.' - '.$optionTitle.' - '.$optionUnit."\n";
            }
            $optionId = $response->response['object']['id'];
        }
        if($modx->error){
            $modx->error->reset();
        }
        //привязать опции к категории
        $response = $modx->runProcessor('mgr/settings/option/assign', [
            'option_id' => $optionId,
            'category_id' => $categoryId,
        ], [
            'processors_path' => MODX_CORE_PATH . 'components/minishop2/processors/',
        ]);
        if($response->response['success']){
            //echo "[ОПЦИЯ УСПЕШНО ПРИВЯЗАНА] ".$optionKey.' - '.$categoryId."\n";
        }

        //Формируем выходной массив
        $outputArray['options-'.$optionKey] = $optionValue;
    }

    return $outputArray;
}

/**
 * @param modProcessorResponse $response
 */
function processResponseErrors($response, $extendedData = []){
    echo "============================\n";
    echo "[ОШИБКА] Не удалось создать объект ".$extendedData['class_key'].": ".$extendedData['title'].". ПРОПУСКАЕМ!\n";
    if($response instanceof modProcessorResponse) {
        echo $response->getMessage() . "\n";
        if (!empty($response->errors)) {
            /** @var modProcessorResponseError $error */
            foreach ($response->errors as $error) {
                echo $error->getField() . ':' . $error->getMessage() . "\n";
            }
        }
        echo "============================\n";
    }
    elseif(is_string($response)){
        echo $response."\n";
    }
}

function initializeProcessor($className,$filePath)
{
    global $modx;
    $modx->processors[$filePath] = $className;
    require_once $filePath;
}

function processContentString($content){
    $content = str_replace('<br>',"\n", $content);
    $content = str_replace("\r\n", "\n", $content);
    $content = str_replace("\n\n", "\n", $content);
    $content = explode("\n", $content);
    $output = '';
    foreach($content as $paragraph){
        $paragraph = trim($paragraph,"   \t\n\r\0\x0B");
        if(!empty($paragraph)){
            $output .= "<p>".$paragraph."</p>";
        }
    }
    return $output;
}

require_once(MODX_CORE_PATH.'model/modx/modprocessor.class.php');
initializeProcessor('modResourceCreateProcessor', MODX_CORE_PATH.'model/modx/processors/resource/create.class.php');
initializeProcessor('modResourceUpdateProcessor', MODX_CORE_PATH.'model/modx/processors/resource/update.class.php');
initializeProcessor('msCategoryCreateProcessor', MODX_CORE_PATH . 'components/minishop2/processors/mgr/category/create.class.php');
initializeProcessor('msCategoryUpdateProcessor', MODX_CORE_PATH . 'components/minishop2/processors/mgr/category/update.class.php');
initializeProcessor('msProductCategoryMemberProcessor', MODX_CORE_PATH . 'components/minishop2/processors/mgr/product/category.class.php');
initializeProcessor('msProductUpdateProcessor', MODX_CORE_PATH . 'components/minishop2/processors/mgr/product/update.class.php');
initializeProcessor('msProductCreateProcessor',MODX_CORE_PATH.'components/minishop2/processors/mgr/product/create.class.php');
initializeProcessor('msOptionCreateProcessor',MODX_CORE_PATH.'components/minishop2/processors/mgr/settings/option/create.class.php');
initializeProcessor('msOptionAssignProcessor',MODX_CORE_PATH.'components/minishop2/processors/mgr/settings/option/assign.class.php');
initializeProcessor('msResourceFileUploadProcessor',MODX_CORE_PATH.'components/ms2gallery/processors/mgr/gallery/upload.class.php');
initializeProcessor('msProductFileUploadProcessor',MODX_CORE_PATH.'components/minishop2/processors/mgr/gallery/upload.class.php');

foreach(glob(SAMPLE_DATA_DIR.'/*.json') as $categoryDataFile){
    $categoryData = file_get_contents($categoryDataFile);
    $categoryData = json_decode($categoryData,true);
    importCategory(PARENT_CATEGORY_ID, $categoryData);
}