<li class="split_item layout_mod_v2 bg_mod_v2">
    <div class="actions_container slider_v1_mod">
        <h2 class="section_title v1_mod">Акции</h2>
        <ul id="actions_slider_1" class="actions_container_list v1_mod">
            <li class="actions_container_item v1_mod">
                <ul class="actions_list v1_mod">
                    {'ms2GalleryResources' | snippet : [
                        'includeThumbs' => 'medium',
                        'tpl' => 'e.mainActionsItem',
                        'parents' => $_modx->config.le_actions_page_id,
                        'limit' => 10,
                        'includeTVs' => '',
                        'processTVs' => '',
                        'tvPrefix' => '',
                        'sortby' => '{"publishedon":"DESC"}',
                    ]}
                </ul>
            </li>
        </ul>
    </div>
</li>
