var $cell = $('<div />', {class:'cell'});
var $row = $('<div />', {class: 'row'});

$(document).ready(function() {
	createGrid(10, 10);
	$('.cell').hover(function() {
		$(this).addClass('highlight');
	});
});

function createGrid(numRows, numCols) {
	for(var i = 0; i < numRows; i++) {
		$row.append($cell.clone());
	}

	for(var i = 0; i < numCols; i++) {
		$('#container').append($row.clone());
	}

	
}