
$(document).ready(function(){
	$('#tabla_personas').load('tabla.php');
    //$('#buscador').load('componentes/buscador.php');



});

$(document).ready(function(){
        $('#guardar_persona').click(function(){
          nombre=$('#nombre').val();
          apellido=$('#apellido').val();
          dni=$('#dni').val();
          f_nac=$('#f_nac').val();
          telefono=$('#telefono').val();
          id_tipo=$('#id_tipo').val();
          email=$('#email').val();
          domicilio=$('#domicilio').val();
          provincia=$('#provincia').val();
          ciudad=$('#ciudad').val();
          cod_postal=$('#cod_postal').val();
          //alert(f_nac);
           agregardatos(nombre,apellido,dni,f_nac,telefono,email,id_tipo,domicilio,provincia,ciudad,cod_postal);
});
        $('#editar_persona').click(function(){
          id=$('#editarpersona').val();
          nombre=$('#nombreE').val();
          apellido=$('#apellidoE').val();
          dni=$('#dniE').val();
          f_nac=$('#f_nacE').val();
          telefono=$('#telefonoE').val();
          id_tipo=$('#id_tipoE').val();
          email=$('#emailE').val();
          domicilio=$('#domicilioE').val();
          provincia=$('#provinciaE').val();
          ciudad=$('#ciudadE').val();
          cod_postal=$('#cod_postalE').val();
          actualizarDatos(id,nombre,apellido,dni,f_nac,telefono,email,id_tipo,domicilio,provincia,ciudad,cod_postal)
          
});

});
 function CargarDatosmod(id){
    //alert(id)
    
       $.ajax({
                    type:"post",
                    url:'personas_base.php?tarea=CargarModal',
                    data:"id=" + id,
                    success:function(response){
                    	
                      //alert(response);

                      datos=JSON.parse(response);          
                      //alert(datos);
                    $('#editarpersonaid').val(datos['idpersona']);
                    $('#nombreE').val(datos['nombre']);
                    $('#apellidoE').val(datos['apellido']);
                    $('#dniE').val(datos['dni']);
                    $('#f_nacE').val(datos['f_nac']);
                    $('#domicilioE').val(datos['domicilio']);
                    $('#telefonoE').val(datos['telefono']);
                    $('#emailE').val(datos['email']);
                    $('#cod_postalE').val(datos['codpostal']);
                    $('#id_tipoE').val(datos['tipo']);
                    }

    });
 }

 function agregardatos(nombre,apellido,dni,f_nac,telefono,email,id_tipo,domicilio,provincia,ciudad,cod_postal){

 	cadena="nombre=" + nombre + 
 			"&apellido=" + apellido +
			"&dni=" + dni +
			"&f_nac=" + f_nac +
			"&telefono=" + telefono +
			"&email=" + email +
			"&id_tipo=" + id_tipo +
			"&domicilio=" + domicilio +
			"&provincia=" + provincia +
			"&ciudad=" + ciudad +
			"&cod_postal=" + cod_postal
			;

 	$.ajax({
 		type:"post",
 		url:'personas_base.php?tarea=Agregar',
 		data: $("#agregarpersona").serialize(), ///POR ESTA MIERDA NO ANDABA
 		//data:cadena,
 		success:function(r){
 			console.log('Resultado?: '+r);
 			if(r==1){
 				$('#tabla_personas').load('tabla.php');
 				alert("agregado con exito :)");
 			}else{
 				alert("Fallo el servidor :(");
 				alert(r);
 			}
 		}
 	});

 }


function actualizarDatos(id,nombre,apellido,dni,f_nac,telefono,email,id_tipo,domicilio,provincia,ciudad,cod_postal){
                cadena="id="+ id +
                      "nombre=" + nombre + 
                      "&apellido=" + apellido +
                      "&dni=" + dni +
                      "&f_nac=" + f_nac +
                      "&telefono=" + telefono +
                      "&email=" + email +
                      "&id_tipo=" + id_tipo +
                      "&domicilio=" + domicilio +
                      "&provincia=" + provincia +
                      "&ciudad=" + ciudad +
                      "&cod_postal=" + cod_postal
                      ;
          
          $.ajax({ 
          type:"post",
          data:$("#editarpersona").serialize(),
           url:"personas_base.php?tarea=Actualizar",
          success:function(r){
                if(r==1){
                alert("agregado con exito :)"+r);
                $('#tabla_personas').load('tabla.php');
                
                }else{
                alert("Fallo el servidor :("+r);
                }
            }
          });
}