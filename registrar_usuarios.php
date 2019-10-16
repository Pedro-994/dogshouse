<?php

include 'database.php';

$nombre = $_POST["nombre"];
$apellido_p = $_POST["apellido_p"];
$apellido_m = $_POST["apellido_m"];
$gen = $_POST["sexo"];
$correo = $_POST["correo"];
$alias = $_POST["alias"];
$clave = $_POST["clave"];
$telefono = $_POST["telefono"];
$calle = $_POST["calle"];
$numero = $_POST["nocalle"];
$colonia = $_POST["colonia"];
$municipio = $_POST["municipio"];
$cp = $_POST["cp"];


$conexion = mysqli_connect("mysql.proyectostsu.online", "moises75484258", "moises7243858");
	mysqli_select_db($conexion, "dogshousebase");

$query = mysqli_query($conexion, "CALL usuario('$nombre', '$apellido_p', '$apellido_m', '$gen', '$correo', '$alias', '$clave', '$telefono', '$calle', '$numero', '$colonia', '$municipio', '$cp')");


if($query >=1)
{
	header('location: succes.html');
}
else
{
	echo "Error :(";
}

mysqli_close($mysqli);
