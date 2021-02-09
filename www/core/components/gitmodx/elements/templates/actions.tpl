<!DOCTYPE html>
<html lang="ru">
<head>
    {include 'b.head'}
</head>
<body>
{include 'b.header'}
<div class="wrapper footer_v1_mod">
    <div class="base footer_v1_mod" id="news_container">
        <div class="page_head_block v3_mod decor_1_mod">
            <h1 class="page_head_title black_mod">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
            {include 'b.breadCrumbs'
                noBgMod = true
            }
        </div>

        <ul class="news_list all_mod" id="news_list">
            {'!pdoPage' | snippet : [
                'plPrefix' => '',
                'limit' => $_modx->config.le_news_on_page_limit,
                'maxLimit' => '100',
                'pageVarKey' => 'page',
                'totalVar' => 'page.total',
                'pageLimit' => '2',
                'element' => 'ms2GalleryResources',
                'pageNavVar' => 'page.nav',
                'pageCountVar' => 'pageCount',
                'pageLinkScheme' => '',

                'tplPage' => '@INLINE <li class="pag_item"><a class="pag_link" title="[[+pageNo]]" href="[[+href]]">[[+pageNo]]</a></li>',
                'tplPageWrapper' => '@INLINE <div class="pag_block"><ul class="pag_list">[[+pages]]</ul></div>',
                'tplPageActive' => '@INLINE <li class="pag_item"><a class="pag_link active_mod" title="[[+pageNo]]" href="[[+href]]">[[+pageNo]]</a></li>',
                'tplPageSkip' => '@INLINE <li class="pag_item more_mod"><span>...</span></li>',

                'cache' => '1',
                'toPlaceholder' => '',
                'frontend_js' => 'assets/js/le-pdopage.js',
                'frontend_css' => '',
                'setMeta' => '1',
                'strictMode' => '1',

                'ajaxMode' => 'button',
                'ajaxElemWrapper' => '#news_container',
                'ajaxElemRows' => '#news_list',
                'ajaxElemPagination' => '#news_container .pag_list',
                'ajaxElemLink' => '#news_container .pag_link',
                'ajaxElemMore' => '#news_more_button',
                'ajaxTplMore' => '@INLINE <a href="#" class="news_load_more_block" id="news_more_button"><span class="news_load_more_block_in">Показать ещё</span></a>',

                'includeTVs' => '',
                'processTVs' => '',
                'tvPrefix' => '',
                'tpl' => 'e.newsItem',
                'includeThumbs' => 'preview',
                'sortby' => '{"publishedon":"DESC"}'
            ]}
        </ul>
        {$_modx->getPlaceholder('page.nav')}
    </div>
</div>
{include 'b.footer'}
{include 'b.footerScripts'}
</body>
</html>
