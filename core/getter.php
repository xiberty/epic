<?php 
	include('config.php');

	$table = $_POST['table'];
	$cc = $_POST['cols'];
	$temp = $_POST['temp'];

	$cols = explode("|",$cc);

	$sql = "SELECT * FROM ".$table; 
	$result = mysql_query($sql,$con) or die('Error: Conexion  Fallida: '.mysql_error());

	$fill = array( 'rows' => array(), 'temp' => $temp );

	$item = array();

	foreach ($cols as $col => $value) {
		$item[ ''.$value ] = $value;
	}

	while ($res=mysql_fetch_array($result)){
		
		foreach ($cols as $col => $value) {
			$item[ ''.$value ] = utf8_encode($res[ ''.$value ]);
		}
		
		$fill['rows'][] = $item;
	}	

	echo json_encode($fill);	
 ?>