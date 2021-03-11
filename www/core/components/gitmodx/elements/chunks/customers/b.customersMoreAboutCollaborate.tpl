<li class="split_item layout_mod_v3">
    <div class="cooperation_block v1_mod">
        <div class="cooperation_i_w v1_mod">
            <img alt="" src="assets/i/man_1.png" class="cooperation_i v1_mod">
        </div>
        <div class="cooperation_block_in v1_mod">
            <h2 class="cooperation_title v1_mod">{$_modx->resource.collaborateTitle ?: 'Подробнее о сотрудничестве'}</h2>

            {if $_modx->resource.collaborateRichText}
                <div class="cooperation_text v1_mod">
                    {$_modx->resource.collaborateRichText}
                </div>
            {/if}
        </div>
    </div>
</li>
