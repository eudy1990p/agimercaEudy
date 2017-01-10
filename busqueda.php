<?php
	require_once("class/class_usuario.php");
	require_once("header.php");
	require_once("class/class_conexion.php");
	if(isset($_POST)){
		if(isset($_POST["agregar_post"])){
			
		}
	}
?>


	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
    <script>tinymce.init({ selector:'textarea' });</script>
	<script type='text/javascript' src="js/jspdf.debug.js"></script>  	
	  
	<div class="page-header">
		        <h1><span class="glyphicon glyphicon-file" aria-hidden="true"></span> 
		        	Galeria
		        	<!-- Esto es una variable generica que eudy utilizo.
		        		Comentado por nelson. -->
	                <!-- <?php echo $label->MenuFactura; ?> -->
	            </h1>
	</div>

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
							<!-- ==================	========================================================================== -->
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


<style type="text/css">
	.carousel-control 			 { width:  4%; }
.carousel-control.left,.carousel-control.right {margin-left:15px;background-image:none;}
@media (max-width: 767px) {
	.carousel-inner .active.left { left: -100%; }
	.carousel-inner .next        { left:  100%; }
	.carousel-inner .prev		 { left: -100%; }
	.active > div { display:none; }
	.active > div:first-child { display:block; }

}
@media (min-width: 767px) and (max-width: 992px ) {
	.carousel-inner .active.left { left: -50%; }
	.carousel-inner .next        { left:  50%; }
	.carousel-inner .prev		 { left: -50%; }
	.active > div { display:none; }
	.active > div:first-child { display:block; }
	.active > div:first-child + div { display:block; }
}
@media (min-width: 992px ) {
	.carousel-inner .active.left { left: -25%; }
	.carousel-inner .next        { left:  25%; }
	.carousel-inner .prev		 { left: -25%; }	
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



	<div class="col-xs-4">
		
	<?php require_once("menuizquierdo.php"); ?>

		<aside class="container-fluid">
				<div class="panel panel-default">
					<div class="panel-heading">
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
						Acciones para el album
					</div>
					<div class="panel-body">
						<label class="form-label">Reaccion</label>

						<!-- Lo programo en otra fecha... -->
							<!-- <form action="eliminar_album.php" method="post" enctype="multipart/form-data">
								<div class="form-group">
									<button type="submit" name="accion" value="agregar" class="form-control btn btn-success" >
										Agregar otra foto
									</button>
								</div>
							</form> -->
							<form action="eliminar_album.php" method="post">
								<div class="form-group">
									<button type="submit" name="accion" value="eliminar" class="form-control btn btn-danger" >
										Eliminar este album
									</button>
								</div>
							</form>


					</div>
				</div>
			</aside>
	</div>
	
	
</div>



<?php
	require_once("footer.php");
?>
	