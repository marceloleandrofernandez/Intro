<?php

	/**
	* conecta a la base de datos con clase, revisar constantes.php en caso contrario
	*/
	class BaseDatos 
		{
			private $con;

			public function conectar(){
				require_once("constantes.php");
				$this->con = new Mysqli(HOST,USER,PASS,DB);

				if ($this->con) {
					# code...
					return $this->con;
				}
				return "FALLO AL CONECTAR CON LA BASE DE DATOS";					
			}
	}
/* Testing Purpussyyyy....
$db = new BaseDatos();
$db->conectar();
*/
?>