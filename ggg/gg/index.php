<!DOCTYPE html>d
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		
	<title>:v</title>
</head>
<body>
	<center> <h1> <a href="./exportar.php">Realizar copia de seguridad</a> </h1>
	<form action="./importar.php" method="POST">
		<label>Selecciona un punto de restauración</label><br>
		<select name="restorePoint">
			<option value="" disabled="" selected="">Elige un archivo</option>
			<?php
				include_once './exportar.php';
				$ruta=BACKUP_PATH;
				if(is_dir($ruta)){
				    if($aux=opendir($ruta)){
				        while(($archivo = readdir($aux)) !== false){
				            if($archivo!="."&&$archivo!=".."){
				                $nombrearchivo=str_replace(".sql", "", $archivo);
				                $nombrearchivo=str_replace("-", ":", $nombrearchivo);
				                $ruta_completa=$ruta.$archivo;
				                if(is_dir($ruta_completa)){
				                }else{
				                    echo '<option value="'.$ruta_completa.'">'.$nombrearchivo.'</option>';
				                }
				            }
				        }
				        closedir($aux);
				    }
				}else{
				    echo $ruta." No es ruta válida";
				}
			?>
		</select>
		
		<button type="submit" >Restaurar</button>
	</form>
</body>
</html>
