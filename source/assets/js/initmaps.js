var elvertGMap = {
	style: [
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

	initCoords: function(){
		var self = this;
		$(function(){
			//Заполняет массив координат по адресам магазинов
			if($('.destrib_item[data-address]').size() == 0) return;

			self.shops = [];
			$('.destrib_item[data-address]').each(function(index,el){
				self.getCoordsByAddress($(el).attr('id'),$(el).data('address'));
			});
		});
	},

	coords: [],
	markers: [],

	currentAjaxRequestsCounter: 0,

	getCoordsByAddress: function(id, address){
		var self = this;

		elvertGMap.currentAjaxRequestsCounter++;
		$.ajax({
			url: "//maps.googleapis.com/maps/api/geocode/json",
			type: "GET",
			data: {
				address: address,
				sensor: false
			},
			success: function(data){
				if(data.status == "OVER_QUERY_LIMIT")
				{
					setTimeout(function(){
						elvertGMap.getCoordsByAddress(id, address);
					},2000);
				}
				if(!data.results[0])
				{
					return;
				}
				coordsLatitude = data.results[0].geometry.location.lat;
				coordsLongtitude = data.results[0].geometry.location.lng;

				var point = new google.maps.LatLng(coordsLatitude,coordsLongtitude);

				//Сохраняем для будущих целей
				self.coords.push(point);


				var marker = new MarkerWithLabel({
					position: point,
					draggable: false,
					map: elvertGMap.map,
					icon: 'assets/i/icons/empty.svg',//empty icon because impossible to delete icon in google maps
					labelContent: "",
					labelAnchor: new google.maps.Point(40, 90),
					labelClass: "map_label_v1" // the CSS class for the label
				});

				google.maps.event.addListener(marker, "click", function () {
					var content = $('#'+id).html();
					var $content = $(content);
					$content.find('.destrib_map_link').hide();
					content = $content.html();
					elvertGMap.infoWindow.setOptions({
						content: content
					});
					elvertGMap.infoWindow.open(elvertGMap.map, marker);
					//elvertGMap.map.setCenter(marker.position);
					//elvertGMap.map.setZoom(16);
				});

				$('#'+id+' .destrib_title_link, #'+id+' .destrib_map_link').on('click',function(e){
					e.preventDefault();
					if(!$('#map_trigger').hasClass('mod_open'))
					{
						$('#map_trigger').trigger('click');
					}
					elvertGMap.map.setZoom(15);
					elvertGMap.map.setCenter(marker.getPosition());
					google.maps.event.trigger( marker, 'click' );
					$('body,html').animate({scrollTop: $('#st_map_hold').offset().top - 100});
				});

				elvertGMap.markers.push(marker);


				//elvertGMap.map.setCenter(point);
				elvertGMap.fitMap();

			}
		}).always(function(data) {
			elvertGMap.currentAjaxRequestsCounter--;
			if(elvertGMap.currentAjaxRequestsCounter < 0)
			{
				elvertGMap.currentAjaxRequestsCounter = 0;
			}
		});
	},

	clearMarkers: function(){
		for (var i = 0; i < elvertGMap.markers.length; i++) {
			elvertGMap.markers[i].setMap(null);
		}
		elvertGMap.markers = [];
		elvertGMap.coords = [];
	},

	fitMap: function(){
		var minLeft, maxRight, maxTop, minBottom;
		for(var i=0; i<this.coords.length; i++)
		{
			if(!minLeft){ minLeft = maxRight = this.coords[i].lat(); minBottom = maxTop = this.coords[i].lng(); }
			if(this.coords[i].lat() < minLeft) minLeft = this.coords[i].lat();
			if(this.coords[i].lat() > maxRight) maxRight = this.coords[i].lat();
			if(this.coords[i].lng() < minBottom) minBottom = this.coords[i].lng();
			if(this.coords[i].lng() > maxTop) maxTop = this.coords[i].lng();
		}

		elvertGMap.map.fitBounds(new google.maps.LatLngBounds(new google.maps.LatLng(minLeft,minBottom),new google.maps.LatLng(maxRight,maxTop)));
		var currentZoom = elvertGMap.map.getZoom();
		if(currentZoom > 14)
		{
			elvertGMap.map.setZoom(14);
		}
	},

	mapInitialized: false,
	map: {},

	mapInitialize: function() {

		var point = new google.maps.LatLng(0,0);

		var mapOptions = {
			zoom: 10
			,center: point
			,mapTypeId: google.maps.MapTypeId.ROADMAP
			,scrollwheel: false
			,styles: elvertGMap.style
		};
		elvertGMap.map = new google.maps.Map(document.getElementById('st_map_hold'),mapOptions);
		//elvertGMap.map.panBy(-10, 10)

		elvertGMap.infoWindow = new google.maps.InfoWindow();

		elvertGMap.mapInitialized = true;
		elvertGMap.initCoords();

	},

	initialize: function(){
		var self = this;
		google.maps.event.addDomListener(window, 'load', this.mapInitialize);
	}
};

elvertGMap.initialize();