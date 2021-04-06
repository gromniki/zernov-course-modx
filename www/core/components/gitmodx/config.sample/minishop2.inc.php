<?php

return [
    'ms2_order_address_fields' => 'receiver,phone,index,country,region,city,metro,street,building,room,comment',
    'ms2_order_grid_fields' => 'id,num,customer,status,cost,weight,delivery,payment,createdon,updatedon,comment',
    'ms2_order_handler_class' => 'msOrderHandler',
    'ms2_order_product_fields' => 'name,product_article,weight,price,count,cost',

    'ms2_category_grid_fields' => 'id,menuindex,pagetitle,article,price,thumb,new,favorite,popular,count',
    'ms2_category_show_options' => 'true',
    'ms2_template_category_default' => 27,
    'ms2_template_product_default' => 41,

    'ms2_cart_handler_class' => 'msCartHandler',

    'ms2_order_user_groups' => 'Customers',

    'ms2_product_extra_fields' => 'price,old_price,article,weight,color,size,vendor,made_in,tags,new,popular,favorite,count',

    'ms2_frontend_css' => '',
    'ms2_frontend_js' => 'assets/js/minishop2.js',
];
