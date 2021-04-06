<form id="catalog-sort-form">
    <div class="catalog_sort_block">
        <ul class="catalog_sort_list">
            <li class="catalog_sort_item">
                <label class="lbl_rb_ch_block burger_mod">
                    <input name="layout" type="radio" value="list" checked="checked" class="lbl_inp_rb_ch hide_mod"/><span class="lbl_rb_ch_text burger_mod hline_hide_mod">Списком</span>
                </label>
                <label class="lbl_rb_ch_block cell_mod">
                    <input name="layout" type="radio" value="cell" class="lbl_inp_rb_ch hide_mod"/><span class="lbl_rb_ch_text cell_mod hline_hide_mod">Ячейками</span>
                </label>
            </li>
            <li class="catalog_sort_item">
                <div class="catalog_sort_title">Цена:</div>
                <label class="lbl_rb_ch_block price_top_mod">
                    <input name="sort" type="radio" value="Data.price:asc" class="lbl_inp_rb_ch hide_mod"/><span class="lbl_rb_ch_text price_top_mod hline_hide_mod">Сначала дешевые</span>
                </label>
                <label class="lbl_rb_ch_block price_bottom_mod">
                    <input name="sort" type="radio" value="Data.price:desc" class="lbl_inp_rb_ch hide_mod"/><span class="lbl_rb_ch_text price_bottom_mod hline_hide_mod">Сначала дорогие</span>
                </label>

                <div class="catalog_sort_title">А-Я:</div>
                <label class="lbl_rb_ch_block letters_top_mod">
                    <input name="sort" type="radio" value="pagetitle:asc" class="lbl_inp_rb_ch hide_mod"/><span class="lbl_rb_ch_text letters_top_mod hline_hide_mod">А-Я</span>
                </label>
                <label class="lbl_rb_ch_block letters_bottom_mod">
                    <input name="sort" type="radio" value="pagetitle:desc" class="lbl_inp_rb_ch hide_mod"/><span class="lbl_rb_ch_text letters_bottom_mod hline_hide_mod">Я-А</span>
                </label>
            </li>
        </ul>
    </div>
</form>
