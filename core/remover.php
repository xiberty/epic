<?php

	include('config.php');

	$table = $_POST['table'];
	$col = $_POST['col'];
	$val = $_POST['val'];

	$sql = "DELETE FROM ".$table." WHERE ".$col."='".$val."'";

	@mysql_query($sql,$con) or die('Error: Consulta  Fallida DELETE: $table '.mysql_error());
	echo "Consulta Exitosa";
?>