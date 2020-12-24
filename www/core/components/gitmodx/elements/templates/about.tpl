<!DOCTYPE html>
<html lang="ru">
<head>
    {include 'b.head'}
</head>
<body>
{include 'b.header'}
<div class="wrapper footer_v1_mod">
    <div class="base footer_v1_mod">
        <div class="page_head_block v2_mod tablet_1_mod">
            <h2 class="page_head_title white_mod">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h2>
            {include 'b.breadCrumbs'}
        </div>
        <nav class="page_sub_menu">
            <ul class="page_sub_menu_list">
                <li class="page_sub_menu_item first">
                    <a href="novosti/index.html" class="page_sub_menu_link">Новости</a>
                </li>
                <li class="page_sub_menu_item ">
                    <a href="o-kompanii/proizvodstvo.html" class="page_sub_menu_link">Производство</a>
                </li>
                <li class="page_sub_menu_item ">
                    <a href="o-kompanii/partnery.html" class="page_sub_menu_link">Партнеры</a>
                </li>
                <li class="page_sub_menu_item ">
                    <a href="o-kompanii/nashi-proekty.html" class="page_sub_menu_link">Наши проекты</a>
                </li>
                <li class="page_sub_menu_item last">
                    <a href="o-kompanii/karera.html" class="page_sub_menu_link">Карьера</a>
                </li>

            </ul>
        </nav>
        <div class="about_block v1_mod">
            <h2 class="about_block_title v1_mod"></h2>
            <div class="about_block_i_w v1_mod">
                <img alt="О компании" src="assets/images_example/resources/6/1800x470/zalevskij75-10.jpg"
                     class="about_block_i v1_mod">
            </div>
            <div class="about_info_w v1_mod">
                <div class="about_info_text v1_mod">
                    <p>Наша компания готова предложить широкий спектр электрооборудования собственного производства, в
                        том числе аккумуляторные шкафы, панели распределения тока и выпрямительные системы.</p>
                    <p>Наша компания готова предложить широкий спектр электрооборудования собственного производства, в
                        том числе аккумуляторные шкафы, панели распределения тока и выпрямительные системы.</p>
                    <p>Наша компания готова предложить широкий спектр электрооборудования собственного производства, в
                        том числе аккумуляторные шкафы, панели распределения тока и выпрямительные системы.Наша компания
                        готова предложить широкий спектр электрооборудования собственного производства, в том числе
                        аккумуляторные шкафы, панели распределения тока и выпрямительные системы.Наша компания готова
                        предложить широкий спектр электрооборудования собственного производства, в том числе
                        аккумуляторные шкафы, панели распределения тока и выпрямительные системы.</p>
                </div>
                <ul class="companies_list v1_mod">
                    <li class="companies_item v1_mod">
                        <div class="companies_item_in v1_mod">
                            <span class="company_name v1_mod">Zhejiang LECTSHOP Sci-Tech</span>
                            <a href="http://www.zhiming.ch" target="_blank"
                               class="company_site v1_mod">www.zhiming.ch</a>
                            <a href="documents/phantom_likeNote_2007-08_a4.pdf" target="_blank"
                               class="company_down_link v1_mod"><span>Скачать презентацию</span></a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
{include 'b.footer'}
<div class="modal" id="popup_search_form">
    <a href="assets/index.html#popup_search_form" class="modal_bg" data-toggle="modal">
    </a>
    <a href="assets/index.html#popup_search_form" class="modal_close active_mod" data-toggle="modal">
    </a>
    <div class="modal_content">
        <div class="modal_title mod_big">Поиск товаров</div>
        <form class="" method="get" action="/rezultaty-poiska.html">
            <dl class="form_cell form_cell_v2_mod">
                <dt class="form_c_hline form_v2_mod hline_hide_mod">
                    <label for="search_catalog">Введите наименование товара</label>
                </dt>
                <dd class="form_c_f_w form_v2_mod hline_hide_mod">
                    <button type="submit" class="input_link search_mod">Искать</button>
                    <input type="hidden" name="parent" value="5">
                    <input type="text" name="term" id="search_catalog" placeholder="Введите наименование товара"
                           class="f_c_field second_mod search_mod" value=""/>
                </dd>
            </dl>
        </form>
    </div>
</div>
<div class="global_notification_container">
    <div class="gn_bg"></div>
    <div class="gn_hold">
        <div class="gn_message"></div>
        <a href="assets/index.html#" class="gn_close">закрыть</a>
    </div>
</div>
{include 'b.footerScripts'}
</body>
</html>
