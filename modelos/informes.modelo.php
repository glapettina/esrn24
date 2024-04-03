<?php

	require_once "conexion.php";

	class ModeloInformes{


	
		/*=============================================
		MOSTRAR INFORMES CICLO BÁSICO
		=============================================*/

		static public function mdlMostrarInformes($item, $valor, $tabla, $periodo, $verifica){

			if ($item != null && $verifica == false) {
				
				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE periodo = '$periodo' AND $item = :$item ORDER BY nombre");

				$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

				$stmt -> execute();

				return $stmt -> fetch();

			}else if($item != null && $verifica == true){

				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE periodo = '$periodo' AND $item = :$item AND estado = 1 ORDER BY nombre");

				$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

				$stmt -> execute();

				return $stmt -> fetchAll();


			}else{

				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY nombre");

				$stmt -> execute();

				return $stmt -> fetchAll();

			}

			$stmt -> close();

			$stmt = null;
		}





		/*=============================================
		MOSTRAR INFORMES ORIENTACIÓN 
		=============================================*/

		static public function mdlMostrarInformesOrientacion($item, $valor1, $valor2, $valor3, $valor4, $tabla, $periodo, $modalidad, $verifica){

			if ($item != null && $verifica == false) {
				
				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE periodo = '$periodo' AND $item = :$item");

				$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

				$stmt -> execute();

				return $stmt -> fetch();

			}else if($item != null && $verifica == true && $valor4 == 0){

				//$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = $valor1 OR $item = $valor2 OR $item = $valor3 AND modalidad = $modalidad AND estado = 1");

				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item IN ($valor1, $valor2, $valor3) AND estado = 1 AND modalidad = '$modalidad' AND periodo = '$periodo'");

				//select * from tercero where id_curso IN (7, 8, 13) AND modalidad = 'Turismo' AND estado = 1;


				$stmt -> bindParam(":".$item, $valor1, PDO::PARAM_STR);
				$stmt -> bindParam(":".$item, $valor2, PDO::PARAM_STR);
				$stmt -> bindParam(":".$item, $valor3, PDO::PARAM_STR);


				$stmt -> execute();

				return $stmt -> fetchAll();


			}else if($item != null && $verifica == true && $valor4 != 0){


				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item IN ($valor1, $valor2, $valor3, $valor4) AND estado = 1 AND modalidad = '$modalidad' AND periodo = '$periodo'");

				//$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE id_curso >= $valor1 OR id_curso <= $valor2 OR id_curso <= $valor3 OR id_curso <= $valor4 AND modalidad = $modalidad AND estado = 1");

				$stmt -> bindParam(":".$item, $valor1, PDO::PARAM_STR);
				$stmt -> bindParam(":".$item, $valor2, PDO::PARAM_STR);
				$stmt -> bindParam(":".$item, $valor3, PDO::PARAM_STR);
				$stmt -> bindParam(":".$item, $valor4, PDO::PARAM_STR);


				$stmt -> execute();

				return $stmt -> fetchAll();


			}else{

				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

				$stmt -> execute();

				return $stmt -> fetchAll();

			}

			$stmt -> close();

			$stmt = null;
		}


		/*============================================= 
		COPIAR SABERES CIENTIFICA            
		=============================================*/

		static public function mdlCopiarSaberesCientifica($tabla, $curso, $datos, $periodo){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_cientifica = :saberes_cientifica WHERE periodo = '$periodo' AND id_curso = :id_curso");

			$stmt->bindParam(":saberes_cientifica", $datos["saberes_cientifica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso", $datos["id_curso"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES SOCIALES            
		=============================================*/

		static public function mdlCopiarSaberesSociales($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_sociales = :saberes_sociales WHERE id_curso = :id_curso");

			$stmt->bindParam(":saberes_sociales", $datos["saberes_sociales"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso", $datos["id_curso"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES LENGUA            
		=============================================*/

		static public function mdlCopiarSaberesLengua($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_lengua = :saberes_lengua WHERE id_curso = :id_curso");

			$stmt->bindParam(":saberes_lengua", $datos["saberes_lengua"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso", $datos["id_curso"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES MATEMATICA            
		=============================================*/

		static public function mdlCopiarSaberesMatematica($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_matematica = :saberes_matematica WHERE id_curso = :id_curso");

			$stmt->bindParam(":saberes_matematica", $datos["saberes_matematica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso", $datos["id_curso"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES INGLES            
		=============================================*/

		static public function mdlCopiarSaberesIngles($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_ingles = :saberes_ingles WHERE id_curso = :id_curso");

			$stmt->bindParam(":saberes_ingles", $datos["saberes_ingles"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso", $datos["id_curso"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES EDUCACIÓN FÍSICA            
		=============================================*/

		static public function mdlCopiarSaberesFisica($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_fisica = :saberes_fisica WHERE id_curso = :id_curso");

			$stmt->bindParam(":saberes_fisica", $datos["saberes_fisica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso", $datos["id_curso"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES EDUCACIÓN ARTÍSTICA            
		=============================================*/

		static public function mdlCopiarSaberesArtistica($tabla, $curso, $datos, $periodo){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_artistica = :saberes_artistica WHERE periodo = '$periodo' AND id_curso = :id_curso");

			$stmt->bindParam(":saberes_artistica", $datos["saberes_artistica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso", $datos["id_curso"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}



		/*=============================================
		COPIAR SABERES DESARROLLO (TURISMO)           
		=============================================*/

		static public function mdlCopiarSaberesDesarrollo($tabla, $curso, $datos, $periodo){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_desarrollo = :saberes_desarrollo WHERE periodo = '$periodo' AND id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3");

			$stmt->bindParam(":saberes_desarrollo", $datos["saberes_desarrollo"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES INTRODUCCION (TURISMO)          
		=============================================*/

		static public function mdlCopiarSaberesIntroduccion($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_introduccion = :saberes_introduccion WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3");

			$stmt->bindParam(":saberes_introduccion", $datos["saberes_introduccion"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES AMBIENTE (TURISMO)           
		=============================================*/

		static public function mdlCopiarSaberesAmbiente($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_ambiente = :saberes_ambiente WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_ambiente", $datos["saberes_ambiente"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES GENERACION (TURISMO)           
		=============================================*/

		static public function mdlCopiarSaberesGeneracion($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_generacion = :saberes_generacion WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_generacion", $datos["saberes_generacion"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES PRODUCCION (TURISMO)           
		=============================================*/

		static public function mdlCopiarSaberesProduccion($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_produccion = :saberes_produccion WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_produccion", $datos["saberes_produccion"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*===================================================
		COPIAR SABERES BIOTECNOLOGÍA (CIENCIAS NATURALES)           
		===================================================*/

		static public function mdlCopiarSaberesBiotecnologia($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_biotecnologia = :saberes_biotecnologia WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_biotecnologia", $datos["saberes_biotecnologia"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES PROYECTO (TURISMO)           
		=============================================*/

		static public function mdlCopiarSaberesProyecto($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_proyecto = :saberes_proyecto WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_proyecto", $datos["saberes_proyecto"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES TALLER (TURISMO)           
		=============================================*/

		static public function mdlCopiarSaberesTaller($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_taller = :saberes_taller WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_taller", $datos["saberes_taller"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES QUIMICA (CIENCIAS NATURALES)           
		=============================================*/

		static public function mdlCopiarSaberesQuimica($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_quimica = :saberes_quimica WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3");

			$stmt->bindParam(":saberes_quimica", $datos["saberes_quimica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES SEMINARIO 3           
		=============================================*/

		static public function mdlCopiarSaberesSeminario3($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_seminario3 = :saberes_seminario3 WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3");

			$stmt->bindParam(":saberes_seminario3", $datos["saberes_seminario3"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES TIERRA 4 (CIENCIAS NATURALES)           
		=============================================*/

		static public function mdlCopiarSaberesTierra4($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_tierra4 = :saberes_tierra4 WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_tierra4", $datos["saberes_tierra4"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES FISICA 4 (CIENCIAS NATURALES)           
		=============================================*/

		static public function mdlCopiarSaberesFisica4($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_fisica4 = :saberes_fisica4 WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_fisica4", $datos["saberes_fisica4"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES PEDAGOGÍA (PEDAGOGÍA)           
		=============================================*/

		static public function mdlCopiarSaberesPedagogia($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_pedagogia = :saberes_pedagogia WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_pedagogia", $datos["saberes_pedagogia"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES PSICOLOGÍA (EDUCACIÓN)           
		=============================================*/

		static public function mdlCopiarSaberesPsicologia($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_psicologia = :saberes_psicologia WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_psicologia", $datos["saberes_psicologia"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES SEMINARIO 4 (EDUCACIÓN)           
		=============================================*/

		static public function mdlCopiarSaberesSeminario4($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_seminario4 = :saberes_seminario4 WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_seminario4", $datos["saberes_seminario4"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}



		/*=============================================
		COPIAR SABERES CONJUNTO 4 (ARTE - MUSICA)           
		=============================================*/

		static public function mdlCopiarSaberesConjunto4($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_conjunto4 = :saberes_conjunto4 WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_conjunto4", $datos["saberes_conjunto4"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES VOCAL 4 (ARTE - MUSICA)           
		=============================================*/

		static public function mdlCopiarSaberesVocal4($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_vocal4 = :saberes_vocal4 WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_vocal4", $datos["saberes_vocal4"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES LENGUAJE 5 (ARTE - MUSICA)           
		=============================================*/

		static public function mdlCopiarSaberesLenguaje5($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_lenguaje5 = :saberes_lenguaje5 WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_lenguaje5", $datos["saberes_lenguaje5"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES MUSICA (ARTE - MUSICA)           
		=============================================*/

		static public function mdlCopiarSaberesMusica($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_musica = :saberes_musica WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_musica", $datos["saberes_musica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES VOCAL 5 (ARTE - MUSICA)           
		=============================================*/

		static public function mdlCopiarSaberesVocal5($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_vocal5 = :saberes_vocal5 WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_vocal5", $datos["saberes_vocal5"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES TECNOLOGIA (ARTE - MUSICA)           
		=============================================*/

		static public function mdlCopiarSaberesTecnologia($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_tecnologia = :saberes_tecnologia WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_tecnologia", $datos["saberes_tecnologia"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES CONJUNTO 5 (ARTE - MUSICA)           
		=============================================*/

		static public function mdlCopiarSaberesConjunto5($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_conjunto5 = :saberes_conjunto5 WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_conjunto5", $datos["saberes_conjunto5"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso3", $datos["id_curso3"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso4", $datos["id_curso4"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}




		/*=============================================
		EDITAR INFORME CIENTIFICA            
		=============================================*/

		static public function mdlEditarInformeCientifica($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_cientifica = :saberes_cientifica, aprecia_cientifica = :aprecia_cientifica, asistencia_cientifica = :asistencia_cientifica, observa_cientifica = :observa_cientifica, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_cientifica", $datos["saberes_cientifica"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_cientifica", $datos["aprecia_cientifica"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_cientifica", $datos["asistencia_cientifica"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_cientifica", $datos["observa_cientifica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME SOCIALES            
		=============================================*/

		static public function mdlEditarInformeSociales($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_sociales = :saberes_sociales, aprecia_sociales = :aprecia_sociales, asistencia_sociales = :asistencia_sociales, observa_sociales = :observa_sociales, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_sociales", $datos["saberes_sociales"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_sociales", $datos["aprecia_sociales"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_sociales", $datos["asistencia_sociales"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_sociales", $datos["observa_sociales"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME LENGUA            
		=============================================*/

		static public function mdlEditarInformeLengua($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_lengua = :saberes_lengua, aprecia_lengua = :aprecia_lengua, asistencia_lengua = :asistencia_lengua, observa_lengua = :observa_lengua, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_lengua", $datos["saberes_lengua"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_lengua", $datos["aprecia_lengua"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_lengua", $datos["asistencia_lengua"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_lengua", $datos["observa_lengua"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME MATEMATICA            
		=============================================*/

		static public function mdlEditarInformeMatematica($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_matematica = :saberes_matematica, aprecia_matematica = :aprecia_matematica, asistencia_matematica = :asistencia_matematica, observa_matematica = :observa_matematica, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_matematica", $datos["saberes_matematica"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_matematica", $datos["aprecia_matematica"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_matematica", $datos["asistencia_matematica"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_matematica", $datos["observa_matematica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME INGLES            
		=============================================*/

		static public function mdlEditarInformeIngles($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_ingles = :saberes_ingles, aprecia_ingles = :aprecia_ingles, asistencia_ingles = :asistencia_ingles, observa_ingles = :observa_ingles, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_ingles", $datos["saberes_ingles"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_ingles", $datos["aprecia_ingles"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_ingles", $datos["asistencia_ingles"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_ingles", $datos["observa_ingles"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
		EDITAR INFORME EDUCACIÓN FÍSICA            
		=============================================*/

		static public function mdlEditarInformeFisica($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_fisica = :saberes_fisica, aprecia_fisica = :aprecia_fisica, asistencia_fisica = :asistencia_fisica, observa_fisica = :observa_fisica, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_fisica", $datos["saberes_fisica"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_fisica", $datos["aprecia_fisica"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_fisica", $datos["asistencia_fisica"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_fisica", $datos["observa_fisica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME EDUCACIÓN ARTÍSTICA            
		=============================================*/

		static public function mdlEditarInformeArtistica($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_artistica = :saberes_artistica, aprecia_artistica = :aprecia_artistica, asistencia_artistica = :asistencia_artistica, observa_artistica = :observa_artistica, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_artistica", $datos["saberes_artistica"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_artistica", $datos["aprecia_artistica"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_artistica", $datos["asistencia_artistica"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_artistica", $datos["observa_artistica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME DESARROLLO (TURISMO)            
		=============================================*/

		static public function mdlEditarInformeDesarrollo($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_desarrollo = :saberes_desarrollo, aprecia_desarrollo = :aprecia_desarrollo, asistencia_desarrollo = :asistencia_desarrollo, observa_desarrollo = :observa_desarrollo, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_desarrollo", $datos["saberes_desarrollo"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_desarrollo", $datos["aprecia_desarrollo"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_desarrollo", $datos["asistencia_desarrollo"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_desarrollo", $datos["observa_desarrollo"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME INTRODUCCION (TURISMO)           
		=============================================*/

		static public function mdlEditarInformeIntroduccion($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_introduccion = :saberes_introduccion, aprecia_introduccion = :aprecia_introduccion, asistencia_introduccion = :asistencia_introduccion, observa_introduccion = :observa_introduccion, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_introduccion", $datos["saberes_introduccion"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_introduccion", $datos["aprecia_introduccion"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_introduccion", $datos["asistencia_introduccion"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_introduccion", $datos["observa_introduccion"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
		EDITAR INFORME AMBIENTE (TURISMO)           
		=============================================*/

		static public function mdlEditarInformeAmbiente($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_ambiente = :saberes_ambiente, aprecia_ambiente = :aprecia_ambiente, asistencia_ambiente = :asistencia_ambiente, observa_ambiente = :observa_ambiente, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_ambiente", $datos["saberes_ambiente"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_ambiente", $datos["aprecia_ambiente"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_ambiente", $datos["asistencia_ambiente"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_ambiente", $datos["observa_ambiente"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
		EDITAR INFORME GENERACION (TURISMO)           
		=============================================*/

		static public function mdlEditarInformeGeneracion($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_generacion = :saberes_generacion, aprecia_generacion = :aprecia_generacion, asistencia_generacion = :asistencia_generacion, observa_generacion = :observa_generacion, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_generacion", $datos["saberes_generacion"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_generacion", $datos["aprecia_generacion"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_generacion", $datos["asistencia_generacion"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_generacion", $datos["observa_generacion"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME PRODUCCION (TURISMO)           
		=============================================*/

		static public function mdlEditarInformeProduccion($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_produccion = :saberes_produccion, aprecia_produccion = :aprecia_produccion, asistencia_produccion = :asistencia_produccion, observa_produccion = :observa_produccion, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_produccion", $datos["saberes_produccion"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_produccion", $datos["aprecia_produccion"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_produccion", $datos["asistencia_produccion"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_produccion", $datos["observa_produccion"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*===================================================
		EDITAR INFORME BIOTECNOLOGÍA (CIENCIAS NATURALES)           
		===================================================*/

		static public function mdlEditarInformeBiotecnologia($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_biotecnologia = :saberes_biotecnologia, aprecia_biotecnologia = :aprecia_biotecnologia, asistencia_biotecnologia = :asistencia_biotecnologia, observa_biotecnologia = :observa_biotecnologia, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_biotecnologia", $datos["saberes_biotecnologia"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_biotecnologia", $datos["aprecia_biotecnologia"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_biotecnologia", $datos["asistencia_biotecnologia"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_biotecnologia", $datos["observa_biotecnologia"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME PROYECTO (TURISMO)           
		=============================================*/

		static public function mdlEditarInformeProyecto($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_proyecto = :saberes_proyecto, aprecia_proyecto = :aprecia_proyecto, asistencia_proyecto = :asistencia_proyecto, observa_proyecto = :observa_proyecto, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_proyecto", $datos["saberes_proyecto"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_proyecto", $datos["aprecia_proyecto"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_proyecto", $datos["asistencia_proyecto"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_proyecto", $datos["observa_proyecto"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME TALLER (TURISMO)           
		=============================================*/

		static public function mdlEditarInformeTaller($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_taller = :saberes_taller, aprecia_taller = :aprecia_taller, asistencia_taller = :asistencia_taller, observa_taller = :observa_taller, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_taller", $datos["saberes_taller"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_taller", $datos["aprecia_taller"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_taller", $datos["asistencia_taller"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_taller", $datos["observa_taller"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}



		/*=============================================
		EDITAR INFORME QUIMICA (CIENCIAS NATURALES)            
		=============================================*/

		static public function mdlEditarInformeQuimica($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_quimica = :saberes_quimica, aprecia_quimica = :aprecia_quimica, asistencia_quimica = :asistencia_quimica, observa_quimica = :observa_quimica, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_quimica", $datos["saberes_quimica"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_quimica", $datos["aprecia_quimica"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_quimica", $datos["asistencia_quimica"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_quimica", $datos["observa_quimica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME SEMINARIO 3            
		=============================================*/

		static public function mdlEditarInformeSeminario3($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_seminario3 = :saberes_seminario3, aprecia_seminario3 = :aprecia_seminario3, asistencia_seminario3 = :asistencia_seminario3, observa_seminario3 = :observa_seminario3, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_seminario3", $datos["saberes_seminario3"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_seminario3", $datos["aprecia_seminario3"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_seminario3", $datos["asistencia_seminario3"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_seminario3", $datos["observa_seminario3"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME TIERRA 4 (CIENCIAS NATURALES)           
		=============================================*/

		static public function mdlEditarInformeTierra4($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_tierra4 = :saberes_tierra4, aprecia_tierra4 = :aprecia_tierra4, asistencia_tierra4 = :asistencia_tierra4, observa_tierra4 = :observa_tierra4, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_tierra4", $datos["saberes_tierra4"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_tierra4", $datos["aprecia_tierra4"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_tierra4", $datos["asistencia_tierra4"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_tierra4", $datos["observa_tierra4"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
		EDITAR INFORME FISICA 4 (CIENCIAS NATURALES)           
		=============================================*/

		static public function mdlEditarInformeFisica4($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_fisica4 = :saberes_fisica4, aprecia_fisica4 = :aprecia_fisica4, asistencia_fisica4 = :asistencia_fisica4, observa_fisica4 = :observa_fisica4, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_fisica4", $datos["saberes_fisica4"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_fisica4", $datos["aprecia_fisica4"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_fisica4", $datos["asistencia_fisica4"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_fisica4", $datos["observa_fisica4"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
		EDITAR INFORME PEDAGOGÍA (EDUCACIÓN)           
		=============================================*/

		static public function mdlEditarInformePedagogia($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_pedagogia = :saberes_pedagogia, aprecia_pedagogia = :aprecia_pedagogia, asistencia_pedagogia = :asistencia_pedagogia, observa_pedagogia = :observa_pedagogia, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_pedagogia", $datos["saberes_pedagogia"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_pedagogia", $datos["aprecia_pedagogia"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_pedagogia", $datos["asistencia_pedagogia"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_pedagogia", $datos["observa_pedagogia"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
		EDITAR INFORME PSICOLOGÍA (EDUCACIÓN)           
		=============================================*/

		static public function mdlEditarInformePsicologia($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_psicologia = :saberes_psicologia, aprecia_psicologia = :aprecia_psicologia, asistencia_psicologia = :asistencia_psicologia, observa_psicologia = :observa_psicologia, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_psicologia", $datos["saberes_psicologia"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_psicologia", $datos["aprecia_psicologia"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_psicologia", $datos["asistencia_psicologia"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_psicologia", $datos["observa_psicologia"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
		EDITAR INFORME SEMINARIO 4 (EDUCACIÓN)           
		=============================================*/

		static public function mdlEditarInformeSeminario4($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_seminario4 = :saberes_seminario4, aprecia_seminario4 = :aprecia_seminario4, asistencia_seminario4 = :asistencia_seminario4, observa_seminario4 = :observa_seminario4, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_seminario4", $datos["saberes_seminario4"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_seminario4", $datos["aprecia_seminario4"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_seminario4", $datos["asistencia_seminario4"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_seminario4", $datos["observa_seminario4"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME CONJUNTO 4 (ARTE - MUSICA)           
		=============================================*/

		static public function mdlEditarInformeConjunto4($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_conjunto4 = :saberes_conjunto4, aprecia_conjunto4 = :aprecia_conjunto4, asistencia_conjunto4 = :asistencia_conjunto4, observa_conjunto4 = :observa_conjunto4, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_conjunto4", $datos["saberes_conjunto4"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_conjunto4", $datos["aprecia_conjunto4"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_conjunto4", $datos["asistencia_conjunto4"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_conjunto4", $datos["observa_conjunto4"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME VOCAL 4 (ARTE - MUSICA)           
		=============================================*/

		static public function mdlEditarInformeVocal4($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_vocal4 = :saberes_vocal4, aprecia_vocal4 = :aprecia_vocal4, asistencia_vocal4 = :asistencia_vocal4, observa_vocal4 = :observa_vocal4, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_vocal4", $datos["saberes_vocal4"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_vocal4", $datos["aprecia_vocal4"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_vocal4", $datos["asistencia_vocal4"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_vocal4", $datos["observa_vocal4"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR LENGUAJE 5 (ARTE - MUSICA)           
		=============================================*/

		static public function mdlEditarInformeLenguaje5($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_lenguaje5 = :saberes_lenguaje5, aprecia_lenguaje5 = :aprecia_lenguaje5, asistencia_lenguaje5 = :asistencia_lenguaje5, observa_lenguaje5 = :observa_lenguaje5, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_lenguaje5", $datos["saberes_lenguaje5"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_lenguaje5", $datos["aprecia_lenguaje5"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_lenguaje5", $datos["asistencia_lenguaje5"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_lenguaje5", $datos["observa_lenguaje5"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR MUSICA (ARTE - MUSICA)           
		=============================================*/

		static public function mdlEditarInformeMusica($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_musica = :saberes_musica, aprecia_musica = :aprecia_musica, asistencia_musica = :asistencia_musica, observa_musica = :observa_musica, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_musica", $datos["saberes_musica"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_musica", $datos["aprecia_musica"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_musica", $datos["asistencia_musica"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_musica", $datos["observa_musica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR VOCAL 5 (ARTE - MUSICA)           
		=============================================*/

		static public function mdlEditarInformeVocal5($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_vocal5 = :saberes_vocal5, aprecia_vocal5 = :aprecia_vocal5, asistencia_vocal5 = :asistencia_vocal5, observa_vocal5 = :observa_vocal5, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_vocal5", $datos["saberes_vocal5"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_vocal5", $datos["aprecia_vocal5"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_vocal5", $datos["asistencia_vocal5"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_vocal5", $datos["observa_vocal5"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR TECNOLOGIA (ARTE - MUSICA)           
		=============================================*/

		static public function mdlEditarInformeTecnologia($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_tecnologia = :saberes_tecnologia, aprecia_tecnologia = :aprecia_tecnologia, asistencia_tecnologia = :asistencia_tecnologia, observa_tecnologia = :observa_tecnologia, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_tecnologia", $datos["saberes_tecnologia"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_tecnologia", $datos["aprecia_tecnologia"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_tecnologia", $datos["asistencia_tecnologia"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_tecnologia", $datos["observa_tecnologia"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}



		/*=============================================
		EDITAR CONJUNTO 5 (ARTE - MUSICA)           
		=============================================*/

		static public function mdlEditarInformeConjunto5($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_conjunto5 = :saberes_conjunto5, aprecia_conjunto5 = :aprecia_conjunto5, asistencia_conjunto5 = :asistencia_conjunto5, observa_conjunto5 = :observa_conjunto5, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_conjunto5", $datos["saberes_conjunto5"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_conjunto5", $datos["aprecia_conjunto5"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_conjunto5", $datos["asistencia_conjunto5"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_conjunto5", $datos["observa_conjunto5"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}




		/*=============================================
	    ACTUALIZAR ALUMNO            
		=============================================*/

		static public function mdlActualizarAlumno($tabla, $item1, $valor1, $item2, $valor2){

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
				
	}