{if $idx % 4 == 1 && $idx > 4}
    </li>
</ul>
<li class="product_market_parent_item">
    <ul class="product_market_list">
{/if}
<li class="product_market_item">
    <div class="product_block single_mod">
        <div class="product_i_w">
            <img alt="{$pagetitle | htmlent}" src="{$preview ?: $_modx->config.le_default_image}" class="product_i">
        </div>
        <div class="product_static_block single_mod">
            <a href="/{$uri}" class="product_title single_mod">
                <span class="product_title_text">{$pagetitle}</span>
            </a>
            <div class="product_price_block v1_mod">
                <div class="product_price v1_mod"><span class="big">{$price}</span>
                    <span class="small">руб</span>
                </div>
            </div>
            <a href="{$uri}" class="product_static_butt"><span class="product_static_butt_in">Подробнее</span></a>
        </div>
        <div class="product_sliding_block">
            <a href="{$uri}" class="product_title single_mod">{$pagetitle}</a>
            <div class="product_price_block v1_mod">
                <div class="product_price v1_mod"><span class="big">{$price}</span>
                    <span class="small">руб</span>
                </div>
            </div>
            <a href="{$uri}"
               class="product_sliding_butt">
                <span class="product_sliding_butt_in">Подробнее</span></a>
        </div>
    </div>
</li>
