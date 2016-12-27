<?php
	require_once("header.php");
	require_once("class/examples/Galeria.php");

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
<!-- 
			<?php 
				$galeria = new Galeria(1);// Se carga con id 1
				echo "prueba de importacion";
				echo "<br>";
				echo $galeria->user_creador;
			?> -->

			<form action="" method="post" enctype="multipart/form-data">


				<div class="form-group">
					<label>Nombre del album</label>
					<input class="form-control" type="input" required="required"></input>
				</div>

				<div class="form-group">
					<label>Elige las imagenes</label>
					<input type="file" multiple="multiple"></input>
				</div>


				<input class="btn btn-success" type="submit" value="Crear"></input>

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
	