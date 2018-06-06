<?php include_once("head.php"); ?>

 <script type="text/javascript" src="comunes.js"></script> 
          

<div class="table-responsive" style="width:100%">
<table id="example" class="table table-hover table-condensed text-center data-table" >
				        <thead>
				            <tr>
				                
				                <th  class="text-center">Nombre</th>
				                <th  class="text-center">Apellido</th>
				                <th  class="text-center no-ordenar">Dni</th>
				                <th  class="text-center no-ordenar">Fecha Nac</th>
				                <th  class="text-center no-ordenar">Domicilio</th>
				                <th  class="text-center no-ordenar">Telefono</th>
				                <th  class="text-center no-ordenar">Mail</th>
				                <th  class="text-center no-ordenar">Codigo Postal</th>
				                <th  class="text-center">Tipo</th>
				                <th  class="text-center no-ordenar">Modificar / Eliminar</th>
				            </tr>
				        </thead>
				        <tbody>
					        <?php include_once("db/db.php");

					        	     $db = new BaseDatos();
                  					$conexion=$db->conectar();
               						$registros = mysqli_query($conexion, 'SELECT * FROM personas INNER JOIN tipo_persona WHERE tipo_persona.id_tipo = personas.tipo' )or die('Problemas en la query: '.mysqli_error($conexion));

                  				while($row = mysqli_fetch_array($registros)){
                          						$id=$row["idpersona"];
                          		echo "<tr>
                          						
                          				<td>".$row['nombre']."</td>
                          				<td>".$row['apellido']."</td>
                          				<td>".$row['dni']."</td>
                          				<td>".$row['f_nac']."</td>
                          				<td>".$row['domicilio']."</td>
                          				<td>".$row['telefono']."</td>
                          				<td>".$row['email']."</td>
                          				<td>".$row['codpostal']."</td>
                          				<td>".$row['descripcion']."</td>
                           				<td>
                           					<a href=''  class='btn btn btn-dark fa fa-edit' title='Editar Persona' data-toggle='modal' data-target='#modaleditarpersonas' id='boton' onclick='CargarDatosmod(".$id.")'></a>
                          					<a href=''  class='btn btn btn-dark fa fa-trash' title='Borrar Persona' 
                          						id='btnBorrar' onclick='eliminarPersona(".$id.")'></a>
                          					 
                          				</td>
                          				</tr>";
                  				}
					        ?>
					        </tbody>
				</table>
				
</div>