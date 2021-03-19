{if $options?}
    <ul class="product_param_list">
        {foreach $options as $option}
            <li class="product_param_item">
                <dl class="product_param_block">
                    <dt class="product_param_title">{$option.caption}:</dt>
                    <dd class="product_param_def">
                        {if $option.value | iterable}
                            {foreach $option.value as $value}
                                {$value} {$option.measure_unit}
                            {/foreach}
                        {/if}
                    </dd>
                </dl>
            </li>
        {/foreach}
    </ul>
{/if}

