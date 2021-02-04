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
              noBgMod = true
            }
            <h2 class="page_head_title black_mod">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h2>
        </div>
        <div class="news_block single_mod">
            {'ms2Gallery' | snippet : [
                'frontend_css' => '',
                'frontend_js' => '',
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
        {*<div class="news_container slider_v1_mod">
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
                                <a href="2015-11-16-novost-dlya-sayta.html" class="news_more_butt slider_v1_mod">
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
                                <a href="2015-11-16-esche-odna-novost.html" class="news_more_butt slider_v1_mod">
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
                                <a href="2015-11-16-sistema-monitoringa-ges.html" class="news_more_butt slider_v1_mod">
                                    <span class="news_more_butt_in slider_v1_mod">Подробнее</span>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>*}
    </div>
</div>
{include 'b.footer'}
{include 'b.footerScripts'}
</body>
</html>
