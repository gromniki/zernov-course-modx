<!DOCTYPE html>
<html lang="ru">
<head>
  {include 'b.head'}
</head>
<body>
{include 'b.header'}
<div class="wrapper footer_v1_mod">
    <div class="base footer_v1_mod">
        <div class="page_head_block v3_mod decor_1_mod">
            <h1 class="page_head_title black_mod">Новости</h1>
            <nav itemprop="breadcrumb" itemscope="itemscope" itemtype="http://schema.org/BreadcrumbList" class="breadcrumbs_wrap no_bg_mod">
                <meta itemprop="name" content="Breadcrumb"/>
                <meta itemprop="description" content="Navigation path"/>
                <ul itemprop="itemListElement" class="breadcrumbs_list no_bg_mod">
                    <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb" class="breadcrumbs_l_item  no_bg_mod">
                        <a href="assets/index.html" title="Главная" class="breadcrumbs_link no_bg_mod">
                            <span class="breadcrumbs_text no_bg_mod">Главная</span>
                        </a>
                    </li>
                    <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb" class="breadcrumbs_l_item  no_bg_mod">
                        <a href="assets/index.html" title="О компании" class="breadcrumbs_link no_bg_mod">
                            <span class="breadcrumbs_text no_bg_mod">О компании</span>
                        </a>
                    </li>
                    <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb" class="breadcrumbs_l_item  no_bg_mod">
                        <span class="breadcrumbs_text  no_bg_mod">Новости</span>
                    </li>
                </ul>
            </nav>
        </div>
        <ul class="news_list all_mod">
            <li class="news_item all_mod bg_3_mod" style="background: url(images_example/resources/182/480x480/natgeo03.jpg) top right no-repeat;">
                <div class="news_block all_mod">
                    <div class="news_date all_mod">11 марта 2016</div>
                    <div class="news_title all_mod">Четвертая новость на нашем сайте</div>
                    <div class="news_text all_mod">
                        Вот и появилась еще одна новость на нашем сайте!
                    </div>
                    <a href="2016-03-11-chetvertaya-novost-na-nashem-sayte.html" class="news_more_butt all_mod"><span class="news_more_butt_in all_mod">Подробнее</span>
                    </a>
                </div>
            </li>
            <li class="news_item all_mod bg_3_mod" style="background: url(images_example/resources/19/480x480/zalevskij75-3.jpg) top right no-repeat;">
                <div class="news_block all_mod">
                    <div class="news_date all_mod">16 ноября 2020</div>
                    <div class="news_title all_mod">Новость для сайта</div>
                    <div class="news_text all_mod">
                        И вот она третья новость на сайте
                    </div>
                    <a href="novosti/2015-11-16-novost-dlya-sayta.html" class="news_more_butt all_mod"><span class="news_more_butt_in all_mod">Подробнее</span>
                    </a>
                </div>
            </li>
            <li class="news_item all_mod bg_3_mod">
                <div class="news_block all_mod">
                    <div class="news_date all_mod">16 ноября 2020</div>
                    <div class="news_title all_mod">Еще одна новость</div>
                    <div class="news_text all_mod">
                        На сайте добавлена еще одна новость. Будем размещать дальше.
                    </div>
                    <a href="novosti/2015-11-16-esche-odna-novost.html" class="news_more_butt all_mod"><span class="news_more_butt_in all_mod">Подробнее</span>
                    </a>
                </div>
            </li>
            <li class="news_item all_mod bg_3_mod">
                <div class="news_block all_mod">
                    <div class="news_date all_mod">16 ноября 2020</div>
                    <div class="news_title all_mod">Система мониторинга ГЭС</div>
                    <div class="news_text all_mod">
                        Компания LECTSHOP установила систему мониторинга силовых трансформаторов на Токтогульской ГЭС.
                    </div>
                    <a href="novosti/2015-11-16-sistema-monitoringa-ges.html" class="news_more_butt all_mod"><span class="news_more_butt_in all_mod">Подробнее</span>
                    </a>
                </div>
            </li>
        </ul>
        <a href="#" class="news_load_more_block"><span class="news_load_more_block_in">Показать более ранние новости</span></a>
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
                    <input type="text" name="term" id="search_catalog" placeholder="Введите наименование товара" class="f_c_field second_mod search_mod" value=""/>
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


