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
          $sql = $conexion->prepare("DELETE FROM admin WHERE id_admin =".$_POST['clave']);       
          $sql->execute();         
          //header("location:index.php");   
    }
      catch (PDOException $e) {
    print "¡Error al guardar!: " . $e->getMessage() . "<br/>";
    die();
} 
 break;
 case "modificar-form":
 try{
          $sql = $conexion->prepare("SELECT * FROM admin WHERE id_admin=".$_POST['clave']);       
          $sql->execute();         
          if($fila = $sql->fetch())
          {  
 ?>
       <form action="procesa.php" method="post" id="modificar">
                  <input type="text" value="modificar" name="opc" hidden>
                  <input type="text" value="<?php echo $_POST['clave']?>" name="clave" hidden>
                <div class="form-group">
                  <label for="usuario" class="text-left">Nombre del Admin</label>
                  <input type="text" class="form-control" id="user" pattern="[A-Za-z]{1,20}" name="user" value="<?php echo $fila['nombre_admin']?>" placeholder="usuario">
                  
                </div>
                <div class="form-group">
                  <label for="pass">Contraseña de Admin</label>
                  <input type="password" class="form-control" id="pass" name="pass" pattern="[A-Za-z0-9]{1,20}" value="<?php echo $fila['contra_admin']?>" placeholder="Password">
                </div>
                <div class="form-group">
                  <label for="correo">Correo de usuario</label>
                  <input type="email" class="form-control" id="correo" name="correo" pattern="[A-Za-z0-9_-@]{1,20}" value="<?php echo $fila['correo_admin']?>" placeholder="Correo">
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
  try{
          $sql = $conexion->prepare("UPDATE admin SET nombre_admin='".$_POST['user']."',contra_admin='".$_POST['pass']."',correo_admin='".$_POST['correo']."' WHERE id_admin=".$_POST['clave']);       
          $sql->execute();         
          header("location:index.php");   
    }
      catch (PDOException $e) {
    print "¡Error al guardar!: " . $e->getMessage() . "<br/>";
    die();
}
 break;
}







?>