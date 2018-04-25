<?php 
//restringir el acceso a la manipulacion de los datos
session_start();
include 'credenciales.php';
if (isset($_REQUEST["btningresar"])) {
	$usuario=$_REQUEST["txtusuario"];
	$contra=$_REQUEST["txtcontra"];
	$conexion= new mysqli(SERVIDOR,USUARIO,CONTRA,BASEDATOS);
	$sql="select nivel from usuarios where usuario='$usuario' and contra='$contra'";
	$resultado= $conexion->query($sql);
	$cuantos= mysqli_num_rows($resultado);
	if ($cuantos==0) {
		header("Location:loguin.php");
	}
	$fila= $resultado->fetch_array(MYSQLI_NUM);
	$nivel=$fila["0"];
	if ($nivel=="admin") {
		$_SESSION["usuario"]["nombre"]=$usuario;
		$_SESSION["usuario"]["nivel"]=$nivel;
		header("Location:mantopersona.php");
	}else{
		header("Location:loguin.php");
	}
}
if (isset($_REQUEST["cerrar"])) {
	session_destroy();
	header("Location:loguin.php");
}
?>