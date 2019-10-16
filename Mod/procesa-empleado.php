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
          $sql = $conexion->prepare("DELETE FROM empleado WHERE id_empleado =".$_POST['clave']);       
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
          $sql = $conexion->prepare("SELECT * FROM empleado WHERE id_empleado=".$_POST['clave']);       
          $sql->execute();         
          if($fila = $sql->fetch())
          {  
 ?>
       <form action="procesa-empleado.php" method="post" id="modificar">
                  <input type="text" value="modificar" name="opc" hidden>
                  <input type="text" value="<?php echo $_POST['clave']?>" name="clave" hidden>
                <div class="form-group">
                  <label for="usuario" class="text-left">Nombre del Empleado</label>
                  <input type="text" class="form-control" id="user" name="user" pattern="[A-Za-z]{1,20}" value="<?php echo $fila['nom_emp']?>" placeholder="Empleado">
                  
                </div>
                <div class="form-group">
                  <label for="pass">Apellido Paterno del Empleado</label>
                  <input type="text" class="form-control" id="pass" pattern="[A-Za-z]{1,20}" name="app" value="<?php echo $fila['app_emp']?>" placeholder="Apellido">
                </div>

                <div class="form-group">
                  <label for="pass">Apellido Materno del Empleado</label>
                  <input type="text" class="form-control" id="pass" pattern="[A-Za-z]{1,20}" name="apm" value="<?php echo $fila['apm_emp']?>" placeholder="Apellido">
                </div>

                <div class="form-group">
                  <label for="correo">Correo de Empleado</label>
                <input type="email" class="form-control" id="correo" name="correo" value="<?php echo $fila['correo_emp']?>" placeholder="Correo">
                </div>

                <div class="form-group">
                  <label for="correo"> Genero de Empleado </label>
                  <input type="text" class="form-control" id="genero" pattern="[A-Za-z]{1,20}" name="genero" value="<?php echo $fila['genero_emp']?>" placeholder="genero">
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
          $sql = $conexion->prepare("UPDATE empleado SET nom_emp='".$_POST['user']."',app_emp='".$_POST['app']."',correo_emp='".$_POST['correo']."', genero_emp='".$_POST['genero']."', apm_emp='".$_POST['apm']."'  WHERE id_empleado=".$_POST['clave']);       
          $sql->execute();         
          header("location:index-empleado.php");   
    }
      catch (PDOException $e) {
    print "¡Error al guardar!: " . $e->getMessage() . "<br/>";
    die();
}
 break; 
}







?>