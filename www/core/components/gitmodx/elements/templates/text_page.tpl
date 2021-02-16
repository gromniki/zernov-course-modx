<!DOCTYPE html>
<html lang="ru">
<head>
    {include 'b.head'}
</head>
<body>
{include 'b.header'}
<div class="wrapper footer_v1_mod split_mod">
    <div class="base footer_v1_mod split_mod">
        <div class="page_content_block v1_mod">
            <div class="page_head_block v4_mod">
                {include 'b.breadCrumbs'
                    noBgMod = true
                }
                <h2 class="page_head_title black_mod offset_1_mod">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h2>
            </div>
            {'ms2Gallery' | snippet : [
                'frontend_css' => '',
                'frontend_js' => '',
                'limit' => 1,
                'parents' => 0,
                'resources' => $_modx->resource.id,
                'tpl' => '@INLINE {foreach $files as $file}<div class="text_page_i_w"><img src="{$file.page_image}" class="text_page_i" alt="{$file.alt | htmlent}"></div>{/foreach}'
            ]}
            <div class="text_page_text_w">
                <div class="text_page_text">
                    {if $_modx->resource.introtext}
                        <p class="big">[[*introtext]]</p>
                    {/if}
                    [[*content]]
                </div>

                {if $_modx->resource.parent != $_modx->config.le_actions_page_id}
                    {'pdoMenu' | snippet : [
                        'parents' => $_modx->resource.parent,
                        'level' => 1,
                        'tplOuter' => '@INLINE <ul class="text_page_link_list">{$wrapper}</ul>',
                        'tpl' => '@INLINE <li class="text_page_link_item {$classnames}"><a href="{$link}" class="text_page_link {$classnames}">•<span>{$menutitle}</span></a></li>',
                        'hereClass' => 'active_mod'
                    ]}
                {/if}
            </div>
        </div>
        <aside class="page_aside_block v1_mod">
            <ul class="aside_sections_list">
                {'pdoResources' | snippet : [
                    'tplWrapper' => 'b.asideNews',
                    'tpl' => 'e.asideNewsItem',
                    'parents' => $_modx->config.le_news_page_id,
                    'limit' => 10,
                    'includeTVs' => '',
                    'processTVs' => '',
                    'tvPrefix' => '',
                    'sortby' => '{"publishedon":"DESC"}',
                ]}

                {* TODO сделать блок с новинками *}
                <li class="aside_sections_item">
                    <div class="novelty_container slider_v2_mod">
                        <h2 class="section_title v3_mod">Новинки</h2>
                        <ul id="novelty_slider_1" class="novelty_list">
                            <li class="novelty_item slider_v2_mod">
                                <ul class="novelty_sub_list slider_v2_mod">

                                    <li class="catalog_item single_mod new_aside_mod">
                                        <div class="product_block single_mod">
                                            <div class="product_i_w">
                                                <img alt="" src="assets/images_example/products/184/380x178/z606.4.png" class="product_i"/>
                                            </div>
                                            <div class="product_static_block single_mod">
                                                <a href="katalog/z606-serii-effica-12kv-3.2a.html" class="product_title single_mod">
                                                    <span class="product_title_text">z606 серии Effica 12кВ 3.2А</span>

                                                </a>
                                                <div class="product_price_block v2_mod">
                                                    <a href="user/signup.html" class="product_reg_link">Зарегистрироваться</a>
                                                </div>
                                                <a href="katalog/z606-serii-effica-12kv-3.2a.html" class="product_static_butt">
                                                    <span class="product_static_butt_in">Подробнее</span>
                                                </a>
                                            </div>
                                            <div class="product_sliding_block">
                                                <a href="katalog/z606-serii-effica-12kv-3.2a.html" class="product_title single_mod">z606
                                                    серии Effica 12кВ 3.2А</a>
                                                <div class="product_article single_mod">арт:</div>
                                                <div class="product_price_block v2_mod">
                                                    <a href="user/signup.html" class="product_reg_link">Зарегистрироваться</a>
                                                </div>
                                                <a href="katalog/z606-serii-effica-12kv-3.2a.html" class="product_sliding_butt">
                                                    <span class="product_sliding_butt_in">Подробнее</span></a>
                                            </div>

                                        </div>
                                    </li>

                                    <li class="catalog_item single_mod new_aside_mod">
                                        <div class="product_block single_mod">
                                            <div class="product_i_w">
                                                <img alt="" src="assets/images_example/products/183/380x178/z606.2.png" class="product_i"/>
                                            </div>
                                            <div class="product_static_block single_mod">
                                                <a href="katalog/z606-serii-effica-12kv-1.6a.html" class="product_title single_mod">
                                                    <span class="product_title_text">z606 серии Effica 12кВ 1.6А</span>

                                                </a>
                                                <div class="product_price_block v2_mod">
                                                    <a href="user/signup.html" class="product_reg_link">Зарегистрироваться</a>
                                                </div>
                                                <a href="katalog/z606-serii-effica-12kv-1.6a.html" class="product_static_butt">
                                                    <span class="product_static_butt_in">Подробнее</span>
                                                </a>
                                            </div>
                                            <div class="product_sliding_block">
                                                <a href="katalog/z606-serii-effica-12kv-1.6a.html" class="product_title single_mod">z606
                                                    серии Effica 12кВ 1.6А</a>
                                                <div class="product_article single_mod">арт:</div>
                                                <div class="product_price_block v2_mod">
                                                    <a href="user/signup.html" class="product_reg_link">Зарегистрироваться</a>
                                                </div>
                                                <a href="katalog/z606-serii-effica-12kv-1.6a.html" class="product_sliding_butt">
                                                    <span class="product_sliding_butt_in">Подробнее</span></a>
                                            </div>

                                        </div>
                                    </li>

                                </ul>
                            </li>
                            <li class="novelty_item slider_v1_mod">
                                <ul class="novelty_sub_list slider_v1_mod">

                                    <li class="catalog_item single_mod new_aside_mod">
                                        <div class="product_block single_mod">
                                            <div class="product_i_w">
                                                <img alt="" src="assets/images_example/products/28/380x178/0d7ee13380653d9b0ef18bb115008a82.png" class="product_i"/>
                                            </div>
                                            <div class="product_static_block single_mod">
                                                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-10a-1p-4,5ka.html" class="product_title single_mod">
                                                    <span class="product_title_text">mZ406C 10A 1p 4,5кА</span>

                                                </a>
                                                <div class="product_price_block v2_mod">
                                                    <a href="user/signup.html" class="product_reg_link">Зарегистрироваться</a>
                                                </div>
                                                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-10a-1p-4,5ka.html" class="product_static_butt">
                                                    <span class="product_static_butt_in">Подробнее</span>
                                                </a>
                                            </div>
                                            <div class="product_sliding_block">
                                                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-10a-1p-4,5ka.html" class="product_title single_mod">mZ406C
                                                    10A 1p 4,5кА</a>
                                                <div class="product_article single_mod">арт:</div>
                                                <div class="product_price_block v2_mod">
                                                    <a href="user/signup.html" class="product_reg_link">Зарегистрироваться</a>
                                                </div>
                                                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-10a-1p-4,5ka.html" class="product_sliding_butt">
                                                    <span class="product_sliding_butt_in">Подробнее</span></a>
                                            </div>

                                        </div>
                                    </li>

                                    <li class="catalog_item single_mod new_aside_mod">
                                        <div class="product_block single_mod">
                                            <div class="product_i_w">
                                                <img alt="" src="assets/images_example/products/27/380x178/avtomaticheskie-vyklyuchateli-iek-1.png" class="product_i"/>
                                            </div>
                                            <div class="product_static_block single_mod">
                                                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-6a-1p-4,5ka.html" class="product_title single_mod">
                                                    <span class="product_title_text">mZ406C 6A 1p 4,5кА</span>
                                                    <span class="product_article single_mod">арт.: z406c</span>
                                                </a>
                                                <div class="product_price_block v2_mod">
                                                    <a href="user/signup.html" class="product_reg_link">Зарегистрироваться</a>
                                                </div>
                                                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-6a-1p-4,5ka.html" class="product_static_butt">
                                                    <span class="product_static_butt_in">Подробнее</span>
                                                </a>
                                            </div>
                                            <div class="product_sliding_block">
                                                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-6a-1p-4,5ka.html" class="product_title single_mod">mZ406C
                                                    6A 1p 4,5кА</a>
                                                <div class="product_article single_mod">арт: z406c</div>
                                                <div class="product_price_block v2_mod">
                                                    <a href="user/signup.html" class="product_reg_link">Зарегистрироваться</a>
                                                </div>
                                                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-6a-1p-4,5ka.html" class="product_sliding_butt">
                                                    <span class="product_sliding_butt_in">Подробнее</span></a>
                                            </div>

                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <a href="katalog/index.html" class="novelty_butt slider_v2_mod"><span class="novelty_butt_in slider_v2_mod">Каталог товаров</span>
                        </a>
                    </div>
                </li>

                {'ms2GalleryResources' | snippet : [
                    'includeThumbs' => 'medium',
                    'tplWrapper' => 'b.asideActions',
                    'tpl' => 'e.asideActionsItem',
                    'parents' => $_modx->config.le_actions_page_id,
                    'limit' => 10,
                    'includeTVs' => '',
                    'processTVs' => '',
                    'tvPrefix' => '',
                    'sortby' => '{"publishedon":"DESC"}',
                ]}
            </ul>
        </aside>
    </div>
</div>
{include 'b.footer'}
{include 'b.footerScripts'}
</body>
</html>
