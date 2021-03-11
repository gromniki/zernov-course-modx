<li class="split_item layout_mod_v4 bg_mod_v5">
    <div class="gost_block">
        <div class="gost_block_i_w"><img alt="" src="assets/i/comp_1.png" class="gost_block_i"></div>
        <div class="gost_block_in">
            <h2 class="gost_block_title">{$_modx->resource.gostTitle ?: 'Справочник ГОСТ'}</h2>

            <div class="gost_block_def">
                {$_modx->resource.gostText ?: 'Какой-то текст, описывающий, что это за справочник!'}
            </div>

            {* TODO сделать защиту от скачивания не авторизованными пользователями *}
            {if $_modx->resource.gostFile}
                <a href="{$_modx->resource.gostFile}" download class="gost_down_butt">
                    <span class="gost_down_butt_in">Скачать {$_modx->resource.gostFile | fileInfo : '@INLINE ({$extension}, {$filesize}{$unit})'}</span>
                </a>
            {/if}
            <span class="gost_note">	* скачивание доступно после регистрации</span>
        </div>
    </div>
</li>
