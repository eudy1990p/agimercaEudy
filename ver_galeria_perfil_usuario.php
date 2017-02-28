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


<div class="row">
		<div class="col-xs-12">

			<div class="row">
				<div class="col-xs-12"> <br/>
				<form action="" method="post">
					<input type="hidden" name="paso" value="1" />
					<button class="btn btn-danger" type="submit"> Regresar</button>
				</form>
				</div>
				<div class="col-xs-12"><br/>
				<!-- Aqui va codigo php -->
				
				<div class="panel panel-success">
					<div class="panel-heading">
						<h2>Galeria del album</h2>
					</div>
					
					<div class="panel-body">
						<?php 
                                //die("paso dos tres");

							if(isset($_POST)){

								$c = new Conexion();

								$sql = '';
								if(isset($_POST['id_album'])){
									$_SESSION['album_actual']=$_POST['id_album'];
									$sql = "SELECT * from galerias where carpeta_id='$_POST[id_album]'";	
								
                                }

								$resultado = mysqli_query($c->getContect(),$sql) or die(mysqli_error($c->getContect()));

								while($datos = mysqli_fetch_array($resultado)){
									static $contador=0;
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
					
			</div>

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

	    	console.log(imagenes);
	    	console.log(url);
	    	$("#imagen-modal").attr('src',url);
	       

	        $("#myModal").modal('show');

	    });

	    $("#btn-adelante").click(function(){
	    		imagen_actual++;
	    		if(imagen_actual>=imagenes.length){
	    			imagen_actual=0;
	    		}
				$('#imagen-modal').attr('src',imagenes[imagen_actual]);				
	    	
	    	console.log(imagen_actual)
	    });
	    $("#btn-atras").click(function(){
    		imagen_actual--;
    		if(imagen_actual<0){
    			imagen_actual=imagenes.length-1;
    		}
			$('#imagen-modal').attr('src',imagenes[imagen_actual]);

			console.log(imagen_actual)
	    });

	});

</script>