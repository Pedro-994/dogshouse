<?php
require 'database.php';
sleep(2);
$usuario = $mysqli->query("SELECT nom_us
	FROM usuario
	WHERE correo_us = '".$_POST['correo']."'
	AND contra_us = '".$_POST['clave']."'");

if ($usuario->num_rows == 1):
	$datos = $usuario->fetch_assoc();
	header('location: Index2.html');
	//echo json_encode(array('error' => false, 'Tipo' => $datos['tipo_us']));
else:
	echo json_encode(array('error' => true));
		echo "<script>
	alert('Los datos son inválidos');
	location='Index.html'
	</script>";
	endif;	

$mysqli->close();
?>