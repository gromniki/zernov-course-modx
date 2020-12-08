<!DOCTYPE html>
<html lang="ru">
<head>
  {include 'b.head'}
</head>
<body>
{include 'b.header'}
<div class="wrapper footer_v1_mod">
    <div class="base footer_v1_mod">
        <div class="page_head_block v2_mod tablet_1_mod">
            <h1 class="page_head_title white_mod">Регистрация</h1>

        </div>
        <nav itemprop="breadcrumb" itemscope="itemscope" itemtype="http://schema.org/BreadcrumbList" class="breadcrumbs_wrap no_bg_mod bottom_mod gray_bg_mod">
            <meta itemprop="name" content="Breadcrumb"/>
            <meta itemprop="description" content="Navigation path"/>
            <ul itemprop="itemListElement" class="breadcrumbs_list no_bg_mod bottom_mod gray_bg_mod">
                <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb" class="breadcrumbs_l_item  no_bg_mod bottom_mod gray_bg_mod">
                    <a href="assets/index.html" title="Главная" class="breadcrumbs_link no_bg_mod bottom_mod gray_bg_mod">
                        <span class="breadcrumbs_text no_bg_mod bottom_mod gray_bg_mod">Главная</span>
                    </a>
                </li>
                <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb" class="breadcrumbs_l_item  no_bg_mod bottom_mod gray_bg_mod">
                    <a href="assets/index.html" title="Мой кабинет" class="breadcrumbs_link no_bg_mod bottom_mod gray_bg_mod">
                        <span class="breadcrumbs_text no_bg_mod bottom_mod gray_bg_mod">Мой кабинет</span>
                    </a>
                </li>
                <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb" class="breadcrumbs_l_item  no_bg_mod bottom_mod gray_bg_mod">
                    <span class="breadcrumbs_text  no_bg_mod bottom_mod gray_bg_mod">Регистрация</span>
                </li>
            </ul>
        </nav>
        <form class="ajax_form reset_on_success" method="post">
            <div class="register_w">
                <ul class="register_list v2_mod">
                    <li class="register_item v2_mod">
                        <div class="register_item_in v2_mod">
                            <h2 class="register_item_title v2_mod">Ваш аккаунт</h2>
                            <div class="register_inputs_w">
                                <div class="tooltip v1_mod"><span>Зарегистрируйтесь на нашем сайте!</span><span>После авторизации вы получите доступу к технической информации, к PDF-версиям каталогов.</span><span>Будете первыми узнавать обо всех наших новинках, акциях, последних новостях</span>
                                </div>
                                <ul class="register_inputs_list">
                                    <li class="register_inputs_item">
                                        <dl class="form_cell form_cell_v3_mod">
                                            <dt class="form_c_hline form_v3_mod">
                                                <label for="email">Ваш
                                                    e-mail<span class="required_star">*</span>:</label>
                                            </dt>
                                            <dd class="form_c_f_w form_v3_mod">
                                                <span class="input_icon v1_mod mail_mod"></span>
                                                <input type="text" id="email" name="User[email]" placeholder="Email" class="f_c_field default_mod "/>
                                            </dd>
                                        </dl>
                                        <div class="user_tip v1_mod">
                                            Ваш e-mail после успешной регистрации будет использоваться в качестве
                                            логина.
                                        </div>
                                    </li>
                                    <li class="register_inputs_item">
                                        <dl class="form_cell form_cell_v3_mod">
                                            <dt class="form_c_hline form_v3_mod">
                                                <label for="middlename">Телефон для связи:</label>
                                            </dt>
                                            <dd class="form_c_f_w form_v3_mod">
                                                <input type="text" name="User[phone]" data-inputmask-mask="+7(999) 999-99-99" id="lastname" placeholder="Телефон для связи" class="f_c_field fourth_mod "/>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li class="register_inputs_item">
                                        <dl class="form_cell form_cell_v3_mod">
                                            <dt class="form_c_hline form_v3_mod">
                                                <label for="pass">Ваш
                                                    пароль<span class="required_star">*</span>:</label>
                                                <div class="user_tip v2_mod">
                                                    Придумайте пароль, состоящий минимум из восьми символов
                                                </div>
                                            </dt>
                                            <dd class="form_c_f_w form_v3_mod">
                                                <span class="input_icon v1_mod pass_mod"></span>
                                                <input id="pass" name="User[password]" type="password" placeholder="Пароль" class="f_c_field default_mod">
                                            </dd>
                                        </dl>
                                    </li>
                                    <li class="register_inputs_item">
                                        <dl class="form_cell form_cell_v3_mod">
                                            <dt class="form_c_hline form_v3_mod hline_hide_mod">
                                                <label for="pass_proov">Подтверждение пароля</label>
                                            </dt>
                                            <dd class="form_c_f_w form_v3_mod hline_hide_mod">
                                                <span class="input_icon v1_mod pass_mod"></span>
                                                <input type="password" name="User[password2]" id="pass_proov" placeholder="Подтверждение пароля" class="f_c_field default_mod "/>
                                            </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="register_item v2_mod">
                        <div class="register_item_in v2_mod">
                            <h2 class="register_item_title v2_mod">Информация о пользователе</h2>
                            <ul class="register_inputs_list">
                                <li class="register_inputs_item">
                                    <dl class="form_cell form_cell_v3_mod">
                                        <dt class="form_c_hline form_v3_mod">
                                            <label for="firstname">Имя<span class="required_star">*</span>:</label>
                                        </dt>
                                        <dd class="form_c_f_w form_v3_mod">
                                            <input type="text" name="User[firstname]" id="firstname" placeholder="Имя" class="f_c_field fourth_mod "/>
                                        </dd>
                                    </dl>
                                </li>

                                <li class="register_inputs_item">
                                    <dl class="form_cell form_cell_v3_mod">
                                        <dt class="form_c_hline form_v3_mod">
                                            <label for="middlename">Фамилия<span class="required_star">*</span>:</label>
                                        </dt>
                                        <dd class="form_c_f_w form_v3_mod">
                                            <input type="text" name="User[lastname]" id="lastname" placeholder="Фамилия" class="f_c_field fourth_mod "/>
                                        </dd>
                                    </dl>
                                </li>
                            </ul>
                            <div class="rb_ch_w v1_mod">
                                <div class="rb_ch_title v1_mod">Вы являетесь</div>
                                <ul class="rb_ch_list v1_mod">
                                    <li class="rb_ch_item v1_mod">
                                        <label class="lbl_rb_ch_block form_v1_mod">
                                            <input name="User[type]" type="radio" checked="checked" value="pp" class="lbl_inp_rb_ch hide_mod"/><span class="lbl_rb_ch_text form_v1_mod">Физическим лицом</span>
                                        </label>
                                    </li>
                                    <li class="rb_ch_item v1_mod">
                                        <label class="lbl_rb_ch_block form_v1_mod">
                                            <input name="User[type]" type="radio" value="di" class="lbl_inp_rb_ch hide_mod"/><span class="lbl_rb_ch_text form_v1_mod">Дистрибьютором</span>
                                        </label>
                                    </li>
                                    <li class="rb_ch_item v1_mod">
                                        <label class="lbl_rb_ch_block form_v1_mod">
                                            <input name="User[type]" type="radio" value="pr" class="lbl_inp_rb_ch hide_mod"/><span class="lbl_rb_ch_text form_v1_mod">Производителем НКУ</span>
                                        </label>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="register_item v2_mod">
                        <div class="register_item_in v2_mod">
                            <h2 class="register_item_title v2_mod" data-hide="pp">Информация о компании</h2>
                            <ul class="register_inputs_list">
                                <li class="register_inputs_item" data-hide="pp">
                                    <dl class="form_cell form_cell_v3_mod">
                                        <dt class="form_c_hline form_v3_mod">
                                            <label for="org_name">Компания:</label>
                                        </dt>
                                        <dd class="form_c_f_w form_v3_mod">
                                            <input type="text" name="User[company]" id="org_name" placeholder="Компания" class="f_c_field fourth_mod "/>
                                        </dd>
                                    </dl>
                                </li>

                                <li class="register_inputs_item">
                                    <dl class="form_cell form_cell_v3_mod">
                                        <dt class="form_c_hline form_v3_mod">
                                        </dt>
                                        <dd class="form_c_f_w form_v3_mod">
                                            <label class="lbl_rb_ch_block form_v1_mod">
                                                <input name="User[accept_rules]" type="checkbox" value="1" class="lbl_inp_rb_ch hide_mod"/><span class="lbl_rb_ch_text form_v1_mod"><span class="required_star">*</span>Я принимаю условия <a href="polzovatelskoe-soglashenie.html" target="_blank">соглашения</a></span>
                                            </label>
                                        </dd>
                                    </dl>
                                </li>
                            </ul>
                            <div class="register_send_block">
                                <button type="submit" name="_sendRegistration" value="1" class="register_send_butt">
                                    Отправить заявку
                                </button>
                                <div class="register_send_text">
                                    На ваш e-mail будет отправлено сообщение с дальнейшими инструкциями после проверки
                                    администратором
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <input type="hidden" name="af_action" value="d8d6c5716dc8791b05d6f5e9cf64f0ab"/>
        </form>
    </div>
</div>
{include 'b.footer'}
<div class="modal" id="popup_search_form">
    <a href="assets/index.html#popup_search_form" class="modal_bg" data-toggle="modal">
    </a>
    <a href="assets/index.html#popup_search_form" class="modal_close active_mod" data-toggle="modal">
    </a>
    <div class="modal_content">
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
        <a href="assets/index.html#" class="gn_close">закрыть</a>
    </div>
</div>
{include 'b.footerScripts'}
</body>
</html>
