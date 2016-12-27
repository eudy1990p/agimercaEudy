<?php 

	
	require_once("/../class_conexion.php");

	/**
	* Esta clase es semi inecesaria ya que ya hay una precreada por eudy1990.
	* En la carpeta class del proyecto.
	*/
	class UsuariosNelson
	{
		
		//variable que almacena la conexion a la base de datos.
		public $c;

		public $id = 'sin id';
		public $user = 'sin usuario';
		public $clave = 'sin clave';
		public $fecha_creado = 'sin fecha creado';
		public $descripcion = 'si descripcion';
		public $video = 'sin url en video';
		public $tipo  = 'sin tipo en video';
		public $estado = 'sin estado';
		public $img	= 'sin url en imagen de perfil';

		//El constructor principal es para la cuenta del usuario.
		function __construct($cuenta)
		{
			$sql = "SELECT * from usuarios where cuenta = $cuenta";

			$c = new Conexion();


			$resultado = mysqli_query($c->getContect(),$sql) or die("Error mysql en usuarios: ".mysqli_error($resultado));

			while ($datos = mysqli_fetch_array($resultado)) {
				$id 			= $datos['id'];
				$user 			= $datos['user'];
				$clave 			= $datos['clave'];
				$fecha_creado 	= $datos['fecha_creado'];
				$descripcion 	= $datos['descripcion'];
				$video 			= $datos['embed_video'];
				$tipo 			= $datos['tipo_user'];
				$estado 		= $datos['estado'];
				$img 			= $datos['img_perfil'];
			}
		}



		//-----------------------------------------------
		//Metodos comunes para la clase para ser sobre escritos mas tarde
		//-----------------------------------------------
		public function guardar(){}

		public function desactivar(){}

		public function modificar(){}

	}



?>