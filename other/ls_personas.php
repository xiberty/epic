<?php
include('config.php');
	
	$id=$_POST['id'];

	if($id != ""){
		
		$sql= "SELECT * FROM persona WHERE id=$id"; 
		$result = mysql_query($sql,$con) or die('Error: Conexion  Fallida: '.mysql_error());
	}
	else{
		$sql= "SELECT * FROM persona"; 
		$result = mysql_query($sql,$con) or die('Error: Conexion  Fallida: '.mysql_error());
	}

		$arraydePersonas= array('personas'=> array() );

		$persona= array( 'id'=> '1',
					 	'nombre'=> '111',
					 	'mail'=> '111',
					 	'nacimiento'=> '111',
						);

		// $arrPub[]= $pub;

		while ($res=mysql_fetch_array($result)){
			$persona['id']= $res['id'];
			$persona['nombre']= utf8_encode($res['nombre']);
			$persona['mail']= utf8_encode($res['mail']);
			$persona['nacimiento']= utf8_encode($res['fnac']);

			$arraydePersonas['personas'][]= $persona;
		}	
	
	


	echo json_encode($arraydePersonas);	

?>
