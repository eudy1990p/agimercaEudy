<?php
	require_once("header.php");
	require_once("class/class_conexion.php");
	require_once("class/Modelos/CarpetaVideos.php");
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
				<!-- Aqui va codigo php -->
				<?php 
					if($_POST){
						if($_POST['accion']=='eliminar'){
							CarpetaVideos::desactivar($_SESSION['album_actual']);

							echo "
								<div class='alert alert-success'>
									<strong>Realizado! </strong>Se elimino la coleccion de videos
									<br>
									<a href='galeria_videos.php' class='alert-link'>Regresar a la galeria de videos</a>.
								</div>
							";
						}elseif($_POST['accion']=='agregar'){
							
						}
					}
				?>

				

			</div>

			<hr/>
	</div>



	<div class="col-xs-4">
		
		<div class="list-group">
		   <a href="#" class="list-group-item thumbnail">
				<img width="300" src="img/Imagen_no_disponible.jpg" alt="Imagen perfil">
			</a>
		  <a href="#" class="list-group-item">Cambiar Contrase&ntilde;a</a>
		  <a href="galeria_imagenes.php" class="list-group-item">Ver albunes</a>
		  <a href="galeria_videos.php" class="list-group-item">Mis videos</a>
		  <a href="#" class="list-group-item">Mis publicaciones</a>
		</div>
	</div>
	
	
</div>



<?php
	require_once("footer.php");
?>
	