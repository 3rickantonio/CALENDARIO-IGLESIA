<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>.:MISION AGENDA 2016:.</title>

    <!-- Bootstrap core CSS -->
    <link href="res/bootstrap3/css/bootstrap.css" rel="stylesheet">

    <style type="text/css">
        body {
            background: url(img/calendario2.jpg) no-repeat fixed center;
        }
        
        .circular {
            width: 25px;
            height: 25px;
            border-radius: 25px 25px;
            -webkit-border-radius: 200px 0px 0px 200px;
            -moz-border-radius: 100px;
            background color: #0c55f8;
            border: 29px #00aeff;
        }
        
        .circular2 {
            width: 25px;
            height: 25px;
            border-radius: 25px 25px;
            -webkit-border-radius: 0px 200px 200px 0px;
            -moz-border-radius: 100px;
            ackground color: #0c55f8;
            border: 29px #00aeff;
        }
    </style>
        
        
        
        
     


      
    <!-- Add custom CSS here -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <script src="js/jquery-1.10.2.js"></script>
<?php if(isset($_GET["view"]) && $_GET["view"]=="home"):?>
<link href='res/fullcalendar.min.css' rel='stylesheet' />
<link href='res/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src='res/js/moment.min.js'></script>
<script src='res/fullcalendar.min.js'></script>
<?php endif; ?>
      
   
      
      

  </head>

  <body>

    <div id="wrapper">

      
        <div class="collapse navbar-collapse navbar-ex1-collapse">
<?php 
$u=null;
if(Session::getUID()!=""):
  $u = UserData::getById(Session::getUID());
?>


<!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php?view=home"> <sup><span class="label label-info">Secretaria</span></sup> </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        
        
         <ul class="nav navbar-nav">
          <li><a href="index.php?view=newreservation"><i class="fa fa-plus-circle"></i> Nuevo Evento</a></li>
          </ul> 
          <ul class="nav navbar-nav side-nav">
          <li><a href="index.php?view=home"><i class="fa fa-home"></i> Inicio</a></li>
          <li><a href="index.php?view=reservations"><i class="fa fa-calendar"></i> Eventos</a></li>
          <li><a href="index.php?view=oldreservations"><i class="fa fa-calendar"></i> Eventos Anteriores</a></li>              
          <li><a href="index.php?view=pacients"><i class="fa fa-male"></i> Ministerios</a></li> 
          <li><a href="index.php?view=categories"><i class="fa fa-th-list"></i> Categorias</a></li>   
          <li><a href="index.php?view=contacts"><i class="fa fa-support"></i> Contactos</a></li>              
                     
          <?php if($u->is_admin):?>
          <li><a href="index.php?view=changelog"><i class="fa fa-filter"></i> Log de cambios </a></li>
          <li><a href="index.php?view=users"><i class="fa fa-users"></i> Usuarios </a></li>
        <?php endif;?>
          </ul>




<?php endif;?>



<?php if(Session::getUID()!=""):?>
<?php 
$u=null;
if(Session::getUID()!=""){
  $u = UserData::getById(Session::getUID());
  $user = $u->name." ".$u->lastname;

  }?>
           <ul class="nav navbar-nav navbar-right navbar-user">
                                    <li class="dropdown user-dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    
                    <img class="circular" src="avatars/user.jpg" alt="Foto de <?php echo $row['nombre']?>" />
                            <span class="user-info">!Hola, Bienvenid@!, <?php echo $user  ?></span>
                    <img class="circular2" src="avatars/user.jpg" alt="Foto de <?php echo $row['nombre']?>" />

       
                                        </a>


                                        <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">

                                            <li><a href="index.php?view=configuration"><i class="ace-icon fa fa-cog"></i> Configuracion</a>
                                            </li>

                                            <?php if($u->is_admin):?>
                                                <li>
                                                    <a href="index.php?view=users"><i class=" ace-icon fa fa-user "></i> Perfil Usuarios</a>
                                                </li>
                                                <?php endif;?>

                                                    <li class="divider "></li>
                                                    <li><a href="logout.php "><i class="ace-icon fa fa-power-off "></i> Cerrar sesion</a>
                                                    </li>
                                        </ul>
                                        <?php else:?>
                                            <?php endif; ?>




        </div><!-- /.navbar-collapse -->
      </nav>

      <div id="page-wrapper">

<?php 
  // puedo cargar otras funciones iniciales
  // dentro de la funcion donde cargo la vista actual
  // como por ejemplo cargar el corte actual
  View::load("login");

?>



      </div><!-- /#page-wrapper -->

    </div><!-- /#wrapper -->

    <!-- JavaScript -->

<script src="res/bootstrap3/js/bootstrap.min.js"></script>

  </body>
</html>