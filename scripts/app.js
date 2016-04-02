/**
 * Created by Mariano Molina on 01/04/16.
 */

// cacheamos los datos en LocalStorage
function saveProducts(response) {
	'use strict';
	console.log('Success', response);
	localStorage.setItem('products', JSON.stringify(response));
}

// set value for buttons from DB
function setButtons(jsonCached) {
	'use strict';
	var collecction = JSON.parse(jsonCached);
	var count = 0;

	$('.btn').each(function() {
		$(this).attr('data-id', collecction[count].id);
		$(this).html(collecction[count].name);
		count++;
	});

	$('.btn').click(function(event) {
		event.preventDefault();
		var itemId = $(this).attr('data-id');
		showProductData(itemId);
	});
}

// show products description
function showProductData(id) {
	'use strict';
	var productsStore = localStorage.getItem('products'),
		productItems = JSON.parse(productsStore),
		description = '<p>' + productItems[id - 1].description + '</p>';

	if (id === '5') {
		$('.modal').fadeIn();
		$('.productDescription').html(description);
		$('#displayProducts').html(description);
	} else {
		$('.modal').fadeOut();
		$('#displayProducts').html(description);
	}
}

/*
 *	Ready
 */
(function() {
	'use strict';
	console.log('ground control to major tom...');

	var productsStore = localStorage.getItem('products');

	if (productsStore === null) {
		console.log('vacio');
		// getProducts
		$.getJSON({
			method: 'GET',
			url: './backend/app.php?products=getlatest',
		}).success(function(data) {
			// save json in cache
			saveProducts(data);
			// get json cache
			var itemsCollection = localStorage.getItem('products');
			// parse cache
			setButtons(itemsCollection);
		}).error(function(textStatus) {
			console.log('Error', textStatus);
		});
	} else {
		// parse items in cache
		setButtons(productsStore);
	}

	$('.close').click(function(event) {
		event.preventDefault();
		$('.modal').fadeOut();
	});

}());