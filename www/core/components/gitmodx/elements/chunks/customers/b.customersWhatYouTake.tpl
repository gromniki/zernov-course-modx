<li class="split_item layout_mod_v3">
    <div class="register_block v1_mod">
        <div class="register_i_w v1_mod">
            <img alt="" src="assets/i/man_2.png" class="register_i v1_mod">
        </div>
        <div class="register_block_in v1_mod">
            <h2 class="register_title v1_mod">{$_modx->resource.whatYouTakeTitle ?: 'Работая с LectShop, Вы ничего не получаете!'}</h2>

            {if $_modx->resource.whatYouTakeRichText}
                <div class="register_text">
                    {$_modx->resource.whatYouTakeRichText}
                </div>
            {/if}

            <a href="[[~[[++le_signup_page_id]]]]" class="reg_butt v1_mod"><span class="reg_butt_in v1_mod">Стать партнером</span>
            </a>
        </div>
    </div>
</li>
