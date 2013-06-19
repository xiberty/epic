	// Ajax('archivo_destino.php', { algun:'JSON de Envio' }).send(); //Para enviar Datos
// Ajax('archivo_destino.php', { algun:'JSON de Envio' }, 'Evento').activate(); //Para recibir Datos y Activar un evento

/*---------------------------------------------------------------------------------------------
 Funcion ajax para hacer  peticiones ajax
---------------------------------------------------------------------------------------------
destinity = archivo que procesara la peticion, 
data = json con información para el procesado,
trigent = evento personalizado que se activara cuando la peticion sea exitosa
---------------------------------------------------------------------------------------------*/
function Ajax(destinity, data, trigent){
/*
---------------------------------------------------------------------------------------------
	// SEND : es para enviar Datos
---------------------------------------------------------------------------------------------
	// ACTIVATE : es para enviar datos, recibir datos y luego activar un evento personalizado
---------------------------------------------------------------------------------------------*/
	return {
		send : function(){
			$.ajax({
				url: destinity,
				type: 'POST',
				data: data,
				success: function(data) {
					console.log('Se enviaron los datos a: \n '+ destinity +' Exitosamente...!!')
					console.log(data);
				},				
				error: function(jqXHR,status,error){
					console.log(jqXHR);
					console.log(status);
					console.log(error);
				}
			});
		},

		activate : function(){
			$.ajax({
				url: destinity,
				type: 'POST',
				data: data,
				dataType:'json',
				success: function(info) {
				    console.log('Se activo el triger');
					console.log('Se recibieron los datos y se ejecuto el evento '+ trigent +' Exitosamente...!!')
					$('body').trigger( trigent, [ info ]);
				},				
				error: function(jqXHR,status,error){
					console.log(jqXHR);
					console.log(status);
					console.log(error);
				}
			});
		}
	}
}


// Generador de JSON para promociones

function Get_JSON(){
	var json_p = {};
	// $('#new-form').
	var ruta = $('#new-form #ruta').val();
	var hora = $('#new-form #hora').val();
	var fin = $('#new-form #fin').val();
	var minus = $('#new-form #minus').val();
	var description = $('#new-form #description').val();
	var plz = $('#new-form #plz').val();
	
	json_p = { ruta:ruta, hora:hora, fin:fin, minus:minus, plz:plz, description:description };

	console.log('El JSON construido');
	console.log(json_p);
	return json_p;
}

// Plugin para resetear formularios

function ui(id){
	return {
		clean : function(){
			document.getElementById(id).reset();
		},
		loader : function( tmp, data ){
			var temp = $(tmp).html().trim();
			$(id).html();
			var html = Mustache.to_html( temp, data );
			$(id).html(html);
		},
		append : function( tmp, data ){
			var temp = $(tmp).html().trim();
			$(id).html();
			var html = Mustache.to_html( temp, data );
			$(id).append(html);
		}
	}
}

// String.prototype.trim = function() { return this.replace(/^\s+|\s+$/g, ""); };


function trim(str) {
	var txt = str.split(" ");
	var retro="";
	for(i = 0; i < txt.length; i++)
	retro += txt[i];
	return retro;

}

 
function Getter( table, cols, temp ){
	data = { 'cols':cols, 'table':table, 'temp':temp };
	Ajax('core/getter.php', { 'cols':cols, 'table':table, 'temp':temp }, 'Render').activate();
}

$(document).on('ready,',function(){
	$('body').on('Render',function(e,data){
		console.log('Se rendeara');
		console.log(data);
		ui(data.temp).load(data.temp, data.fill);
	});
});