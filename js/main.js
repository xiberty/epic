$(document).on('ready',function(){
	
	$('h2').click(function(){
		// alert('Clickaste clean');
		Getter( 'core/getter.php', 'reconocimiento', 'codrec|nombre|descripcion', '' );
	});

	
});