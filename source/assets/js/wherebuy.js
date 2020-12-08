var elWhereBuyForm = {
	config: {},
	initialize: function(config){
		var defaults = {
			form: '#wherebuy_form',
			container: '#wherebuy_shops',
			map: '#st_map_hold',
			connectorUrl: 'assets/components/elvert/wherebuy/getshops.php'
		};
		elWhereBuyForm.config = $.extend(defaults,config);

		//Вешаем обработчик на отправку формы
		$(document).on('submit',elWhereBuyForm.config.form,function(e){
			e.preventDefault();
			var sendData = $(elWhereBuyForm.config.form).serializeObject();
			$.ajax({
				url: elWhereBuyForm.config.connectorUrl,
				dataType: 'json',
				data: sendData,
				success: function(data){
					if(data.success)
					{
						if(!data.empty)
						{
							$(elWhereBuyForm.config.map).show();
							$(elWhereBuyForm.config.container).html(data.html);
							elWhereBuyForm.refreshMap();
						}
						else
						{
							$(elWhereBuyForm.config.container).html(data.html);
							$(elWhereBuyForm.config.map).hide();
						}
					}
				}
			});
		});

		$(document).on('click',elWhereBuyForm.config.form + ' [type="reset"]',function(e){
			$(elWhereBuyForm.config.form + ' select').each(function(index,el){
				$(el).find(':selected').attr('selected',false);
				$(el).find('option:first').attr('selected',true);
				$(el).trigger("chosen:updated");
			});
			$(elWhereBuyForm.config.form).trigger('submit');
		});
	},

	refreshMap: function(){
		elvertGMap.clearMarkers();
		elvertGMap.initCoords();
	}
};

$(function(){
	elWhereBuyForm.initialize();
});