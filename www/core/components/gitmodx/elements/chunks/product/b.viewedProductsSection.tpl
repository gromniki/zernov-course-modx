{if $.session.le_viewed_products && ($.session.le_viewed_products | count) > 0}
    {'msProducts' | snippet : [
        'tpl' => 'e.linkedProductItem',
        'tplWrapper' => 'b.viewedProducts',
        'limit' => 12,
        'parents' => 0,
        'resources' => ($.session.le_viewed_products | join : ', '),
        'includeThumbs' => 'preview',
        'wrapIfEmpty' => false,
    ]}
{/if}
