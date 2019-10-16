<?php
include 'database.php';

$Nombre_Resp = $_POST['nom_resp'];
$Aps_Resp = $_POST['aps_resp'];
$Fecha_Resp = $_POST['fecha'];
$Correo = $_POST['correo'];
$Casa = $_POST['telcasa'];
/*$Celular = $_POST['telcel'];
$Trabajo = $_POST['teltra'];
$Nombre_Anim = $_POST['nom_anim'];
$Edad_Anim = $_POST['edad_anim'];
$Color = $_POST['color_anim'];*/


$insertar_adopt = "INSERT INTO adoptivos (nom_adop, fecha, color, tamaño, raza) values ('$Nombre_Resp', '$Aps_Resp', '$Fecha_Resp', '$Correo', '$Casa')";

$final = mysqli_query($conexion, $insertar_adopt);
if (!$final) 
{
	echo "Error al registrar";
}
else
{
	header('location: succes.html');
}
mysqli_close($conexion);

?>