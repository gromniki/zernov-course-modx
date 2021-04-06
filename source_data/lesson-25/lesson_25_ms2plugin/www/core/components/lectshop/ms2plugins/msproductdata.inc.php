<?php

return array(
    'fields' => array(
        'count' => 0,
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
    ),
);