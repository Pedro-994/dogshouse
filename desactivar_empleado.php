<?php

$nombre = $_POST['nom_emp'];
$app = $_POST['app_emp'];
$apm = $_POST['apm_emp'];

$conexion = mysqli_connect("mysql.proyectostsu.online", "moises75484258", "moises7243858");
mysqli_select_db($conexion, "dogshousebase");


$sql="SELECT * FROM empleado WHERE nom_emp='$nombre' AND app_emp='$app' AND apm_emp='$apm'";
$res=mysqli_query($conexion, $sql);
$fila=mysqli_num_rows($res);



if ($fila>0) 
{
	$query = mysqli_query ($conexion, "CALL bajaempleado('$nombre', '$app', '$apm')");
	header('location: succes.html');
}

else
{

	echo "<script>
	alert('Los datos son inválidos');
	location='Admin.html'
	</script>";
}