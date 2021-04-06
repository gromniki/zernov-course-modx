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
            }
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
            }
        }
    }
};