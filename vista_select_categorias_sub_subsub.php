<?php 

		$resultCategoria = $categoria->getCategoria();
        
		if(isset($_GET["idCategoria"]) &&  ($_GET["idCategoria"] != "")){
			$resultSelectCategoriaSubCategorio = $categoria->getRelacionCateriaSubCategoria(base64_encode($_GET["idCategoria"]));
		}
		 if(isset($_GET["idRelacionCategoriaSector"]) &&  ($_GET["idRelacionCategoriaSector"] != "")){
			$resultSelectSubCategoriaSubCategorio = $categoria->getRelacionSubCateriaSubSubCategoria(base64_encode($_GET["idRelacionCategoriaSector"])); 
		 }
			
		if(isset($_GET["opcionesAvanzadas"]) ){
			$requeridoA = false; 
		 }else{
			$requeridoA = true;
		}
?>

<input type="hidden" id="buscadorAvanzado" value="<?php if(isset($_GET["opcionesAvanzadas"])){ echo "opcionesAvanzadas"; } ?>"  />

<div class="table-responsive">
<table class="table table-bordered">
	<tr>
		<th>
				Seleccionar Mercado
		</th>
		<th>
				Seleccionar Sector
		</th>
		<th>
				Seleccionar Producto
		</th>
	</tr>

	<tr>
		<td>
		
		<select <?php //if($requeridoA){ //echo "required"; } ?> name="categoria_id" id="categoria_id" class="form-control select2" onchange="mostrarSectores();">
			<option  value=""></option>
				<?php
				 
					while($resCategoria = mysqli_fetch_object($resultCategoria)){
				?>
						<option <?php if(isset($_GET["idCategoria"])){ if($resCategoria->id == $_GET["idCategoria"]){ echo "selected"; } } ?>  value="<?php echo $resCategoria->id; ?>"><?php echo $resCategoria->nombre_categoria; ?></option>

				<?php 
					} 
			?>
			
		</select>
		</td>
		
		<td>
		
		<select   <?php //if($requeridoA){ echo "required"; } ?> name="relacion_sector_roll_id" onchange="mostraProducto('<?php echo $_GET["idCategoria"]; ?>');" id="relacion_sector_roll_id" class="form-control select2">
						<option  value="" ></option>

			<?php
				if(isset($_GET["idCategoria"])){
					while($resSectores = mysqli_fetch_object($resultSelectCategoriaSubCategorio)){
				?>
						<option <?php  if(isset($_GET["idRelacionCategoriaSector"])){  if($resSectores->id_relacion == $_GET["idRelacionCategoriaSector"]){ echo "selected"; } } ?> value="<?php echo $resSectores->id_relacion; ?>"><?php echo $resSectores->sub_categoria_name; ?></option>

				<?php } } ?>
		</select>
		</td>
			
		<td>
		
		<select  <?php //if($requeridoA){ echo "required"; } ?>  name="relacion_producto_sector_id" id="relacion_producto_sector_id" class="form-control select2">
			<option  value="" ></option>
			<?php
			if(isset($_GET["idRelacionCategoriaSector"])){
					while($resProducto = mysqli_fetch_object($resultSelectSubCategoriaSubCategorio)){
				?>
						<option value="<?php echo $resProducto->id_relacion; ?>"><?php echo $resProducto->sub_sub_categoria_name; ?></option>

				<?php } } ?>
		</select>
		</td>
	</tr>
	
</table>
</div>
<script type="text/javascript">
			function mostrarSectores(){
				var idCategoria = $("#categoria_id").val();
				var busquedaAvanzada = buscadorAvanzadoActivo();
				window.location = "?idCategoria="+idCategoria+busquedaAvanzada;
				
			}
			function mostraProducto(idCategoria){
				var idRelacion = $("#relacion_sector_roll_id").val();
				var busquedaAvanzada = buscadorAvanzadoActivo();
				window.location = "?idCategoria="+idCategoria+"&idRelacionCategoriaSector="+idRelacion+busquedaAvanzada;
			}
			function buscadorAvanzadoActivo(){
				var busquedaAvanzada = "";
				if($("#buscadorAvanzado").val() != 0){
						busquedaAvanzada = "&opcionesAvanzadas=si";
				}
				if($("#textbuscador_avanzado").val() != 0){
						busquedaAvanzada += "&textbuscador_avanzado="+$("#textbuscador_avanzado").val();
				}
				
				
				return busquedaAvanzada;
			}
   
                     
  
      </script>