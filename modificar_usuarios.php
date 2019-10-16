<?php
include 'database.php';

$ID = $_POST['id_us'];
$nombre = $_POST['nom_us'];
$app = $_POST['app_us'];
$apm = $_POST['apm_us'];

mysql_select_db($database, $mysqli) or die ("Error al conectar");

mysql_query("UPDATE usuario SET nom_us = '$nombre', app_us = '$app', apm_us = '$apm' WHERE id_ususario = '$ID'");

echo "Se ha modificado satisfactoriamente";
?>