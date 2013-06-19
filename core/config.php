<?php
$bd_host = "localhost"; 
$bd_usuario = "luz"; 
$bd_password = "12345"; 
$bd_base = "multinext"; 
$con = mysql_connect($bd_host, $bd_usuario, $bd_password); 

@mysql_connect($bd_host, $bd_usuario, $bd_password);	

@mysql_select_db($bd_base, $con) or die('Error: Conexion BD Fallida: '.mysql_error());
?>
