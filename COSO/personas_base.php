
<?php 
require('db/db.php');
$db = new BaseDatos();
$con=$db->conectar();


if ($_REQUEST['tarea']==="Agregar") {

	 $nombre=$_POST['nombre'];
     $apellido=$_POST['apellido'];
     $dni=$_POST['dni'];
     $f_nac=$_POST['f_nac'];
     $domicilio=$_POST['domicilio'];
     $telefono=$_POST['telefono'];
     $email=$_POST['email'];
     $cod_postal=$_POST['cod_postal'];
     $id_tipo=$_POST['id_tipo'];
     $provincia=$_POST['provincia'];
     $ciudad=$_POST['ciudad'];
     //echo $nombre, $apellido, $dni, $f_nac,$domicilio,$telefono,$email,$cod_postal,$id_tipo; 
		$sql = "INSERT INTO personas (nombre, apellido, dni, f_nac, domicilio, telefono, email, codpostal, tipo)
				VALUES ('$nombre', ' $apellido', $dni,'$f_nac','$domicilio',' $telefono','$email',$cod_postal,$id_tipo)";

				echo $result=mysqli_query($con,$sql);
				return $result;		

	}elseif ($_REQUEST['tarea']==="CargarModal") {
			$id=$_REQUEST['id'];
			$sql="SELECT idpersona,
							nombre,
							apellido,
							dni,
							f_nac,
							domicilio,
							telefono,
							email,
							codpostal,
							tipo
					from personas 
					where idpersona='$id'";
			$result=mysqli_query($con,$sql);
			$ver=mysqli_fetch_row($result);

			$datos=array(
				'idpersona' => $ver[0],
				'nombre' 	=> $ver[1],
				'apellido' 	=> $ver[2],
				'dni' 		=> $ver[3],
				'f_nac' 	=> $ver[4],
				'domicilio'	=> $ver[5],
				'telefono'	=> $ver[6],
				'email' 	=> $ver[7],
				'codpostal' => $ver[8],
				'tipo' 		=> $ver[9]
				);
			echo  json_encode($datos);

	}elseif ($_REQUEST['tarea']==="Actualizar") {
					  	$id=$_POST['editarpersonaid'];
					  	$nombre=$_POST['nombreE'];
					  	$apellido=$_POST['apellidoE'];
					  	$dni=$_POST['dniE'];
					  	$f_nac=$_POST['f_nacE'];
					  	$telefono=$_POST['telefonoE'];
					  	$id_tipo=$_POST['id_tipoE'];
					  	$email=$_POST['emailE'];
					  	$domicilio=$_POST['domicilioE'];
					  	$cod_postal=$_POST['cod_postalE'];
					  	
					  	$provincia=$_POST['provinciaE'];
					  	$ciudad=$_POST['ciudadE'];
					  	//echo $id, $nombre,$f_nac;
			/*$sql="UPDATE `personas` SET 
											`nombre`='$nombre',
											`apellido`='$apellido',
											`dni`='$dni',
											`f_nac`='$f_nac',
											`domicilio`='$domicilio',
											`telefono`='$telefono',
											`email`='$email',
											`codpostal`=$cod_postal,
											`tipo`=$id_tipo 
											WHERE idpersona='$id'";*/
		  	$sql="UPDATE personas SET 	nombre	= '$nombre',
		  								apellido = '$apellido',
		  								dni	= '$dni',
		  							 	f_nac = '$f_nac',
		  							 	domicilio = '$domicilio',
		  							 	telefono = '$telefono',
		  							 	email = '$email',
		  							 	codpostal = $cod_postal,
		  							 	tipo = $id_tipo 
		  							 	WHERE idpersona = '$id'";
		  	//$sql=mysqli_real_escape_string($con,$sql);
		  	echo mysqli_query($con,$sql)or die(mysqli_error($con));


	}elseif ($_REQUEST['tarea']==="Eliminar") {
			$id=$_REQUEST['id'];
			$sql="DELETE from personas where idpersona='$id'";
			echo mysqli_query($con,$sql)or die(mysqli_error($con));
	}












































// $id = 10;	
// 						$sql="SELECT idpersona,
// 									 nombre,
// 									 apellido,
// 									dni,
// 									f_nac,
// 									domicilio,
// 									telefono,
// 									email,
// 									codpostal,
// 									tipo
// 					from personas 
// 					where idpersona='$id'";
// 			$result=mysqli_query($con,$sql);
// 			$ver=mysqli_fetch_row($result);

// 			$datos=array(
// 				'idpersona' => $ver[0],
// 				'nombre' 	=> $ver[1],
// 				'apellido' 	=> $ver[2],
// 				'dni' 		=> $ver[3],
// 				'f_nac' 	=> $ver[4],
// 				'domicilio'	=> $ver[5],
// 				'telefono'	=> $ver[6],
// 				'email' 	=> $ver[7],
// 				'codpostal' => $ver[8],
// 				'tipo' 		=> $ver[9]
// 				);

// 			//return  
// 			print_r($datos) ;
			
			
?>