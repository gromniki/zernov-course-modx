{if $noBgMod}
    {'pdoCrumbs' | snippet : [
        'tplWrapper' => 'b.breadCrumbsNoBgWrapper',
        'tpl' => 'b.breadCrumbsNoBgItem',
        'tplCurrent' => 'b.breadCrumbsNoBgCurrent',
        'tplHome' => 'b.breadCrumbsNoBgItem',
        'showHome' => '1',
    ]}
{else}
    {'pdoCrumbs' | snippet : [
        'tplWrapper' => 'b.breadCrumbsWrapper',
        'tpl' => 'b.breadCrumbsItem',
        'tplCurrent' => 'b.breadCrumbsCurrent',
        'tplHome' => 'b.breadCrumbsItem',
        'showHome' => '1',
    ]}
{/if}
