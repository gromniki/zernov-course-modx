<form class="call_us_w ajax_form" method="post">
    <div class="call_us_block">
        <h2 class="call_us_title">Свяжитесь с нами</h2>

        <div class="call_us_first_row">
            <div class="call_us_lets_block">
                <div class="call_us_i_w"><img alt="" src="assets/i/woman_2.png" class="call_us_i"></div>
                <div class="tooltip v3_mod">
                    <span class="tooltip_title v3_mod">Позвоните по телефону:</span><span class="phone tooltip_mod">[[++le_site_phone]]</span><span class="tooltip_or">или</span><span class="tooltip_text v1_mod">Заполните форму</span>
                </div>
            </div>
            <ul class="call_us_inputs_list">
                <li class="call_us_inputs_item">
                    <dl class="form_cell form_cell_v3_mod">
                        <dt class="form_c_hline form_v3_mod">
                            <label for="name">Ваше имя:</label>
                        </dt>
                        <dd class="form_c_f_w form_v3_mod"><span class="input_icon v1_mod user_mod"></span>
                            <input type="text" id="name" name="name" placeholder="Ваше имя" class="f_c_field default_mod "/>
                            <span data-for="name"></span>
                        </dd>
                    </dl>
                </li>
                <li class="call_us_inputs_item">
                    <div class="rb_ch_w v2_mod">
                        <div class="rb_ch_title v2_mod">Как с вами связаться?</div>
                        <ul class="rb_ch_list v2_mod">
                            <li class="rb_ch_item v2_mod">
                                <label class="lbl_rb_ch_block form_v1_mod">
                                    <input name="call_way" type="radio" checked="checked" value="phone" data-toggle="" class="lbl_inp_rb_ch hide_mod"/><span class="lbl_rb_ch_text form_v1_mod">По телефону</span>
                                </label>
                            </li>
                            <li class="rb_ch_item v2_mod">
                                <label class="lbl_rb_ch_block form_v1_mod">
                                    <input name="call_way" type="radio" value="email" class="lbl_inp_rb_ch hide_mod"/><span class="lbl_rb_ch_text form_v1_mod">По электронной почте</span>
                                </label>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="call_us_inputs_item">
                    <dl class="form_cell form_cell_v3_mod" id="phone_input_wrapper">
                        <dt class="form_c_hline form_v3_mod">
                            <label for="email">Ваш телефон:</label>
                        </dt>
                        <dd class="form_c_f_w form_v3_mod">
                            <span class="input_icon v1_mod phone_mod"></span>
                            <input type="text" id="phone" name="phone" placeholder="Телефон" class="f_c_field default_mod "/>
                            <span data-for="phone"></span>
                        </dd>
                    </dl>
                    <dl class="form_cell form_cell_v3_mod" id="email_input_wrapper" style="display:none;">
                        <dt class="form_c_hline form_v3_mod">
                            <label for="email">Ваш e-mail:</label>
                        </dt>
                        <dd class="form_c_f_w form_v3_mod" id="phone_input_wrapper">
                            <span class="input_icon v1_mod mail_mod"></span>
                            <input type="text" id="email" name="email" placeholder="Ваш e-mail" class="f_c_field default_mod "/>
                            <span data-for="email"></span>
                        </dd>
                    </dl>
                </li>
            </ul>
        </div>
        <dl class="form_cell form_cell_v1_mod">
            <dt class="form_c_hline form_v1_mod hline_hide_mod">
                <label for="add_info">Введите сюда дополнительную информацию к заявке</label>
            </dt>
            <dd class="form_c_f_w form_v1_mod hline_hide_mod">
                <textarea id="add_info" name="comment" placeholder="Введите сюда дополнительную информацию к заявке" class="f_c_field default_mod textarea_mod_1 "></textarea>
                <span data-for="comment"></span>
            </dd>
        </dl>
        <div class="call_us_send_block"><span class="call_us_send_text">Ваши контактные данные не передаются третьим лицам</span>
            <input type="hidden" name="urlFrom" value="{$_modx->resource.uri | htmlent}">
            <button type="submit" name="_sendContacts" class="call_us_send_butt" value="1">Отправить заявку</button>
        </div>
    </div>

    <input type="hidden" name="af_action" value="23baf79ecacb71e3e4c11acd0f01cf19"/>
</form>
