<?php

return array(
    'fields' => array(
        'count' => 0,
        'order_price' => 0.0,
    ),
    'fieldMeta' => array(
        'count' => array(
            'dbtype' => 'int',
            'precision' => '10',
            'attributes' => 'unsigned',
            'phptype' => 'integer',
            'null' => true,
            'default' => 0,
        ),
        'order_price' => array(
            'dbtype' => 'decimal',
            'precision' => '12,2',
            'phptype' => 'float',
            'null' => true,
            'default' => 0.0,
        ),
    ),
    'indexes' => array(
        'count' => array(
            'alias' => 'count',
            'primary' => false,
            'unique' => false,
            'type' => 'BTREE',
            'columns' => array(
                'count' => array(
                    'length' => '',
                    'collation' => 'A',
                    'null' => false,
                ),
            ),
        ),
        'order_price' => array(
            'alias' => 'order_price',
            'primary' => false,
            'unique' => false,
            'type' => 'BTREE',
            'columns' =>
                array(
                    'order_price' => array(
                        'length' => '',
                        'collation' => 'A',
                        'null' => false,
                    ),
                ),
        ),
    ),
);
