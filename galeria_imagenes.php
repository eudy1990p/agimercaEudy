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
				<h1>Albunes creados</h1>
				
				<!-- Aqui va codigo php -->
				<form action="" method="post" enctype="multipart/form-data">
					  <div class="form-group">
					    <label for="boton">Agregar un nuevo album</label>
					    <br/>
					    <!-- Redireccionamiento -->
					    <a class="btn btn-success" href="crear_galeria.php">Ir a crear</a>
					  </div>
				</form>
				<?php 
					$c = new Conexion();

					$sql = "
						select 
							c.*,
						    (select url_img from galerias where carpeta_id=c.id limit 1) as imagen 
						from 
							carpeta_gallerias c 
						where c.user_id_creado=".$_SESSION['id']." and c.estado ='activo';
					";

					$resultado = mysqli_query($c->getContect(),$sql) or die(mysqli_error($c->getContect()));

					while ($datos = mysqli_fetch_array($resultado)): ?>

						<div class="col-xs-4" title="Puedes ver esta galeria pulsando el boton de abajo.">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 style="text-overflow: '[..]' "><?php echo $datos['nombre'] ?>lorem</h4>
								</div>
								<div class="panel-body">
									
						    	<form action='ver_galeria.php' method='post'>
						    	 <button 
						    	 	class='btn btn-info btn-block'
						    	 	name='id_album' 
						    	 	type='submit'
						    	 	title="Pulsa este boton para vel esta galeria de imagenes" 
						    	 	value="<?php echo $datos['id'] ?>">

						    	 	ver
						    	 </button>
						    	</form>

								</div>
								<div class="panel-footer">
									<span>Fecha publicacion: <?php echo $datos['fecha_creado']; ?></span>
								</div>
							</div>
						</div>

					<?php endwhile;
				?>

			</div>
			<hr/>
	</div>



	<div class="col-xs-4">
		<?php require_once("menuizquierdo.php"); ?>
	</div>
	
	
</div>



<?php
	require_once("footer.php");
?>
	