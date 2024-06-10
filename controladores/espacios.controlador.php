<?php


class ControladorEspacios{

	/*=============================================
	            REGISTRO DE ESPACIO            
	=============================================*/
	
	static public function ctrCrearEspacio(){

		if (isset($_POST["nuevoEspacio"])) {
			
				
				$tabla = "espacios";

				$datos = array("nombre" => $_POST["nuevoEspacio"]);

				$respuesta = ModeloEspacios::mdlIngresarEspacio($tabla, $datos);

				if ($respuesta == "ok") {
					
					echo '<script>

					swal({

						type: "success",
						title: "El espacio ha sido creado correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false							

					}).then((result)=>{

						if(result.value){

							window.location = "espacios";
							
							}

						});

				</script>';

				

			}else{

				echo '<script>

					swal({

						type: "error",
						title: "El espacio no puede ir vacío",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false							

					}).then((result)=>{

						if(result.value){

							window.location = "espacios";
							
							}

						})

				</script>';

			}
		}

	}


		/*=============================================
        				MOSTRAR ESPACIOS            
		=============================================*/

		static public function ctrMostrarEspacios($item, $valor){

			$tabla = "espacios";

			$respuesta = ModeloEspacios::mdlMostrarEspacios($tabla, $item, $valor);

			return $respuesta;
		}


		/*=============================================
						EDITAR ESPACIO
		=============================================*/

		static public function ctrEditarEspacio(){

			if (isset($_POST["editarEspacio"])) {
				
				if (preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ. \/]+$/', $_POST["editarEspacio"])) {
					
					$tabla = "espacios";

					$datos = array("nombre" => $_POST["editarEspacio"], "id_espacio" => $_POST["idEspacio"]);

					$respuesta = ModeloEspacios::mdlEditarEspacio($tabla, $datos);

					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El espacio ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "espacios";										
								}
							})

					</script>';

					}

				}else{

					echo '<script>

						swal({
							type: "error",
							title: "El espacio no puede ir vacío o llevar caracteres especiales",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "espacios";										
								}
							})

					</script>';
				}
			}
		}


		/*=============================================
					BORRAR ESPACIO
		=============================================*/

		static public function ctrBorrarEspacio(){

			if (isset($_GET["idEspacio"])) {
				
				$tabla = "espacios";
				$datos = $_GET["idEspacio"];

				$respuesta = ModeloEspacios::mdlBorrarEspacio($tabla, $datos);

				if ($respuesta == "ok") {
					
					echo '<script>

						swal({
							type: "success",
							title: "El espacio ha sido borrado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result) => {

								if(result.value){

									window.location = "espacios";
								}
							})

					</script>';
				}
			}
		}

}