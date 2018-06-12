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

			//$respuestas = consulta("SELECT * FROM respuesta");
			//trae examen
			$examen = consulta("SELECT * FROM examen WHERE id = $examen_id");
			$resxxx = traer_registro($examen);
			//echo $resxxx["id"], $resxxx["nombre"],$resxxx["abrir_examen"],$resxxx["cerrar_examen"],$resxxx["limite_de_tiempo"],$res//xxx["nota_aprobacion"],$resxxx["nota_decimales"],$resxxx["cantidad_preguntas"],$resxxx["correcciones"];





?>

<div class="container">
    
   			<div class="panel panel-info">
				      	<div class="panel-heading">
				      		<h4>Examen "<?php  echo $resxxx["nombre"];?>"</h4>
				      	</div>
				      	<div class="panel-body">
				      	<form id="exam" action="prueba_exam.php" method="POST">
				      			
				      	
				      		
								<div class="row">
									<div class="col-md-12">
									<div class="col-md-12">
								<?php while ($preg = traer_registro($preguntas)) { ?>	
										<!-- Pregunta -->
										<div class="col-md-3 bg-success "> 
											<h4>Pregunta Nº <?php echo $preg['id']; ?></h4>
											<p>Sin responder aún</p>
											<p>Puntaje <?php echo $preg['valor'];?></p>
											<p>Porcentaje error <?php echo $preg['porcentaje_error'];?>%</p>
										</div>
										<!-- Respuestas  de Preguntas  -->

										<div class="col-md-offset-1 col-md-8 bg-info">
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
											
											<?php
													

												}//Segundo WHILE ?>

												
										</div> <!-- bg-info -->
										</div> <!-- form-group -->

											<?php	
											} //Cierra Primer WHILE
											
											?>
											
										
									
									</div> <!--col-->
									</div> <!--col-->
								</div> <!-- Row .-->
								
							
						</div><!-- Panel body-->
						<div class="panel-footer">
							
							<button type="submit" id="coso" class="btn btn-success btn-lg btn-block ">Success</button>
						</form>	
						</div>
			</div> <!-- Panel-->
</div> <!-- Container-->
<script type="text/javascript">
// 	$('#coso').on('click',function(){

 		
// 		$.ajax({ 
// 	          type:"POST",
// 	          data:$("#exam").serialize(),
// 	          url:"prueba_exam.php",
// 	          success:function(r){
//                 if(r==1){
//                 alert("Editado con exito :)"+r);
               
                
//                 }else{
//                 alert("Fallo el servidor :("+r);
//                 }
//             }
          
//           });

// });



		
</script>