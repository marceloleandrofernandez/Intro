<?php
			include("funciones.php");
			conectar();
?>
			<?php include("seccion/seccion_verificar_login.php");?>
			<?php  $activo="preguntas";?>

<!DOCTYPE html>
<html lang="es">
<head>
	<title></title>
	 <?php include("seccion/seccion_head.php");?>
</head>
<body>
	 <?php include("seccion/seccion_header.php");?>


<?php 
		//$nombre = $_REQUEST['nombre'];
		//$enunciado = $_REQUEST['enunciado'];
		//$valor = $_REQUEST['valor'];
		//$porcentaje_error = (!is_null($_REQUEST['porcentaje_error']))?$_REQUEST['porcentaje_error']:0;
		
		//trae examen
		$examen = consulta("SELECT * FROM examen WHERE id = 1");
		$resxxx = traer_registro($examen);
		echo $resxxx["id"], $resxxx["nombre"],$resxxx["abrir_examen"],$resxxx["cerrar_examen"],$resxxx["limite_de_tiempo"],$resxxx["nota_aprobacion"],$resxxx["nota_decimales"],$resxxx["cantidad_preguntas"],$resxxx["correcciones"];
		// trae preguntas
		$preguntas = consulta("SELECT * FROM pregunta WHERE tema_id = 1");
		$pregxxx = traer_registro($preguntas);
		// trae respuestas 
		$respuestas = consulta("SELECT * FROM respuesta WHERE pregunta_id = 1");
		//$respxxx = traer_registro($respuestas);
?>
		
		<div class="container">
    
   			<div class="panel panel-info">
				      	<div class="panel-heading">
				      		<h4>Examen "<?php  echo $resxxx["nombre"];?>"</h4>
				      	</div>
				      	<div class="panel-body">

								<div class="row">
									<div class="col-md-12">
									<div class="col-md-12">
									
										<!-- Pregunta -->
										<div class="col-md-2 bg-success">
											<h4>Pregunta Nº <?php echo $pregxxx['id']; ?></h4>
											<p>Sin responder aún</p>
											<p>Puntaje <?php echo $pregxxx['valor'];?></p>
											<p>Porcentaje error <?php echo $pregxxx['porcentaje_error'];?>%</p>
										</div>
										<!-- Respuestas  de Preguntas  -->
										<div class="col-md-offset-1 col-md-8 bg-info">
											<div class="col-md-12"><u><p><?php echo $pregxxx['enunciado'];?></p></u></div>
											<br>
											<div class="form-group">
												<?php $id=0;
												while ($respxxx = traer_registro($respuestas)){
													$id += 1; $v=''; $f='';
													$afirmacion = $respxxx['descripcion'];
													?>
											        <label class="col-md-offset-1 col-md-8 control-label"><?php echo $afirmacion;?></label>
											        <div class="col-md-3">
											        <label class="radio-inline"><input type="radio" name="<?php echo $id;?>" value="1">V</label>
											        <label class="radio-inline"><input type="radio" name="<?php echo $id;?>" value="0">F</label>
											        </div>
													<?php
												} ?>
											</div>
										</div>

									</div>
									</div>
								</div>


						</div>

			</div>
		</div>
</body>
</html>
		