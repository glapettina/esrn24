

/*=============================================
EDITAR INFORME CIENTIFICA
=============================================*/

$(".tablas").on("click", ".btnEditarInformeCientifica", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);



	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesCientifica").val(respuesta["saberes_cientifica"]);
			$("#apreciaCientifica").val(respuesta["aprecia_cientifica"]);
			$("#asistenciaCientifica").val(respuesta["asistencia_cientifica"]);
			$("#observaCientifica").val(respuesta["observa_cientifica"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME SOCIALES
=============================================*/

$(".tablas").on("click", ".btnEditarInformeSociales", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);



	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesSociales").val(respuesta["saberes_sociales"]);
			$("#apreciaSociales").val(respuesta["aprecia_sociales"]);
			$("#asistenciaSociales").val(respuesta["asistencia_sociales"]);
			$("#observaSociales").val(respuesta["observa_sociales"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME LENGUA
=============================================*/

$(".tablas").on("click", ".btnEditarInformeLengua", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesLengua").val(respuesta["saberes_lengua"]);
			$("#apreciaLengua").val(respuesta["aprecia_lengua"]);
			$("#asistenciaLengua").val(respuesta["asistencia_lengua"]);
			$("#observaLengua").val(respuesta["observa_lengua"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME MATEMATICA
=============================================*/

$(".tablas").on("click", ".btnEditarInformeMatematica", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesMatematica").val(respuesta["saberes_matematica"]);
			$("#apreciaMatematica").val(respuesta["aprecia_matematica"]);
			$("#asistenciaMatematica").val(respuesta["asistencia_matematica"]);
			$("#observaMatematica").val(respuesta["observa_matematica"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME INGLES
=============================================*/

$(".tablas").on("click", ".btnEditarInformeIngles", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesIngles").val(respuesta["saberes_ingles"]);
			$("#apreciaIngles").val(respuesta["aprecia_ingles"]);
			$("#asistenciaIngles").val(respuesta["asistencia_ingles"]);
			$("#observaIngles").val(respuesta["observa_ingles"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME EDUCACIÓN FISICA
=============================================*/

$(".tablas").on("click", ".btnEditarInformeFisica", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesFisica").val(respuesta["saberes_fisica"]);
			$("#apreciaFisica").val(respuesta["aprecia_fisica"]);
			$("#asistenciaFisica").val(respuesta["asistencia_fisica"]);
			$("#observaFisica").val(respuesta["observa_fisica"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME EDUCACIÓN ARTÍSTICA
=============================================*/

$(".tablas").on("click", ".btnEditarInformeArtistica", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");
	

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesArtistica").val(respuesta["saberes_artistica"]);
			$("#apreciaArtistica").val(respuesta["aprecia_artistica"]);
			$("#asistenciaArtistica").val(respuesta["asistencia_artistica"]);
			$("#observaArtistica").val(respuesta["observa_artistica"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME DESARROLLO
=============================================*/

$(".tablas").on("click", ".btnEditarInformeDesarrollo", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesDesarrollo").val(respuesta["saberes_desarrollo"]);
			$("#apreciaDesarrollo").val(respuesta["aprecia_desarrollo"]);
			$("#asistenciaDesarrollo").val(respuesta["asistencia_desarrollo"]);
			$("#observaDesarrollo").val(respuesta["observa_desarrollo"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME INTRODUCCION
=============================================*/

$(".tablas").on("click", ".btnEditarInformeIntroduccion", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);



	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesIntroduccion").val(respuesta["saberes_introduccion"]);
			$("#apreciaIntroduccion").val(respuesta["aprecia_introduccion"]);
			$("#asistenciaIntroduccion").val(respuesta["asistencia_introduccion"]);
			$("#observaIntroduccion").val(respuesta["observa_introduccion"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME AMBIENTE
=============================================*/

$(".tablas").on("click", ".btnEditarInformeAmbiente", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesAmbiente").val(respuesta["saberes_ambiente"]);
			$("#apreciaAmbiente").val(respuesta["aprecia_ambiente"]);
			$("#asistenciaAmbiente").val(respuesta["asistencia_ambiente"]);
			$("#observaAmbiente").val(respuesta["observa_ambiente"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME GENERACION (TURISMO)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeGeneracion", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);
	datos.append("periodo", periodo);	


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesGeneracion").val(respuesta["saberes_generacion"]);
			$("#apreciaGeneracion").val(respuesta["aprecia_generacion"]);
			$("#asistenciaGeneracion").val(respuesta["asistencia_generacion"]);
			$("#observaGeneracion").val(respuesta["observa_generacion"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME PRODUCCION (TURISMO)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeProduccion", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesProduccion").val(respuesta["saberes_produccion"]);
			$("#apreciaProduccion").val(respuesta["aprecia_produccion"]);
			$("#asistenciaProduccion").val(respuesta["asistencia_produccion"]);
			$("#observaProduccion").val(respuesta["observa_produccion"]);			


								
		}
	})

	
})

/*===================================================
EDITAR INFORME BIOTECNOLOGÍA (CIENCIAS NATURALES)
===================================================*/

$(".tablas").on("click", ".btnEditarInformeBiotecnologia", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);	


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesBiotecnologia").val(respuesta["saberes_biotecnologia"]);
			$("#apreciaBiotecnologia").val(respuesta["aprecia_biotecnologia"]);
			$("#asistenciaBiotecnologia").val(respuesta["asistencia_biotecnologia"]);
			$("#observaBiotecnologia").val(respuesta["observa_biotecnologia"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME PROYECTO (TURISMO)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeProyecto", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesProyecto").val(respuesta["saberes_proyecto"]);
			$("#apreciaProyecto").val(respuesta["aprecia_proyecto"]);
			$("#asistenciaProyecto").val(respuesta["asistencia_proyecto"]);
			$("#observaProyecto").val(respuesta["observa_proyecto"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME TALLER (TURISMO)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeTaller", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesTaller").val(respuesta["saberes_taller"]);
			$("#apreciaTaller").val(respuesta["aprecia_taller"]);
			$("#asistenciaTaller").val(respuesta["asistencia_taller"]);
			$("#observaTaller").val(respuesta["observa_taller"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME QUIMICA (CIENCIAS NATURALES)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeQuimica", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);



	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesQuimica").val(respuesta["saberes_quimica"]);
			$("#apreciaQuimica").val(respuesta["aprecia_quimica"]);
			$("#asistenciaQuimica").val(respuesta["asistencia_quimica"]);
			$("#observaQuimica").val(respuesta["observa_quimica"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME SEMINARIO 3
=============================================*/

$(".tablas").on("click", ".btnEditarInformeSeminario3", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);



	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesSeminario3").val(respuesta["saberes_seminario3"]);
			$("#apreciaSeminario3").val(respuesta["aprecia_seminario3"]);
			$("#asistenciaSeminario3").val(respuesta["asistencia_seminario3"]);
			$("#observaSeminario3").val(respuesta["observa_seminario3"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME TIERRA 4 (CIENCIAS NATURALES)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeTierra4", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesTierra4").val(respuesta["saberes_tierra4"]);
			$("#apreciaTierra4").val(respuesta["aprecia_tierra4"]);
			$("#asistenciaTierra4").val(respuesta["asistencia_tierra4"]);
			$("#observaTierra4").val(respuesta["observa_tierra4"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME FISICA 4 (CIENCIAS NATURALES)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeFisica4", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesFisica4").val(respuesta["saberes_fisica4"]);
			$("#apreciaFisica4").val(respuesta["aprecia_fisica4"]);
			$("#asistenciaFisica4").val(respuesta["asistencia_fisica4"]);
			$("#observaFisica4").val(respuesta["observa_fisica4"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME PEDAGOGÍA (EDUCACIÓN)
=============================================*/

$(".tablas").on("click", ".btnEditarInformePedagogia", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesPedagogia").val(respuesta["saberes_pedagogia"]);
			$("#apreciaPedagogia").val(respuesta["aprecia_pedagogia"]);
			$("#asistenciaPedagogia").val(respuesta["asistencia_pedagogia"]);
			$("#observaPedagogia").val(respuesta["observa_pedagogia"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME PSICOLOGÍA (EDUCACIÓN)
=============================================*/

$(".tablas").on("click", ".btnEditarInformePsicologia", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesPsicologia").val(respuesta["saberes_psicologia"]);
			$("#apreciaPsicologia").val(respuesta["aprecia_psicologia"]);
			$("#asistenciaPsicologia").val(respuesta["asistencia_psicologia"]);
			$("#observaPsicologia").val(respuesta["observa_psicologia"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME SEMINARIO 4 (EDUCACIÓN)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeSeminario4", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesSeminario4").val(respuesta["saberes_seminario4"]);
			$("#apreciaSeminario4").val(respuesta["aprecia_seminario4"]);
			$("#asistenciaSeminario4").val(respuesta["asistencia_seminario4"]);
			$("#observaSeminario4").val(respuesta["observa_seminario4"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME CONJUNTO 4 (ARTE - MUSICA)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeConjunto4", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesConjunto4").val(respuesta["saberes_conjunto4"]);
			$("#apreciaConjunto4").val(respuesta["aprecia_conjunto4"]);
			$("#asistenciaConjunto4").val(respuesta["asistencia_conjunto4"]);
			$("#observaConjunto4").val(respuesta["observa_conjunto4"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME VOCAL 4 (ARTE - MUSICA)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeVocal4", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesVocal4").val(respuesta["saberes_vocal4"]);
			$("#apreciaVocal4").val(respuesta["aprecia_vocal4"]);
			$("#asistenciaVocal4").val(respuesta["asistencia_vocal4"]);
			$("#observaVocal4").val(respuesta["observa_vocal4"]);			


								
		}
	})

	
})

/*=============================================
EDITAR LENGUAJE 5 (ARTE - MUSICA)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeLenguaje5", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);
	datos.append("periodo", periodo);	


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesLenguaje5").val(respuesta["saberes_lenguaje5"]);
			$("#apreciaLenguaje5").val(respuesta["aprecia_lenguaje5"]);
			$("#asistenciaLenguaje5").val(respuesta["asistencia_lenguaje5"]);
			$("#observaLenguaje5").val(respuesta["observa_lenguaje5"]);			


								
		}
	})

	
})


/*=============================================
EDITAR MUSICA (ARTE - MUSICA)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeMusica", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesMusica").val(respuesta["saberes_musica"]);
			$("#apreciaMusica").val(respuesta["aprecia_musica"]);
			$("#asistenciaMusica").val(respuesta["asistencia_musica"]);
			$("#observaMusica").val(respuesta["observa_musica"]);			


								
		}
	})

	
})


/*=============================================
EDITAR VOCAL 5 (ARTE - MUSICA)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeVocal5", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesVocal5").val(respuesta["saberes_vocal5"]);
			$("#apreciaVocal5").val(respuesta["aprecia_vocal5"]);
			$("#asistenciaVocal5").val(respuesta["asistencia_vocal5"]);
			$("#observaVocal5").val(respuesta["observa_vocal5"]);			


								
		}
	})

	
})

/*=============================================
EDITAR TECNOLOGIA (ARTE - MUSICA)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeTecnologia", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesTecnologia").val(respuesta["saberes_tecnologia"]);
			$("#apreciaTecnologia").val(respuesta["aprecia_tecnologia"]);
			$("#asistenciaTecnologia").val(respuesta["asistencia_tecnologia"]);
			$("#observaTecnologia").val(respuesta["observa_tecnologia"]);			


								
		}
	})

	
})


/*=============================================
EDITAR CONJUNTO 5 (ARTE - MUSICA)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeConjunto5", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesConjunto5").val(respuesta["saberes_conjunto5"]);
			$("#apreciaConjunto5").val(respuesta["aprecia_conjunto5"]);
			$("#asistenciaConjunto5").val(respuesta["asistencia_conjunto5"]);
			$("#observaConjunto5").val(respuesta["observa_conjunto5"]);			


								
		}
	})

	
})


/*=============================================
IMPRIMIR INFORME INDIVIDUAL
=============================================*/

$(".tablas").on("click", ".btnImprimirInformeIndividual", function(){



	var idAlumno = $(this).attr("idAlumno");
	var informe = $(this).attr("informe");
	var area = $(this).attr("area");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	window.open("extensiones/tcpdf/pdf/"+informe+".php?id="+idAlumno+"&informe="+informe+"&area="+area+"&tabla="+tabla+"&periodo="+periodo, "_blank");

})


/*=============================================
IMPRIMIR INFORME X ÁREA
=============================================*/

$(".btnInformeArea").click(function(){

//$(".tablas").on("click", ".btnInformeArea", function(){


	var idCurso = $(this).attr("idCurso");
	var idCurso2 = $(this).attr("idCurso2");
	var idCurso3 = $(this).attr("idCurso3");
	var idCurso4 = $(this).attr("idCurso4");
	var informe = $(this).attr("informe");
	var area = $(this).attr("area");
	var tabla = $(this).attr("tabla");
	var modalidad = $(this).attr("modalidad");
	var periodo = $(this).attr("periodo");


	//console.log(modalidad);
	

	window.open("extensiones/tcpdf/pdf/"+informe+".php?informe="+informe+"&area="+area+"&tabla="+tabla+"&idCurso="+idCurso+"&idCurso2="+idCurso2+"&idCurso3="+idCurso3+"&idCurso4="+idCurso4+"&modalidad="+modalidad+"&periodo="+periodo, "_blank");

})

/*=============================================
IMPRIMIR INFORME CICLO BASICO
=============================================*/

$(".tablas").on("click", ".btnImprimirInformeCb", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var informe = $(this).attr("informe");
	var periodo = $(this).attr("periodo");



	window.open("extensiones/tcpdf/pdf/"+informe+".php?id="+idAlumno+"&tabla="+tabla+"&informe="+informe+"&periodo="+periodo, "_blank");

})


/*=============================================
IMPRIMIR INFORME CICLO ORIENTADO 3ER. AÑO
=============================================*/

$(".tablas").on("click", ".btnImprimirInformeCo3", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var informe = $(this).attr("informe");
	var modalidad = $(this).attr("modalidad");
	var periodo = $(this).attr("periodo");



	window.open("extensiones/tcpdf/pdf/"+informe+".php?id="+idAlumno+"&tabla="+tabla+"&informe="+informe+"&modalidad="+modalidad+"&periodo="+periodo, "_blank");

})


/*=============================================
IMPRIMIR INFORME CICLO ORIENTADO 4TO. AÑO
=============================================*/

$(".tablas").on("click", ".btnImprimirInformeCo4", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var informe = $(this).attr("informe");
	var modalidad = $(this).attr("modalidad");
	var periodo = $(this).attr("periodo");



	window.open("extensiones/tcpdf/pdf/"+informe+".php?id="+idAlumno+"&tabla="+tabla+"&informe="+informe+"&modalidad="+modalidad+"&periodo="+periodo, "_blank");

})


/*=============================================
IMPRIMIR INFORME CICLO ORIENTADO 5TO. AÑO
=============================================*/

$(".tablas").on("click", ".btnImprimirInformeCo5", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var informe = $(this).attr("informe");
	var modalidad = $(this).attr("modalidad");
	var periodo = $(this).attr("periodo");



	window.open("extensiones/tcpdf/pdf/"+informe+".php?id="+idAlumno+"&tabla="+tabla+"&informe="+informe+"&modalidad="+modalidad+"&periodo="+periodo, "_blank");

})