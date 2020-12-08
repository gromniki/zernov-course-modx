/**
 * Обработчик страницы заказа кладет товары в корзину при изменении количества
 */
var elvOrder = {
	initialize: function(){

	}
};

var elvOrderFilter = {
	initialized: false,
	initialize: function(){
		var self = this;
		if(this.initialized) return;
		this.initOrderScroll();

		$('#order_brand_select').on('change',function(){
			$('.filter_order [type="submit"]').removeClass('active');
			$('form.filter_order').trigger('submit');
		});

		$('#order_categories_select').on('change',function(){
			$('.filter_order [type="submit"]').removeClass('active');
			$('form.filter_order').trigger('submit');
		});


		$('form.filter_order').on('submit',function(e){
			e.preventDefault();

			var sendData = $(this).serializeObject();
			var $to = $('#order_products');
			$to.html('').addClass('loading');
			$.ajax({
				url: 'assets/components/aur/order/getproducts.php',
				dataType: 'json',
				type: "GET",
				data: sendData,
				success: function(data, status){
					if(data.html)
					{
						$to.html(data.html).removeClass('loading');
						miniShop2.Cart.getStatus();
					}
				}
			});
			$(this).find('.appended').remove();
		});

		$('.filter_order [type="submit"]').on('click',function(e){
			e.preventDefault();
			$('.filter_order [type="submit"]').removeClass('active');
			$('form.filter_order .form_select_v1').val('').selectOrDie('update');
			$('<input class="appended" type="hidden" name="'+$(this).attr('name')+'" value="'+$(this).val()+'">').appendTo($(this).parents('form'));
			$(this).addClass('active');
			$('form.filter_order').trigger('submit');
		});

		$('#order_filter_reset').off('click');

		$('#order_filter_reset').on('click',function(e){
			e.preventDefault();
			$('form.filter_order .form_select_v1').val('').selectOrDie('update');
			$('.filter_order [type="submit"]').removeClass('active');
			$('form.filter_order').trigger('submit');
		});
		this.initialized = true;
	},

	initOrderScroll: function(){
		var $el = $('.filter_order_wrap');
		if($el.size()>0)
		{
			$(window).scroll(function(){
				if($('body').scrollTop() > 430)
				{
					$el.addClass('fix');
				}
				else
				{
					$el.removeClass('fix');
				}
			});
			$(window).scroll();
		}
	}
};

$(function(){
	elvOrder.initialize();
	elvOrderFilter.initialize();
});