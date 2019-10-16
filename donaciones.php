<?php
include 'database.php';

$cantidad = $_POST['cantidad'];

$conexion = mysqli_connect("mysql.proyectostsu.online", "moises75484258", "moises7243858");
	mysqli_select_db($conexion, "dogshousebase");

$query = mysqli_query($conexion, "call donaciones('$cantidad', )")

if (!$resultado) {
	echo "error";
}

else
{
	header('location: succes.html');
}

mysqli_close($conexion);