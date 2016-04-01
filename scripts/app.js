/**
 * Created by Mariano Molina on 01/04/16.
 */
(function() {
	'use strict';
	console.log('ground control to major tom...');

	//
	$.getJSON({
		method: 'GET',
		url: './backend/app.php?products=getlatest',
	}).success(function(data) {
		console.log('Success', data);
	}).error(function(textStatus) {
		console.log('Error', textStatus.responseText);
	});

}());