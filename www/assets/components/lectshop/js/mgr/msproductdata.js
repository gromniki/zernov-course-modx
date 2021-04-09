miniShop2.plugin.count = {
    // Изменение полей для панели товара
    getFields: function () {
        return {
            count: {
                xtype: 'numberfield',
                description: '<b>[[+count]]</b><br />Количество на складе',
                fieldLabel: 'Количество на складе',
                allowNegative: false,
                allowBlank: false,
            },
            order_price: {
                xtype: 'numberfield',
                decimalPrecision: 2,
                description: '<b>[[+order_price]]</b><br />Цена под заказ',
                fieldLabel: 'Цена под заказ',
                allowNegative: false,
            },
        }
    },
    // Изменение колонок таблицы товаров в категории
    getColumns: function () {
        return {
            count: {
                width: 50,
                sortable: true,
                editor: {
                    xtype: 'numberfield',
                    name: 'count',
                    allowNegative: false,
                    allowBlank: false,
                }
            },
            order_price: {
                width: 50,
                sortable: true,
                header: 'Цена под заказ',
                editor: {
                    xtype: 'numberfield',
                    name: 'order_price',
                    allowNegative: false,
                },
                renderer: function (value) {
                    return value.replace(/\.00$/, '');
                }
            }
        }
    }
};
