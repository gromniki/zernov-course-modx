<?php
/**
 * Плагин создает разные размеры превью изображений при загрузке через файловый менеджер в админке
 *
 * 
 * Для работы необходимо также установить компонент: Resizer Extra (http://modx.com/extras/package/resizer)
 *
 * Настройка: плагин должен срабатывать на событие OnFileManagerUpload
 * Добавьте настройку le_enable_thumbs_for_sources, в которой должны быть перечислены ID источников файлов, для которых
 * нужно делать ресайзы (в виде массива или через запятую)
 *
 * Добавьте настройку le_image_sizes, в виде json или массива, которая должна содержать размеры превьюшек.
 * Например le_image_sizes = '[{"w":155,"h":155},{"w":255,"h":255}]'
 */
if (!isset($modx)) return;
if ($modx->event->name != 'OnFileManagerUpload')
{
    return;
}

/**
 * @var modFileMediaSource $obj_media_source
 */
$obj_media_source = $modx->event->params['source'];
$allowedMediaSources = $modx->getOption("le_enable_thumbs_for_sources");
if(is_string($allowedMediaSources)){
    $allowedMediaSources = explode(',',$allowedMediaSources);
}
if(!in_array($obj_media_source->get('id'),$allowedMediaSources))
{
    //Если ичтоник не разрешен, выходим
    return;
}

$logging = false;            // perform logging both in MODX and Resizer debug

$file = $modx->event->params['files']['file'];
// abort on error
if ($file['error'] != 0)
{
    $modx->log(modX::LOG_LEVEL_ERROR, 'autoResizeOnUpload: $file["error"] occured.');
    return;
}
$directory_uploaded_to = $modx->event->params ['directory'];      // get upload directory from OnFileManagerUpload event
$file_name = $file['name'];                                       // get the filename eg. picture.jpg
preg_match('#\.([A-Za-z0-9]+)$#ui',$file_name,$matches);
$file_ext = strtolower($matches[1]);
/**
 * sanitize file_name
 */

// replace non alphanumeric characters with dash
$file_name_safe = preg_replace('/[^a-zA-Z0-9А-Яа-я-_\.]/ui', '-', $file_name);
// file_name could end up with consecutive dashes for replaced characters eg.
// image (2014).jpg becomes: image--2014-.jpg so remove consecutive dashes
$file_name_safe = preg_replace('/--+/', '-', $file_name_safe);
// create array of upload_images extensions from system settings
$allowed_extensions = explode(',', $modx->getOption('upload_images'));
// trim white space
$allowed_extensions = array_map('trim', $allowed_extensions);
/**
 * Get media source properties for default media source
 *
 */

// get modMediaSource properties
$ms_props = $obj_media_source->get('properties');
$ms_basePath = $ms_props['basePath']['value'];
$file_path_abs = MODX_BASE_PATH . $ms_basePath . rtrim($directory_uploaded_to,'/') . '/' . ltrim($file_name,'/');
$file_path_abs_safe = MODX_BASE_PATH . $ms_basePath . rtrim($directory_uploaded_to,'/') . '/' . ltrim($file_name_safe,'/');
// get properties of image as array, includes file type and a height/width text string
$file_dimensions = getimagesize($file_path_abs);


//move file to safe name
rename($file_path_abs, $file_path_abs_safe);

/**
 * Final check before running Resizer
 *
 * Is image filetype is in allowed extensions +
 * are dimensions of uploaded file greater than sizes allowed in config
 *
 */
if (in_array($file_ext, $allowed_extensions))
{
    // example code source for resizer: https://github.com/oo12/Resizer#snippet-developers
    //$modx->loadClass( 'Resizer', MODX_CORE_PATH . 'components/resizer/model/', true, true );

    if (!$modx->loadClass('Resizer', MODX_CORE_PATH . 'components/resizer/model/', true, true))
    {
        // Resizer not installed, log error and exit
        $modx->log(modX::LOG_LEVEL_ERROR, 'Error: autoResizeOnUpload Plugin - Resizer component not found.');
        return;
    }

    $resizer = new Resizer($modx);  // pass in the modx object

    if ($logging == true)
    {
        $resizer->debug = true;  // (optional) Enable debugging messages.
    }


    $configs = $modx->getOption('le_image_sizes');
    if(is_string($configs)){
        $configs = json_decode($configs,true);
    }

    foreach($configs as $config)
    {
        if(!($file_dimensions[0] > $config['w'] || $file_dimensions[1] > $config['h'])) continue;
        $width = $config['w'];
        $height = $config['h'];
        $outputDir = MODX_BASE_PATH . $ms_basePath . rtrim($directory_uploaded_to, '/') . '/thumbs/' . $width . 'x' . $height;

        //Создаем каталоги под превьюшки
        if (!is_dir($outputDir))
        {
            mkdir($outputDir,0777,true);
        }

        $outputPath = $outputDir . '/' . ltrim($file_name_safe,'/');

        $resizer->processImage(
            $file_path_abs_safe,         // input image file (path can be absolute or relative to MODX_BASE_PATH)
            $outputPath,    // output image file. Extension determines image format.
            $config                 // config array
        );


        // (optional) record Resizer debug message array for the modx error log
        if ($logging == true)
        {
            $log_resizer .= PHP_EOL . '=======[ Resizer Log ]=======' . PHP_EOL;
            $log_resizer .= substr(print_r($resizer->debugmessages, TRUE), 7, -2);
        }
    }
}
/**
 * Debug logging
 */

if ($logging == true)
{
    $log_autoResizeOnUpload .= PHP_EOL . '=======[ autoResizeOnUpload Plugin - Debug Log ]=======' . PHP_EOL;

    // OnFileManagerUpload fired
    $log_autoResizeOnUpload .= 'OnFileManagerUpload event fired.' . PHP_EOL;

    // ms_basePath
    $log_autoResizeOnUpload .= '$ms_basePath = ' . $ms_basePath . PHP_EOL;

    // file
    $log_autoResizeOnUpload .= '$file = ' . $file . PHP_EOL;

    // directory_uploaded_to
    $log_autoResizeOnUpload .= '$directory_uploaded_to = ' . $directory_uploaded_to . PHP_EOL;

    // file_path_abs
    $log_autoResizeOnUpload .= '$file_path_abs = ' . $file_path_abs . PHP_EOL;

    // file_path_abs_safe
    $log_autoResizeOnUpload .= '$file_path_abs_safe = ' . $file_path_abs_safe . PHP_EOL;

    // file_name
    $log_autoResizeOnUpload .= '$file_name = ' . $file_name . PHP_EOL;
    // file_ext
    $log_autoResizeOnUpload .= '$file_ext = ' . $file_ext . PHP_EOL;

    // file_dimensions
    $log_autoResizeOnUpload .= '$file_dimensions = ' . $file_dimensions . PHP_EOL;

    // width of uploaded file
    $log_autoResizeOnUpload .= 'WIDTH = ' . $file_dimensions[0] . PHP_EOL;

    // heght of uploaded file
    $log_autoResizeOnUpload .= 'HEIGHT = ' . $file_dimensions[1] . PHP_EOL;

    // resizer log
    $log_autoResizeOnUpload .= PHP_EOL . '$resizer_log: ' . PHP_EOL . $log_resizer;

    // commit details to MODX error log
    $modx->log(modX::LOG_LEVEL_ERROR, $log_autoResizeOnUpload);
}