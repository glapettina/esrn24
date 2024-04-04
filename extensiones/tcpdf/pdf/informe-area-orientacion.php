<?php

require_once "../../../controladores/informes.controlador.php";
require_once "../../../modelos/informes.modelo.php";

require_once "../../../controladores/cursos.controlador.php";
require_once "../../../modelos/cursos.modelo.php";


class imprimirReporte{


	public $idCurso;

	public function traerImpresionReporte(){

		// TRAEMOS LA INFORMACION DE LOS INFORMES

		if ($_GET["tabla"] == "primero") {
			
			$tablaInforme = "primero";
		}

		if ($_GET["tabla"] == "segundo") {
			
			$tablaInforme = "segundo";
		}

		if ($_GET["tabla"] == "tercero") {
			
			$tablaInforme = "tercero";
		}

		if ($_GET["tabla"] == "cuarto") {
			
			$tablaInforme = "cuarto";
		}

		if ($_GET["tabla"] == "quinto") {
			
			$tablaInforme = "quinto";
		}



		
		$itemInforme = "id_curso";
		//$valorInforme = $this->idCurso;
		$valorInforme = $_GET["idCurso"];
		$valorInforme2 = $_GET["idCurso2"];
		$valorInforme3 = $_GET["idCurso3"];
		$valorInforme4 = $_GET["idCurso4"];
		$tablaInforme = $_GET["tabla"];
		$periodo = $_GET["periodo"];
		$modalidad = $_GET["modalidad"];
		$verifica = true;

		$per = explode('/', $periodo);

		$per2 = $per[1];

		if ($per[0] == '01') {
			
			$titulo = 'INFORME CUALITATIVO MARZO - MAYO ' .$per2;
		}else{

			$titulo = 'INFORME CUALITATIVO JULIO - OCTUBRE ' .$per2;
		}
		

 		$respuestaInforme = ControladorInformes::ctrMostrarInformesOrientacion($itemInforme, $valorInforme, $valorInforme2, $valorInforme3, $valorInforme4, $tablaInforme, $periodo, $modalidad, $verifica);

		
		$idCurso = $_GET["idCurso"];
		
		

		 if ($_GET["area"] == "quimica") {

		 	$area = "C.O. - QUIMICA AMBIENTAL";

		 }

		 if ($_GET["area"] == "seminario3") {

		 	$area = "C.O. - SEMINARIO-TALLER EDUCACIÓN, CULTURA Y SUBJETIVIDADES";

		 }

		if ($_GET["area"] == "tierra4") {

		 	$area = "C.O. - CIENCIAS DE LA TIERRA I";

		 }

		 if ($_GET["area"] == "fisica4") {

			$area = "C.O. - FÍSICA AMBIENTAL";

		}

		if ($_GET["area"] == "pedagogia") {

			$area = "C.O. - PEDAGOGÍA";

		}

		if ($_GET["area"] == "psicologia") {

			$area = "C.O. - PSICOLOGÍA DE LA ADOLESCENCIA";

		}

		if ($_GET["area"] == "seminario4") {

			$area = "C.O. - SEMINARIO-TALLER EDUCACIÓN, JUVENTUDES Y PARTICIPACIÓN";

		}

		if ($_GET["area"] == "biotecnologia") {

		 	$area = "C.O. - BIOTECNOLOGÍA";

		 }


		if ($_GET["area"] == "ciencia") {

		 	$area = "C.O. - CIENCIA, TECNOLOGÍA, SOCIEDAD, AMBIENTE Y VALORES";

		 }

		if ($_GET["area"] == "tierra5") {

		 	$area = "C.O. - CIENCIAS DE LA TIERRA II";

		 }


		if ($_GET["area"] == "proyecto") {

		 	$area = "C.O. - PROYECTO DE INTERVENCION SOCIOCOMUNITARIA";

		 }

		if ($_GET["area"] == "taller") {

		 	$area = "C.O. - TALLER DE TECNICAS INTERPRETATIVAS Y DE ANIMACION SOCIOCULTURAL";

		 }

		 if ($_GET["area"] == "apreciacion") {

		 	$area = "C.O. - APRECIACION MUSICAL";

		 }

		 if ($_GET["area"] == "lenguaje3") {

		 	$area = "C.O. - LENGUAJE MUSICAL Y PRACTICA INSTRUMENTAL";

		 }

		 if ($_GET["area"] == "lenguaje4") {

		 	$area = "C.O. - LENGUAJE MUSICAL Y PRACTICA INSTRUMENTAL";

		 }

		 if ($_GET["area"] == "conjunto4") {

		 	$area = "C.O. - PRACTICA DE CONJUNTO";

		 }

		 if ($_GET["area"] == "vocal4") {

		 	$area = "C.O. - PRACTICA VOCAL";

		 }

		if ($_GET["area"] == "lenguaje5") {

		 	$area = "C.O. - LENGUAJE MUSICAL Y PRACTICA INSTRUMENTAL";

		 }

		if ($_GET["area"] == "musica") {

		 	$area = "C.O. - MUSICA Y CONTEXTO HISTORICO SOCIAL";

		 }

		if ($_GET["area"] == "vocal5") {

		 	$area = "C.O. - PRACTICA VOCAL";

		 }

		if ($_GET["area"] == "tecnologia") {

		 	$area = "C.O. - TECNOLOGIA E INFORMATICA APLICADA A LA PRODUCCION MUSICAL";

		 }

		if ($_GET["area"] == "conjunto5") {

		 	$area = "C.O. - PRACTICA DE CONJUNTO";

		 }

	


require_once('tcpdf_include.php');

//$pdf=new FPDF(‘L’,’cm’,’A4’);

$pdf = new TCPDF('L', PDF_UNIT, 'A4', true, 'UTF-8', false);

$pdf->setPrintHeader(false); //Ahora si imprimirá cabecera
$pdf->setPrintFooter(true); //Ahora si imprimirá pie de página


// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, 10, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

$pdf->startPageGroup();

$pdf->AddPage();


//--------------------------------------------------------------------------------

$bloque1 = <<<EOF

	<table>

		<tr>

			<td style="width: 780px"><img src="images/header2.png"></td>

			<td style="background-color:white; width:606px">

				<div style="font-size:14px; text-align: right; line-height:10px;">

					<br>	
					ESCUELA SECUNDARIA RIO NEGRO Nº 153					

				</div>

			</td>

			
			
		</tr>
		

	</table>

EOF;


$pdf->writeHTML($bloque1, false, false, false, false, '');

//----------------------------------------------------------------------------------

$bloque2 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

		<tr>

			<td style="width:540px"><img src="images/backFact2.jpg"></td>

		</tr>

		<tr>

			<td style="text-align: center; border: 1px solid #666; background-color:white; width:780px">

				<br>

				<strong>$titulo - ÁREA: $area</strong>


			</td>

			

			
			

		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque2, false, false, false, false, '');

//--------------------------------------------------------

//----------------------------------------------------------------------------------

foreach ($respuestaInforme as $key => $value) {


	// TRAEMOS LA INFORMACION DE LOS CURSOS

		$itemCurso = "id";
		$valorCurso = $value["id_curso"];
		

		$respuestaCurso = ControladorCursos::ctrMostrarCursos($itemCurso, $valorCurso);

		$curso = $respuestaCurso["nombre"];
		$turno = $respuestaCurso["turno"];


	if ($_GET["area"] == "cientifica") {

			$area = "CIENTÍFICA Y TECNOLÓGICA";

			$saberes = $value["saberes_cientifica"];
			$aprecia = $value["aprecia_cientifica"];
			$asistencia = $value["asistencia_cientifica"];
			$observa = $value["observa_cientifica"];

		}

		if ($_GET["area"] == "sociales") {

			$area = "SOCIALES Y HUMANIDADES";

			$saberes = $value["saberes_sociales"];
			$aprecia = $value["aprecia_sociales"];
			$asistencia = $value["asistencia_sociales"];
			$observa = $value["observa_sociales"];

		}

		if ($_GET["area"] == "literatura") {

			$area = "LENGUA Y LITERATURA";

			$saberes = $value["saberes_lengua"];
			$aprecia = $value["aprecia_lengua"];
			$asistencia = $value["asistencia_lengua"];
			$observa = $value["observa_lengua"];

		}

		if ($_GET["area"] == "matematica") {

			$area = "MATEMÁTICA";

			$saberes = $value["saberes_matematica"];
			$aprecia = $value["aprecia_matematica"];
			$asistencia = $value["asistencia_matematica"];
			$observa = $value["observa_matematica"];

		}

		if ($_GET["area"] == "ingles") {

			$area = "SEGUNDAS LENGUAS";

			$saberes = $value["saberes_ingles"];
			$aprecia = $value["aprecia_ingles"];
			$asistencia = $value["asistencia_ingles"];
			$observa = $value["observa_ingles"];

		}

		if ($_GET["area"] == "edfisica") {

			$area = "EDUCACIÓN FÍSICA";

			$saberes = $value["saberes_fisica"];
			$aprecia = $value["aprecia_fisica"];
			$asistencia = $value["asistencia_fisica"];
			$observa = $value["observa_fisica"];

		}

		if ($_GET["area"] == "artistica") {

			$area = "LENGUAJES ARTÍSTICOS";

			$saberes = $value["saberes_artistica"];
			$aprecia = $value["aprecia_artistica"];
			$asistencia = $value["asistencia_artistica"];
			$observa = $value["observa_artistica"];

		}

		if ($_GET["area"] == "quimica") {

			$area = "C.O. - QUIMICA AMBIENTAL";

			$saberes = $value["saberes_quimica"];
			$aprecia = $value["aprecia_quimica"];
			$asistencia = $value["asistencia_quimica"];
			$observa = $value["observa_quimica"];

		}

		if ($_GET["area"] == "seminario3") {

			$area = "C.O. - SEMINARIO-TALLER EDUCACIÓN, CULTURA Y SUBJETIVIDADES";

			$saberes = $value["saberes_seminario3"];
			$aprecia = $value["aprecia_seminario3"];
			$asistencia = $value["asistencia_seminario3"];
			$observa = $value["observa_seminario3"];

		}

		if ($_GET["area"] == "tierra4") {

			$area = "C.O. - CIENCIAS DE LA TIERRA I";

			$saberes = $value["saberes_tierra4"];
			$aprecia = $value["aprecia_tierra4"];
			$asistencia = $value["asistencia_tierra4"];
			$observa = $value["observa_tierra4"];

		}

		if ($_GET["area"] == "fisica4") {

			$area = "C.O. - FÍSICA AMBIENTAL";

			$saberes = $value["saberes_fisica4"];
			$aprecia = $value["aprecia_fisica4"];
			$asistencia = $value["asistencia_fisica4"];
			$observa = $value["observa_fisica4"];

		}

		if ($_GET["area"] == "pedagogia") {

			$area = "C.O. - PEDAGOGÍA";

			$saberes = $value["saberes_pedagogia"];
			$aprecia = $value["aprecia_pedagogia"];
			$asistencia = $value["asistencia_pedagogia"];
			$observa = $value["observa_pedagogia"];

		}

		if ($_GET["area"] == "psicologia") {

			$area = "C.O. - PSICOLOGÍA DE LA ADOLESCENCIA";

			$saberes = $value["saberes_psicologia"];
			$aprecia = $value["aprecia_psicologia"];
			$asistencia = $value["asistencia_psicologia"];
			$observa = $value["observa_psicologia"];

		}

		if ($_GET["area"] == "seminario4") {

			$area = "C.O. - SEMINARIO-TALLER EDUCACIÓN, JUVENTUDES Y PARTICIPACIÓN";

			$saberes = $value["saberes_seminario4"];
			$aprecia = $value["aprecia_seminario4"];
			$asistencia = $value["asistencia_seminario4"];
			$observa = $value["observa_seminario4"];

		}

		if ($_GET["area"] == "biotecnologia") {

			$area = "C.O. - BIOTECNOLOGÍA";

			$saberes = $value["saberes_biotecnologia"];
			$aprecia = $value["aprecia_biotecnologia"];
			$asistencia = $value["asistencia_biotecnologia"];
			$observa = $value["observa_biotecnologia"];

		}


		if ($_GET["area"] == "ciencia") {

			$area = "C.O. - CIENCIA, TECNOLOGÍA, SOCIEDAD, AMBIENTE Y VALORES";

			$saberes = $value["saberes_ciencia"];
			$aprecia = $value["aprecia_ciencia"];
			$asistencia = $value["asistencia_ciencia"];
			$observa = $value["observa_ciencia"];

		}

		if ($_GET["area"] == "tierra5") {

			$area = "C.O. - CIENCIAS DE LA TIERRA II";

			$saberes = $value["saberes_tierra5"];
			$aprecia = $value["aprecia_tierra5"];
			$asistencia = $value["asistencia_tierra5"];
			$observa = $value["observa_tierra5"];

		}


		if ($_GET["area"] == "proyecto") {

			$area = "C.O. - PROYECTO DE INTERVENCION SOCIOCOMUNITARIA";

			$saberes = $value["saberes_proyecto"];
			$aprecia = $value["aprecia_proyecto"];
			$asistencia = $value["asistencia_proyecto"];
			$observa = $value["observa_proyecto"];

		}

		if ($_GET["area"] == "taller") {

			$area = "C.O. - TALLER DE TECNICAS INTERPRETATIVAS Y DE ANIMACION SOCIOCULTURAL";

			$saberes = $value["saberes_taller"];
			$aprecia = $value["aprecia_taller"];
			$asistencia = $value["asistencia_taller"];
			$observa = $value["observa_taller"];

		}

		if ($_GET["area"] == "apreciacion") {

			$area = "C.O. - APRECIACION MUSICAL";

			$saberes = $value["saberes_apreciacion"];
			$aprecia = $value["aprecia_apreciacion"];
			$asistencia = $value["asistencia_apreciacion"];
			$observa = $value["observa_apreciacion"];

		}

		if ($_GET["area"] == "lenguaje3") {

			$area = "C.O. - LENGUAJE MUSICAL Y PRACTICA INSTRUMENTAL";

			$saberes = $value["saberes_lenguaje3"];
			$aprecia = $value["aprecia_lenguaje3"];
			$asistencia = $value["asistencia_lenguaje3"];
			$observa = $value["observa_lenguaje3"];

		}

		if ($_GET["area"] == "lenguaje4") {

			$area = "C.O. - LENGUAJE MUSICAL Y PRACTICA INSTRUMENTAL";

			$saberes = $value["saberes_lenguaje4"];
			$aprecia = $value["aprecia_lenguaje4"];
			$asistencia = $value["asistencia_lenguaje4"];
			$observa = $value["observa_lenguaje4"];

		}

		if ($_GET["area"] == "conjunto4") {

			$area = "C.O. - PRACTICA DE CONJUNTO";

			$saberes = $value["saberes_conjunto4"];
			$aprecia = $value["aprecia_conjunto4"];
			$asistencia = $value["asistencia_conjunto4"];
			$observa = $value["observa_conjunto4"];

		}


		if ($_GET["area"] == "vocal4") {

			$area = "C.O. - PRACTICA VOCAL";

			$saberes = $value["saberes_vocal4"];
			$aprecia = $value["aprecia_vocal4"];
			$asistencia = $value["asistencia_vocal4"];
			$observa = $value["observa_vocal4"];

		}


		if ($_GET["area"] == "lenguaje5") {

			$area = "C.O. - LENGUAJE MUSICAL Y PRACTICA INSTRUMENTAL";

			$saberes = $value["saberes_lenguaje5"];
			$aprecia = $value["aprecia_lenguaje5"];
			$asistencia = $value["asistencia_lenguaje5"];
			$observa = $value["observa_lenguaje5"];

		}

		if ($_GET["area"] == "musica") {

			$area = "C.O. - MUSICA Y CONTEXTO HISTORICO SOCIAL";

			$saberes = $value["saberes_musica"];
			$aprecia = $value["aprecia_musica"];
			$asistencia = $value["asistencia_musica"];
			$observa = $value["observa_musica"];

		}

		if ($_GET["area"] == "vocal5") {

			$area = "C.O. - PRACTICA VOCAL";

			$saberes = $value["saberes_vocal5"];
			$aprecia = $value["aprecia_vocal5"];
			$asistencia = $value["asistencia_vocal5"];
			$observa = $value["observa_vocal5"];

		}

		if ($_GET["area"] == "tecnologia") {

			$area = "C.O. - TECNOLOGIA E INFORMATICA APLICADA A LA PRODUCCION MUSICAL";

			$saberes = $value["saberes_tecnologia"];
			$aprecia = $value["aprecia_tecnologia"];
			$asistencia = $value["asistencia_tecnologia"];
			$observa = $value["observa_tecnologia"];

		}

		if ($_GET["area"] == "conjunto5") {

			$area = "C.O. - PRACTICA DE CONJUNTO";

			$saberes = $value["saberes_conjunto5"];
			$aprecia = $value["aprecia_conjunto5"];
			$asistencia = $value["asistencia_conjunto5"];
			$observa = $value["observa_conjunto5"];

		}






//----------------------------------------------------------------------------------

$bloque3 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

		

		<tr>

			<td style="text-align: center; border: 1px solid #666; background-color:#C2BDBC;; width:260px">

				<br>

				Estudiante


			</td>

			<td style="text-align: center; border: 1px solid #666; background-color:#C2BDBC;; width:260px">

				<br>

				Agrupamiento


			</td>		

			<td style="text-align: center; border: 1px solid #666; background-color:#C2BDBC;; width:260px">

				<br>

				Turno


			</td>			

		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque3, false, false, false, false, '');

//--------------------------------------------------------





//----------------------------------------------------------------------------------


$bloque4 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

		

		<tr>

			<td style="text-align: center; border: 1px solid #666; background-color:white; width:260px">

				<br>

				$value[nombre]


			</td>



			<td style="text-align: center; border: 1px solid #666; background-color:white; width:260px">

				<br>

				$curso


			</td>

			<td style="text-align: center; border: 1px solid #666; background-color:white; width:260px">

				<br>

				$turno


			</td>


		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque4, false, false, false, false, '');

//--------------------------------------------------------


//----------------------------------------------------------------------------------


$bloque5 = <<<EOF

	<table style="font-size:8px; padding:5px 10px;">

	

		

		<tr>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:180px">

				<br>

				AREAS DEL CONOCIMIENTO


			</td>



			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:200px">

				<br>

				SABERES

			</td>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:165px">

				<br>

				APRECIACION CUALITATIVA


			</td>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:80px">

				<br>

				ASISTENCIA

			</td>	

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:156px">

				<br>

				OBSERVACIONES

			</td>	



		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque5, false, false, false, false, '');

//--------------------------------------------------------

//----------------------------------------------------------------------------------


$bloque6 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

	

		

		<tr>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:180px">

				<br>

				$area


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:200px">

				<br>

				$saberes

			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:165px">

				<br>

				$aprecia


			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:80px">

				<br>

				$asistencia

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:156px">

				<br>

				$observa

			</td>	



		</tr>

		<tr>

			<td style="width:780px"><img src="images/backFact2.jpg"></td>

		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque6, false, false, false, false, '');

}

//--------------------------------------------------------

//SALIDA DEL ARCHIVO

$pdf->Output('informe_'.$area.'.pdf');


}
}

$reporte = new imprimirReporte();
$reporte -> id = $_GET["idCurso"];
$reporte -> informe = $_GET["informe"];
$reporte -> area = $_GET["area"];
$reporte -> traerImpresionReporte();


?>	