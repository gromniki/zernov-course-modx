<!DOCTYPE html>
<html lang="ru">
<head>
    {include 'b.head'}
</head>
<body>
{include 'b.header'}
<div class="wrapper footer_v1_mod">
    <div class="base footer_v1_mod">
        <div class="page_head_block v2_mod tablet_1_mod" {'ms2Gallery' | snippet : [
            'frontend_css' => '',
            'frontend_js' => '',
            'parents' => 0,
            'limit' => 1,
            'resources' => $_modx->resource.id,
            'tpl' => '@INLINE {foreach $files as $file}style="background-image: url(\'{$file.header_image}\');"{/foreach}'
        ]}>
            <h2 class="page_head_title white_mod">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h2>
            {include 'b.breadCrumbs'}
        </div>

        {'pdoMenu' | snippet : [
            'parents' => $_modx->config.le_about_page_id,
            'level' => 1,
            'tplOuter' => 'b.navOuter',
            'tpl' => 'b.navRow',
            'hereClass' => 'active_mod'
        ]}

        <div class="about_block v1_mod">
            <h2 class="about_block_title v1_mod">[[*textPageSubtitle]]</h2>
            <div class="about_block_i_w v1_mod">
                {'ms2Gallery' | snippet : [
                    'frontend_css' => '',
                    'frontend_js' => '',
                    'parents' => 0,
                    'limit' => 1,
                    'offset' => 1,
                    'resources' => $_modx->resource.id,
                    'tpl' => '@INLINE {foreach $files as $file}<img alt="{$file.alt}" src="{$file.header_image}" class="about_block_i v1_mod">{/foreach}'
                ]}
            </div>
            <div class="about_info_w v1_mod">
                <div class="about_info_text v1_mod">[[*content]]</div>
                <ul class="companies_list v1_mod">
                    {var $files = $_modx->resource.fileList | json_decode}
                    {if ($files | iterable) && ($files | count > 0)}
                        {foreach $files as $file}
                            <li class="companies_item v1_mod">
                                <div class="companies_item_in v1_mod">
                                    <span class="company_name v1_mod">{$file.title}</span>
                                    {if $file.link}
                                        <a href="{$file.link}" target="_blank" class="company_site v1_mod">
                                            {$file.link | preg_replace: '#^https?://#i' : '' | preg_replace: '#/$#' : ''}
                                        </a>
                                    {/if}
                                    {if $file.file}
                                        <a href="{'le_manager_upload_files_path' | option}{$file.file}" target="_blank"
                                           class="company_down_link v1_mod"><span>Скачать файл</span></a>
                                    {/if}
                                </div>
                            </li>
                        {/foreach}
                    {/if}
                </ul>
            </div>
        </div>
    </div>
</div>
{include 'b.footer'}
{include 'b.footerScripts'}
</body>
</html>
