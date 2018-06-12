<?php 
	include("funciones.php");
	conectar();
	
	if($_POST)
	{
			foreach ($_POST as $clave=>$valor)
		   		{
		   		$respuestas = consulta("SELECT * FROM respuesta WHERE id = $clave");
		   		$resp = traer_registro($respuestas);
		   		$idresp = $resp['id'];
		   		echo "El valor de $clave es: ", $valor;
		   		echo "<br>";
		   		echo "El valor de  Base $idresp es: ", $resp['correcto'];
		   		echo "<br>";
		   		if ($resp["correcto"] === $valor) {
		   			echo "Respuesta Correcta";
		   		}else{
		   			echo "Respuesta Incorrecta";
		   		}
		   		echo "<br>";
		   		}
	}
	


 ?>