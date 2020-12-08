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
            <h1 class="page_head_title white_mod">Авторизация</h1>

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
                    <span class="breadcrumbs_text  no_bg_mod bottom_mod gray_bg_mod">Авторизация</span>
                </li>
            </ul>
        </nav>
        <div class="login_block v2_mod">
            <form class="ajax_form" method="post">
                <div class="login_block_in v2_mod">
                    <div class="tooltip v1_mod"><span>Доступ к личному кабинету имеют только прямые партнеры компании LectShop.</span><span>В поле «Логин» введите адрес электронной почты указанной при регистрации. В поле «Пароль» введите пароль , который вы указали при регистрации</span>
                    </div>
                    <ul class="login_inputs_list v2_mod">
                        <li class="login_inputs_item v2_mod">
                            <dl class="form_cell form_cell_v3_mod">
                                <dt class="form_c_hline form_v3_mod">
                                    <label for="email">Ваш e-mail:</label>
                                </dt>
                                <dd class="form_c_f_w form_v3_mod"><span class="input_icon v1_mod mail_mod"></span>
                                    <input type="text" id="email" name="User[email]" placeholder="Email" class="f_c_field default_mod "/>
                                </dd>
                            </dl>
                        </li>
                        <li class="login_inputs_item v2_mod">
                            <dl class="form_cell form_cell_v3_mod">
                                <dt class="form_c_hline form_v3_mod">
                                    <label for="pass">Ваш пароль</label>
                                </dt>
                                <dd class="form_c_f_w form_v3_mod"><span class="input_icon v1_mod pass_mod"></span>
                                    <input type="password" name="User[password]" id="pass" placeholder="Пароль" class="f_c_field default_mod "/>
                                </dd>
                            </dl>
                        </li>
                    </ul>
                    <div class="login_enter_block">
                        <button name="_sendLogin" type="submit" value="1" class="login_enter_butt">Войти в личный
                            кабинет
                        </button>
                        <div class="login_enter_err">
                            <a href="zabyli-parol.html" class="login_enter_err_in">Я не могу войти</a>
                        </div>
                    </div>
                </div>

                <input type="hidden" name="af_action" value="103a0384b2ea889f68220a8f48b9ebc4"/>
            </form>
        </div>
        <div class="register_block v3_mod">
            <div class="register_i_w v1_mod">
                <img alt="" src="assets/i/man_2.png" class="register_i v1_mod">
            </div>
            <div class="register_block_in v1_mod">

                <h2 class="register_title v1_mod">Еще не зарегистрированы на нашем сайте?</h2>
                <ul class="register_list v1_mod">
                    <li class="register_item v1_mod">
                        <div class="register_item_in v1_mod"><span>• Храните историю заказов</span></div>
                    </li>
                    <li class="register_item v1_mod">
                        <div class="register_item_in v1_mod"><span>• Получайте скидки после совершения заказа</span>
                        </div>
                    </li>
                    <li class="register_item v1_mod">
                        <div class="register_item_in v1_mod">
                            <span>• Скачайте электронный прайс-лист после регистрации</span></div>
                    </li>
                </ul>
                <a href="signup.html" class="reg_butt v2_mod"><span class="reg_butt_in v2_mod">Зарегистрироваться</span></a>
            </div>
        </div>
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
