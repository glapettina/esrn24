<?php

	require_once "../controladores/espacios.controlador.php";
	require_once "../modelos/espacios.modelo.php";

	class AjaxEspacios{

		/*=============================================
						EDITAR ESPACIO           
		=============================================*/

		public $idEspacio;

		public function ajaxEditarEspacio(){

			$item = "id_espacio";
			$valor = $this->idEspacio;

			$respuesta = ControladorEspacios::ctrMostrarEspacios($item, $valor);

			echo json_encode($respuesta);

		}		

		/*=============================================
						ACTIVAR ESPACIO
		=============================================*/

		public $activarEspacio;
		public $activarId;

		public function ajaxActivarEspacio(){

			$tabla = "espacios";

			$item1 = "estado";
			$valor1 = $this->activarEspacio;

			$item2 = "id_espacio";
			$valor2 = $this->activarId;

			$respuesta = ModeloEspacios::mdlActualizarEspacio($tabla, $item1, $valor1, $item2, $valor2);

		}

	}

		/*=============================================
						ACTIVAR ESPACIO
		=============================================*/

		if (isset($_POST["activarEspacio"])) {
			
			$activarEspacio = new Ajaxespacios();
			$activarEspacio -> activarEspacio = $_POST["activarEspacio"];
			$activarEspacio -> activarId = $_POST["activarId"];
			$activarEspacio -> ajaxActivarEspacio();

		}


		/*=============================================
						EDITAR ESPACIO          
		=============================================*/

		if (isset($_POST["idEspacio"])) {
			
			$espacio = new AjaxEspacios();
			$espacio -> idEspacio = $_POST["idEspacio"];
			$espacio -> ajaxEditarEspacio();
		}