

<!DOCTYPE html>
<html lang=es>
  <head>
  <link rel="icon" href="img/Doge.ico">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/login_adm.css">
      <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
  </head>
  <body background="img/2.jpg">



<!--  -->

    <!-- Comienza el formulario -->
    <div class="navbaracomodar">
  <form action="log_admin.php" method="post" class="form-loger">
    <form action="logout.php" method="post">
    <h2 class="form__titulo">ADMINISTRACIÓN</h2>

    <p class="form__link"><h5><center> <b>Introduzca su Correo y Contraseña</b></center> </h5></p>
    <p><center>Acceso Restringido. Sólo administradores</center></p>
    <!-- Comienza el divisor que contiene los label del formulario -->
    <div class="contenedor-inputs"> 
      <input type="email" name="correo" placeholder="Correo" class="input-100" pattern="[A-Za-z0-9_-@]{1-20}" required>      
      <input type="password" name="clave" placeholder="Contraseña" class="input-100" required pattern="[A-Za-z0-9]{1-30}">
      <input type="submit" value="Iniciar Sesión" class="btn-enviar"> 

      <!-- Link para redireccionar al formulario de registro -->
    </div>
    </div>
    <!-- Termina formulario -->


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script type='text/javascript'>
  document.oncontextmenu = function(){return false}
</script>


  </body>
</html>