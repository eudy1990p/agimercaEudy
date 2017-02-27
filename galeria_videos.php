<?php
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
				<h1>Colecciones de videos</h1>
				
				<!-- Aqui va codigo php -->
				<form action="" method="post" enctype="multipart/form-data">
					  <div class="form-group">
					    <label for="boton">Agregar coleccion de videos</label>
					    <br/>
					    <!-- Redireccionamiento -->
					    <a class="btn btn-success" href="crear_video.php" title="Click aqui para crear un nuevo album">Ir a crear</a>
					  </div>
				</form>
				<hr/>
				<?php 
					$c = new Conexion();

					$sql = "select * from carpeta_videos where user_id_creado=".$_SESSION['id']." and estado ='activo'";

					$resultado = mysqli_query($c->getContect(),$sql) or die(mysqli_error($c->getContect()));

					while ($datos = mysqli_fetch_array($resultado)): ?>

						<div class="col-xs-4">
						<div class="panel panel-default" title="Album de video. Puedes ver este album pulsando el boton de abajo">
							<div class="panel-heading">
								<h3><?php echo $datos['nombre']; ?></h3>
							</div>
							<div class="panel-body">
								<form action="ver_videos.php">
									<button title="Pulsa el boton para ver el album" class="btn btn-info btn-block" type="submit" name='id_album_video' value="<?php echo $datos['id']; ?>">Ver</button>
								</form>
							</div>
							<div class="panel-footer">
								<span>Fecha de publicacion: <?php echo $datos['fecha_creado']; ?></span>
							</div>
						</div>
						</div>

					<?php endwhile;
				?>

			</div>
			
	</div>



	<div class="col-xs-4">
		<?php require_once("menuizquierdo.php"); ?>
	</div>
	
	
</div>



<?php
	require_once("footer.php");
?>
	