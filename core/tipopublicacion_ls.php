<?php
include('config.php');
	
	$id=$_POST['id'];

	if($id != ""){
		
		$sql= "SELECT * FROM tipopublicacion WHERE codcat=".$id; 
		$result = mysql_query($sql,$con) or die('Error: Conexion  Fallida: '.mysql_error());
	}
	else{
		$sql= "SELECT * FROM tipopublicacion"; 
		$result = mysql_query($sql,$con) or die('Error: Conexion  Fallida: '.mysql_error());
	}

		$tipopublicacions= array('tipopublicacions'=> array() );

		$tipopublicacion= array( 'id'=> '1',
					 			 'descripcion'=> '111'
					    		);

		// $arrPub[]= $pub;

		while ($res=mysql_fetch_array($result)){
			$tipopublicacion['id']= $res['codtp'];
			$tipopublicacion['descripcion']= utf8_encode($res['descripcion']);

			$tipopublicacions['tipopublicacions'][]= $tipopublicacion;
		}	
	
	


	echo json_encode($tipopublicacions);	

?>
