<?php
			include("funciones.php");
			conectar();
			include("seccion/seccion_verificar_login.php");
			$activo="preguntas";
			include("seccion/seccion_head.php");
			include("seccion/seccion_header.php");

			$alumno_id = 3;
			$examen_id = 1;
			$temas_examen = 1; // o Temas id
			$preguntas = consulta("SELECT * FROM pregunta WHERE tema_id = $temas_examen");
			while ($preg = traer_registro($preguntas)) {
							
									echo "Id Pregunta",$preg["id"];
									$idpregunta = $preg["id"];
									echo"<br>";
									echo "enunciado",	$preg["enunciado"];
									echo"<br>";
									echo "Nombre Pregunta ",	$preg["nombre"];
									echo"<br>";
									echo "Valor ",	$preg["valor"];
									echo"<br>";
									echo "Porcentaje de Error ",	$preg["porcentaje_error"];
								 	echo"<br>";
									$respuesta2 = consulta("SELECT * FROM respuesta WHERE pregunta_id = $idpregunta");
									while ($resp = traer_registro($respuesta2)){
												$afirmacion = $resp["descripcion"];
												echo "ID Respuesta" ,	$resp["id"];
												echo "Afirmacion Respuesta:",$afirmacion;
												echo "Correcto" ,$resp["correcto"];
												echo "ID Pregunta" ,$resp["pregunta_id"];
												echo"<br>";
											
											}			       
																	
									
					

			}//Fin Primer While
			
?>