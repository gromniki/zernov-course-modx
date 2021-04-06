<ul class="catalog_list" id="products_list">
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
        'ajaxElemWrapper' => '#product_modifications',
        'ajaxElemRows' => '#products_list',
        'ajaxElemPagination' => '#product_modifications .pag_list',
        'ajaxElemLink' => '#product_modifications .pag_link',
        'ajaxElemMore' => '#products_more_button',
        'ajaxTplMore' => '@INLINE <a href="#" class="products_load_more_block" id="products_more_button"><span class="news_load_more_block_in">Показать более ранние новости</span></a>',

        'includeTVs' => '',
        'processTVs' => '',
        'tvPrefix' => '',
        'tpl' => 'e.newsItem',
        'includeThumbs' => 'preview',
        'sortby' => '{"publishedon":"DESC"}'
    ]}


    {*<li class="catalog_item single_mod mod_list">
        <div class="product_block single_mod">
            <div class="product_i_w">
                <img alt="" src="assets/images_example/products/27/380x178/avtomaticheskie-vyklyuchateli-iek-1.png" class="product_i"/>
            </div>
            <div class="product_static_block single_mod">
                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-6a-1p-4,5ka.html" class="product_title single_mod">
                    <span class="product_title_text">mZ406C 6A 1p 4,5кА</span>
                    <span class="product_article single_mod">арт.: z406c</span>
                </a>
                <div class="product_price_block v1_mod">
                    <div class="product_price v1_mod"><span class="big">1 350</span>
                        <span class="small">руб</span>
                    </div>
                </div>
                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-6a-1p-4,5ka.html" class="product_static_butt">
                    <span class="product_static_butt_in">Подробнее</span>
                </a>
            </div>
            <div class="product_sliding_block">
                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-6a-1p-4,5ka.html" class="product_title single_mod">mZ406C
                    6A 1p 4,5кА</a>
                <div class="product_price_block v1_mod">
                    <div class="product_price v1_mod"><span class="big">1 350</span>
                        <span class="small">руб</span>
                    </div>
                </div>
                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-6a-1p-4,5ka.html" class="product_sliding_butt">
                    <span class="product_sliding_butt_in">Подробнее</span></a>
            </div>
        </div>
    </li>
    <li class="catalog_item single_mod mod_list">
        <div class="product_block single_mod">
            <div class="product_i_w">
                <img alt="" src="assets/images_example/products/28/380x178/0d7ee13380653d9b0ef18bb115008a82.png" class="product_i"/>
            </div>
            <div class="product_static_block single_mod">
                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-10a-1p-4,5ka.html" class="product_title single_mod">
                    <span class="product_title_text">mZ406C 10A 1p 4,5кА</span>

                </a>
                <div class="product_price_block v1_mod">
                    <div class="product_price v1_mod"><span class="big">1 320</span>
                        <span class="small">руб</span>
                    </div>
                </div>
                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-10a-1p-4,5ka.html" class="product_static_butt">
                    <span class="product_static_butt_in">Подробнее</span>
                </a>
            </div>
            <div class="product_sliding_block">
                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-10a-1p-4,5ka.html" class="product_title single_mod">mZ406C
                    10A 1p 4,5кА</a>
                <div class="product_price_block v1_mod">
                    <div class="product_price v1_mod"><span class="big">1 320</span>
                        <span class="small">руб</span>
                    </div>
                </div>
                <a href="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-10a-1p-4,5ka.html" class="product_sliding_butt">
                    <span class="product_sliding_butt_in">Подробнее</span></a>
            </div>
        </div>
    </li>*}
</ul>
{$_modx->getPlaceholder('page.nav')}
