<?php
include('config.php');
	
	$id=$_POST['id'];

	if($id != ""){
		
		$sql= "SELECT * FROM materia WHERE codmat=".$id; 
		$result = mysql_query($sql,$con) or die('Error: Conexion  Fallida: '.mysql_error());
	}
	else{
		$sql= "SELECT * FROM materia"; 
		$result = mysql_query($sql,$con) or die('Error: Conexion  Fallida: '.mysql_error());
	}

		$materias= array('materias'=> array() );

		$materia= array( 'id'=> '1',
					 	'nombre'=> '111',
					 	'sigla'=> '111'
					     );

		// $arrPub[]= $pub;

		while ($res=mysql_fetch_array($result)){
			$materia['id']= $res['codmat'];
			$materia['nombre']= utf8_encode($res['nombre']);
			$materia['sigla']= utf8_encode($res['sigla']);

			$materias['materias'][]= $materia;
		}	
	
	


	echo json_encode($materias);	

?>
