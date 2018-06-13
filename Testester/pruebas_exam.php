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
			$preguntas = consulta("SELECT * FROM pregunta WHERE tema_id = $temas_examen");
			$examen = consulta("SELECT * FROM examen WHERE id = $examen_id");
			$noombre_examen = traer_registro($examen);
			$cant_preg=mysqli_num_rows($preguntas);
			echo "string",mysqli_num_rows($preguntas);;
			echo "<br>";
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

<div class="container-fluid">
    
   			<div class="panel panel-info">
				      	<div class="panel-heading">
				      		<h4>Examen "<?php echo $noombre_examen['nombre']; ?>"</h4>
				      	</div>
				      	<div class="panel-body">
						<a name="demo"></a>
							<h2></h2>
							<p>Basic Demo Example.</p>
						<div id="rootwizard">
										<div class="navbar">
										  <div class="navbar-inner">
										    <div class="container">
																<ul>
																
																 <?php for ($i=1; $i < $cant_preg + 1; $i++) { 
																 	#lista de preguntas
																 	echo "<li><a href='#tab".$i."' data-toggle='tab'>".$i."</a></li>"; 
																 } ?>
																</ul>
										 	</div>
										  </div>
										</div>
										<div id="bar" class="progress active">
										  			<div class="progress-bar progress-bar-info"></div> <!-- REVISAR ESTO!!! -->
										</div>

										<div class="container">
										<div class="tab-content">
										
											<?php while ($preg = traer_registro($preguntas)) { 

												$cant++;
											?>	
											
										    <div class="tab-pane" id="tab<?php echo $preg['id']; ?>">
										    	<form id="preg"  method="POST">         <!--prueba_exam.php-->
													
															<!-- Pregunta -->
															<div class="col-md-3 bg-success "> 
																<h4>Pregunta Nº <?php echo $preg['id']; ?></h4>
																<p>Sin responder aún</p>
																<p>Puntaje <?php echo $preg['valor'];?></p>
																<p>Porcentaje error <?php echo $preg['porcentaje_error'];?>%</p>
															</div>
															<!-- Respuestas  de Preguntas  -->
															<div class="col-md-offset-1 col-md-7 bg-info">
															<div class="form-group">	
															<div class="col-md-12"><u><p><?php echo $preg['enunciado'];?></p></u></div>
																<?php $id=0;
																$idpregunta = $preg['id'];
																$respuestas = consulta("SELECT * FROM respuesta WHERE pregunta_id = $idpregunta");
																while ($resp = traer_registro($respuestas)){
																		$afirmacion = $resp['descripcion'];
																		?>
																<label class="col-md-offset-1 col-md-8 control-label"><?php echo $afirmacion;?></label>
															    <div class="col-md-3">
															    <label class="radio-inline"><input type="radio" name="<?php echo $resp['id'];?>" value="1">V</label>
															    <label class="radio-inline"><input type="radio" name="<?php echo $resp['id'];?>" value="0">F</label>
															    </div>
															
																<?php } //Segundo WHILE ?>
															</div> <!-- form-group -->
															</div> <!-- bg-info -->	
															     
															    <button type="submit" id="coso" class="btn btn-success btn-lg center-block"  >Verificar ?</button>
									        									
															</form>	

											</div>  <!--class="tab-pane"-->
														   
												<?php	
												      } //Cierra Primer WHILE
											    ?>
												
												
											
													
													<ul class="pager wizard">
													<hr>
														<li class="previous first" style="display:none;"><a href="javascript:;">First</a></li>
														<li class="previous"><a href="javascript:;">Previous</a></li>
														<li class="next last" style="display:none;"><a href="javascript:;">Last</a></li>
													  	<li class="next"><a href="javascript:;">Next</a></li> <!--Botones-->
													</ul>
											
										</div> <!--class="tab-content"-->
										</div><!--class="container"-->
						</div> <!--id="rootwizard"-->
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
</script>
</body>
</html>