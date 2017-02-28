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
	<!-- <script type='text/javascript' src="js/jspdf.debug.js"></script>  	 -->
	  

    <div id="myModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Galeria</h4>
                    <span class="glyphicon glyphicon-right"></span>
                    
                    <button class="pull-left  btn btn-default" id="btn-atras"><span class="glyphicon glyphicon-chevron-left"></span></button>
                    <button class="pull-right btn btn-default" id="btn-adelante"><span class="glyphicon glyphicon-chevron-right"></span></button>
                </div>
                <div class="modal-body">
                	<img id="imagen-modal" style="width: 90%" class="img-responsive" src=""/>
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>



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

								$sql = '';
								if(isset($_POST['id_album'])){
									$_SESSION['album_actual']=$_POST['id_album'];
									$sql = "SELECT * from galerias where carpeta_id='$_POST[id_album]'";	
								}else{
									$sql = "SELECT * from galerias where carpeta_id=".$_SESSION['album_actual'];	
								}

								$resultado = mysqli_query($c->getContect(),$sql) or die(mysqli_error($c->getContect()));

								while($datos = mysqli_fetch_array($resultado)){
									static $contador = 0;
									echo 
									"
									  <div class='col-xs-4'>
									    <a href='#' class='thumbnail '>
									      <img class='imagen' src='imagenes_galeria/$datos[url_img]' title='$contador'>
									    </a>
									  </div>
									";
									$contador++;
								}
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

<script type="text/javascript">
	
	$(document).ready(function(){
		
		imagen_actual=0;

	    $(document).on("click",".imagen",function(){


	    	var imagen=$(this);
	    	var url = imagen.attr('src');

	    	imagenes = [];
	    	imagen_actual=parseInt(imagen.attr('title'));
	    	console.log("indise "+imagen.attr('title'));

	    	$('.imagen').each(function(e){

	    		imagenes.push($(this).attr('src'));
	    		
	    	});

	    	// console.log(imagenes);
	    	// console.log(url);
	    	$("#imagen-modal").attr('src',url);
	       

	        $("#myModal").modal('show');

	    });

	    $("#btn-adelante").click(function(){
	    		imagen_actual++;
	    		if(imagen_actual>=imagenes.length){
	    			imagen_actual=0;
	    		}
				$('#imagen-modal').attr('src',imagenes[imagen_actual]);	
	    });
	    $("#btn-atras").click(function(){
    		imagen_actual--;
    		if(imagen_actual<0){
    			imagen_actual=imagenes.length-1;
    		}
			$('#imagen-modal').attr('src',imagenes[imagen_actual]);

	    });

	});

</script>

<?php
	require_once("footer.php");
?>
	