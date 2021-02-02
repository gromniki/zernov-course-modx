<li class="news_item all_mod bg_3_mod"
    style="background: url('{$preview}') top right no-repeat;">
    <div class="news_block all_mod">
        <div class="news_date all_mod">{$publishedon | humanDate: '{day} {monthName} {year}'}</div>
        <div class="news_title all_mod">{$pagetitle}</div>
        <div class="news_text all_mod">{$introtext}</div>
        <a href="{$uri}" class="news_more_butt all_mod">
            <span class="news_more_butt_in all_mod">Подробнее</span>
        </a>
    </div>
</li>
