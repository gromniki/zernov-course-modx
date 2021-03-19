{if $files?}
    <div class="product_gallery">
        <div class="product_gallery_i_w"><img src="{$files[0].gallery_image}" class="product_gallery_i" alt="{$files[0].alt | htmlent}"></div>
        <ul class="product_gallery_trigger_list">
            {foreach $files as $file}
                <li class="product_gallery_trigger_item">
                    <a href="#" data-thumblink="{$file.gallery_image}" class="product_gallery_trigger_i_w">
                        <img alt="{$file.alt | htmlent}" src="{$file.preview}" class="product_gallery_trigger_i">
                    </a>
                </li>
            {/foreach}
        </ul>
    </div>
{/if}
