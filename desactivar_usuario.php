<?php

$nombre = $_POST['nom_us'];
$app = $_POST['app_us'];
$apm = $_POST['apm_us'];

$conexion = mysqli_connect("mysql.proyectostsu.online", "moises75484258", "moises7243858");
mysqli_select_db($conexion, "dogshousebase");

$sql="SELECT * FROM usuario WHERE nom_us='$nombre' AND app_us='$app' AND apm_us='$apm'";
$res=mysqli_query($conexion, $sql);
$fila=mysqli_num_rows($res);



$query = mysqli_query ($conexion, "CALL bajausuario ('$nombre', '$app', '$apm')");

if ($fila>0) 
{
	$query = mysqli_query ($conexion, "CALL bajausuario ('$nombre', '$app', '$apm')");
	header('location: succes.html');
}

else
{
	echo "<script>
	alert('Los datos son inválidos');
	location='Admin.html'
	</script>";
}