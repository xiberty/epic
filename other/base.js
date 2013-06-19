$(document).on('ready',function(){

	$('#listar').on('click',function(){
		$.ajax({
			url: 'ls_personas.php',
			type: 'GET',
			data: {},
			dataType:'json',
			success: function(data) {
				ListarPersonas(data);
			},
			
			error: function(jqXHR,status,error){
				console.log(jqXHR+'----'+status+' hey . '+error);
			}
		});
	});

	$('#new').click(function(e){
		e.preventDefault();
		agregarPersona();
		$('#listar').click();
	});



	$('#save').click(function(e){
		e.preventDefault();
		var json_p = getJSON_Personas('edit');
		Send(json_p,'persona_abm.php');

		$('#listar').click();
	});




	$('#listar').click();	
});



function ListarPersonas(data){
	var template = "<table>";
		template += "<tr><th>id</th><th>Nombre</th><th>mail</th><th>nacimiento</th></tr>";



		for (var i = 0; i< data.personas.length; i++) {
			template +="<tr><td id = 'p'"+data.personas[i].id+"'>"+data.personas[i].id+"</td><td>"+data.personas[i].nombre+"</td><td>"+data.personas[i].mail+"</td><td>"+data.personas[i].nacimiento+"</td><td><button onclick='eliminarPersona(\""+data.personas[i].id+"\")'> Eliminar </button><button onclick='editarPersona(\""+data.personas[i].id+"\")'> Editar </button></td></tr>";
		}

		template += "</table>";
	
		$('#cajitacontenedora').html("");
		$('#cajitacontenedora').html(template);


}

function eliminarPersona(id){
	var json_p = getJSON_Personas('delete',id);
	console.log(json_p);
	Send(json_p,'persona_abm.php');
	$('#listar').click();
}

function editarPersona(id){
	$.ajax({
			url: 'ls_personas.php',
			type: 'POST',
			data: { id:id },
			dataType:'json',
			success: function(data) {
				$('#id').val(data.personas[0].id);
				$('#name').val(data.personas[0].nombre);
				$('#mail').val(data.personas[0].mail);
				$('#fnac').val(data.personas[0].fnac);					
			},
			
			error: function(jqXHR,status,error){
				console.log(jqXHR+'----'+status+' hey . '+error);
			}
	});
}


function agregarPersona(){
	var json_p = getJSON_Personas('new');
	console.log(json_p);
	Send(json_p,'persona_abm.php');
}




function getJSON_Personas(op,id){

		var nombre,mail,fnac;
		var persona={};//JSON para la DB
		switch(op){
			case 'delete':
				persona = { id:id, option:op };	
			break;
			case 'new': case 'edit':
				id=$('#id').val();
				nombre=$('#name').val();//DATOS PARA EL JSON
				mail=$('#mail').val();
				fnac=$('#fnac').val();				

				persona = { id:id, nombre:nombre, mail:mail, fnac:fnac, option:op };	
			break;
		}
		return persona;
}



function Send(content,objetive){
	$.ajax({
			url: objetive,
			type: 'POST',
			data: content,
			dataType:'json',
			before: function(){
				console.log('JSON antes ------------------------>>>>.');
				console.log(content);
				console.log('pagina objetivo');
				console.log(objetive);
			},
			success: function(data) {
				console.log('ABAJO LA RESPUESTA');
				console.log(data);
			},
			
			error: function(jqXHR,status,error){
				console.log(jqXHR);
				console.log(status);
				console.log(error);

			}
	});
}