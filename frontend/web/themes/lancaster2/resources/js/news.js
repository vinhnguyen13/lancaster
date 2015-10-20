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
		news.adjustBorderLeft();
	},
	adjustBorderLeft: function() {
		this.items.each(function() {
			var itemBoder = $(this).find('.item-content-border');
			itemBoder.height(itemBoder.height() - 13);
		});
	}
};