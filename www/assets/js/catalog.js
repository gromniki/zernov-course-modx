var elvSortForm = {
	config: {
		formSelector: '#catalog-sort-form',
		containerSelector: '#catalog-products-container',
		moreButtonSelector: '#catalog-more',
		filterFormSelector: '#catalog-filter-form'
	},
	currentParams: {
		page: 1
	},
	appendMode: false,
	loadData: function(){
		var self = this;
		$.ajax({
			url: 'assets/components/elvert/catalog/getproducts.php',
			dataType: 'json',
			data: self.currentParams,
			success: function(data){
				if(typeof data.html !== 'undefined')
				{
					if(self.appendMode)
					{
						$(self.config.containerSelector).append(data.html);
					}
					else{
						$(self.config.containerSelector).html(data.html);
					}
				}
				if(data.next_empty && self.appendMode)
				{
					$(self.config.moreButtonSelector).hide();
				}
				else if(!self.appendMode)
				{
					$(self.config.moreButtonSelector).show();
				}
			}
		});
	},
	changeMoreLink: function(linkElement){
		var link = $(linkElement).attr('href');
		var parts = link.split('page=');
		var page = parts[1];
		page = this.currentParams.page + 1;
		$(linkElement).attr("href",parts[0]+'page='+page);
		if(window.history)
		{
			window.history.pushState({},null, parts[0]+'page='+this.currentParams.page);
		}
	},
	initialize: function(){
		var self = this;
		//Обработчик отправки
		$(document).on('submit',this.config.formSelector+','+this.config.filterFormSelector,function(e){
			e.preventDefault();
			self.loadData();
			return false;
		});

		//Реакция на изменение
		$(this.config.formSelector+','+this.config.filterFormSelector).find('input').on('change',function(e){
			self.currentParams = $.extend(self.currentParams,$(self.config.formSelector).serializeObject());
			self.currentParams.Product = $(self.config.filterFormSelector).serializeObject();
			self.currentParams.page = 1;
			self.appendMode = false;
			$(this).parents('form').trigger('submit');
		});

		$(this.config.moreButtonSelector).on('click',function(e){
			e.preventDefault();
			self.appendMode = true;
			self.currentParams.page += 1;
			self.changeMoreLink(this);
			self.loadData();
		});
	}
};

$(function(){
	elvSortForm.initialize();
});