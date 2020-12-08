<div class="news_container slider_v1_mod">
    <div class="news_caption_block slider_v1_mod">
        <h2 class="news_main_caption slider_v1_mod"><span>Новости</span><span>LECTSHOP</span></h2>
        <a href="[[~[[++le_news_page_id]]]]" class="all_news_butt slider_v1_mod">
            <span class="all_news_butt_in slider_v1_mod">Все новости</span></a>
    </div>
    <ul id="news_slider_1" class="news_container_list slider_v1_mod">
        {'pdoResources' | snippet : [
            'tpl' => 'e.mainNewsItem',
            'parents' => $_modx->config.le_news_page_id,
            'limit' => 10,
            'includeTVs' => '',
            'processTVs' => '',
            'tvPrefix' => '',
            'sortby' => '{"publishedon":"DESC"}',
        ]}
    </ul>
</div>
