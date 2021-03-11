{switch $version}
    {case 2}
        {'pdoCrumbs' | snippet : [
            'tplWrapper' => 'b.breadCrumbsNoBgWrapper',
            'tpl' => 'b.breadCrumbsNoBgItem',
            'tplCurrent' => 'b.breadCrumbsNoBgCurrent',
            'tplHome' => 'b.breadCrumbsNoBgItem',
            'showHome' => '1',
        ]}
    {case 3}
        {'pdoCrumbs' | snippet : [
            'tplWrapper' => 'b.breadCrumbsNoBgV2Wrapper',
            'tpl' => 'b.breadCrumbsNoBgV2Item',
            'tplCurrent' => 'b.breadCrumbsNoBgV2Current',
            'tplHome' => 'b.breadCrumbsNoBgV2Item',
            'showHome' => '1',
        ]}
    {case 1}
    {default}
        {'pdoCrumbs' | snippet : [
            'tplWrapper' => 'b.breadCrumbsWrapper',
            'tpl' => 'b.breadCrumbsItem',
            'tplCurrent' => 'b.breadCrumbsCurrent',
            'tplHome' => 'b.breadCrumbsItem',
            'showHome' => '1',
        ]}
{/switch}
