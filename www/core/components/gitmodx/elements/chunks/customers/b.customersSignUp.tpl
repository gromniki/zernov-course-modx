<li class="split_item layout_mod_v3">
    <div class="register_block v1_mod">
        <div class="register_i_w v1_mod">
            <img alt="" src="assets/i/man_2.png" class="register_i v1_mod">
        </div>
        <div class="register_block_in v1_mod">
            <h2 class="register_title v1_mod">{$_modx->resource.signupTitle ?: 'Зарегистрируйтесь и получайте бонусы!'}  </h2>
            <div class="register_text">
                {if $_modx->resource.signupList}
                    <ul>
                        {set $list = $_modx->resource.signupList | json_decode}
                        {foreach $list as $item}
                            <li>
                                {if $item.mark}
                                    <div class="register_item_in v1_mod blue_mod">
                                        {set $subitems = $item.text | split : ' '}
                                        {foreach $subitems as $subitem}<span>{$subitem}</span>{/foreach}
                                    </div>
                                {else}
                                    {$item.text}
                                {/if}
                            </li>
                        {/foreach}
                    </ul>
                {/if}
            </div>
            <a href="[[~[[++le_signup_page_id]]]]" class="reg_butt v1_mod"><span class="reg_butt_in v1_mod">Зарегистрироваться</span>
            </a>
        </div>
    </div>
</li>
