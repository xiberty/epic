<?php
include('config.php');
	// opciones	// 
	$option=$_POST['option'];

	//Variables para consultas
	$sql=""; $response=0;

	switch ($option) {
		case 'new':
		// Datos para la consulta
		$nombre=$_POST['nombre'];
		$mail=$_POST['mail'];
		$fnac=$_POST['fnac'];
		// $img="../images/src/".$img;
		//obtenemos el ultimo ID
			
			// $result = mysql_query($sql,$con) or die('Error: Conexion  Fallida: GetID '.mysql_error());
			// while ($res=mysql_fetch_array($result)){
			// 	$response= (int)$res['id'];
			// 	$response++;
			// }

			$sql = "INSERT INTO persona (nombre, mail, fnac) ";
    		$sql.= "VALUES ('".$nombre."', '".$mail."', '".$fnac."')";

			//creamos un nuevo registro Profesional
			
			break;
		case 'edit':

			$id=$_POST['id'];
			$nombre=$_POST['nombre'];
			$mail=$_POST['mail'];
			$fnac=$_POST['fnac'];

			$sql = "UPDATE persona SET nombre='".$nombre."', mail='".$mail."', fnac='".$fnac."' WHERE id='".$id."'";

			break;
		case 'delete':
			$id=$_POST['id'];
			$sql = "DELETE FROM persona WHERE id = '".$id."'";
			// echo "------>".$sql."<------";
			break;
	}

		@mysql_query($sql,$con)
		or die('Error: Consulta  Fallida : ABM '.mysql_error());
	echo "Consulta Exitosa";
?>