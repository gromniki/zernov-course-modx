{set $bgImage = ('ms2Gallery' | snippet : [
    'frontend_css' => '',
    'frontend_js' => '',
    'limit' => 1,
    'parents' => 0,
    'resources' => $_modx->resource.id,
    'tpl' => '@INLINE {foreach $files as $file}style="background-image: url(\'{$file.header_image}\');"{/foreach}'
])}

<div class="page_head_block v1_mod nku_mod" {if $bgImage}{$bgImage}{/if}>
    <h1 class="page_head_title white_mod">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
    {if $_modx->resource.introtext}
        <div class="page_head_def">{$_modx->resource.introtext}</div>
    {/if}
</div>
