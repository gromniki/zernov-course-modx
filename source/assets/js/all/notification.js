/**
 * Класс-уведомитель
 * @type {{initialize: Function, success: Function, info: Function, error: Function, resetContainer: Function, show: Function, close: Function}}
 */
var elvGlobalNotification = {
	initialize: function(container,messageContainer,closeElement){
		this.$container = $(container);
		this.$messageContainer = $(messageContainer);
		var self = this;
		$(closeElement).click(function(){
			self.close();
			return false;
		});
	},
	success: function(message){
		this.show(message);
		this.$container.addClass('success');
	},
	info: function(message){
		this.show(message);
		this.$container.addClass('info');
	},
	error: function(message){
		this.show(message);
		this.$container.addClass('error');
	},
	resetContainer: function(){
		this.$container.removeClass('error').removeClass('success').removeClass('info');
	},
	show: function(message){
		if(this.timer)
		{
			clearTimeout(this.timer);
		}
		this.resetContainer();
		//if(!this.$container.is(':visible'))
		{
			this.$container.stop().fadeIn(500);
		}
		this.$messageContainer.html(message);
		var self = this;
		/*this.timer = setTimeout(function(){
			self.close();
		},5000);*/
	},
	close: function(){
		this.$container.stop().fadeOut(500);
	}
};