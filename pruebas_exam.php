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

			$respuestas = consulta("SELECT * FROM respuesta");
			
			echo"	<div class='container'>
						<div class='panel panel-info>
							      	<div class='panel-heading'>
							      		<h4>Examen La Puta que te pario</h4>
							      	</div>
				      	<div class='panel-body'>
								<div class='row'>
									<div class='col-md-12'>
									<div class='col-md-12'>
					";
			while ($preg = traer_registro($preguntas)) {
							echo "<div class='col-md-2 bg-success'>
										<h4>Pregunta Nº ".$preg['id']."</h4>
										<p>Sin responder aún</p>
										<p>Puntaje ".$preg['valor']."</p>
										<p>Porcentaje error".$preg['porcentaje_error']."%</p>
								  </div>

								<div class='col-md-offset-1 col-md-8 bg-info'>
										<div class='col-md-12'><u><p>".$preg['enunciado']."</p></u>
										</div>
								<br>
								  ";

					while ($respxxx = traer_registro($respuestas)){
								
								echo"<div class='form-group'>";
										if ($preg['id'] == $respxxx['pregunta_id'] ) {
											$afirmacion = $respxxx['descripcion'];
														
									echo "<label class='col-md-offset-1 col-md-8 control-label'>".$afirmacion."</label>";
									echo "<div class='col-md-3'>
												<label class='radio-inline'><input type='radio' name='".$preg['id']."' value='1'>V</label>
												<label class='radio-inline'><input type='radio' name='".$preg['id']."' value='0'>F</label> 
										  </div>
									</div>";
									        							

								}else{ break; }			       
													
					} 
					echo"	</div> 
							</div>
							</div>
							</div>
							</div>";

			}//Fin Primer While
			echo "</div>
			</div>";
?>
