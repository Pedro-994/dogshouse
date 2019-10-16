<?php

$resp = $_POST['nom_resp'];
$aps = $_POST['aps_resp'];
$nac = $_POST['fecha'];
$correo = $_POST['correo'];

$tel_casa = $_POST['telcasa'];
$tel_cel = $_POST['cel'];
$tel_trabajo = $_POST['trabajo'];

$nom_anim = $_POST['nom_anim'];
$genero = $_POST['gen'];
$edad_anim = $_POST['edad_anim'];
$color = $_POST['color_anim'];
$tamaño = $_POST['tamano'];

$conexion = mysqli_connect("mysql.proyectostsu.online", "moises75484258", "moises7243858");
	mysqli_select_db($conexion, "dogshousebase");


$query = mysqli_query($conexion, "call solicitudes('$resp', '$aps', '$nac', '$correo', '$tel_casa', '$tel_cel', '$tel_trabajo', '$nom_anim', '$genero', '$edad_anim', '$color', '$tamaño')");

if ($query>=1) { 
	header('location: succes.html');
}

else
{
	echo "Error";
}

?>