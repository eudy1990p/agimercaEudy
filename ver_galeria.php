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
				
				<div class="panel panel-success">
					<div class="panel-heading">
						<h2>Galeria del album</h2>
					</div>
					
					<div class="panel-body">
						<?php 

							if(isset($_POST)){
								$c = new Conexion();

								$sql = "SELECT * from galerias where carpeta_id='$_POST[id_album]'";

								$resultado = mysqli_query($c->getContect(),$sql) or die(mysqli_error($c->getContect()));

								while($datos = mysqli_fetch_array($resultado)){
									echo 
									"
									  <div class='col-xs-4'>
									    <a href='#' class='thumbnail'>
									      <img src='imagenes_galeria/$datos[url_img]'>
									    </a>
									  </div>
									"
									;
								}
							}
						?>
					</div>
				</div>

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
		  <a href="#" class="list-group-item">Mis videos</a>
		  <a href="#" class="list-group-item">Mis publicaciones</a>
		</div>
	</div>
	
	
</div>



<?php
	require_once("footer.php");
?>
	