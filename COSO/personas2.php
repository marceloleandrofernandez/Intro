<?php
 include_once("head.php");
  ?>
<div class="container"></div>
<script type="text/javascript" src="personas.js"></script> 

<?php //include("templates/modper.php") ?>
<div class="modal fade" id="modalpersonas" tabindex="-1" role="dialog">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Alta Persona</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <!-- <p>Modal body text goes here.</p> -->
           
        <form id="agregarpersona"  >  
        <div class="form-row align-items-center" >
          <div class="form-group col-md-6">
            <label for="inputEmail4">Nombre</label>
            <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombre">
          </div>
          <div class="form-group col-md-6">
            <label for="inputPassword4">Apellido</label>
            <input type="text" class="form-control" name="apellido" id="apellido" placeholder="Apellido">
          </div>
          <div class="form-group col-md-6">
            <label for="inputEmail4">DNI</label>
            <input type="text" class="form-control" name="dni" id="dni" placeholder="DNI">
          </div>
          <div class="form-group col-md-6">
            <label for="inputPassword4">Fecha Nacimiento</label>
            <input type="date" class="form-control" name="f_nac" id="f_nac" placeholder="Fecha">
          </div>
          <div class="form-group col-md-6">
            <label for="inputEmail4">Telefono</label>
            <input type="text" class="form-control" name="telefono" id="telefono" placeholder="xxx-xxxxxxx">
          </div>
          <div class="form-group col-md-6">
            <label for="inputPassword4">Tipo Persona</label>
            <select  id="id_tipo" name="id_tipo" class="form-control">
              <option  selected>Elegir</option>
               
              <?php 
                  include_once('/db/db.php');
                  $db = new BaseDatos();
                  $conexion=$db->conectar();
                  $registros = mysqli_query($conexion, 'Select id_tipo, descripcion from tipo_persona')or die('Problemas en la query: '.mysqli_error($conexion));
                  while($row = mysqli_fetch_array($registros)){
                          echo "<option value =".$row['id_tipo']." > ".$row['descripcion']."</option>";
                  }

                ?> 

            </select>
          </div>
        </div>
        <div class="form-group">
          <label for="inputAddress">Email</label>
          <input type="email" class="form-control" name="email" id="email" placeholder="Ingrese Correo">
        </div>
        <div class="form-group">
          <label for="inputAddress2">Direccion</label>
          <input type="text" class="form-control" name="domicilio" id="domicilio" placeholder="1234 Calle Principal">
        </div>
        <div class="form-row">
          <div class="form-group col-md-4">
            <label for="inputCity">Provincia</label>
            <input type="text" class="form-control" name="provincia" id="provincia">
          </div>
          <div class="form-group col-md-4">
            <label for="inputState">Ciudad</label>
            <input type="text" class="form-control" name="ciudad" id="ciudad">
          </div>
          <div class="form-group col-md-4">
            <label for="inputZip">Codigo Postal</label>
            <input type="text" class="form-control" name="cod_postal" id="cod_postal">
          </div>
        </div>
        <div class="form-group">
          
        </div>
        <button  type="button" id="guardar_persona" class="btn btn-dark"><i class="fa fa-save"></i>&nbsp;Guardar</button>
      </form>
          </div>
          <!-- <div class="modal-footer">
            <button type="button" class="btn btn-primary">Save changes</button>
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          </div> -->
        </div>
      </div>
    </div>
<?php //include("templates/editarpersona.php") ?>

<div class="modal fade" id="modaleditarpersonas" tabindex="-1" role="dialog">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Editar Persona</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <!-- <p>Modal body text goes here.</p> -->
            
            <form id="editarpersona">
        <div class="form-row align-items-center" >
          <div class="form-group col-md-6">
            <input type="hidden" id="editarpersonaid" name="editarpersonaid" placeholder="id">

            <label for="inputEmail4">Nombre</label>
            <input type="text" class="form-control" name="nombreE" id="nombreE" placeholder="Nombre">
          </div>

        
          
          <div class="form-group col-md-6">
            <label for="inputPassword4">Apellido</label>
            <input type="text" class="form-control" name="apellidoE" id="apellidoE" placeholder="Apellido">
          </div>
          <div class="form-group col-md-6">
            <label for="inputEmail4">DNI</label>
            <input type="text" class="form-control" name="dniE" id="dniE" placeholder="DNI">
          </div>
          <div class="form-group col-md-6">
            <label for="inputPassword4">Fecha Nacimiento</label>
            <input type="date" class="form-control" name="f_nacE" id="f_nacE"  placeholder="Fecha">
          </div>
          <div class="form-group col-md-6">
            <label for="inputEmail4">Telefono</label>
            <input type="text" class="form-control" name="telefonoE" id="telefonoE" placeholder="xxx-xxxxxxx">
          </div>
          <div class="form-group col-md-6">
            <label for="inputPassword4">Tipo Persona</label>
            <select name="id_tipoE" id="id_tipoE" class="form-control">
              <option selected>Elegir</option>
               
              <?php 
                  include_once('/db/db.php');
                  $db = new BaseDatos();
                  $conexion=$db->conectar();
                  $registros = mysqli_query($conexion, 'Select id_tipo, descripcion from tipo_persona')or die('Problemas en la query: '.mysqli_error($conexion));
                  while($row = mysqli_fetch_array($registros)){
                          echo "<option value =".$row['id_tipo']." > ".$row['descripcion']."</option>";
                  }

                ?> 

            </select>
          </div>
        </div>
        <div class="form-group">
          <label for="inputAddress">Email</label>
          <input type="email" class="form-control" name="emailE" id="emailE" placeholder="Ingrese Correo">
        </div>
        <div class="form-group">
          <label for="inputAddress2">Direccion</label>
          <input type="text" class="form-control" name="domicilioE" id="domicilioE" placeholder="1234 Calle Principal">
        </div>
        <div class="form-row">
          <div class="form-group col-md-4">
            <label for="inputCity">Provincia</label>
            <input type="text" class="form-control" name="provinciaE" id="provinciaE">
          </div>
          <div class="form-group col-md-4">
            <label for="inputState">Ciudad</label>
            <input type="text" class="form-control" name="ciudadE" id="ciudadE">
          </div>
          <div class="form-group col-md-4">
            <label for="inputZip">Codigo Postal</label>
            <input type="text" class="form-control" name="cod_postalE" id="cod_postalE">
          </div>
        </div>
        <div class="form-group">
          
        </div>
        <button type="button" class="btn btn-dark" id="editar_persona"><i class="fa fa-save"></i>&nbsp;Guardar</button>
      </form>
          </div>
          <!-- <div class="modal-footer">
            <button type="button" class="btn btn-primary">Save changes</button>
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          </div> -->
        </div>
      </div>
    </div>

<div class="container-fluid">
            <div class="card ">
              <div class="card-header">
              <div class="row">
                  <div class="col-sm-4 text-left">
                            Personas
                  </div>
                  <div class="col-sm-4 text-center">
                            One of three columns
                  </div>
                  <div class="col-sm-4 text-right">
                            <a class="btn btn-dark" href="#" data-toggle='modal' data-target='#modalpersonas' role="button"><i class="fas fa-plus-square"></i>&nbsp;Agregar Persona</a>
                  </div>
                </div>
              </div>

              <div class="card-body">
              <div id="tabla_personas"></div>
              <?php //require("tabla.php") ?>
                
              </div>
              <div class="card-footer text-muted">
                2 days ago
              </div>
            </div>

</div>