<!DOCTYPE html>
<html lang="ru">
<head>
    {include 'b.head'}
    <script>
        var contactsPage = true;
        var mapLat = [[++le_map_lat]];
        var mapLng = [[++le_map_lng]];
    </script>
</head>
<body>
{include 'b.header'}
<div class="wrapper footer_v1_mod">
    <div class="base footer_v1_mod">
        <div class="page_head_block v3_mod">
            <h1 class="page_head_title black_mod">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
            {include 'b.breadCrumbs' version = 2}
        </div>
        <div class="cont_map_hold_w">
            <div id="cont_map_hold" class="cont_map_hold"></div>
        </div>
        {'!AjaxForm' | snippet : [
            'form' => 'b.contactsForm',
            'frontend_js' => 'assets/js/le-ajaxform.js',
            'frontend_css' => '',
            'hooks' => 'email,FormItSaveForm',
            'submitVar' => 'sendContacts',
            'emailTpl' => 'email.contactsForm',
            'emailTo' => $_modx->config.le_forms_email,
            'emailFrom' => $_modx->config.emailsender,
            'emailSubject' => 'Задан вопрос на сайте ' ~ $_modx->config.site_url,
            'validate' => 'name:required,email:fiValidatorCheckContactFields,phone:fiValidatorCheckContactFields,comment:required',
            'customValidators' => 'fiValidatorCheckContactFields',
            'validationErrorMessage' => 'Укажите корректную информацию. Заполните все необходимые поля.',
            'successMessage' => 'Спасибо за ваш вопрос. Мы постараемся ответить на него в ближайшее время.',
            'errTpl' => '[[+error]]',
            'formName' => 'Контактная форма',
            'formEncrypt' => '0',
            'formFields' => 'name,email,phone,comment',
            'fieldNames' => 'name==Имя клиента,email==Email,phone==Телефон,comment==Сообщение'
        ]}
    </div>
</div>
<div class="map_label" style="display:none;">
    <div class='tooltip v2_mod'>
        <span class='tooltip_title v2_mod'>Наш офис:</span>
        <span class='address tooltip_mod'>[[++le_site_address]]</span>
        <span class='phone tooltip_mod'>[[++le_site_phone]]</span>
        <a href='mailto:[[++le_site_email]]' class='site_link tooltip_mod'>[[++le_site_email]]</a>
    </div>
</div>
{include 'b.footer'}
{include 'b.footerScripts'}
</body>
</html>
