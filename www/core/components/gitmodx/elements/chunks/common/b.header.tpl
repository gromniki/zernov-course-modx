<header class="header">

    <div class="header_logo_row">
        <div class="header_logo_block">
            <a href="[[~[[++site_start]]]]" class="header_logo_w">LECTSHOP<img alt="" src="assets/i/logo.svg"/></a>
        </div>
    </div>
    <div id="header_row" class="header_row shadow_mod">
        <div class="header_row_in">

            {'pdoMenu' | snippet : [
                'parents' => 0,
                'level' => 2,
                'tplOuter' => 'b.topMenuOuter',
                'tpl' => 'b.topMenuRow',
                'tplParentRow' => 'b.topMenuParentRow',
                'tplInner' => 'b.topMenuInner',
                'tplInnerRow' => 'b.topMenuInnerRow',
                'hereClass' => 'active_mod'
            ]}

            {*<nav class="header_nav">
                <ul class="header_nav_list">
                    <li class="header_nav_item">
                        <a href="assets/index.html" class="header_nav_link has_sub_mod">Каталог</a>
                        <ul class="sub_items">
                            <li class="sub_item first">
                                <a href="z606-serii-effica-12kv-1.6a.html" class="sub_item_link first">z606 серии
                                    Effica 12кВ 1.6А</a>
                            </li>
                            <li class="sub_item active">
                                <a href="assets/index.html" class="sub_item_link active">Модульное оборудование</a>
                            </li>
                            <li class="sub_item ">
                                <a href="metrologiya/index.html" class="sub_item_link ">Метрология</a>
                            </li>
                            <li class="sub_item ">
                                <a href="litoy-korpus/index.html" class="sub_item_link ">Литой корпус</a>
                            </li>
                            <li class="sub_item last">
                                <a href="z606-serii-effica-12kv-3.2a.html" class="sub_item_link last">z606 серии
                                    Effica 12кВ 3.2А</a>
                            </li>

                        </ul>
                    </li>
                    <li class="header_nav_item">
                        <a href="o-kompanii/index.html" class="header_nav_link has_sub_mod">О компании</a>
                        <ul class="sub_items">
                            <li class="sub_item first">
                                <a href="o-kompanii/novosti/index.html" class="sub_item_link first">Новости</a>
                            </li>
                            <li class="sub_item ">
                                <a href="o-kompanii/proizvodstvo.html" class="sub_item_link ">Производство</a>
                            </li>
                            <li class="sub_item ">
                                <a href="o-kompanii/partnery.html" class="sub_item_link ">Партнеры</a>
                            </li>
                            <li class="sub_item ">
                                <a href="o-kompanii/nashi-proekty.html" class="sub_item_link ">Наши проекты</a>
                            </li>
                            <li class="sub_item last">
                                <a href="o-kompanii/karera.html" class="sub_item_link last">Карьера</a>
                            </li>

                        </ul>
                    </li>
                    <li class="header_nav_item">
                        <a href="podderzhka/index.html" class="header_nav_link ">Поддержка</a>
                    </li>
                    <li class="header_nav_item">
                        <a href="kontakty.html" class="header_nav_link ">Контакты</a>
                    </li>

                </ul>
            </nav>*}

            <ul class="header_ui_w">
                <li class="header_ui_item mod_not_important">
                    <a href="documents/price.pdf" class="header_price_butt">Скачать прайс</a>
                </li>
                <li class="header_ui_item">
                    <a href="[[~[[++le_signup_page_id]]]]" class="header_reg_butt" title="Регистрация"><span class="header_reg_butt_in">Регистрация</span></a>
                </li>
                <li class="header_ui_item">
                    <a href="[[~[[++le_profile_page_id]]]]" class="header_enter_butt" title="Войти в личный кабинет"><span class="header_reg_butt_in">Личный кабинет</span></a>
                </li>

                <li class="header_ui_item mod_not_important">
                    <a href="#popup_search_form" data-toggle="modal" class="header_search_butt" title="Поиск товаров"></a>
                </li>
                <li class="header_ui_item mod_lang">
                    <a href="#" class="header_choose_lang">рус</a>
                    <ul class="sub_items">
                        <li class="sub_item ">
                            <a href="#" class="sub_item_link ">english</a>
                        </li>
                        <li class="sub_item ">
                            <a href="#" class="sub_item_link ">中国</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="head_menu_trigger">
        <div id="user_menu_butt" class="user_menu_butt"><span class="user_menu_butt_decor"></span></div>
    </div>
</header>
