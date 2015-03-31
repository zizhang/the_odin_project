var $cell = $('<div />', {class:'cell'});
var $row = $('<div />', {class: 'row'});
var $container = $('<div />', {class: 'container'});
var rows = 16;
var cols = 16;

$(document).ready(function() {
	createGrid(rows, cols);

	$('.cell').hover(function() {
		$(this).addClass('highlight');
	});

	$('#clearBtn').on('click', function() {
		$('.cell').removeClass('highlight');
	});

	$('#newGridBtn').on('click', function() {
		newRows = prompt("Enter new grid size (1-64):");
		newCols = newRows;
		if(newRows < 0 || newRows > 64) {
			alert('Invalid grid size!');
			newRows = 16;
			newCols = 16;
		} else {
			newCols = newRows;
			// Clear elements of previous grid
			$row.empty();
			$container.empty();
			createGrid(newRows, newCols);
			$('.cell').hover(function() {
				$(this).addClass('highlight');
			});
		}
	});
});

function createGrid(numRows, numCols) {
	for(var i = 0; i < numCols; i++) {
		$row.append($cell.clone());
	}

	for(var i = 0; i < numRows; i++) {
		$container.append($row.clone());
	}

	$('body').append($container);
}