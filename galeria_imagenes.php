<?php
	require_once("header.php");
	
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
				
				<div class="col-xs-4">
					<h3><a href="#">Galeria xxx</a></h3>
					<a class="h4" href="#">ver</a>
					<br/>
					<span>fecha publicacion</span>
				</div>

				<div class="col-xs-4">
					<h3><a href="#">Galeria xxx</a></h3>
					<a class="h4" href="#">ver</a>
					<br/>
					<span>fecha publicacion</span>
				</div>

				<div class="col-xs-4">
					<h3><a href="#">Galeria xxx</a></h3>
					<a class="h4" href="#">ver</a>
					<br/>
					<span>fecha publicacion</span>
				</div>

				<div class="col-xs-4">
					<h3><a href="#">Galeria xxx</a></h3>
					<a class="h4" href="#">ver</a>
					<br/>
					<span>fecha publicacion</span>
				</div>

			</div>

			<hr/>
			<form action="" method="post" enctype="multipart/form-data">
				  <div class="form-group">
				    <label for="boton">Agregar un nuevo album</label>
				    <br/>
				    <!-- Redireccionamiento -->
				    <a class="btn btn-success" href="crear_galeria.php">Ir a crear</a>
				  </div>
			</form>
	</div>



	<div class="col-xs-4">
		
		<div class="list-group">
		   <a href="#" class="list-group-item thumbnail">
				<img width="300" src="img/Imagen_no_disponible.jpg" alt="Imagen perfil">
			</a>
		  <a href="#" class="list-group-item">Cambiar Contrase&ntilde;a</a>
		  <a href="#" class="list-group-item">Ver albunes</a>
		  <a href="#" class="list-group-item">Mis videos</a>
		  <a href="#" class="list-group-item">Mis publicaciones</a>
		</div>
	</div>
	
	
</div>



<?php
	require_once("footer.php");
?>
	