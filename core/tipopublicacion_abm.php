<?php

	include('config.php');

	$op = $_POST['op']; $sql="";

	switch ($op) {
		case 'new':

			$descripcion=$_POST['descripcion'];

			$sql = "INSERT INTO tipopublicacion (descripcion) ";
	    	$sql.= "VALUES ('".$descripcion."')";

		break;
		
		case 'delete':

			$id=$_POST['id'];
			$sql = "DELETE FROM tipopublicacion WHERE codtp='".$id."'";
		break;
	}

	@mysql_query($sql,$con) or die('Error: Consulta  Fallida : TIPO DE PUBLICACION '.mysql_error());


	echo "Consulta Exitosa";
?>