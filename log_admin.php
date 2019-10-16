<?php
require 'database.php';
sleep(2);
$usuario = $mysqli->query("SELECT correo_admin
	FROM admin
	WHERE correo_admin = '".$_POST['correo']."'
	AND contra_admin = '".$_POST['clave']."'");

if ($usuario->num_rows == 1):
	$datos = $usuario->fetch_assoc();
	header('location: Admin.html');
	//echo json_encode(array('error' => false, 'Tipo' => $datos['tipo_us']));
else:
	echo json_encode(array('error' => true));
endif;	

$mysqli->close();
?>