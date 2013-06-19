<?php
include('config.php');
	
	$id=$_POST['id'];

	if($id != ""){
		
		$sql= "SELECT * FROM categoria WHERE codcat=".$id; 
		$result = mysql_query($sql,$con) or die('Error: Conexion  Fallida: '.mysql_error());
	}
	else{
		$sql= "SELECT * FROM categoria"; 
		$result = mysql_query($sql,$con) or die('Error: Conexion  Fallida: '.mysql_error());
	}


		$categorias= array('categorias'=> array() );
		
		$categoria= array( 'id'=> '1',
					 		'nombre'=> '111'
					     );

		// $arrPub[]= $pub;

		while ($res=mysql_fetch_array($result)){
			$categoria['id']= $res['codcat'];
			$categoria['nombre']= utf8_encode($res['nombre']);

			$categorias['categorias'][]= $categoria;
		}	
	
	


	echo json_encode($categorias);	

?>
