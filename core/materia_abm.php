<?php

	include('config.php');

	$op = $_POST['op']; $sql="";

	switch ($op) {
		case 'new':

			$nombre=$_POST['nombre'];
			$sigla=$_POST['sigla'];

			$sql = "INSERT INTO materia (nombre,sigla) ";
	    	$sql.= "VALUES ('".$nombre."','".$sigla."')";

		break;
		
		case 'delete':

			$id=$_POST['id'];
			$sql = "DELETE FROM materia WHERE codmat='".$id."'";
		break;
	}

	@mysql_query($sql,$con) or die('Error: Consulta  Fallida : MATERIA '.mysql_error());


	echo "Consulta Exitosa";
?>