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
						    <button class="btn btn-success"  type="submti">Buscar galeria</button>
						  </form>
						  <br>

						<?php 

							if(!isset($_POST)){
								echo "

									<div class='card col-xs-4'>
									  <div class='card-block'>
									    <h4 class='card-title'>Card title</h4>
									    <h6 class='card-subtitle text-muted'>Support card subtitle</h6>
									  </div>
									  <img src='...' alt='Card image'>
									  <div class='card-block'>
									    <p class='card-text'>Some quick example text to build on the card title and make up the bulk of the card's content.</p>
									    <a href='#' class='card-link'>Card link</a>
									    <a href='#' class='card-link'>Another link</a>
									  </div>
									</div>

								";
							}

						 ?>
					</div>
				</div>

			</div>

			<hr/>
	</div>



	<div class="col-xs-4">
		
	<?php require_once("menuizquierdo.php"); ?>

		<aside class="container-fluid">
				<div class="panel panel-default">
					<div class="panel-heading">
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
	