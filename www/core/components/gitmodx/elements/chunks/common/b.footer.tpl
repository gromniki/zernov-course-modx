<footer class="footer v1_mod">
    <div class="footer_first_row v1_mod">
        <div class="footer_first_row_in v1_mod">
            <div class="footer_cont_block v1_mod">
                <a href="[[~[[++site_start]]]]" class="footer_logo_w"><img alt="" src="assets/i/logo_lectshop_2.png" class="footer_loto_i"/></a>
                <ul class="footer_cont_list">
                    <li class="footer_cont_item"><span class="footer_cont_text address_mod">{$_modx->config.le_site_address}</span>
                    </li>
                    <li class="footer_cont_item"><span class="footer_cont_text">{$_modx->config.le_site_phone}</span></li>
                    <li class="footer_cont_item">
                        <a href="mailto:{$_modx->config.le_site_email}" class="footer_cont_text">{$_modx->config.le_site_email}</a>
                    </li>
                </ul>
            </div>

            <ul class="footer_link_list">
                <li class="footer_link_item">
                    <a href="[[~[[++le_distributors_page_id]]]]" class="footer_link">[[pdoField? &id=`[[++le_distributors_page_id]]` &field=`menutitle` &default=`pagetitle`]]</a>
                </li>
                <li class="footer_link_item">
                    <a href="[[~[[++le_productions_page_id]]]]" class="footer_link">[[pdoField? &id=`[[++le_productions_page_id]]` &field=`menutitle` &default=`pagetitle`]]</a>
                </li>
                <li class="footer_link_item">
                    <a href="[[~[[++le_buyers_page_id]]]]" class="footer_link">[[pdoField? &id=`[[++le_buyers_page_id]]` &field=`menutitle` &default=`pagetitle`]]</a>
                </li>

            </ul>


            {'pdoMenu' | snippet : [
                'parents' => 0,
                'level' => 1,
                'tplOuter' => 'b.footerMenuOuter',
                'tpl' => 'b.footerMenuRow',
                'hereClass' => 'active_mod'
            ]}

            {*<nav class="footer_nav_block v1_mod">
                <ul class="footer_nav_list v1_mod">
                    <li class="footer_nav_item v1_mod">
                        <a href="katalog/index.html" class="footer_nav_link">Каталог</a>
                    </li>
                    <li class="footer_nav_item v1_mod">
                        <a href="assets/index.html" class="footer_nav_link">О компании</a>
                    </li>
                    <li class="footer_nav_item v1_mod">
                        <a href="podderzhka/index.html" class="footer_nav_link">Поддержка</a>
                    </li>
                    <li class="footer_nav_item v1_mod">
                        <a href="kontakty.html" class="footer_nav_link">Контакты</a>
                    </li>

                </ul>
            </nav>*}

            {'!AjaxForm' | snippet : [
                'form' => 'b.footerSubscribeForm',
                'frontend_js' => 'assets/js/le-ajaxform.js',
                'frontend_css' => '',
                'hooks' => 'subscribeEmailHook',
                'submitVar' => 'sendEmail',
                'validate' => 'email:email:required',
                'validationErrorMessage' => 'Заполните корректно ваш email',
                'successMessage' => 'Вы успешно подписались!',
                'errTpl' => '[[+error]]',
            ]}



            <div class="footer_social_block v1_mod">
                <div class="footer_social_in v1_mod"><span class="footer_social_title">Подпишитесь на нас в социальных сетях:</span>
                    <ul class="social_list footer_mod">
                       [[++le_instagram:is=``:then=``:else=`
                        <li class="social_item footer_mod">
                          <a href="[[++le_instagram]]" target="_blank" class="social_link instagram_mod footer_mod">instagram</a>
                        </li>
                        `]]
                        {if $_modx->config.le_fb}
                          <li class="social_item footer_mod">
                              <a href="{$_modx->config.le_fb}" target="_blank" class="social_link facebook_mod footer_mod">facebook</a>
                          </li>
                        {/if}
                        {if $_modx->config.le_vk}
                          <li class="social_item footer_mod">
                              <a href="{$_modx->config.le_vk}" target="_blank" class="social_link vk_mod footer_mod">vk</a>
                          </li>
                        {/if}
                        {if $_modx->config.le_youtube}
                          <li class="social_item footer_mod">
                              <a href="{$_modx->config.le_youtube}" target="_blank" class="social_link youtube_mod footer_mod">youtube</a>
                          </li>
                        {/if}
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_sec_row">
        <div class="footer_sec_row_in"><span class="footer_copy">&#169; 2020 LECTSHOP. Все права защищены.</span>
            <address class="footer_address"><span>Сайт разработан:</span>
                <a href="http://openco.ru" target="_blank" class="footer_address_link"> Opencolour</a>
            </address>
        </div>
    </div>
</footer>
<div class="modal" id="popup_search_form">
    <a href="#popup_search_form" class="modal_bg" data-toggle="modal">
    </a>
    <a href="#popup_search_form" class="modal_close active_mod" data-toggle="modal">
    </a>
    <div class="modal_content">
        {* TODO сделать форму поиска товаров *}
        <div class="modal_title mod_big">Поиск товаров</div>
        <form class="" method="get" action="/rezultaty-poiska.html">
            <dl class="form_cell form_cell_v2_mod">
                <dt class="form_c_hline form_v2_mod hline_hide_mod">
                    <label for="search_catalog">Введите наименование товара</label>
                </dt>
                <dd class="form_c_f_w form_v2_mod hline_hide_mod">
                    <button type="submit" class="input_link search_mod">Искать</button>
                    <input type="hidden" name="parent" value="5">
                    <input type="text" name="term" id="search_catalog" placeholder="Введите наименование товара" class="f_c_field second_mod search_mod" value=""/>
                </dd>
            </dl>
        </form>
    </div>
</div>
<div class="global_notification_container">
    <div class="gn_bg"></div>
    <div class="gn_hold">
        <div class="gn_message"></div>
        <a href="#" class="gn_close">закрыть</a>
    </div>
</div>
