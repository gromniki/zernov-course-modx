<ul class="head_main_slider" id="head_main_slider">
    {foreach $files as $file}
    <li class="head_main_slider_item" style="background: url('{$file.url}') center / cover no-repeat;">
        <h2 class="head_main_title"><span class="big">{$file.name}</span><span class="small">{$file.description}</span>
        </h2>
    </li>
    {/foreach}
</ul>
