<?php

	class ControladorInformes{


		/*=============================================
		MOSTRAR INFORMES CICLO BÁSICO            
		=============================================*/		

		static public function ctrMostrarInformes($item, $valor, $tabla, $periodo, $verifica){
			

			$respuesta = ModeloInformes::mdlMostrarInformes($item, $valor, $tabla, $periodo, $verifica);

			return $respuesta;

			//var_dump($respuesta);

		}

		/*=============================================
		MOSTRAR INFORMES ORIENTACIÓN            
		=============================================*/		

		static public function ctrMostrarInformesOrientacion($item, $valor1, $valor2, $valor3, $valor4, $tabla, $periodo, $modalidad, $verifica){


			if ($valor4 == 0) {
				
				$respuesta = ModeloInformes::mdlMostrarInformesOrientacion($item, $valor1, $valor2, $valor3, $valor4, $tabla, $periodo, $modalidad, $verifica);
			}else{

				$respuesta = ModeloInformes::mdlMostrarInformesOrientacion($item, $valor1, $valor2, $valor3, $valor4, $tabla, $periodo, $modalidad, $verifica);

			}
			

			

			return $respuesta;

			//var_dump($periodo);

		

		}


		/*=============================================
		COPIAR SABERES CIENTIFICA           
		=============================================*/	

		static public function ctrCopiarSaberesCientifica($tabla, $curso, $ncurso, $periodo){

				if (isset($_POST["copiaSaberesCientifica"])) {
								

					$datos = array("saberes_cientifica" => $_POST["copiaSaberesCientifica"], "id_curso" => $ncurso);


					$respuesta = ModeloInformes::mdlCopiarSaberesCientifica($tabla, $curso, $datos, $periodo);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES SOCIALES           
		=============================================*/	

		static public function ctrCopiarSaberesSociales($tabla, $curso, $ncurso){

				if (isset($_POST["copiaSaberesSociales"])) {
								

					$datos = array("saberes_sociales" => $_POST["copiaSaberesSociales"], "id_curso" => $ncurso);


					$respuesta = ModeloInformes::mdlCopiarSaberesSociales($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES LENGUA           
		=============================================*/	

		static public function ctrCopiarSaberesLengua($tabla, $curso, $ncurso){

				if (isset($_POST["copiaSaberesLengua"])) {
								

					$datos = array("saberes_lengua" => $_POST["copiaSaberesLengua"], "id_curso" => $ncurso);


					$respuesta = ModeloInformes::mdlCopiarSaberesLengua($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES MATEMATICA           
		=============================================*/	

		static public function ctrCopiarSaberesMatematica($tabla, $curso, $ncurso){

				if (isset($_POST["copiaSaberesMatematica"])) {
								

					$datos = array("saberes_matematica" => $_POST["copiaSaberesMatematica"], "id_curso" => $ncurso);


					$respuesta = ModeloInformes::mdlCopiarSaberesMatematica($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES INGLES           
		=============================================*/	

		static public function ctrCopiarSaberesIngles($tabla, $curso, $ncurso){

				if (isset($_POST["copiaSaberesIngles"])) {
								

					$datos = array("saberes_ingles" => $_POST["copiaSaberesIngles"], "id_curso" => $ncurso);


					$respuesta = ModeloInformes::mdlCopiarSaberesIngles($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES EDUCACIÓN FÍSICA           
		=============================================*/	

		static public function ctrCopiarSaberesFisica($tabla, $curso, $ncurso){

				if (isset($_POST["copiaSaberesFisica"])) {
								

					$datos = array("saberes_fisica" => $_POST["copiaSaberesFisica"], "id_curso" => $ncurso);


					$respuesta = ModeloInformes::mdlCopiarSaberesFisica($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES EDUCACIÓN ARTÍSTICA           
		=============================================*/	

		static public function ctrCopiarSaberesArtistica($tabla, $curso, $ncurso, $periodo){

				if (isset($_POST["copiaSaberesArtistica"])) {
								

					$datos = array("saberes_artistica" => $_POST["copiaSaberesArtistica"], "id_curso" => $ncurso);


					$respuesta = ModeloInformes::mdlCopiarSaberesArtistica($tabla, $curso, $datos, $periodo);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES DESARROLLO           
		=============================================*/	

		static public function ctrCopiarSaberesDesarrollo($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $periodo){

				if (isset($_POST["copiaSaberesDesarrollo"])) {
								

					$datos = array("saberes_desarrollo" => $_POST["copiaSaberesDesarrollo"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3);


					$respuesta = ModeloInformes::mdlCopiarSaberesDesarrollo($tabla, $curso, $datos, $periodo);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES INTRODUCCION           
		=============================================*/	

		static public function ctrCopiarSaberesIntroduccion($tabla, $curso, $ncurso1, $ncurso2, $ncurso3){

				if (isset($_POST["copiaSaberesIntroduccion"])) {
								

					$datos = array("saberes_introduccion" => $_POST["copiaSaberesIntroduccion"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3);


					$respuesta = ModeloInformes::mdlCopiarSaberesIntroduccion($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}



		/*=============================================
		COPIAR SABERES AMBIENTE           
		=============================================*/	

		static public function ctrCopiarSaberesAmbiente($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

				if (isset($_POST["copiaSaberesAmbiente"])) {
								

					$datos = array("saberes_ambiente" => $_POST["copiaSaberesAmbiente"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


					$respuesta = ModeloInformes::mdlCopiarSaberesAmbiente($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES GENERACION (TURISMO)           
		=============================================*/	

		static public function ctrCopiarSaberesGeneracion($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

				if (isset($_POST["copiaSaberesGeneracion"])) {
								

					$datos = array("saberes_generacion" => $_POST["copiaSaberesGeneracion"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


					$respuesta = ModeloInformes::mdlCopiarSaberesGeneracion($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES PRODUCCION (TURISMO)           
		=============================================*/	

		static public function ctrCopiarSaberesProduccion($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

				if (isset($_POST["copiaSaberesProduccion"])) {
								

					$datos = array("saberes_produccion" => $_POST["copiaSaberesProduccion"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


					$respuesta = ModeloInformes::mdlCopiarSaberesProduccion($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}

		/*=============================================
		COPIAR SABERES BIOTECNOLOGÍA (CIENCIAS NATURALES)           
		=============================================*/	

		static public function ctrCopiarSaberesBiotecnologia($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

				if (isset($_POST["copiaSaberesBiotecnologia"])) {
								

					$datos = array("saberes_biotecnologia" => $_POST["copiaSaberesBiotecnologia"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


					$respuesta = ModeloInformes::mdlCopiarSaberesBiotecnologia($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}



		/*=============================================
		COPIAR SABERES PROYECTO (TURISMO)           
		=============================================*/	

		static public function ctrCopiarSaberesProyecto($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

				if (isset($_POST["copiaSaberesProyecto"])) {
								

					$datos = array("saberes_proyecto" => $_POST["copiaSaberesProyecto"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


					$respuesta = ModeloInformes::mdlCopiarSaberesProyecto($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}

		/*=============================================
		COPIAR SABERES TALLER (TURISMO)           
		=============================================*/	

		static public function ctrCopiarSaberesTaller($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

				if (isset($_POST["copiaSaberesTaller"])) {
								

					$datos = array("saberes_taller" => $_POST["copiaSaberesTaller"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


					$respuesta = ModeloInformes::mdlCopiarSaberesTaller($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}




		/*=============================================
		COPIAR SABERES QUIMICA (CIENCIAS NATURALES)           
		=============================================*/	

		static public function ctrCopiarSaberesQuimica($tabla, $curso, $ncurso1, $ncurso2, $ncurso3){

				if (isset($_POST["copiaSaberesQuimica"])) {
								

					$datos = array("saberes_quimica" => $_POST["copiaSaberesQuimica"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3);


					$respuesta = ModeloInformes::mdlCopiarSaberesQuimica($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES SEMINARIO 3 (EDUCACION)          
		=============================================*/	

		static public function ctrCopiarSaberesSeminario3($tabla, $curso, $ncurso1, $ncurso2, $ncurso3){

				if (isset($_POST["copiaSaberesSeminario3"])) {
								

					$datos = array("saberes_seminario3" => $_POST["copiaSaberesSeminario3"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3);


					$respuesta = ModeloInformes::mdlCopiarSaberesSeminario3($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES TIERRA 4 (CIENCIAS NATURALES)           
		=============================================*/	

		static public function ctrCopiarSaberesTierra4($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

				if (isset($_POST["copiaSaberesTierra4"])) {
								

					$datos = array("saberes_tierra4" => $_POST["copiaSaberesTierra4"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


					$respuesta = ModeloInformes::mdlCopiarSaberesTierra4($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES FISICA 4 (CIENCIAS NATURALES)           
		=============================================*/	

		static public function ctrCopiarSaberesFisica4($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

			if (isset($_POST["copiaSaberesFisica4"])) {
							

				$datos = array("saberes_fisica4" => $_POST["copiaSaberesFisica4"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


				$respuesta = ModeloInformes::mdlCopiarSaberesFisica4($tabla, $curso, $datos);


				if ($respuesta == "ok") {
					
					echo '<script>

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}

		/*=============================================
		COPIAR SABERES PEDAGOGÍA 4 (EDUCACIÓN)           
		=============================================*/	

		static public function ctrCopiarSaberesPedagogia($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

			if (isset($_POST["copiaSaberesPedagogia"])) {
							

				$datos = array("saberes_pedagogia" => $_POST["copiaSaberesPedagogia"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


				$respuesta = ModeloInformes::mdlCopiarSaberesPedagogia($tabla, $curso, $datos);


				if ($respuesta == "ok") {
					
					echo '<script>

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}

		/*=============================================
		COPIAR SABERES PSICOLOGÍA 4 (EDUCACIÓN)           
		=============================================*/	

		static public function ctrCopiarSaberesPsicologia($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

			if (isset($_POST["copiaSaberesPsicologia"])) {
							

				$datos = array("saberes_psicologia" => $_POST["copiaSaberesPsicologia"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


				$respuesta = ModeloInformes::mdlCopiarSaberesPsicologia($tabla, $curso, $datos);


				if ($respuesta == "ok") {
					
					echo '<script>

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}

		/*=============================================
		COPIAR SABERES SEMINARIO 4 (EDUCACIÓN)           
		=============================================*/	

		static public function ctrCopiarSaberesSeminario4($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

			if (isset($_POST["copiaSaberesSeminario4"])) {
							

				$datos = array("saberes_seminario4" => $_POST["copiaSaberesSeminario4"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


				$respuesta = ModeloInformes::mdlCopiarSaberesSeminario4($tabla, $curso, $datos);


				if ($respuesta == "ok") {
					
					echo '<script>

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}


		/*=============================================
		COPIAR SABERES CONJUNTO 4 (ARTE - MUSICA)           
		=============================================*/	

		static public function ctrCopiarSaberesConjunto4($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

				if (isset($_POST["copiaSaberesConjunto4"])) {
								

					$datos = array("saberes_conjunto4" => $_POST["copiaSaberesConjunto4"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


					$respuesta = ModeloInformes::mdlCopiarSaberesConjunto4($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES VOCAL 4 (ARTE - MUSICA)           
		=============================================*/	

		static public function ctrCopiarSaberesVocal4($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

				if (isset($_POST["copiaSaberesVocal4"])) {
								

					$datos = array("saberes_vocal4" => $_POST["copiaSaberesVocal4"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


					$respuesta = ModeloInformes::mdlCopiarSaberesVocal4($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES LENGUAJE 5 (ARTE - MUSICA)           
		=============================================*/	

		static public function ctrCopiarSaberesLenguaje5($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

				if (isset($_POST["copiaSaberesLenguaje5"])) {
								

					$datos = array("saberes_lenguaje5" => $_POST["copiaSaberesLenguaje5"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


					$respuesta = ModeloInformes::mdlCopiarSaberesLenguaje5($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES MUSICA (ARTE - MUSICA)           
		=============================================*/	

		static public function ctrCopiarSaberesMusica($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

				if (isset($_POST["copiaSaberesMusica"])) {
								

					$datos = array("saberes_musica" => $_POST["copiaSaberesMusica"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


					$respuesta = ModeloInformes::mdlCopiarSaberesMusica($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES VOCAL 5 (ARTE - MUSICA)           
		=============================================*/	

		static public function ctrCopiarSaberesVocal5($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

				if (isset($_POST["copiaSaberesVocal5"])) {
								

					$datos = array("saberes_vocal5" => $_POST["copiaSaberesVocal5"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


					$respuesta = ModeloInformes::mdlCopiarSaberesVocal5($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES TECNOLOGIA (ARTE - MUSICA)           
		=============================================*/	

		static public function ctrCopiarSaberesTecnologia($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

				if (isset($_POST["copiaSaberesTecnologia"])) {
								

					$datos = array("saberes_tecnologia" => $_POST["copiaSaberesTecnologia"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


					$respuesta = ModeloInformes::mdlCopiarSaberesTecnologia($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES CONJUNTO 5 (ARTE - MUSICA)           
		=============================================*/	

		static public function ctrCopiarSaberesConjunto5($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

				if (isset($_POST["copiaSaberesConjunto5"])) {
								

					$datos = array("saberes_conjunto5" => $_POST["copiaSaberesConjunto5"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


					$respuesta = ModeloInformes::mdlCopiarSaberesConjunto5($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}



		/*=============================================
		EDITAR INFORME CIENTIFICA
		=============================================*/

		static public function ctrEditarInformeCientifica($tabla,$curso){

			if (isset($_POST["saberesCientifica"])) {
								

					$datos = array("saberes_cientifica" => $_POST["saberesCientifica"], "aprecia_cientifica" => $_POST["apreciaCientifica"], "asistencia_cientifica" => $_POST["asistenciaCientifica"], "observa_cientifica" => $_POST["observaCientifica"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeCientifica($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME SOCIALES
		=============================================*/

		static public function ctrEditarInformeSociales($tabla,$curso){

			if (isset($_POST["saberesSociales"])) {
								

					$datos = array("saberes_sociales" => $_POST["saberesSociales"], "aprecia_sociales" => $_POST["apreciaSociales"], "asistencia_sociales" => $_POST["asistenciaSociales"], "observa_sociales" => $_POST["observaSociales"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeSociales($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME LENGUA
		=============================================*/

		static public function ctrEditarInformeLengua($tabla,$curso){

			if (isset($_POST["saberesLengua"])) {
								

					$datos = array("saberes_lengua" => $_POST["saberesLengua"], "aprecia_lengua" => $_POST["apreciaLengua"], "asistencia_lengua" => $_POST["asistenciaLengua"], "observa_lengua" => $_POST["observaLengua"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeLengua($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME MATEMATICA
		=============================================*/

		static public function ctrEditarInformeMatematica($tabla,$curso){

			if (isset($_POST["saberesMatematica"])) {
								

					$datos = array("saberes_matematica" => $_POST["saberesMatematica"], "aprecia_matematica" => $_POST["apreciaMatematica"], "asistencia_matematica" => $_POST["asistenciaMatematica"], "observa_matematica" => $_POST["observaMatematica"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeMatematica($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME INGLES
		=============================================*/

		static public function ctrEditarInformeIngles($tabla,$curso){

			if (isset($_POST["saberesIngles"])) {
								

					$datos = array("saberes_ingles" => $_POST["saberesIngles"], "aprecia_ingles" => $_POST["apreciaIngles"], "asistencia_ingles" => $_POST["asistenciaIngles"], "observa_ingles" => $_POST["observaIngles"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeIngles($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME EDUCACIÓN FÍSICA
		=============================================*/

		static public function ctrEditarInformeFisica($tabla,$curso){

			if (isset($_POST["saberesFisica"])) {
								

					$datos = array("saberes_fisica" => $_POST["saberesFisica"], "aprecia_fisica" => $_POST["apreciaFisica"], "asistencia_fisica" => $_POST["asistenciaFisica"], "observa_fisica" => $_POST["observaFisica"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeFisica($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME EDUCACIÓN ARTÍSTICA
		=============================================*/

		static public function ctrEditarInformeArtistica($tabla,$curso){

			if (isset($_POST["saberesArtistica"])) {
								

					$datos = array("saberes_artistica" => $_POST["saberesArtistica"], "aprecia_artistica" => $_POST["apreciaArtistica"], "asistencia_artistica" => $_POST["asistenciaArtistica"], "observa_artistica" => $_POST["observaArtistica"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeArtistica($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME DESARROLLO (TURISMO)
		=============================================*/

		static public function ctrEditarInformeDesarrollo($tabla,$curso){

			if (isset($_POST["saberesDesarrollo"])) {
								

					$datos = array("saberes_desarrollo" => $_POST["saberesDesarrollo"], "aprecia_desarrollo" => $_POST["apreciaDesarrollo"], "asistencia_desarrollo" => $_POST["asistenciaDesarrollo"], "observa_desarrollo" => $_POST["observaDesarrollo"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeDesarrollo($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME INTRODUCCION (TURISMO)
		=============================================*/

		static public function ctrEditarInformeIntroduccion($tabla,$curso){

			if (isset($_POST["saberesIntroduccion"])) {
								

					$datos = array("saberes_introduccion" => $_POST["saberesIntroduccion"], "aprecia_introduccion" => $_POST["apreciaIntroduccion"], "asistencia_introduccion" => $_POST["asistenciaIntroduccion"], "observa_introduccion" => $_POST["observaIntroduccion"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeIntroduccion($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME AMBIENTE (TURISMO)
		=============================================*/

		static public function ctrEditarInformeAmbiente($tabla,$curso){

			if (isset($_POST["saberesAmbiente"])) {
								

					$datos = array("saberes_ambiente" => $_POST["saberesAmbiente"], "aprecia_ambiente" => $_POST["apreciaAmbiente"], "asistencia_ambiente" => $_POST["asistenciaAmbiente"], "observa_ambiente" => $_POST["observaAmbiente"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeAmbiente($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME GENERACION (TURISMO)
		=============================================*/

		static public function ctrEditarInformeGeneracion($tabla,$curso){

			if (isset($_POST["saberesGeneracion"])) {
								

					$datos = array("saberes_generacion" => $_POST["saberesGeneracion"], "aprecia_generacion" => $_POST["apreciaGeneracion"], "asistencia_generacion" => $_POST["asistenciaGeneracion"], "observa_generacion" => $_POST["observaGeneracion"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeGeneracion($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME PRODUCCION (TURISMO)
		=============================================*/

		static public function ctrEditarInformeProduccion($tabla,$curso){

			if (isset($_POST["saberesProduccion"])) {
								

					$datos = array("saberes_produccion" => $_POST["saberesProduccion"], "aprecia_produccion" => $_POST["apreciaProduccion"], "asistencia_produccion" => $_POST["asistenciaProduccion"], "observa_produccion" => $_POST["observaProduccion"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeProduccion($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}

		/*===================================================
		EDITAR INFORME BIOTECNOLOGÍA (CIENCIAS NATURALES)
		===================================================*/

		static public function ctrEditarInformeBiotecnologia($tabla,$curso){

			if (isset($_POST["saberesBiotecnologia"])) {
								

					$datos = array("saberes_biotecnologia" => $_POST["saberesBiotecnologia"], "aprecia_biotecnologia" => $_POST["apreciaBiotecnologia"], "asistencia_biotecnologia" => $_POST["asistenciaBiotecnologia"], "observa_biotecnologia" => $_POST["observaBiotecnologia"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeBiotecnologia($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME PROYECTO (TURISMO)
		=============================================*/

		static public function ctrEditarInformeProyecto($tabla,$curso){

			if (isset($_POST["saberesProyecto"])) {
								

					$datos = array("saberes_proyecto" => $_POST["saberesProyecto"], "aprecia_proyecto" => $_POST["apreciaProyecto"], "asistencia_proyecto" => $_POST["asistenciaProyecto"], "observa_proyecto" => $_POST["observaProyecto"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeProyecto($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME TALLER (TURISMO)
		=============================================*/

		static public function ctrEditarInformeTaller($tabla,$curso){

			if (isset($_POST["saberesTaller"])) {
								

					$datos = array("saberes_taller" => $_POST["saberesTaller"], "aprecia_taller" => $_POST["apreciaTaller"], "asistencia_taller" => $_POST["asistenciaTaller"], "observa_taller" => $_POST["observaTaller"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeTaller($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME QUIMICA
		=============================================*/

		static public function ctrEditarInformeQuimica($tabla,$curso){

			if (isset($_POST["saberesQuimica"])) {
								

					$datos = array("saberes_quimica" => $_POST["saberesQuimica"], "aprecia_quimica" => $_POST["apreciaQuimica"], "asistencia_quimica" => $_POST["asistenciaQuimica"], "observa_quimica" => $_POST["observaQuimica"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeQuimica($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME SEMINARIO 3
		=============================================*/

		static public function ctrEditarInformeSeminario3($tabla,$curso){

			if (isset($_POST["saberesSeminario3"])) {
								

					$datos = array("saberes_seminario3" => $_POST["saberesSeminario3"], "aprecia_seminario3" => $_POST["apreciaSeminario3"], "asistencia_seminario3" => $_POST["asistenciaSeminario3"], "observa_seminario3" => $_POST["observaSeminario3"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeSeminario3($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}



		/*=============================================
		EDITAR INFORME TIERRA 4 (CIENCIAS NATURALES)
		=============================================*/

		static public function ctrEditarInformeTierra4($tabla,$curso){

			if (isset($_POST["saberesTierra4"])) {
								

					$datos = array("saberes_tierra4" => $_POST["saberesTierra4"], "aprecia_tierra4" => $_POST["apreciaTierra4"], "asistencia_tierra4" => $_POST["asistenciaTierra4"], "observa_tierra4" => $_POST["observaTierra4"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeTierra4($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME FISICA 4 (CIENCIAS NATURALES)
		=============================================*/

		static public function ctrEditarInformeFisica4($tabla,$curso){

			if (isset($_POST["saberesFisica4"])) {
								

					$datos = array("saberes_fisica4" => $_POST["saberesFisica4"], "aprecia_fisica4" => $_POST["apreciaFisica4"], "asistencia_fisica4" => $_POST["asistenciaFisica4"], "observa_fisica4" => $_POST["observaFisica4"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeFisica4($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}

		/*=============================================
		EDITAR INFORME PEDAGOGÍA 4 (EDUCACIÓN)
		=============================================*/

		static public function ctrEditarInformePedagogia($tabla,$curso){

			if (isset($_POST["saberesPedagogia"])) {
								

					$datos = array("saberes_pedagogia" => $_POST["saberesPedagogia"], "aprecia_pedagogia" => $_POST["apreciaPedagogia"], "asistencia_pedagogia" => $_POST["asistenciaPedagogia"], "observa_pedagogia" => $_POST["observaPedagogia"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformePedagogia($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME PSICOLOGÍA 4 (EDUCACIÓN)
		=============================================*/

		static public function ctrEditarInformePsicologia($tabla,$curso){

			if (isset($_POST["saberesPsicologia"])) {
								

					$datos = array("saberes_psicologia" => $_POST["saberesPsicologia"], "aprecia_psicologia" => $_POST["apreciaPsicologia"], "asistencia_psicologia" => $_POST["asistenciaPsicologia"], "observa_psicologia" => $_POST["observaPsicologia"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformePsicologia($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}

		/*=============================================
		EDITAR INFORME SEMINARIO 4 (EDUCACIÓN)
		=============================================*/

		static public function ctrEditarInformeSeminario4($tabla,$curso){

			if (isset($_POST["saberesSeminario4"])) {
								

					$datos = array("saberes_seminario4" => $_POST["saberesSeminario4"], "aprecia_seminario4" => $_POST["apreciaSeminario4"], "asistencia_seminario4" => $_POST["asistenciaSeminario4"], "observa_seminario4" => $_POST["observaSeminario4"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeSeminario4($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME CONJUNTO 4 (ARTE - MUSICA)
		=============================================*/

		static public function ctrEditarInformeConjunto4($tabla,$curso){

			if (isset($_POST["saberesConjunto4"])) {
								

					$datos = array("saberes_conjunto4" => $_POST["saberesConjunto4"], "aprecia_conjunto4" => $_POST["apreciaConjunto4"], "asistencia_conjunto4" => $_POST["asistenciaConjunto4"], "observa_conjunto4" => $_POST["observaConjunto4"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeConjunto4($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME VOCAL 4 (ARTE - MUSICA)
		=============================================*/

		static public function ctrEditarInformeVocal4($tabla,$curso){

			if (isset($_POST["saberesVocal4"])) {
								

					$datos = array("saberes_vocal4" => $_POST["saberesVocal4"], "aprecia_vocal4" => $_POST["apreciaVocal4"], "asistencia_vocal4" => $_POST["asistenciaVocal4"], "observa_vocal4" => $_POST["observaVocal4"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeVocal4($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR LENGUAJE 5 (ARTE - MUSICA)
		=============================================*/

		static public function ctrEditarInformeLenguaje5($tabla,$curso){

			if (isset($_POST["saberesLenguaje5"])) {
								

					$datos = array("saberes_lenguaje5" => $_POST["saberesLenguaje5"], "aprecia_lenguaje5" => $_POST["apreciaLenguaje5"], "asistencia_lenguaje5" => $_POST["asistenciaLenguaje5"], "observa_lenguaje5" => $_POST["observaLenguaje5"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeLenguaje5($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR MUSICA (ARTE - MUSICA)
		=============================================*/

		static public function ctrEditarInformeMusica($tabla,$curso){

			if (isset($_POST["saberesMusica"])) {
								

					$datos = array("saberes_musica" => $_POST["saberesMusica"], "aprecia_musica" => $_POST["apreciaMusica"], "asistencia_musica" => $_POST["asistenciaMusica"], "observa_musica" => $_POST["observaMusica"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeMusica($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR VOCAL 5 (ARTE - MUSICA)
		=============================================*/

		static public function ctrEditarInformeVocal5($tabla,$curso){

			if (isset($_POST["saberesVocal5"])) {
								

					$datos = array("saberes_vocal5" => $_POST["saberesVocal5"], "aprecia_vocal5" => $_POST["apreciaVocal5"], "asistencia_vocal5" => $_POST["asistenciaVocal5"], "observa_vocal5" => $_POST["observaVocal5"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeVocal5($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR TECNOLOGIA (ARTE - MUSICA)
		=============================================*/

		static public function ctrEditarInformeTecnologia($tabla,$curso){

			if (isset($_POST["saberesTecnologia"])) {
								

					$datos = array("saberes_tecnologia" => $_POST["saberesTecnologia"], "aprecia_tecnologia" => $_POST["apreciaTecnologia"], "asistencia_tecnologia" => $_POST["asistenciaTecnologia"], "observa_tecnologia" => $_POST["observaTecnologia"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeTecnologia($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR CONJUNTO 5 (ARTE - MUSICA)
		=============================================*/

		static public function ctrEditarInformeConjunto5($tabla,$curso){

			if (isset($_POST["saberesConjunto5"])) {
								

					$datos = array("saberes_conjunto5" => $_POST["saberesConjunto5"], "aprecia_conjunto5" => $_POST["apreciaConjunto5"], "asistencia_conjunto5" => $_POST["asistenciaConjunto5"], "observa_conjunto5" => $_POST["observaConjunto5"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeConjunto5($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}

		
	}

 