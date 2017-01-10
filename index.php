<?php require_once("class/class_ini.php"); 
 if (isset($_POST)) {
    if (isset($_POST["login"])) {
     $resp = $usuario->validarDatosUser($_POST);
    }
 }
 if (isset($_GET["deslogueo"])) {
    $usuario->eliminarSesiones();
 }
/**
for this peace of software-"quality" shit you take money? 
how about, learn "programming"? ;)
*/
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
     <meta name="description" content="manejador de multiples banca">
    <meta name="author" content="Eudy Arias programador">
    <link rel="icon" href="http://eudy.260mb.net/eudyarias/img/eudyicono.png">

    <title><?php echo $label->LoginTitle; ?>-Agimerca</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sticky-footer-navbar.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body style="background-image: url(img/fondo.jpg);
    background-size: cover;">

    <div class="container" style="background-color: rgba(51, 51, 51, 0.51);
    padding-bottom: 10%;
    color: white;">

      <?php if (isset($resp)) {
        if ($resp == '1') {
      ?>
        <div class="alert alert-danger text-center" role="alert">
          <span class="glyphicon glyphicon-warning-sign" aria-hidden="true"></span>
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <strong><?php echo $label->LoginEmail; ?> <?php echo $label->O; ?> <?php echo $label->LoginClave; ?> <?php echo $label->NoCoinsiden; ?></strong></div>
      <?php }   } ?>

      <form action="" method="post" class="form-signin">
        <input type="hidden" name="login">
        <h2 class="form-signin-heading">Agimerca-<?php echo $label->LoginTitle; ?></h2>
        <label for="inputEmail" class="sr-only"><?php echo $label->LoginEmail; ?></label>
        <input type="text" id="inputEmail" name="user" class="form-control" placeholder="<?php echo $label->LoginEmail; ?>" required autofocus><br/>
				
        <label for="inputPassword" class="sr-only"><?php echo $label->LoginClave; ?> </label>
        <input type="password" id="inputPassword" name="clave" class="form-control" placeholder="<?php echo $label->LoginClave; ?>" required>
				
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> <?php echo $label->LoginRecordarClave; ?>
          </label>
        </div>
        <button class="btn btn-lg btn-success btn-block" type="submit"><?php echo $label->LoginBtnEntrar; ?> </button>
				<br/>
				<a class="btn btn-lg btn-primary btn-block" href="registro.php"><?php echo "Registrarte"; ?> </a>
      </form>


        <div class="row">
    <div class="col-xs-8">

      <div class="row">
        <h1>Seccion de busqueda</h1>
      
        <div class="panel panel-success">
          <div class="panel-heading">
            <h2>Ingresa la busqueda</h2>
          </div>
          
          <div class="panel-body">
             <!-- by nelson -->
            <form  method="post" action="" style="margin-top: 10px;">
                <input  class="form-control input-sm" type="text" name="txt-busqueda">
                <br>
                <button class="btn btn-success"  name='submit' type="submit">Buscar galeria</button>
              </form>
              <br>

            <?php if (isset($_POST['submit'])): 
              $c= new Conexion();
              $sql = 
              "
              select * from 
                ((select * from carpeta_gallerias) union (select * from carpeta_videos)) as tabla
              where nombre like lower('%".$_POST['txt-busqueda']."%')
              ";/*Tener en cuente que una busqueda simple los %% del lik tiene que ir pegados para
              que no se tomen en cuenta en la busqueda*/

              
              $resultado = mysqli_query($c->getContect(),$sql) or die(mysqli_error($c->getContect()));

              while($datos = mysqli_fetch_array($resultado)):
                //$usuario = new UsuariosNelson($datos['user_id_creado']);

              ?>
              <!-- ================== ========================================================================== -->
              <div class='card col-xs-4'>
                <div class='card-block'>
                  <h4 class='card-title'><?php echo $datos['nombre']; ?></h4>
                  <h6 class='card-subtitle text-muted'>Por: <?php echo $_SESSION['usuario'] ?></h6>
                </div>
                <img src='...' alt='Card image'>
                <div class='card-block'>
                  <form action="ver_galeria.php"  method="get">
                  <button class="btn btn-warning" name="id_album" value="<?php echo $datos['id'] ?>" type="submit">Ver galeria</button>
                  </form>
                  <!-- aqui irian los me gusta y demas -->
                  <a href='#' class='card-link'>Publicado el : <?php echo $datos['fecha_creado'] ?></a>
                </div>
              </div>
              <!-- ============================================================================================ -->
            <?php endwhile; endif ?>

          </div>
        </div>

<div class="col-md-12 text-center"><h3>Product Carousel</h3></div>
<div class="col-md-6 col-md-offset-3">
<div class="carousel slide" data-ride="carousel" data-type="multi" data-interval="3000" id="myCarousel">
  <div class="carousel-inner">
    <div class="item active">
      <div class="col-md-3 col-sm-6 col-xs-12"><a href="#"><img src="http://placehold.it/500/e499e4/fff&amp;text=1" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="col-md-3 col-sm-6 col-xs-12"><a href="#"><img src="http://placehold.it/500/e477e4/fff&amp;text=2" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="col-md-3 col-sm-6 col-xs-12"><a href="#"><img src="http://placehold.it/500/eeeeee&amp;text=3" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="col-md-3 col-sm-6 col-xs-12"><a href="#"><img src="http://placehold.it/500/f4f4f4&amp;text=4" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="col-md-3 col-sm-6 col-xs-12"><a href="#"><img src="http://placehold.it/500/f566f5/333&amp;text=5" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="col-md-3 col-sm-6 col-xs-12"><a href="#"><img src="http://placehold.it/500/f477f4/fff&amp;text=6" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="col-md-3 col-sm-6 col-xs-12"><a href="#"><img src="http://placehold.it/500/eeeeee&amp;text=7" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="col-md-3 col-sm-6 col-xs-12"><a href="#"><img src="http://placehold.it/500/fcfcfc/333&amp;text=8" class="img-responsive"></a></div>
    </div>
  </div>
  <a class="left carousel-control" href="#myCarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
</div>
</div>
<style type="text/css">
  .carousel-control        { width:  4%; }
.carousel-control.left,.carousel-control.right {margin-left:15px;background-image:none;}
@media (max-width: 767px) {
  .carousel-inner .active.left { left: -100%; }
  .carousel-inner .next        { left:  100%; }
  .carousel-inner .prev    { left: -100%; }
  .active > div { display:none; }
  .active > div:first-child { display:block; }

}
@media (min-width: 767px) and (max-width: 992px ) {
  .carousel-inner .active.left { left: -50%; }
  .carousel-inner .next        { left:  50%; }
  .carousel-inner .prev    { left: -50%; }
  .active > div { display:none; }
  .active > div:first-child { display:block; }
  .active > div:first-child + div { display:block; }
}
@media (min-width: 992px ) {
  .carousel-inner .active.left { left: -25%; }
  .carousel-inner .next        { left:  25%; }
  .carousel-inner .prev    { left: -25%; }  
}

</style>
<script type="text/javascript">
  $('.carousel[data-type="multi"] .item').each(function(){
  var next = $(this).next();
  if (!next.length) {
    next = $(this).siblings(':first');
  }
  next.children(':first-child').clone().appendTo($(this));
  
  for (var i=0;i<2;i++) {
    next=next.next();
    if (!next.length) {
      next = $(this).siblings(':first');
    }
    
    next.children(':first-child').clone().appendTo($(this));
  }
});
</script>
        
      </div>

      <hr/>
  </div>

    </div> <!-- /container -->


    <footer class="footer">
      <div class="container">
        <p class="text-muted"><a href="http://eudy.260mb.net"><?php echo $label->FooterDerechos; ?></a></p>
      </div>
    </footer>


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
