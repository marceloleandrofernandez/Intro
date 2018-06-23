<?php
			include("funciones.php");
			conectar();
			include("seccion/seccion_verificar_login.php");
			$activo="examen";
			include("seccion/seccion_head.php");
			include("seccion/seccion_header.php");
			$cant = 0;
			$alumno_id = 3;
			$examen_id = 1;
			$temas_examen = 1; // o Temas id

			$examen = consulta("SELECT * FROM examen WHERE id = $examen_id");
			$examen=traer_registro($examen);
			$nombre_examen = $examen['nombre'];
			$cantidad_preguntas=$examen['cantidad_preguntas'];

			$preguntas = consulta("SELECT * FROM pregunta 
									WHERE tema_id IN (SELECT tema_id FROM tema_examen WHERE examen_id = $examen_id) 
									ORDER BY RAND() LIMIT $cantidad_preguntas");

			$cant_preg=mysqli_num_rows($preguntas);
			
			if ($cantidad_preguntas > $cant_preg) {
				$cantidad_preguntas = $cant_preg;
			}

			//$noombre_examen = traer_registro($examen);
			
			//var_dump($preguntas);
			//echo "string",mysqli_num_rows($preguntas);;
			//echo "<br>";
			/*while ($preg = traer_registro($preguntas)) {
									
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
											
											}			       }//Fin Primer While */ // TEST PURPUSSYYY
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<title></title>
</head>
<body>

<div class="container">
   			<div class="panel panel-info">
				      	<div class="panel-heading">
				      		<h4>Examen "<?php echo $nombre_examen; ?>"</h4>
				      	</div>
				      	<div class="panel-body">
							<form class="form-horizontal" id="frm_respuesta" name="frm_respuesta" action="prueba_exam.php" method="POST" enctype="application/x-www-form-urlencoded">
							<div id="rootwizard">
						            <ul class="nav nav-pills">
						              <?php for ($i=1; $i < $cantidad_preguntas + 1; $i++) { 
										#lista de preguntas
										echo "<li><a href='#tab".$i."' data-toggle='tab'>".$i."</a></li>"; 
									  }?>
						            </ul>
						            <br>
						            <div id="bar" class="progress progress-danger"> <!-- progress-striped active -->
						              <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>
						            </div>

						            <div class="tab-content">
						            	<?php while ($preg = traer_registro($preguntas)) { 

												$cant++;
											?>	
						            	<div class="tab-pane" id="tab<?php echo $cant; ?>">
		<input type="hidden" name="tab<?php echo $cant; ?>" value="<?php echo $preg['id']; ?>"> 

						            	 <div class="form-group row">
						            	<!-- Pregunta -->
													<div class="col-md-3 bg-success">
														<h4>Pregunta Nº <?php echo $preg['id']; ?></h4>
														<p>Sin responder aún</p>
														<p>Puntaje <?php echo $preg['valor'];?></p>
														<p>Porcentaje error<?php echo $preg['porcentaje_error'];?>%</p>
													</div>
													<div class="col-md-offset-1 col-md-8 bg-success"> 
													<div class="col-md-9 text-left"><u><p><?php echo $preg['enunciado'];?></p>
													</u></div>

													<?php $id=0;
														$idpregunta = $preg['id'];
														$respuestas = consulta("SELECT * FROM respuesta WHERE pregunta_id = $idpregunta");
														while ($resp = traer_registro($respuestas)){
																$afirmacion = $resp['descripcion'];
													?>	
													
														<label class="col-md-6 "><?php echo $afirmacion;?></label>
													    <div class="col-md-3">
													    <label class="radio-inline"><input type="radio" name="<?php echo $resp['id'];?>" value="1">V</label>
													    <label class="radio-inline"><input type="radio" name="<?php echo $resp['id'];?>" value="0">F</label>
													    </div>
													
													    <?php } //Segundo WHILE ?>


													</div><!--class="col-md-offset-1 col-md-8 bg-success"-->
						            	</div> <!--class="tab-pane"-->
						            	</div> <!-- "form-group row"-->
						            	

						            	<?php	} //Cierra Primer WHILE	?>
						            <ul class="pager wizard">
												<li class="previous first" style="display:none;"><a href="javascript:;">First</a></li>
												<li class="previous"><a href="javascript:;">Previous</a></li>
												<li class="next last" style="display:none;"><a href="javascript:;">Last</a></li>
											  	<li class="next"><a href="javascript:;">Next</a></li> <!--Botones-->
											</ul>
											<!--<div class="row">
  													<div class="col-md-12 col-md-offset-5"><a class="btn btn-primary" href="#" onclick="coso();"><i class="glyphicon glyphicon-check"></i> Verificar? Finalizar? </a>
  													</div>
											</div> -->
						            </div> <!-- class="tab-content" -->

						    </div><!-- rootwizard -->
						    <button type="submit" id="coso" class="btn btn-success btn-lg center-block">Madioca</button>
						    </form> <!-- class="form-horizontal"-->

						</div><!--class="panel-body"-->
			</div><!--class="panel panel-info"-->
</div><!--class="container"-->




<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="externo/twitter-bootstrap-wizard/bootstrap/js/bootstrap.min.js"></script>
<script src="externo/twitter-bootstrap-wizard/jquery.bootstrap.wizard.js"></script>
<script>

		$(document).ready(function() {
		  	$('#rootwizard').bootstrapWizard({onTabShow: function(tab, navigation, index) {
				var $total = navigation.find('li').length;
				var $current = index+1;
				var $percent = ($current/$total) * 100;
				$('#rootwizard').find('.progress-bar').css({width:$percent+'%'});
			}});
		});
		function coso(){
			var elemento = document.getElementsByClassName('tab-pane active'); //obtiene la pestaña activa (Una HTMLCollection en el DOM HTML DOM está viva; se actualiza automáticamente cuando el documento subyacente cambia.)
			var id = elemento[0].getAttribute('id');  //obtiene el id="" de la pestaña activa
			var x = document.getElementsByName(id)[0].value;  //obtiene el id de pregunta de la pestaña activa
			alert(x);
		}
</script>
</body>
</html>