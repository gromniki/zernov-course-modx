$(function(){
    function collectParams(){
        var newParams = {};
        $('.pdoFilterForm input').each(function(){
            var type = $(this).attr('type');
            var name = $(this).attr('name');
            var value = $(this).val();
            switch(type){
                case 'checkbox':
                    if($(this).is(":checked")){
                        if(!newParams.hasOwnProperty(name)){
                            newParams[name] = [];
                        }
                        newParams[name].push(value);
                    }
                    break;
                case 'radio':
                    if($(this).is(":checked")){
                        newParams[name] = value;
                    }
                    break;
                default:
                    newParams[name] = value;
                    break;
            }
        });
        return newParams;
    }

    $('.pdoFilterForm').on('submit', function(e){
        e.preventDefault();
        var filterParams = collectParams();
        pdoPage.Hash.set(filterParams);
        delete(pdoPage.keys.page);
        var config = pdoPage.configs['page'];
        var key = config['pageVarKey'];
        var href = location.href;
        var page = 1;
        if (config.history) {
            pdoPage.Hash.remove(key);
        }
        pdoPage.loadPage(href, config, 'replace');
    });

    $(document).on('pdopage_load', function(e, config, response){
        if (config['mode'] == 'button') {
            if (response['pages'] == response['page']) {
                $(config['more']).hide();
            }
            else {
                $(config['more']).show();
            }
        }
    });

    $('.pdoFilterForm input').on('change', function () {
        $(this).closest('.pdoFilterForm').trigger('submit');
    });
});