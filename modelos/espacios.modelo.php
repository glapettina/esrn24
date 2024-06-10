<?php


	require_once "conexion.php";

	class ModeloEspacios{


		/*=============================================
	                     CREAR ESPACIO           
		=============================================*/


		static public function mdlIngresarEspacio($tabla, $datos){

			$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(nombre) VALUES (:nombre)");

			$stmt->bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);

			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
	                    MOSTRAR ESPACIOS            
		=============================================*/

		static public function mdlMostrarEspacios($tabla, $item, $valor){

			if ($item != null) {
				
				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");

				$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

				$stmt -> execute();

				return $stmt -> fetch();

			}else{

				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

				$stmt -> execute();

				return $stmt -> fetchAll();
			}

			$stmt -> close();
			$stmt = null;

		}


		/*=============================================
	    			ACTUALIZAR ESPACIO            
		=============================================*/

		static public function mdlActualizarEspacio($tabla, $item1, $valor1, $item2, $valor2){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET $item1 = :$item1 WHERE $item2 = :$item2");

			$stmt -> bindParam(":".$item1, $valor1, PDO::PARAM_STR);
			$stmt -> bindParam(":".$item2, $valor2, PDO::PARAM_STR);

			if ($stmt -> execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
						EDITAR ESPACIO            
		=============================================*/

		static public function mdlEditarEspacio($tabla, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET nombre = :nombre WHERE id_espacio = :id_espacio");

			$stmt->bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
			$stmt->bindParam(":id_espacio", $datos["id_espacio"], PDO::PARAM_INT);

			if ($stmt->execute()) {
				
				return "ok";
				
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
						BORRAR ESPACIO            
		=============================================*/

		static public function mdlBorrarEspacio($tabla, $datos){

			$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id_espacio = :id_espacio");

			$stmt -> bindParam(":id_espacio", $datos, PDO::PARAM_INT);

			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

	}