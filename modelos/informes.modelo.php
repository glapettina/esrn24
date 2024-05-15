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


		/*===================================================
		COPIAR SABERES CIENCIA (CIENCIAS NATURALES)           
		===================================================*/

		static public function mdlCopiarSaberesCiencia($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_ciencia = :saberes_ciencia WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_ciencia", $datos["saberes_ciencia"], PDO::PARAM_STR);
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
		COPIAR SABERES TIERRA 5 (CIENCIAS NATURALES)           
		===================================================*/

		static public function mdlCopiarSaberesTierra5($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_tierra5 = :saberes_tierra5 WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_tierra5", $datos["saberes_tierra5"], PDO::PARAM_STR);
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
		COPIAR SABERES HISTORIA (EDUCACIÓN)           
		===================================================*/

		static public function mdlCopiarSaberesHistoria($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_historia = :saberes_historia WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_historia", $datos["saberes_historia"], PDO::PARAM_STR);
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
		COPIAR SABERES PENSAMIENTO (EDUCACIÓN)           
		===================================================*/

		static public function mdlCopiarSaberesPensamiento($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_pensamiento = :saberes_pensamiento WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_pensamiento", $datos["saberes_pensamiento"], PDO::PARAM_STR);
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
		COPIAR SABERES SOCIEDAD (EDUCACIÓN)           
		===================================================*/

		static public function mdlCopiarSaberesSociedad($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_sociedad = :saberes_sociedad WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_sociedad", $datos["saberes_sociedad"], PDO::PARAM_STR);
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
		COPIAR SABERES SOCIOLOGÍA (EDUCACIÓN)           
		===================================================*/

		static public function mdlCopiarSaberesSociologia($tabla, $curso, $datos){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_sociologia = :saberes_sociologia WHERE id_curso >= :id_curso1 OR id_curso <= :id_curso2 OR id_curso <= :id_curso3 OR id_curso <= :id_curso4");

			$stmt->bindParam(":saberes_sociologia", $datos["saberes_sociologia"], PDO::PARAM_STR);
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
		COPIAR SABERES TALLER (EDUCACIÓN)           
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
		COPIAR SABERES SEMINARIO 3 (EDUCACIÓN)           
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
		COPIAR SABERES PEDAGOGÍA (EDUCACIÓN)           
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
		COPIAR SABERES EVE           
		=============================================*/

		static public function mdlCopiarSaberesEve($tabla, $curso, $datos, $periodo){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_eve = :saberes_eve WHERE periodo = '$periodo' AND id_curso = :id_curso");

			$stmt->bindParam(":saberes_eve", $datos["saberes_eve"], PDO::PARAM_STR);
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

		/*===================================================
		EDITAR INFORME CIENCIA (CIENCIAS NATURALES)           
		===================================================*/

		static public function mdlEditarInformeCiencia($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_ciencia = :saberes_ciencia, aprecia_ciencia = :aprecia_ciencia, asistencia_ciencia = :asistencia_ciencia, observa_ciencia = :observa_ciencia, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_ciencia", $datos["saberes_ciencia"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_ciencia", $datos["aprecia_ciencia"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_ciencia", $datos["asistencia_ciencia"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_ciencia", $datos["observa_ciencia"], PDO::PARAM_STR);
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
		EDITAR INFORME TIERRA 5 (CIENCIAS NATURALES)           
		===================================================*/

		static public function mdlEditarInformeTierra5($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_tierra5 = :saberes_tierra5, aprecia_tierra5 = :aprecia_tierra5, asistencia_tierra5 = :asistencia_tierra5, observa_tierra5 = :observa_tierra5, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_tierra5", $datos["saberes_tierra5"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_tierra5", $datos["aprecia_tierra5"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_tierra5", $datos["asistencia_tierra5"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_tierra5", $datos["observa_tierra5"], PDO::PARAM_STR);
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
		EDITAR INFORME HISTORIA (EDUCACIÓN)           
		===================================================*/

		static public function mdlEditarInformeHistoria($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_historia = :saberes_historia, aprecia_historia = :aprecia_historia, asistencia_historia = :asistencia_historia, observa_historia = :observa_historia, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_historia", $datos["saberes_historia"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_historia", $datos["aprecia_historia"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_historia", $datos["asistencia_historia"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_historia", $datos["observa_historia"], PDO::PARAM_STR);
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
		EDITAR INFORME PENSAMIENTO (EDUCACIÓN)           
		===================================================*/

		static public function mdlEditarInformePensamiento($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_pensamiento = :saberes_pensamiento, aprecia_pensamiento = :aprecia_pensamiento, asistencia_pensamiento = :asistencia_pensamiento, observa_pensamiento = :observa_pensamiento, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_pensamiento", $datos["saberes_pensamiento"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_pensamiento", $datos["aprecia_pensamiento"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_pensamiento", $datos["asistencia_pensamiento"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_pensamiento", $datos["observa_pensamiento"], PDO::PARAM_STR);
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
		EDITAR INFORME SOCIEDAD (EDUCACIÓN)           
		===================================================*/

		static public function mdlEditarInformeSociedad($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_sociedad = :saberes_sociedad, aprecia_sociedad = :aprecia_sociedad, asistencia_sociedad = :asistencia_sociedad, observa_sociedad = :observa_sociedad, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_sociedad", $datos["saberes_sociedad"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_sociedad", $datos["aprecia_sociedad"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_sociedad", $datos["asistencia_sociedad"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_sociedad", $datos["observa_sociedad"], PDO::PARAM_STR);
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
		EDITAR INFORME SOCIOLOGÍA (EDUCACIÓN)           
		===================================================*/

		static public function mdlEditarInformeSociologia($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_sociologia = :saberes_sociologia, aprecia_sociologia = :aprecia_sociologia, asistencia_sociologia = :asistencia_sociologia, observa_sociologia = :observa_sociologia, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_sociologia", $datos["saberes_sociologia"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_sociologia", $datos["aprecia_sociologia"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_sociologia", $datos["asistencia_sociologia"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_sociologia", $datos["observa_sociologia"], PDO::PARAM_STR);
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
		EDITAR INFORME TALLER (EDUCACIÓN)           
		===================================================*/

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
		EDITAR INFORME SEMINARIO 3 (EDUCACIÓN)            
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
		EDITAR INFORME EVE           
		=============================================*/

		static public function mdlEditarInformeEve($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_eve = :saberes_eve, aprecia_eve = :aprecia_eve, asistencia_eve = :asistencia_eve, observa_eve = :observa_eve, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_eve", $datos["saberes_eve"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_eve", $datos["aprecia_eve"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_eve", $datos["asistencia_eve"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_eve", $datos["observa_eve"], PDO::PARAM_STR);
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