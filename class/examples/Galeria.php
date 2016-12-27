<?php 

	/**
	* 
	*/
	class Galeria
	{
		

		// conexion.
		public $c;
		//==========

		public $id = 'sin id';
		public $user_creador = 'sin usuario creador';
		public $user_editador = 'sin editador';
		public $fecha_editado = 'sin fecha editado';
		public $fecha_creado = 'sin fecha creado';
		public $url_img = 'sin imagen';
		public $perfil = 'sin perfil';
		public $carpeta_id = 'sin carpeta id';



		function __construct($id){
			$c = new Conexion();

			$sql = "SELECT * from galerias where id = $id";

			$resultado = mysqli_query($c->getContect(),$sql) or die("error: ".mysqli_error($resultado));

			while ($datos =mysqli_fetch_array($resultado)) {
				$this->id 			 =	$datos['id'];
				$this->user_creador	 =	$datos['user_id_creado'];
				$this->user_editador =	$datos['user_id_editado'];
				$this->fecha_creado	 =	$datos['fecha_creado'];
				$this->fecha_editado =  $datos['fecha_editado'];
				$this->url_img	 	 =	$datos['url_img'];
				$this->perfil		 =	$datos['perfil'];
				$this->carpeta_id	 =	$datos['carpeta_id'];
			}

		}


		
		public function crear(){

		}




	}

?>