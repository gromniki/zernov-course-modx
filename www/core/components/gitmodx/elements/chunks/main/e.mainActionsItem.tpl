<li class="actions_item v1_mod">
    <a href="{$uri}" class="actions_block v1_mod" {if $medium}style="background: url('{$medium}') center no-repeat; background-size: cover;"{/if}>
        <div class="actions_block_content v1_mod">
            <div class="actions_date v1_mod">{$publishedon | humanDate: '{day} {monthName} {year}'}</div>
            <div class="actions_title v1_mod">{$pagetitle}</div>
            <div class="actions_def v1_mod">
                {$introtext}
            </div>
        </div>
    </a>
</li>
