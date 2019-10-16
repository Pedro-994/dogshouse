 <?php

  session_start();

  if (isset($_SESSION['user_id'])) {
    header('Location:index.html');
  }
  require 'database.php';

  if (!empty($_POST['email']) && !empty($_POST['password'])) {
    $records = $conn->prepare('SELECT id, email, password FROM users WHERE email = :email');
    $records->bindParam(':email', $_POST['email']);
    $records->execute();
    $results = $records->fetch(PDO::FETCH_ASSOC);

    $message = '';

    if (count($results) > 0 && password_verify($_POST['password'], $results['password'])) {
      $_SESSION['user_id'] = $results['id'];
      header("Location: logout.php");
    } else {
      $message = 'Lo sentimos, esas credenciales no coinciden';
    }
  }

?>

<!DOCTYPE html>
<html lang=es>
  <head>
  <link rel="icon" href="img/Doge.ico">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/login2.css">
      <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
  </head>
  <body background="img/2.jpg">

    <?php if(!empty($message)): ?>
      <p> <?= $message ?></p>
    <?php endif; ?>

    <div class="container-fluid navbar-inverse  bg-dark fixed-top">
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark container">
      <img src="img/DogsHouse.png" width="103px">
      <a class="navbar-brand" href="Index.html">Dog's House</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="Index.html"> <i class="fa fa-home fa-lg" style="padding-right: 13px;"></i>Inicio</a>
          </li> 
          <li class="nav-item">
            <a class="nav-link" href="#"></a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
              <i class="fa fa-address-card fa-lg" style="padding-right: 13px; color: white"></i>
              Iniciar Sesión
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="Login.html">
                <i class="fa fa-users fa-lg" style="padding-right: 13px; color: black"></i>
                Iniciar Sesión / Registrarse</a>
            </div>
          </li>


        <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fa fa-question fa-lg" style="padding-right: 13px; color: white"></i>
                  Información / Servicios
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                <a class="dropdown-item topbar-widget-mymarketplace" href="https://goo.gl/maps/yD5Ba9S5DCTie3Yo9">
                  <i class="fa fa-compass fa-lg" style="padding-right: 13px; color: black"></i>
                ¿Dónde nos ubicamos?</a>
                
                <!-- <a class="dropdown-item topbar-widget-mymarketplace" href="#"> -->
                  <!-- <i class="fa fa-calendar fa-lg" style="padding-right: 13px; color: black"></i> -->
            <!-- Disponibilidad de Horarios</a> -->

                <!-- <div class="dropdown-divider"></div> -->
            <!-- <a class="dropdown-item topbar-widget-mymarketplace" href="#">Catálogo de Adopciones</a> -->
                <div class="dropdown-divider"></div>
                <a class="dropdown-item topbar-widget-mymarketplace" href="Donaciones.html">
            <i class="fa fa-dollar fa-lg" style="padding-right: 13px; color: black"></i>
                  ¡Deseo apoyar con una donación!</a>
                <a class="dropdown-item topbar-widget-mymarketplace" href="Form_Adopcion.html">
            <i class="fa fa-paw fa-lg" style="padding-right: 8px; color: black"></i>
            Deseo poner a mi perro en adopción</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item topbar-widget-mymarketplace" href="#Catalogo">
          ¡Deseo adoptar a un perrito!
          <i class="fa fa-arrow-right" style="padding-left: 15px; color: black"></i>
          </a>


            </div>
        </li>


          <li class="naav-item">
            <a class="nav-link" href="#!"></a>
          </li>
        </ul>
          
      </div>
    </nav>
  </div>


    <!-- Comienza el formulario -->
    <div class="navbaracomodar">
  <form action="logout.php" method="post" class="form-loger">
    <h2 class="form__titulo">ADMINISTRACIÓN</h2>

    <p class="form__link"> Por favor, introduzca el correo y contraseña <br>
    que ingresó al momento de su registro</p>

    <!-- Comienza el divisor que contiene los label del formulario -->
    <div class="contenedor-inputs"> 
      <input type="email" name="correo" placeholder="Correo" class="input-100" required>      
      <input type="password" name="clave" placeholder="Contraseña" class="input-100" required>
      <input type="submit" value="Iniciar Sesión" class="btn-enviar"> 

      <!-- Link para redireccionar al formulario de registro -->
      <p class="form__link">¿Aún no tienes una cuenta? <a href="Registro_Usuarios.html"> Registrate aquí</a></p>
    </div>
    </div>
    <!-- Termina formulario -->


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>