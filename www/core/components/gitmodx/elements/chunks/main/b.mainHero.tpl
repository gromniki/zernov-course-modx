<div class="head_main_block v1_mod" id="head_main_slider_wrapper">
    {'ms2Gallery' | snippet : [
        'frontend_css' => '',
        'frontend_js' => '',
        'parents' => 0,
        'resources' => $_modx->resource.id,
        'tpl' => 'b.mainBgSlider'
    ]}
</div>
<ul class="head_main_list">
    {'ms2GalleryResources' | snippet : [
        'includeThumbs' => 'medium',
        'tpl' => 'e.mainHeroLink',
        'sortby' => '{"menuindex":"ASC"}',
        'parents' => '0',
        'resources' =>  $_modx->config.le_distributors_page_id ~ ',' ~ $_modx->config.le_productions_page_id ~ ',' ~ $_modx->config.le_buyers_page_id,
        'includeTVs' => '',
        'processTVs' => '',
        'tvPrefix' => ''
    ]}

    {*
    <li class="head_main_item">
        <a href="[[~[[++le_productions_page_id]]]]">
            <figure class="head_main_item_in"><img alt="" src="assets/i/content_i_3.jpg" class="head_main_i">
                <figcaption class="head_main_sliding_block v2_mod nku_mod">
                    <div class="head_main_sliding_title"><span class="head_main_sliding_title_in">[[pdoField? &id=`[[++le_productions_page_id]]` &field=`menutitle` &default=`pagetitle`]]</span>
                    </div>
                    <div class="head_main_sliding_text">
                        [[pdoField? &id=`[[++le_productions_page_id]]` &field=`introtext` &default=``]]
                    </div>
                </figcaption>
            </figure>
        </a>
    </li>*}
</ul>
<a href="#" class="head_main_down_arrow" id="head_main_down_arrow"></a>
