<!DOCTYPE html>
<html lang="ru">
<head>
    {include 'b.head'}
</head>
<body class="not_found_mod">
<div class="wrapper not_found_mod">
    <div class="not_found_block">
        <div class="not_found_first_row">
            <h1 class="not_found_title">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
            <div class="not_found_def">{$_modx->resource.introtext}</div>
        </div>

        {if $_modx->resource.id != $_modx->config.site_unavailable_page}
            <div class="not_found_sec_row">
                <div class="not_found_sec_row_text">Проверьте другие разделы:</div>
                {'pdoMenu' | snippet : [
                    'parents' => 0,
                    'level' => 1,
                    'tplOuter' => '@INLINE <nav class="not_found_nav"><ul class="not_found_nav_list">{$wrapper}</ul></nav>',
                    'tpl' => '@INLINE <li class="not_found_nav_item"><a href="{$link}" class="not_found_nav_link">{$menutitle}</a></li>',
                ]}
            </div>
        {/if}
    </div>
</div>
{include 'b.footerScripts'}
</body>
</html>
