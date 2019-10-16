<?php
try {

    
$conexion = new PDO('mysql:host=mysql.proyectostsu.online;dbname=dogshousebase', "moises75484258", "moises7243858");

} catch (PDOException $e) {
    print "¡Error!: " . $e->getMessage() . "<br/>";
    die();
}


switch($_POST['opc'])
{


case "eliminar":
 try{
          $sql = $conexion->prepare("DELETE FROM perro WHERE id_perro =".$_POST['clave']);       
          $sql->execute();         
          //header("location:index-empleado.php");   
    }
      catch (PDOException $e) {
    print "¡Error al guardar!: " . $e->getMessage() . "<br/>";
    die();
} 
 break;
 case "modificar-form":
 try{
          $sql = $conexion->prepare("SELECT * FROM perros WHERE id_perro=".$_POST['clave']);       
          $sql->execute();         
          if($fila = $sql->fetch())
          {  
 ?>
       <form action="procesa-perros.php" method="post" id="modificar">
                  <input type="text" value="modificar" name="opc" hidden>
                  <input type="text" value="<?php echo $_POST['clave']?>" name="clave" hidden>
                <div class="form-group">
                  <label for="usuario" class="text-left">Color del Perro</label>
                  <input type="text" class="form-control" id="user" name="color" pattern="[A-Za-z]{1,20}" value="<?php echo $fila['color_perro']?>" placeholder="Color Perro">
                  
                </div>
                <div class="form-group">
                  <label for="pass">Tamaño del Perro</label>
                  <input type="text" class="form-control" id="pass" pattern="[A-Za-z]{1,20}" name="tamaño" value="<?php echo $fila['tamano_perro']?>" placeholder="Tamaño">
                </div>

                <div class="form-group">
                  <label for="pass">Condicion del Perro</label>
                  <input type="text" class="form-control" id="pass" name="condicion" pattern="[A-Za-z]{1,20}" value="<?php echo $fila['condicion_perro']?>" placeholder="Condicion del Perro">
                </div>

                <div class="form-group">
                  <label for="pass">Raza del Perro</label>
                  <input type="text" class="form-control" id="pass" name="raza" pattern="[A-Za-z]{1,20}" value="<?php echo $fila['raza_perro']?>" placeholder="Raza del Perro">
                </div>


               
                <button type="submit" class="btn btn-info">Modificar</button>
              </form>
 <?php
}
  }
      catch (PDOException $e) {
    print "¡Error al guardar!: " . $e->getMessage() . "<br/>";
    die();
}
 break;
 
case "modificar":
  try
  {
          $sql = $conexion->prepare("UPDATE perros SET color_perro='".$_POST['color']."',tamano_perro='".$_POST['tamaño']."',condicion_perro='".$_POST['condicion']."', raza_perro='".$_POST['raza']."'   WHERE id_perro=".$_POST['clave']);       
          $sql->execute();         
          header("location:index-perros.php");   
    }
      catch (PDOException $e) {
    print "¡Error al guardar!: " . $e->getMessage() . "<br/>";
    die();
}
 break; 
}







?>