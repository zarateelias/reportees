
function filtrarLocal(){
		var desde = $('#bd-desde').val();
		var hasta = $('#bd-hasta').val();
		var url = '../php/busca_producto_fecha.php';
		var tablaPrev='<table id="example" class="display" cellspacing="0" width="100%">'+
						'<thead>'+
        				'<tr>'+
        			
              		  '<th>Codigo Remito</th>'+
			          '<th>Local</th>'+
			          '<th>Nro Deposito</th>'+
			          '<th>Nro Sobre</th>'+
			          '<th>Und Sobre</th>'+
			          '<th>Precinto</th>'+
                	  '<th>Fecha Retiro</th>'+
                	  '<th>Hora Recepcion</th>'+
                	  '<th>Fecha Proceso</th>'+
               		  '<th>Fecha Corte</th>'+
                	  '<th>Nom Cliente</th>'+
                	  '<th>Direc. Punto</th>'+
                	  '<th>Id Local</th>'+
               		  '<th>Nom Punto</th>'+
               		  '<th>Tipo Proceso</th>'+
                	  '<th>Monto declarado</th>'+
                	  '<th >Monto Diferencia</th>'+
                	  '<th >Monto Procesado</th>'+
                	  '<th >Id Procesado</th>'+
                	  '<th >Modulo Conteo</th>'+
                	  '<th >Hora Inicio Proceso</th>'+
                	  '<th >Hora Termino Proceso</th>'+
                	  '<th >Nro Corte</th>'+
                	  '<th >Estado Remesa</th>'+
                	'<th >Convenio</th>'+
            '</tr></thead>';
            
		$.ajax({
		type:'POST',
		url:url,
		data:'desde='+desde+'&hasta='+hasta,
		success: function(datos){

			var jsonData = JSON.parse(datos);
			var obtenido="";
			var auxiliar=" ";
			var final="";
			var horaFecha= null; 
			var horaInicio= null;
			var horaTermino=null;
		 	

			for (var i = 0; i < jsonData.length; i++) {
				horaFecha=jsonData[i.toString()]['fecha_retiro'];
				horaInicio=jsonData[i.toString()]['hora_inicio_proceso'];
				horaTermino=jsonData[i.toString()]['hora_termino_proceso'];
				obtenido="<tr>"+
							"<td>"+jsonData[i.toString()]['codigo_remito']+"</td>"+
							"<td>"+jsonData[i.toString()]['local']+"</td>"+
							"<td>"+jsonData[i.toString()]['numero_deposito']+"</td>"+
							"<td>0</td>"+
							"<td>0</td>"+
							"<td>"+jsonData[i.toString()]['precinto']+"</td>"+
							"<td>"+horaFecha.substr(0, 10)+"</td>"+//fecha
							"<td>"+horaFecha.substr(10, 9)+"</td>"+//hora
							"<td>"+jsonData[i.toString()]['fecha_proceso']+"</td>"+
							"<td>"+jsonData[i.toString()]['fecha_corte']+"</td>"+
							"<td>"+jsonData[i.toString()]['nombre_cliente']+"</td>"+
							"<td>"+jsonData[i.toString()]['direccion_punto']+"</td>"+
							"<td>"+jsonData[i.toString()]['id_local']+"</td>"+
							"<td>"+jsonData[i.toString()]['nombre_punto']+"</td>"+
							"<td>Recuento</td>"+
							"<td>"+jsonData[i.toString()]['monto_declarado']+"</td>"+
							"<td>"+jsonData[i.toString()]['monto_diferencia']+"</td>"+
							"<td>"+jsonData[i.toString()]['monto_procesado']+"</td>"+
							"<td>0</td>"+
							"<td>"+jsonData[i.toString()]['modulo_conteo']+"</td>"+
							"<td>"+horaInicio.substr(10, 9)+"</td>"+//hora
							"<td>"+horaTermino.substr(10, 9)+"</td>"+//hora
							"<td>"+jsonData[i.toString()]['numero_corte']+"</td>"+
							"<td>PROCESADA</td>"+
							"<td>"+jsonData[i.toString()]['convenio']+"</td>"+
						  "</tr>";
			
			auxiliar=auxiliar+" "+obtenido;
			}

			final=tablaPrev+auxiliar+"</tbody></table>"
			$(document).ready(function() {
		   $('#agrega-registros').html(final);
		      $('#example').DataTable(   
				{   "scrollY":400,
		      		"scrollX": true,
		      		
		      		"language": {
		            "lengthMenu": "Mostrar _MENU_ Registros",
		            "zeroRecords": "No hay datos para mostrar Gracias",
		            "info": "Mostrando  _PAGE_ de _PAGES_",
		            "infoEmpty": "No Existen registros",
		            "sSearch":         "Buscar:",
		            "infoFiltered": "(filtrado de un total de _MAX_ registros)"}	      		
				});
			});
		}
	});
	return false;

}


function exportar(){
	
   $('#example').table2excel({
   
		name: "Reporte Wagner"
	});


}

function locales(){
	var url = '../php/locales.php';
	$.ajax({
		type:'POST',
		url:url,
		success: function(datos){

	 $('#todosLocales').html(datos);
		}
	});
}



 