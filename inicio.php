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
                  <?php echo $label->MenuFactura; ?></h1>
</div>

<div class="row">
		<div class="col-xs-8">
			<form action="" method="post" enctype="multipart/form-data">
				<input type="hidden" name="accion" value="agregar_post"/>
				<div class="row">

					<div class="col-xs-12">
						<textarea class="form-control" rows="5"></textarea>
					</div>
					<div class="col-xs-6"><br/>
						Imagen <input type="file" />
					</div>				
					<div class="col-xs-6 text-right"><br/>
						<button type="submit" class="btn btn-success">Publicar</button>
					</div>

				</div>
			</form>

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
	