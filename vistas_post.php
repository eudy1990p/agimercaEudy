<?php function  allpost($img_usuario,$nombre_usuario,$post,$contador="1",$idPost="1",$post="",$imagen="img/Imagen_no_disponible.jpg"){ ?>
<hr/>
<div class="row" style="background-color: rgba(232, 232, 232, 0.3);padding: 6px;">
	<div class="col-xs-2">
		<img width="50" src="<?php echo $img_usuario ; ?>" class="img-responsive img-circle" alt="Usuario" />
	</div>
	<div class="col-xs-8"  valign="center">
		<stron><?php echo $nombre_usuario ; ?></stron>
	</div>
	<div class="col-xs-2"  valign="center">
		<button onclick="mostarComentario('<?php echo $contador ;?>')" class="btn btn-default" >Comentar</button>
	</div>
	
	<?php if($imagen != "img/Imagen_no_disponible.jpg"){	?>
	<div class="col-xs-12" style="background-color: #fff;margin-top: 11px;">
		
		<img src="<?php echo $imagen; ?>" class="img-responsive img-rounded" alt="Imagen post" />
     </div>
	<?php	}	?>
	
	<?php if($post != ""){?>
	<div class="col-xs-12" style="background-color: #fff;margin-top: 11px;">
		<?php echo $post; ?>
	</div>
	<?php	}	?>
</div>
<?php 
	if(!empty($post)){
$resultComent = $post->getComentarioPost(idPost);	
while($resComent = mysqli_fetch_array($resultComent)){
?>
<ul class="media-list">
  <li class="media">
    <div class="media-left">
      <a href="#">
        <img class="media-object" src="..." alt="...">
      </a>
    </div>
    <div class="media-body">
      <h4 class="media-heading">Media heading</h4>
      ...
    </div>
  </li>
</ul>
<?php 
		}
	}
?>


<div style="display:none;" id="comentario<?php echo $contador; ?>" class="row">
	<form method="post" action="" >
		<input type="hidden"  id="mostrar<?php echo $contador; ?>" value="0"/>
	<div  class="col-xs-12">
			<textarea name="post" class="form-control" rows="2"></textarea>
	</div>
	<div  class="col-xs-12">
			<button type="submit" class="btn btn-primary btn-lg btn-block">Comentar</button>
	</div>
	</form>
</div>
<?php } ?>


<script type="text/javascript">
	function mostarComentario(id){
		var mostrado = $("#mostrar"+id);
		if(mostrado.val() == 0){
			$("#comentario"+id).show(2000);
			mostrado.val(1);
		}else{
			mostrado.val(0);
			$("#comentario"+id).hide(2000);
		}
	}
</script>

