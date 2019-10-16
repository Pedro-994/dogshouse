
<?php

$color = $_POST['color'];
$tamano = $_POST['tamano'];
$condicion = $_POST['condicion'];
$raza = $_POST['raza'];
$idrescato = $_POST['rescate'];
$idadopcion = $_POST['adopcion'];


$conexion = mysqli_connect("mysql.proyectostsu.online", "moises75484258", "moises7243858");
	mysqli_select_db($conexion, "dogshousebase");



$query = mysqli_query($conexion, "call perros2('$color', '$tamano', '$condicion', '$raza', '$idrescato', '$idadopcion')");


if ($query >= 1) {
	header('location: succes.html');
}
else
{
	echo "Error";
}
