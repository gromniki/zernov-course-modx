<!DOCTYPE html>
<html lang="ru">
<head>
  {include 'b.head'}
</head>
<body>
{include 'b.header'}
<div class="wrapper footer_v1_mod">
    <div class="base footer_v1_mod">
        {include 'b.pageTitleWithBg'}

        {'pdoCrumbs' | snippet : [
            'tplWrapper' => 'ЧАНК ОБЕРТКИ',
            'tpl' => 'ЧАНК ЭЛЕМЕНТА',
            'tplCurrent' => 'ЧАНК ТЕКУЩЕГО ЭЛЕМЕНТА',
            'tplHome' => 'ЧАНК ПЕРВОГО ЭЛЕМЕНТА',
            'showHome' => '1',
        ]}
        <nav itemprop="breadcrumb" itemscope="itemscope" itemtype="http://schema.org/BreadcrumbList" class="breadcrumbs_wrap no_bg_mod bottom_mod gray_bg_mod">
            <meta itemprop="name" content="Breadcrumb"/>
            <meta itemprop="description" content="Navigation path"/>
            <ul itemprop="itemListElement" class="breadcrumbs_list no_bg_mod bottom_mod gray_bg_mod">
                <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb" class="breadcrumbs_l_item  no_bg_mod bottom_mod gray_bg_mod">
                    <a href="assets/index.html" title="Главная" class="breadcrumbs_link no_bg_mod bottom_mod gray_bg_mod">
                        <span class="breadcrumbs_text no_bg_mod bottom_mod gray_bg_mod">Главная</span>
                    </a>
                </li>
                <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb" class="breadcrumbs_l_item  no_bg_mod bottom_mod gray_bg_mod">
                    <span class="breadcrumbs_text  no_bg_mod bottom_mod gray_bg_mod">Для производителей НКУ</span>
                </li>
            </ul>
        </nav>
        <div class="cooperation_block v2_mod">
            <div class="cooperation_i_w v2_mod"><img alt="" src="assets/i/man_3.png" class="cooperation_i v2_mod">
            </div>
            <div class="cooperation_block_in v2_mod">
                <h2 class="cooperation_title v2_mod">Приглашаем к сотрудничеству</h2>

                <div class="cooperation_text v2_mod">Наша компания готова предложить широкий спектр электрооборудования
                    собственного производства, в том числе аккумуляторные шкафы, панели распределения тока и
                    выпрямительные системы.
                </div>
            </div>
        </div>
        <div class="about_block v1_mod">
            <h2 class="about_block_title v1_mod">Процесс работы в LECTSHOP</h2>

            <div class="about_block_i_w v1_mod mod_video" style="background: url(http://img.youtube.com/vi/1Q6V5MtVi1U/maxresdefault.jpg) center no-repeat; background-size: cover;">
                <a href="assets/index.html#video-container" data-toggle="video" data-video="1Q6V5MtVi1U" class="about_block_play v1_mod"></a>
            </div>
        </div>
        <ul class="split_list v2_mod">
            <li class="split_item layout_mod_v3">
                <div class="prod_more_block v1_mod">
                    <div class="prod_more_i_w v1_mod">
                        <img alt="" src="assets/i/product_4.png" class="prod_more_i v1_mod"/>
                    </div>
                    <div class="prod_more_in v1_mod">
                        <h2 class="prod_more_title v1_mod">Подробнее о нашей продукции</h2>

                        <div class="prod_more_def v1_mod">Ознакомьтесь с каталогом нашей продукции</div>
                        <a href="katalog/index.html" class="prod_more_butt"><span class="prod_more_butt_in">Каталог продукции</span></a>
                    </div>
                </div>
            </li>
            <li class="split_item layout_mod_v3">
                <div class="register_block v1_mod">
                    <div class="register_i_w v1_mod">
                        <img alt="" src="assets/i/man_2.png" class="register_i v1_mod">
                    </div>
                    <div class="register_block_in v1_mod">
                        <h2 class="register_title v1_mod">Зарегистрируйтесь и получайте бонусы!</h2>
                        <div class="register_text">
                            <ul>
                                <li>
                                    Храните историю заказов
                                </li>
                                <li>
                                    Получайте скидки после совершения заказа
                                </li>
                                <li>
                                    Скачайте электронный прайс-лист после регистрации
                                </li>
                                <li>
                                    <div class="register_item_in v1_mod blue_mod">
                                        <span>Получите</span><span>доступ</span><span>к</span><span class="bold">ценам</span><span>,</span><span class="bold">CAD-схемам</span><span>,</span><span class="bold">3D-моделям</span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <a href="user/signup.html" class="reg_butt v1_mod"><span class="reg_butt_in v1_mod">Зарегистрироваться</span>
                        </a>
                    </div>
                </div>
            </li>
            <li class="split_item layout_mod_v3 bg_mod_v4">
                <div class="where_buy_block v2_mod">
                    <div class="where_buy_block_in v2_mod">
                        <h2 class="where_buy_title v2_mod">Где купить продукцию LECTSHOP</h2>

                        <div class="where_buy_text v2_mod">Воспользуйтесь поиском дистрибьюторов в вашем регионе</div>
                        <a href="gde-kupit/index.html" class="where_buy_butt v2_mod"><span class="where_buy_butt_in v2_mod">Адреса дистрибьюторов</span></a>
                    </div>
                </div>
            </li>
            <li class="split_item layout_mod_v3">
                <div class="login_block v1_mod">
                    <div class="login_i_w v1_mod"><img alt="" src="assets/i/key.png" class="login_i v1_mod"/></div>
                    <div class="login_block_in v1_mod">
                        <form class="ajax_form" method="post">
                            <div class="login_title v1_mod">Уже зарегистрированы?</div>
                            <ul class="login_inputs_list v1_mod">
                                <li class="login_inputs_item v1_mod">
                                    <dl class="form_cell form_cell_v1_mod">
                                        <dt class="form_c_hline form_v1_mod">
                                            <label for="email_login">Ваш e-mail:</label>
                                        </dt>
                                        <dd class="form_c_f_w form_v1_mod">
                                            <span class="input_icon v1_mod mail_mod"></span>
                                            <input type="text" name="User[email]" id="email_login" placeholder="Ваш e-mail" class="f_c_field default_mod "/>
                                        </dd>
                                    </dl>
                                </li>
                                <li class="login_inputs_item v1_mod">
                                    <dl class="form_cell form_cell_v1_mod">
                                        <dt class="form_c_hline form_v1_mod">
                                            <label for="pass_login">Ваш пароль:</label>
                                        </dt>
                                        <dd class="form_c_f_w form_v1_mod">
                                            <span class="input_icon v1_mod pass_mod"></span>
                                            <input type="password" name="User[password]" id="pass_login" placeholder="Ваш пароль" class="f_c_field default_mod "/>
                                        </dd>
                                    </dl>
                                </li>
                            </ul>
                            <button type="submit" name="_sendLogin" value="1" class="login_butt v1_mod">
                                <span class="login_butt_in v1_mod">Войти в личный кабинет</span>
                            </button>
                            <a href="user/zabyli-parol.html" class="login_forgot v1_mod">Я забыл пароль</a>


                            <input type="hidden" name="af_action" value="d19cefc870e2c153f7c4cd6dff4741ec"/>
                        </form>
                    </div>
                </div>
            </li>
            <li class="split_item layout_mod_v4 bg_mod_v5">
                <div class="gost_block">
                    <div class="gost_block_i_w"><img alt="" src="assets/i/comp_1.png" class="gost_block_i"></div>
                    <div class="gost_block_in">
                        <h2 class="gost_block_title">Справочник ГОСТ</h2>

                        <div class="gost_block_def">
                            Какой-то текст, описывающий, что это за справочник и почему нужно обязательно
                            зарегистрироваться, чтобы скачать его! Какой-то текст, описывающий, что это за справочник и
                            почему нужно обязательно зарегистрироваться, чтобы скачать его!
                        </div>
                        <a href="download/Delonghi&#32;ESAM&#32;2600.pdf" class="gost_down_butt"><span class="gost_down_butt_in">Скачать (pdf, 794Кб)</span>
                        </a>
                        <span class="gost_note">	* скачивание доступно после регистрации</span>
                    </div>
                </div>
            </li>
            <li class="split_item layout_mod_v1 bg_mod_v2">
                <div class="novelty_container slider_v1_mod">
                    <h2 class="section_title v1_mod">Новинки</h2>
                    <ul id="novelty_slider_1" class="novelty_list slider_v1_mod">
                        <li class="novelty_item slider_v1_mod">
                            <ul class="novelty_sub_list slider_v1_mod">

                                <li class="catalog_item single_mod new_mod">
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

                                <li class="catalog_item single_mod new_mod">
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

                                <li class="catalog_item single_mod new_mod">
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

                            </ul>
                        </li>
                        <li class="novelty_item slider_v1_mod">
                            <ul class="novelty_sub_list slider_v1_mod">

                                <li class="catalog_item single_mod new_mod">
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
                    <a href="katalog/index.html" class="novelty_butt slider_v1_mod">
                        <span class="novelty_butt_in slider_v1_mod">Каталог</span></a>
                </div>
            </li>
        </ul>
        <div class="page_bottom_block">
            <h2 class="page_bottom_block_title v1_mod">Заинтересованы в сотрудничестве?</h2>
            <div class="page_bottom_block_text v1_mod">
                <span>Чтобы стать партнером  компании LectShop требуется заполнить заявку.</span><span>Наш директор по продажам свяжется с Вами и ознакомит с нашими требованиями,для получения статуса основого дистрибьютора или покупателя.</span>
            </div>
            <a href="user/signup.html" class="page_bottom_block_butt"><span class="page_bottom_block_butt_in">Стать партнером</span>
            </a>
        </div>
        <div class="news_container slider_v1_mod">
            <div class="news_caption_block slider_v1_mod">
                <h2 class="news_main_caption slider_v1_mod"><span>Новости</span><span>LECTSHOP</span></h2>
                <a href="o-kompanii/novosti/index.html" class="all_news_butt slider_v1_mod">
                    <span class="all_news_butt_in slider_v1_mod">Все новости</span></a>
            </div>
            <ul id="news_slider_1" class="news_container_list slider_v1_mod">
                <li class="news_container_item slider_v1_mod">
                    <ul class="news_list slider_v1_mod">

                        <li class="news_item slider_v1_mod">
                            <div class="news_block slider_v1_mod">
                                <div class="news_date slider_v1_mod">11 марта 2016</div>
                                <div class="news_title slider_v1_mod">
                                    Четвертая новость на нашем сайте
                                </div>
                                <div class="news_text slider_v1_mod">
                                    Вот и появилась еще одна новость на нашем сайте!
                                </div>
                                <a href="o-kompanii/novosti/2016-03-11-chetvertaya-novost-na-nashem-sayte.html" class="news_more_butt slider_v1_mod">
                                    <span class="news_more_butt_in slider_v1_mod">Подробнее</span>
                                </a>
                            </div>
                        </li>

                        <li class="news_item slider_v1_mod">
                            <div class="news_block slider_v1_mod">
                                <div class="news_date slider_v1_mod">16 ноября 2020</div>
                                <div class="news_title slider_v1_mod">
                                    Новость для сайта
                                </div>
                                <div class="news_text slider_v1_mod">
                                    И вот она третья новость на сайте
                                </div>
                                <a href="novosti/2015-11-16-novost-dlya-sayta.html" class="news_more_butt slider_v1_mod">
                                    <span class="news_more_butt_in slider_v1_mod">Подробнее</span>
                                </a>
                            </div>
                        </li>

                        <li class="news_item slider_v1_mod">
                            <div class="news_block slider_v1_mod">
                                <div class="news_date slider_v1_mod">16 ноября 2020</div>
                                <div class="news_title slider_v1_mod">
                                    Еще одна новость
                                </div>
                                <div class="news_text slider_v1_mod">
                                    На сайте добавлена еще одна новость. Будем размещать дальше.
                                </div>
                                <a href="novosti/2015-11-16-esche-odna-novost.html" class="news_more_butt slider_v1_mod">
                                    <span class="news_more_butt_in slider_v1_mod">Подробнее</span>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="news_container_item slider_v1_mod">
                    <ul class="news_list slider_v1_mod">
                        <li class="news_item slider_v1_mod">
                            <div class="news_block slider_v1_mod">
                                <div class="news_date slider_v1_mod">16 ноября 2020</div>
                                <div class="news_title slider_v1_mod">
                                    Система мониторинга ГЭС
                                </div>
                                <div class="news_text slider_v1_mod">
                                    Компания LECTSHOP установила систему мониторинга силовых трансформаторов на
                                    Токтогульской ГЭС.
                                </div>
                                <a href="novosti/2015-11-16-sistema-monitoringa-ges.html" class="news_more_butt slider_v1_mod">
                                    <span class="news_more_butt_in slider_v1_mod">Подробнее</span>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
{include 'b.footer'}
{include 'b.footerScripts'}
<div id="video-container">
    <a href="javascript: void(0);" class="video_close active_mod"></a>
    <div class="fullscreen-black"></div>
    <div id="video-iframe"></div>
</div>

{ignore}
<script>
    //Youtube API Code

    var tag = document.createElement('script');

    tag.src = "https://www.youtube.com/iframe_api";
    var firstScriptTag = document.getElementsByTagName('script')[0];
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);


    // 3. This function creates an <iframe> (and YouTube player)
    //    after the API code downloads.
    var player;

    function onYouTubeIframeAPIReady() {
        $(function () {
            $('a[data-toggle="video"]').click(function () {
                var targetContainer = $(this).attr('href');
                var videoId = $(this).attr('data-video');
                player = new YT.Player('video-iframe', {
                    playerVars: {'autohide': 1},
                    videoId: videoId,
                    events: {
                        'onReady': function (event) {
                            player.playVideo();
                        }
                    }
                });
                $(targetContainer).fadeIn(500);
                return false;
            });

            $('#video-container .video_close').click(function () {
                $(this).parent('div').fadeOut(500, function () {
                    player.destroy();
                });
                return false;
            });
        });
    }
</script>
{/ignore}

</body>
</html>
