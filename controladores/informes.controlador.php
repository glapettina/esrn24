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
		COPIAR SABERES CIENCIA (CIENCIAS NATURALES)           
		=============================================*/	

		static public function ctrCopiarSaberesCiencia($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

			if (isset($_POST["copiaSaberesCiencia"])) {
							

				$datos = array("saberes_ciencia" => $_POST["copiaSaberesCiencia"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


				$respuesta = ModeloInformes::mdlCopiarSaberesCiencia($tabla, $curso, $datos);


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
		COPIAR SABERES TIERRA 5 (CIENCIAS NATURALES)           
		=============================================*/	

		static public function ctrCopiarSaberesTierra5($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

			if (isset($_POST["copiaSaberesTierra5"])) {
							

				$datos = array("saberes_tierra5" => $_POST["copiaSaberesTierra5"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


				$respuesta = ModeloInformes::mdlCopiarSaberesTierra5($tabla, $curso, $datos);


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
		COPIAR SABERES HISTORIA (EDUCACIÓN)           
		=============================================*/	

		static public function ctrCopiarSaberesHistoria($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

			if (isset($_POST["copiaSaberesHistoria"])) {
							

				$datos = array("saberes_historia" => $_POST["copiaSaberesHistoria"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


				$respuesta = ModeloInformes::mdlCopiarSaberesHistoria($tabla, $curso, $datos);


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
		COPIAR SABERES PENSAMIENTO (EDUCACIÓN)           
		=============================================*/	

		static public function ctrCopiarSaberesPensamiento($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

			if (isset($_POST["copiaSaberesPensamiento"])) {
							

				$datos = array("saberes_pensamiento" => $_POST["copiaSaberesPensamiento"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


				$respuesta = ModeloInformes::mdlCopiarSaberesPensamiento($tabla, $curso, $datos);


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
		COPIAR SABERES SOCIEDAD (EDUCACIÓN)           
		=============================================*/	

		static public function ctrCopiarSaberesSociedad($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

			if (isset($_POST["copiaSaberesSociedad"])) {
							

				$datos = array("saberes_sociedad" => $_POST["copiaSaberesSociedad"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


				$respuesta = ModeloInformes::mdlCopiarSaberesSociedad($tabla, $curso, $datos);


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
		COPIAR SABERES SOCIOLOGÍA (EDUCACIÓN)           
		=============================================*/	

		static public function ctrCopiarSaberesSociologia($tabla, $curso, $ncurso1, $ncurso2, $ncurso3, $ncurso4){

			if (isset($_POST["copiaSaberesSociologia"])) {
							

				$datos = array("saberes_sociologia" => $_POST["copiaSaberesSociologia"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2, "id_curso3" => $ncurso3, "id_curso4" => $ncurso4);


				$respuesta = ModeloInformes::mdlCopiarSaberesSociologia($tabla, $curso, $datos);


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
		COPIAR SABERES TALLER (EDUCACIÓN)           
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
		COPIAR SABERES EVE           
		=============================================*/	

		static public function ctrCopiarSaberesEve($tabla, $curso, $ncurso, $periodo){

			if (isset($_POST["copiaSaberesEve"])) {
							

				$datos = array("saberes_eve" => $_POST["copiaSaberesEve"], "id_curso" => $ncurso);


				$respuesta = ModeloInformes::mdlCopiarSaberesEve($tabla, $curso, $datos, $periodo);


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


		/*===================================================
		EDITAR INFORME CIENCIA (CIENCIAS NATURALES)
		===================================================*/

		static public function ctrEditarInformeCiencia($tabla,$curso){

			if (isset($_POST["saberesCiencia"])) {
								

					$datos = array("saberes_ciencia" => $_POST["saberesCiencia"], "aprecia_ciencia" => $_POST["apreciaCiencia"], "asistencia_ciencia" => $_POST["asistenciaCiencia"], "observa_ciencia" => $_POST["observaCiencia"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeCiencia($tabla, $curso, $datos);


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
		EDITAR INFORME TIERRA 5 (CIENCIAS NATURALES)
		===================================================*/

		static public function ctrEditarInformeTierra5($tabla,$curso){

			if (isset($_POST["saberesTierra5"])) {
								

					$datos = array("saberes_tierra5" => $_POST["saberesTierra5"], "aprecia_tierra5" => $_POST["apreciaTierra5"], "asistencia_tierra5" => $_POST["asistenciaTierra5"], "observa_tierra5" => $_POST["observaTierra5"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeTierra5($tabla, $curso, $datos);


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
		EDITAR INFORME HISTORIA (EDUCACIÓN)
		===================================================*/

		static public function ctrEditarInformeHistoria($tabla,$curso){

			if (isset($_POST["saberesHistoria"])) {
								

					$datos = array("saberes_historia" => $_POST["saberesHistoria"], "aprecia_historia" => $_POST["apreciaHistoria"], "asistencia_historia" => $_POST["asistenciaHistoria"], "observa_historia" => $_POST["observaHistoria"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeHistoria($tabla, $curso, $datos);


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
		EDITAR INFORME PENSAMIENTO (EDUCACIÓN)
		===================================================*/

		static public function ctrEditarInformePensamiento($tabla,$curso){

			if (isset($_POST["saberesPensamiento"])) {
								

					$datos = array("saberes_pensamiento" => $_POST["saberesPensamiento"], "aprecia_pensamiento" => $_POST["apreciaPensamiento"], "asistencia_pensamiento" => $_POST["asistenciaPensamiento"], "observa_pensamiento" => $_POST["observaPensamiento"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformePensamiento($tabla, $curso, $datos);


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
		EDITAR INFORME SOCIEDAD (EDUCACIÓN)
		===================================================*/

		static public function ctrEditarInformeSociedad($tabla,$curso){

			if (isset($_POST["saberesSociedad"])) {
								

					$datos = array("saberes_sociedad" => $_POST["saberesSociedad"], "aprecia_sociedad" => $_POST["apreciaSociedad"], "asistencia_sociedad" => $_POST["asistenciaSociedad"], "observa_sociedad" => $_POST["observaSociedad"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeSociedad($tabla, $curso, $datos);


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
		EDITAR INFORME SOCIOLOGÍA (EDUCACIÓN)
		===================================================*/

		static public function ctrEditarInformeSociologia($tabla,$curso){

			if (isset($_POST["saberesSociologia"])) {
								

					$datos = array("saberes_sociologia" => $_POST["saberesSociologia"], "aprecia_sociologia" => $_POST["apreciaSociologia"], "asistencia_sociologia" => $_POST["asistenciaSociologia"], "observa_sociologia" => $_POST["observaSociologia"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeSociologia($tabla, $curso, $datos);


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
		EDITAR INFORME TALLER (EDUCACIÓN)
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
		EDITAR INFORME QUIMICA (CIENCIAS NATURALES)
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
		EDITAR INFORME SEMINARIO 3 (EDUCACIÓN)
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
		EDITAR INFORME EVE
		=============================================*/

		static public function ctrEditarInformeEve($tabla,$curso){

			if (isset($_POST["saberesEve"])) {
								

					$datos = array("saberes_eve" => $_POST["saberesEve"], "aprecia_eve" => $_POST["apreciaEve"], "asistencia_eve" => $_POST["asistenciaEve"], "observa_eve" => $_POST["observaEve"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeEve($tabla, $curso, $datos);


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

 