<?php

	include('config.php');

	$table = $_POST['table'];
	$cc = $_POST['cols'];
	$ca = $_POST['values'];

	$cols = explode("|",$cc);
	$values = explode("|",$ca);

	$sql = "INSERT INTO ".$table." (";

	foreach ($cols as $col => $value) {
		$sql .= $value;
		if ( $col != (count($cols)-1) ) {
			$sql .=",";
		}
	}

	$sql .=") VALUES (";

	foreach ($values as $val => $value) {
		$sql .= $value;
		if ( $val != (count($values)-1) ) {
			$sql .=",";
		}
	}

	$sql .=");";
	echo $sql;
	@mysql_query($sql,$con) or die('Error: Consulta  Fallida : $table '.mysql_error());
	echo "Consulta Exitosa";
?>