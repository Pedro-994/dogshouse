<?php

$server = 'mysql.proyectostsu.online';
$username = 'moises75484258';
$password = 'moises7243858';
$database = 'dogshousebase';

$mysqli = new mysqli($server, $username, $password, $database);
if (!$mysqli) {
    die("Connection failed: " . mysqli_connect_error());
}
//echo "Connected successfully";

?>