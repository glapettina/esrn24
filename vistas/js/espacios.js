/*=============================================
				EDITAR ESPACIO            
=============================================*/

$(".btnEditarEspacio").click(function(){


	var idEspacio = $(this).attr("idEspacio");

	var datos = new FormData();
	datos.append("idEspacio", idEspacio);

	$.ajax({

		url: "ajax/espacios.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){


			$("#editarEspacio").val(respuesta["nombre"]);
			$("#idEspacio").val(respuesta["id_espacio"]);

		}
	})
})


/*=============================================
				ELIMINAR ESPACIO            
=============================================*/

$(document).on("click", ".btnEliminarEspacio", function(){


	var idEspacio = $(this).attr("idEspacio");

	swal({
		title: 'Está seguro de borrar el espacio?',
		text: "Si no lo está puede cancelar la acción",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		cancelButtonText: 'Cancelar',
		confirmButtonText: 'Si, borrar espacio'
		}).then((result)=>{

			if (result.value) {

				window.location = "index.php?ruta=espacios&idEspacio="+idEspacio;
			}
		})
})


/*=============================================
				ACTIVAR ESPACIO            
=============================================*/

$(document).on("click", ".btnActivarEspacio", function(){

	var idEspacio = $(this).attr("idEspacio");
	var estadoEspacio = $(this).attr("estadoEspacio");

	var datos = new FormData();
	datos.append("activarId", idEspacio);
	datos.append("activarEspacio", estadoEspacio);

	$.ajax({

		url: "ajax/espacios.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		success: function(respuesta){

			if (window.matchMedia("(max-width:767px)").matches) {

				swal({
					title: "El espacio ha sido actualizado",
					type: "success",
					confirmButtonText: "Cerrar"
				}).then(function(result){

					if (result.value) {

						window.location = "espacios";
					}
				});
			}
		}
	})

	if (estadoEspacio == 0) {

		$(this).removeClass('btn-success');
		$(this).addClass('btn-danger');
		$(this).html('Desactivado');
		$(this).attr('estadoEspacio', 1);

	}else{

		$(this).addClass('btn-success');
		$(this).removeClass('btn-danger');
		$(this).html('Activado');
		$(this).attr('estadoEspacio', 0);
	}
})

