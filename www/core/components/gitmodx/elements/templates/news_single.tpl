<!DOCTYPE html>
<html lang="ru">
<head>
  {include 'b.head'}
</head>
<body>
{include 'b.header'}
<div class="wrapper footer_v1_mod">
    <div class="base footer_v1_mod">
        <div class="page_head_block v3_mod">
            {include 'b.breadCrumbs'
                version = 2
            }
            <h2 class="page_head_title black_mod">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h2>
        </div>
        <div class="news_block single_mod">
            {'ms2Gallery' | snippet : [
                'frontend_css' => '',
                'frontend_js' => '',
                'limit' => 1,
                'parents' => 0,
                'resources' => $_modx->resource.id,
                'tpl' => '@INLINE {foreach $files as $file}<div class="news_i_w single_mod"><img src="{$file.page_image}" class="news_i single_mod" alt="{$file.alt | htmlent}"></div>{/foreach}'
            ]}

            <div class="news_container single_mod">
                <div class="news_date single_mod">{$_modx->resource.publishedon | strtotime | humanDate: '{day} {monthName} {year}'}</div>
                <div class="news_text single_mod">
                    {if $_modx->resource.introtext}
                        <p class="big">[[*introtext]]</p>
                    {/if}
                    [[*content]]
                </div>
            </div>
        </div>
        {include 'b.mainNews'}
    </div>
</div>
{include 'b.footer'}
{include 'b.footerScripts'}
</body>
</html>
