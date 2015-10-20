WebFont.load({
	google: {
		families: ['Roboto:400,700', 'Noticia Text:400italic,400,700,700italic']
	},
	active: function() {
		news.init();
	}
});

var news = {
	items: $(),
	init: function() {
		this.items = $('.item');
		this.adjustBorderLeft();
		this.attachWindowEvent();
	},
	adjustBorderLeft: function() {
		this.items.each(function() {
			var itemBoder = $(this).find('.item-content-border');
			itemBoder.height($(this).find('.item-content').height() - 13);
		});
	},
	attachWindowEvent: function() {
		win.resize(function(){
			news.adjustBorderLeft();
		});
	}
};