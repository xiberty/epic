$(document).on('ready',function(){
	
	$('h2').click(function(){
		// alert('Clickaste clean');
		Getter( 'core/getter.php', 'reconocimiento', 'codrec|nombre|descripcion', '' );
	});

	$('body').on('Render',function(e,data){
		// alert('Se rendeara');
		console.log(data);
		ui(data.temp).load(data.temp, data.fill);
	});
});