<!DOCTYPE html>
<html lang="ru">
<head>
    {include 'b.head'}
</head>
<body>
{include 'b.headerProduct'}
<div class="wrapper footer_v1_mod">
    <div class="base footer_v1_mod">
        <div class="page_head_block v3_mod">
            <h1 class="page_head_title black_mod">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
            {include 'b.breadCrumbs' version = 2}
            {if $article}
                <div class="page_head_article">артикул: [[*article]]</div>
            {/if}
        </div>
        <div class="product_about_w">
            {'msGallery' | snippet : [
                'tpl' => 'b.productGallery',
                'limit' => 0,
                'filetype' => 'image',
            ]}

            <div class="product_about_block">
                <div class="product_doc_block">
                    <div class="product_doc_text">
                        {set $parentTemplate = ('pdoField' | snippet: ['id' => $_modx->resource.parent, 'field' => 'template'])}
                        {if $parentTemplate == $_modx->config.le_product_group_template}
                            [[#[[*parent]].content]]
                        {/if}
                        [[*content]]
                    </div>
                    <a href="[[*uri]]#product_full_desc" class="product_param_more_link">Подробнее о товаре и его
                        характеристиках</a>


                    {set $files = $_modx->resource.fileList | json_decode}
                    {if ($files | iterable) && ($files | count > 0)}
                        <ul class="product_doc_list">
                            {foreach $files as $file}
                                <li class="product_doc_item">
                                    {if $file.link}
                                        <a href="{$file.link}" target="_blank" class="product_doc_link file_mod">
                                            <span>{$file.title}</span>
                                        </a>
                                    {/if}
                                    {if $file.file}
                                        <a href="{'le_manager_upload_files_path' | option}{$file.file}"
                                           class="product_doc_link file_mod" download>
                                            <span>{$file.title}</span>
                                        </a>
                                        <span class="product_doc_def">
                                            {($_modx->config.le_manager_upload_files_path ~ $file.file) | fileInfo : '@INLINE ({$extension}, {$filesize}{$unit})'}
                                        </span>
                                    {/if}
                                </li>
                            {/foreach}
                        </ul>
                    {/if}
                </div>
                <div class="product_price_block v3_mod">
                    <div class="product_price v2_mod"><span class="big">[[*price]]</span> <span class="small">р</span>
                    </div>
                    <a class="input_link" href="#">В корзину</a>
                    <ul class="product_ui_list">
                        <li class="product_ui_item">
                            <a href="[[~[[++le_where_to_buy_page_id]]]]" class="product_ui_link loc_mod">Где купить</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="product_info_block" id="product_full_desc">
            <div class="product_describe_block">
                <h2 class="product_info_title">Характеристики</h2>
                <div class="product_describe_text">
                    {'msProductOptions' | snippet : [
                        'tpl' => 'b.productOptions',
                    ]}
                </div>
            </div>
            <div class="product_reply_block">


                <h2 class="product_info_title">Отзывы (2)</h2>
                <ul class="product_reply_list">
                    <li class="product_reply_item">
                        <article class="product_reply_item_in">
                            <div class="product_reply_date">3 сентября 2015</div>
                            <div class="product_reply_name">Иванов Иван</div>
                            <div class="product_reply_text">Наша компания готова предложить широкий спектр
                                электрооборудования собственного производства, в том числе аккумуляторные шкафы, панели
                                распределения тока и выпрямительные системы.Наша компания готова предложить широкий
                                спектр электрооборудования собственного производства, в том числе аккумуляторные шкафы,
                                панели распределения тока и выпрямительные системы.Наша компания готова предложить
                                широкий спектр
                            </div>
                        </article>
                    </li>
                    <li class="product_reply_item">
                        <article class="product_reply_item_in">
                            <div class="product_reply_date">3 сентября 2015</div>
                            <div class="product_reply_name">Иванов Иван</div>
                            <div class="product_reply_text">Наша компания готова предложить широкий спектр
                                электрооборудования собственного производства, в том числе аккумуляторные шкафы, панели
                                распределения тока и выпрямительные системы.Наша компания готова предложить широкий
                                спектр электрооборудования собственного производства, в том числе аккумуляторные шкафы,
                                панели распределения тока и выпрямительные системы.Наша компания готова предложить
                                широкий спектр
                            </div>
                        </article>
                    </li>
                </ul>


                <span class="quip-success" id="reply-success-qcom"></span>
                <div class="reply_form_button_wrapper">
                    <a class="comment_send_button" href="#" id="expand_comment_form_button">Оставить отзыв</a>
                </div>
                <div class="reply_form_wrapper   " id="reply_form_wrapper">
                    <form id="reply-qcom"
                          action="katalog/modulnoe-oborudovanie/avtomaticheskie-vyklyuchateli/z406/mz406c-6a-1p-4,5ka.html#reply-qcom"
                          method="post">
                        <div class="quip-comment quip-add-comment">
                            <input type="hidden" name="nospam" value="">
                            <input type="hidden" name="thread" value="Отзывы к товару 27">
                            <input type="hidden" name="parent" value="0">
                            <input type="hidden" name="auth_nonce" value="">
                            <input type="hidden" name="preview_mode" value="">

                            <ul class="comment_inputs_list">
                                <li class="comment_inputs_item">
                                    <dl class="form_cell form_cell_v3_mod">
                                        <dt class="form_c_hline form_v3_mod">
                                            <label for="quip-comment-name-qcom">Ваше имя:</label>
                                        </dt>
                                        <dd class="form_c_f_w form_v3_mod"><span
                                                    class="input_icon v1_mod user_mod"></span>
                                            <input type="text" id="quip-comment-name-qcom" name="name"
                                                   placeholder="Ваше имя" class="f_c_field default_mod" value="">
                                            <span class="error"></span>
                                        </dd>
                                    </dl>
                                </li>
                                <li class="comment_inputs_item">
                                    <dl class="form_cell form_cell_v3_mod" id="email_input_wrapper" style="">
                                        <dt class="form_c_hline form_v3_mod">
                                            <label for="quip-comment-email-qcom">Ваш e-mail:</label>
                                        </dt>
                                        <dd class="form_c_f_w form_v3_mod" id="phone_input_wrapper">
                                            <span class="input_icon v1_mod mail_mod"></span>
                                            <input type="text" id="quip-comment-email-qcom" name="email"
                                                   placeholder="Ваш e-mail" class="f_c_field default_mod"
                                                   value="aprog-art@mail.ru">
                                            <span class="error"></span>
                                        </dd>
                                    </dl>
                                </li>
                                <li class="comment_inputs_item">
                                    <p>
                                        Добавить новый комментарий:<span class="comment_error"></span>
                                    </p>
                                    <textarea name="comment" id="quip-comment-box-qcom" rows="5"
                                              class="f_c_field default_mod textarea_mod_1 "></textarea>
                                </li>
                                <li class="comment_inputs_item">
                                    <button type="submit" name="quip-preview" value="1" class="comment_preview_button">
                                        Просмотр
                                    </button>
                                    <button type="submit" name="quip-post" value="1" class="comment_send_button">
                                        Отправить
                                    </button>
                                </li>
                            </ul>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        {'msProducts' | snippet : [
            'tpl' => 'e.linkedProductItem',
            'tplWrapper' => 'b.linkedProducts',
            'limit' => 0,
            'parents' => 0,
            'link' => 2,
            'master' => $_modx->resource.id,
            'includeThumbs' => 'preview',
            'wrapIfEmpty' => false,
        ]}

        {'msProducts' | snippet : [
            'tpl' => 'e.linkedProductItem',
            'tplWrapper' => 'b.recommendedProducts',
            'limit' => 12,
            'parents' => 0,
            'includeThumbs' => 'preview',
            'where' => '{"Data.popular":"1"}',
            'wrapIfEmpty' => false,
            'sortby' => 'RAND()',
        ]}

        {include 'b.viewedProductsSection'}
    </div>
    {include 'b.footer'}
    {include 'b.footerScripts'}
</body>
</html>
