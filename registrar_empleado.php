<?php

$nom_emp = $_POST['nom_emp'];
$app = $_POST['app'];
$apm = $_POST['apm'];
$gen = $_POST['sexo'];
$fechanac = $_POST['fecha'];
$telefono = $_POST['Tel'];
$calle = $_POST['Calle'];
$nocalle = $_POST['NoCalle'];
$colonia = $_POST['Colonia'];
$municipio = $_POST['Municipio'];
$CP = $_POST['CP'];
$correo = $_POST['Correo'];
$estado_emp = $_POST['estado'];

$conexion = mysqli_connect("mysql.proyectostsu.online", "moises75484258", "moises7243858");
	mysqli_select_db($conexion, "dogshousebase");


$query = mysqli_query($conexion, "call empleado('$nom_emp', '$app', '$apm', '$gen', '$fechanac', '$telefono', '$calle', '$nocalle', '$colonia', '$municipio', '$CP', '$correo','$estado_emp')");

if ($query>=1) { 
	header('location: succes.html');
}

else
{
	echo "Error";
}



/*$insertar = "INSERT INTO empleado (nom_emp, app_emp, apm_emp, genero_emp, fnac_emp, telefono_emp, calle_emp, nocalle_emp, colonia_emp,  municipio_emp, cp_emp, correo_emp) VALUES('$nom_emp', '$app', '$apm', '$gen', '$fechanac', '$telefono', '$calle', '$nocalle', '$colonia', '$municipio', '$CP', '$correo')";

$resultado = mysqli_query($mysqli, $insertar);
if (!$resultado) 
{
	echo "Error al registrar al empleado";
}
else
{
	echo "Nuevo empleado registrado!";
}
*/


?>