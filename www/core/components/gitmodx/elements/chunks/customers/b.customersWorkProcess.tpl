{if $_modx->resource.workProcessTitle}
    <div class="about_block v1_mod">
        <h2 class="about_block_title v1_mod">{$_modx->resource.workProcessTitle ?: 'Процесс работы в LECTSHOP'}</h2>

        <div class="about_block_i_w v1_mod mod_video" style="background: url(http://img.youtube.com/vi/{$_modx->resource.workProcessVideoId}/maxresdefault.jpg) center no-repeat; background-size: cover;">
            <a href="#video-container" data-toggle="video" data-video="{$_modx->resource.workProcessVideoId}" class="about_block_play v1_mod"></a>
        </div>
    </div>
{/if}
