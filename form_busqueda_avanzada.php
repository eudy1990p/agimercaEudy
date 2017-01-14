<div class="row">
	<form action="" method="post">

			<div class="col-xs-12">
					<?php require_once("vista_select_categorias_sub_subsub.php"); ?>
			</div>

			<div class="col-xs-12">
					<input id="textbuscador_avanzado" value="<?php if( isset($_GET["textbuscador_avanzado"]) ){ echo $_GET["textbuscador_avanzado"]; } ?>" name="buscador_avanzado" type="text" class="form-control" placeholder="Post a buscar">		
			</div>

			<div class="col-xs-12 text-right"><br/>
					<button type="submit" class="btn btn-success">Buscar</button>	
			</div>
		</form>
	</div>