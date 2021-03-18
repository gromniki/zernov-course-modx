{extends 'b.header'}
{block 'aside'}
    <aside id="left_aside" class="catalog_aside_block header_mod">
        <a href="#" id="left_aside_open" class="catalog_aside_open_butt"><span class="catalog_aside_open_butt_in">Все категории товаров</span>
        </a>
        <aside class="catalog_aside_block">
            {'pdoMenu' | snippet : [
                'parents' => $_modx->config.le_catalog_page_id,
                'level' => 2,
                'tplOuter' => '@INLINE <ul id="catalog_triggers" class="catalog_trigger_list">{$wrapper}</ul>',
                'tpl' => '@INLINE <li class="catalog_trigger_item {$classnames}"><h2 class="catalog_trigger_title"><a href="{$link}"><span class="catalog_trigger_title_in">{$menutitle}</span></a></h2></li>',
                'tplParentRow' => '@INLINE <li class="catalog_trigger_item {$classnames}"><h2 class="catalog_trigger_title"><a href="{$link}"><span class="catalog_trigger_title_in">{$menutitle}</span></a></h2>{$wrapper}</li>',
                'tplInner' => '@INLINE <ul class="catalog_trigger_link_list">{$wrapper}</ul>',
                'tplInnerRow' => '@INLINE <li class="catalog_trigger_link_item {$classnames}"><a href="{$link}" class="catalog_trigger_link">{$menutitle}</a></li>',
                'hereClass' => 'active',
                'where' => '{"class_key":"msCategory"}'
            ]}
        </aside>
    </aside>
{/block}
