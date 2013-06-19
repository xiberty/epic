<?php

	include('config.php');

	$op = $_POST['op']; $sql="";

	switch ($op) {
		case 'new':

			$nombre=$_POST['nombre'];
			$sql = "INSERT INTO categoria (nombre) ";
	    	$sql.= "VALUES ('".$nombre."')";

		break;
		
		case 'delete':

			$id=$_POST['id'];
			$sql = "DELETE FROM categoria WHERE codcat='".$id."'";
		break;
	}

	@mysql_query($sql,$con) or die('Error: Consulta  Fallida : CATEGORIA '.mysql_error());


	echo "Consulta Exitosa";
?>