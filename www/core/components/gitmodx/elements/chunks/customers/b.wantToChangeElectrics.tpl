<li class="split_item layout_mod_v3">
    <div class="want_el_block v1_mod">
        <div class="want_el_i_w v1_mod"><img alt="" src="assets/i/man_5.png" class="want_el_i v1_mod"></div>
        <div class="want_el_in v1_mod">
            <h2 class="want_el_title v1_mod">{$_modx->resource.changeElectricTitle ?: 'Хотите менять электрику?'}</h2>
            <div class="want_el_def v1_mod">{$_modx->resource.changeElectricText ?: 'У нас есть отличные предложения для ваших целей!'}</div>

            {if $_modx->resource.changeElectricLinks}
                <ul class="want_el_butt_list">
                    {set $links = $_modx->resource.changeElectricLinks | json_decode}
                    {foreach $links as $link}
                        <li class="want_el_butt_item">
                            <a href="{$link.link}" class="want_el_butt"><span class="want_el_butt_in">{$link.linkText}</span></a>
                        </li>
                    {/foreach}
                </ul>
            {/if}
        </div>
    </div>
</li>
