var $body,
	window_height,
	window_width,
	$user_menu_butt,
	media_point_1 = 1024,
	media_point_2 = 768,
	media_point_3 = 480,
	media_point_4 = 320,
	$news_slider_1,
	$main_slider,
	$main_slider_wrapper,
	$main_slider_item,
	$scroll_arrow,
	$actions_slider_1,
	$actions_slider_2,
	$catalog_triggers,
	$product_slider_1,
    $product_slider_2,
	$novelty_slider_1,
	$st_map_hold,
	$cont_map_hold,
	$resize_map_hold,
	$resize_map_w,
	$resize_map_container,
	$resize_trigger,
	st_map,
	cont_map,
	resize_map,
	st_map_marker,
	cont_map_marker,
	test_marker_1,
	test_marker_2,
	$left_aside,
	$left_aside_open;

var map_center = new google.maps.LatLng(55.755826, 37.6173),
	map_test_position_1 = new google.maps.LatLng(46.1321166,48.0610115),
	map_test_position_2 = new google.maps.LatLng(55.0083526, 82.9357327);

if(typeof contactsPage !== 'undefined' && contactsPage)
{
	map_center = new google.maps.LatLng(mapLat, mapLng);
}

var map_style = [
		{
			"featureType": "administrative",
			"elementType": "labels.text.fill",
			"stylers": [
				{
					"color": "#444444"
				}
			]
		},
		{
			"featureType": "landscape",
			"elementType": "all",
			"stylers": [
				{
					"color": "#f2f2f2"
				}
			]
		},
		{
			"featureType": "poi",
			"elementType": "all",
			"stylers": [
				{
					"visibility": "off"
				}
			]
		},
		{
			"featureType": "road",
			"elementType": "all",
			"stylers": [
				{
					"saturation": -100
				},
				{
					"lightness": 45
				}
			]
		},
		{
			"featureType": "road.highway",
			"elementType": "all",
			"stylers": [
				{
					"visibility": "simplified"
				}
			]
		},
		{
			"featureType": "road.arterial",
			"elementType": "labels.icon",
			"stylers": [
				{
					"visibility": "off"
				}
			]
		},
		{
			"featureType": "transit",
			"elementType": "all",
			"stylers": [
				{
					"visibility": "off"
				}
			]
		},
		{
			"featureType": "water",
			"elementType": "all",
			"stylers": [
				{
					"color": "#46bcec"
				},
				{
					"visibility": "on"
				}
			]
		}
	],
	st_map_props = {
		center: map_center,
		zoom: 14,
		zoomControl: true,
		mapTypeId: google.maps.MapTypeId.ROADMAP,
		scrollwheel: false,
		disableDefaultUI: true,
		styles:map_style
	};

$(document).ready(function ($) {
	if(checkForOldBrowser())
	{
		return;
	}

	$body = $('body');
	$user_menu_butt = $('#user_menu_butt');
	window_width = $(window).width();
	window_height = $(window).height();
	$news_slider_1 = $('#news_slider_1');
	$main_slider = $('#head_main_slider');
	$main_slider_wrapper = $('#head_main_slider_wrapper');
	$main_slider_item = $('.head_main_slider_item');
	$scroll_arrow = $('.head_main_down_arrow');
	$actions_slider_1 = $('#actions_slider_1');
	$actions_slider_2 = $('#actions_slider_2');
	$catalog_triggers = $('#catalog_triggers');
	$product_slider_1 = $('#product_slider_1');
    $product_slider_2 = $('#product_slider_2');
	$novelty_slider_1 = $('#novelty_slider_1');
	$st_map_hold = $('#st_map_hold');
	$cont_map_hold = $('#cont_map_hold');
	$resize_map_w = $('#resize_map_w');
	$resize_trigger = $('#map_trigger');
	$resize_map_hold = $('#resize_map_hold');
	$resize_map_container = $('#resize_map_container');
	$left_aside = $('#left_aside');
	$left_aside_open = $('#left_aside_open');


	$user_menu_butt.on('click', function () {
		if ($body.hasClass('menu_open')) {
			$body.removeClass('menu_open');
			$(this).removeClass('active_mod');
		} else {
			$body.addClass('menu_open');
			$(this).addClass('active_mod');
		}
	});

	var mouse_is_inside = false;

	$left_aside.hover(function(){
		mouse_is_inside=true;
	}, function(){
		mouse_is_inside=false;
	});

	$left_aside_open.on('click',function() {
		$body.addClass('left_aside_opened');
		return false;
	});

	$body.on('click',function() {
		if (!mouse_is_inside) {
			$body.removeClass('left_aside_opened');
		}
	});

	$resize_trigger.on('click',function() {
		$(this).toggleClass('mod_open');
		if ($resize_map_w.hasClass('big_mod')) {
			$resize_map_w.removeClass('big_mod').removeClass('big_permanent');
			$resize_map_container.removeClass('big_mod').removeClass('big_permanent');
		} else {
			$resize_map_w.addClass('big_mod').addClass('big_permanent');
			$resize_map_container.addClass('big_mod').addClass('big_permanent');
		}
		return false;
	});

	$resize_map_w.on('mouseenter',function(e){
		if(!$(this).hasClass('big_permanent')){
			$resize_map_w.addClass('big_mod');
			$resize_map_container.addClass('big_mod');
		}
	}).on('mouseleave',function(e){
		if(!$(this).hasClass('big_permanent')){
			$resize_map_w.removeClass('big_mod');
			$resize_map_container.removeClass('big_mod');
		}
	}).on('click',function(e){
		if(!$(this).hasClass('big_permanent')){
			$resize_map_w.addClass('big_mod').addClass('big_permanent');
			$resize_map_container.addClass('big_mod').addClass('big_permanent');
		}
	});

	protectInputs();

	contactFormToggler();

	initNotifications();

	replyForm();

	modalHandler();

	initTabs();

	paramMoreLink();

	$('.header').tooltip();

	registerForm();

	if($scroll_arrow.length){
		$scroll_arrow.on('click',function(e){
			e.preventDefault();
			$('html,body').animate({
				scrollTop: window_height - 88
			});
		});
	}

	$('input[data-inputmask-mask]').inputmask();

	fancyboxInit();
});

$(window).on('resize', function () {
	resize_f();
});

$(window).on('scroll', function () {
	scroll_f();
});

$(window).on('load', function () {
	load_f();
});

function resize_f() {
	window_width = $(window).width();
	window_height = $(window).height();

	if ($news_slider_1.length) {
		$news_slider_1.reloadSlider();
	}
	if ($novelty_slider_1.length) {
		$novelty_slider_1.reloadSlider();
	}
	if ($actions_slider_1.length) {
		$actions_slider_1.reloadSlider();
	}
	if ($product_slider_1.length) {
		$product_slider_1.reloadSlider();
	}
    if ($product_slider_2.length) {
        $product_slider_2.reloadSlider();
    }
	if ($actions_slider_2.length) {
		$actions_slider_2.reloadSlider();
	}
	if ($cont_map_hold.length) {
		cont_map.setCenter(map_center);
	}
	if ($resize_map_hold.length) {
		resize_map.setCenter(map_center);
	}
	if ($main_slider_wrapper.length){
		resizeMainSlider();
	}
}
function load_f() {
	if ($news_slider_1.length) {
		$news_slider_1.bxSlider({
			controls: true,
			infiniteLoop: true,
			auto: true,
			autoHover: true,
			pause: typeof newsSliderPause == 'undefined' ? 2000 : newsSliderPause
		});
	}
	if ($actions_slider_1.length) {
		$actions_slider_1.bxSlider({
			controls: false,
			auto: true,
			pause: typeof actionSliderPause == 'undefined' ? 2000 : actionSliderPause,
			autoHover: true,
			infiniteLoop: true
		});
	}
	if ($actions_slider_2.length) {
		$actions_slider_2.bxSlider({
			controls: false,
			auto: true,
			pause: typeof actionSliderPause == 'undefined' ? 2000 : actionSliderPause,
			autoHover: true,
			infiniteLoop: true
		});
	}
	if ($product_slider_1.length) {
		$product_slider_1.bxSlider({
			controls: false,
			auto: true,
			pause: typeof productSliderPause == 'undefined' ? 2000 : productSliderPause,
			autoHover: true,
			infiniteLoop: true
		});
	}
    if ($product_slider_2.length) {
        $product_slider_2.bxSlider({
            controls: false,
            auto: true,
            pause: typeof productSliderPause == 'undefined' ? 2000 : productSliderPause,
            autoHover: true,
            infiniteLoop: true
        });
    }
	if ($novelty_slider_1.length) {
		$novelty_slider_1.bxSlider({
			controls: true,
			auto: true,
			pause: typeof noveltySliderPause == 'undefined' ? 2000 : noveltySliderPause,
			autoHover: true,
			infiniteLoop: true
		});
	}
	if ($main_slider.length) {
		$main_slider.bxSlider({
			controls: false,
			pager: false,
			auto: true,
			infiniteLoop: true,
			pause: typeof mainSliderPause == 'undefined' ? 6000 : mainSliderPause
		});
		resizeMainSlider();
	}

	if ($catalog_triggers.length) {
		$catalog_triggers.accordion({
			collapsible: true,
			heightStyle: 'content'
		});
	}

	changeSrc('.product_gallery_trigger_i_w', '.product_gallery_i', '.product_gallery');

	$(".chosenSelect").each(function () {
		$(this).chosen({
			disable_search_threshold: 10,
			width: "100%",
			inherit_select_classes: true
		});
	});

	//-------------maps
	if ($st_map_hold.length) {
		//st_map_init();
	}
	if ($cont_map_hold.length) {
		cont_map_init();
	}
	if ($resize_map_hold.length) {
		resize_map_init();
	}
	//-------------maps###
}



function scroll_f() {

}

function st_map_init() {
	st_map = new google.maps.Map(document.getElementById("st_map_hold"), st_map_props);

	st_map_marker = new MarkerWithLabel({
		position: map_center,
		draggable: false,
		map: st_map,
		icon: 'i/icons/empty.svg',//empty icon because impossible to delete icon in google maps
		labelContent: "",
		labelAnchor: new google.maps.Point(40, 90),
		labelClass: "map_label_v1" // the CSS class for the label
	});
	test_marker_1 = new MarkerWithLabel({
		position: map_test_position_1,
		draggable: false,
		map: st_map,
		icon: 'i/icons/empty.svg',//empty icon because impossible to delete icon in google maps
		labelContent: "",
		labelAnchor: new google.maps.Point(40, 90),
		labelClass: "map_label_v1" // the CSS class for the label
	});
	test_marker_2 = new MarkerWithLabel({
		position: map_test_position_2,
		draggable: false,
		map: st_map,
		icon: 'i/icons/empty.svg',//empty icon because impossible to delete icon in google maps
		labelContent: "",
		labelAnchor: new google.maps.Point(40, 90),
		labelClass: "map_label_v1" // the CSS class for the label
	});
}

function resize_map_init() {
	resize_map = new google.maps.Map(document.getElementById("resize_map_hold"), st_map_props);

	st_map_marker = new MarkerWithLabel({
		position: map_center,
		draggable: false,
		map: resize_map,
		icon: 'i/icons/empty.svg',//empty icon because impossible to delete icon in google maps
		labelContent: "",
		labelAnchor: new google.maps.Point(40, 90),
		labelClass: "map_label_v1" // the CSS class for the label
	});
	test_marker_1 = new MarkerWithLabel({
		position: map_test_position_1,
		draggable: false,
		map: resize_map,
		icon: 'i/icons/empty.svg',//empty icon because impossible to delete icon in google maps
		labelContent: "",
		labelAnchor: new google.maps.Point(40, 90),
		labelClass: "map_label_v1" // the CSS class for the label
	});
	test_marker_2 = new MarkerWithLabel({
		position: map_test_position_2,
		draggable: false,
		map: resize_map,
		icon: 'i/icons/empty.svg',//empty icon because impossible to delete icon in google maps
		labelContent: "",
		labelAnchor: new google.maps.Point(40, 90),
		labelClass: "map_label_v1" // the CSS class for the label
	});
}

function cont_map_init() {
	cont_map = new google.maps.Map(document.getElementById("cont_map_hold"), st_map_props);

	cont_map_marker = new MarkerWithLabel({
		position: map_center,
		draggable: false,
		map: cont_map,
		icon: 'i/icons/empty.svg',//empty icon because impossible to delete icon in google maps
		labelContent: $('.map_label').html(),
		labelAnchor: new google.maps.Point(40, 90),
		labelClass: "map_label_v1" // the CSS class for the label
	});
}

function move_to_block(block, control) {
	var $block = $(block),
		$control = $(control);
	$control.on('click', function () {
		var $block_pos = $block.offset();
		$('body,html').animate({
			scrollTop: $block_pos.top
		}, 500);
		return false;
	})
}

function changeSrc(thumb, img, container) {
	$(thumb).on('click', function () {
		var $thumb = $(this),
			$container = $thumb.closest(container),
			$img = $container.find(img),
			$src = $thumb.attr('data-thumblink');
		$img.attr('src', $src);
		return false;
	});
}

function docScrollTo(pos, speed, callback) {

	$('html,body').animate({'scrollTop': pos}, speed);

	if (typeof(callback) == 'function') {
		callback();
	}
}

function protectInputs(){
	$('[type="submit"]').not('.no_protect').each(function(index,el){
		var name = $(el).attr('name');
		if(name)
		{
			$(el).attr('name',name.substr(1));
		}
	});
}

function contactFormToggler(){
	$('[name="call_way"]').on('click',function(){
		var type = $(this).val();
		if(type == 'phone'){
			$('#phone_input_wrapper').show();
			$('#email_input_wrapper').hide();
		}
		else{
			$('#phone_input_wrapper').hide();
			$('#email_input_wrapper').show();
		}

	});
}

function initNotifications(){
	if(typeof elvGlobalNotification != 'undefined')
	{
		elvGlobalNotification.initialize('.global_notification_container','.gn_message','.gn_close,.gn_bg');
	}
}

function replyForm(){
	$('#expand_comment_form_button').on('click',function(e){
		e.preventDefault();
		$(this).hide();
		$('#reply_form_wrapper').fadeIn(500,function(){
			$(this).addClass('expanded');
		});
	});
}

function modalHandler(){
	$('[data-toggle="modal"]').on('click',function(e){
		e.preventDefault();
		var target = $(this).attr('href');
		if($(target).length)
		{
			if($(target).is(':visible'))
			{
				$(target).stop().fadeOut(500,function(){
					$('body,html').removeClass('no_scroll');
				});
			}
			else
			{
				$('body,html').addClass('no_scroll');
				$(target).stop().fadeIn(500);
			}
		}
	});
}

function initTabs(){
	//$('.tabs').tabs();
	$('.tabs').each(function(index, el){
		$(el).find('> ul').find('li > a').each(function(index2,el2){
			if(index2 == 0)
			{
				$(this).parent('li').addClass('ui-state-active');
			}
			else
			{
				$($(this).attr('href')).hide();
			}
		});

		$(el).find('> ul > li > a').on('click',function(e){
			e.preventDefault();
			var parent = $(this).parents('.tabs');
			parent.find('> ul > li').removeClass('ui-state-active');
			$(this).parent('li').addClass('ui-state-active');
			parent.find('> div').hide();
			$($(this).attr('href')).show();
		});
	});
}

function paramMoreLink(){
	$('.product_param_more_link').on('click',function(e){
		var target = $(this).attr('href').split('#')[1];
		var $tabs = $('#'+target).parents('.tabs');
		if($tabs.length > 0)
		{
			e.preventDefault();
			var $tabContainer = $('#'+target).parents('[id^="tabs-"]');
			var tabContainerId = $tabContainer.attr('id');
			$('.ui-tabs-nav a[href="#'+tabContainerId+'"]').trigger('click');
			var st = $tabs.offset().top;
			$('body,html').animate({scrollTop: st},500);
		}
	});
}

function registerForm(){
	var $element = $('[name="User[type]"]');
	$element.on('change',function(){
		var current = $('[name="User[type]"]:checked').val();
		$('[data-hide]').show();
		$('[data-hide="'+current+'"]').hide();
	}).trigger('change');
}

function checkForOldBrowser(){
	return false;
	if (Modernizr.flexbox) {
		return false;
	} else {
		$('body').text('К сожалению, ваш браузер устарел и не поддерживает стандарт Flexbox. Пожалуйста, обновите браузер до последней версии.');
	}
	return false;
}

function resizeMainSlider(){
	return;
	var h = window_height - 88;
	var precission = 15;
	var realWidth = $("body").prop("clientWidth");

	if(realWidth > media_point_1-precission){
		h = window_height - 88;
	}
	else if(realWidth > media_point_2-precission){
		h = window_height + 440;
	}
	else if(realWidth > media_point_3-precission){
		h = window_height + 342;
	}
	else if(realWidth > media_point_4-precission){
		h = window_height + 342;
	}
	else{
		h = window_height + 342;
	}
	$main_slider_wrapper.css({
		height : h
	});
}

function fancyboxInit(){
	$('.fancybox').fancybox({
		beforeLoad: function() {
			this.title = $(this.element).find('img').attr('alt');
		},
		padding: 0,
		helpers : {
			title: {
				type: 'inside'
			}
		}
	});
}