
<!DOCTYPE html>
<html lang="es">
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">    
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
</head>
  <body>


<nav class="container-fluid navbar navbar-expand-md navbar-dark bg-dark fixed-top">

    <div class="container">
      <a href="../Admin.html" class="navbar-brand">Volver a la Página de Administrador</a>

        </ul>
      </ul>
      </div>
    </div>
  </nav>

    <header>          
       <div class="container-fluid menu" >
         
    </header>
<!-- Fin Menu -->

<!-- Bienvenida -->


<!-- CRUD -->
<div class="container-fluid bg-light py-5 ">
<div class="container py-5">
    <div class="row">

      <!-- Area donde se listan los datos -->
      <div class="col-md-9 ">
          <div class="card mr-auto sombra">
              <div class="card-body">
                <h4 class="card-title text-center">Datos de Administrador</h4>               
                <ul class="list-group">

                <?php

                try {
                      $conexion = new PDO('mysql:host=mysql.proyectostsu.online;dbname=dogshousebase', "moises75484258", "moises7243858");
                          
                  } catch (PDOException $e) {
                      print "¡Error!: " . $e->getMessage() . "<br/>";
                      die();
                  }

                  try
                  {
                  $sql = $conexion->prepare("SELECT * FROM admin");
                  $sql->execute();
                  while ( $fila = $sql->fetch()) {
                    ?>
                  <li class="list-group-item">

                    Id = <?php echo $fila['id_admin']?>, 
                    Nombre = <?php echo $fila['nombre_admin']?>, 
                    Password = <?php echo $fila["contra_admin"]?>, 
                    Correo = <?php echo $fila['correo_admin']?>

                      <span class="fa-stack  float-right eliminar" id="<?php echo $fila['id_admin']?>" style="color:red; cursor: pointer;" title="Eliminar Registro">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-trash fa-stack-1x fa-inverse"></i>
                      </span>

                      <span class="fa-stack  float-right modificar" id="<?php echo $fila['id_admin']?>" style="color:blue; cursor: pointer ;" title="Actualizar Registro">
                        <i class="fa fa-circle fa-stack-2x"></i>
                        <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                      </span>
                  </li>                    
                    
                    <?php
                  }
                }
                catch(Exception $ex)
                {
                    print "¡Error!: " . $ex->getMessage() . "<br/>";
                      die();
                }
                ?>
                </ul>
              </div>
            </div>
      </div>
    </div> 
   
       
</div>
</div>
<!-- Fin CRUD -->

<!-- Modal -->
<div class="modal fade" id="modificar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modificar Administrador</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body datos">       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>      
      </div>
    </div>
  </div>
</div>
<!-- fin Modal -->



    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- <script src="js/scrollreveal.min.js"></script> -->
    <script src="js/helper.js"></script>
    <script>

       $(".eliminar").click(function(){
        var clave = $(this).attr("id");
        $.ajax({
          url : "procesa.php",
          data : "opc=eliminar&clave="+clave,
          type : "post",
          success: function()
          {
            location.reload();
          }
        })
      });
       
       $(".modificar").click(function(){
        var clave = $(this).attr("id");
         $.ajax({
          url : "procesa.php",
          data : "opc=modificar-form&clave="+clave,
          type : "post",
          success: function($datos)
          {
            $(".datos").html($datos);
          }
        })
        $('#modificar').modal('show');
      });
    </script>
  </body>
</html>
