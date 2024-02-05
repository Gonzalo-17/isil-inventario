"use strict";
var tabla = (function () {
  var initTable1 = function () {
    var table = $("#lista_data");

    // begin first table
    table.DataTable({
        responsive: true,
        scrollY: '50vh',
			scrollX: true,
			scrollCollapse: true,
        // Pagination settings
        dom: `<'row'<'col-sm-6 text-left'f><'col-sm-6 text-right'B>>
        <'row'<'col-sm-12'tr>>
        <'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7 dataTables_pager'lp>>`,
        buttons: [
            'print',
            'copyHtml5',
            'excelHtml5',
            'csvHtml5',
            'pdfHtml5',
        ],
      ajax: {
        url: "../../Controllers/usuario.php?op=listar",
        type: "POST",
        data: {
          pagination: {
            perpage: 50,
          },
        },
      },
    });
  };

  return {
    //main function to initiate the module
    init: function () {
      initTable1();
    },
  };
})();
jQuery(document).ready(function () {
  tabla.init();

});


// var tabla;

// $(document).ready(function(){

//     tabla=$('#lista_data').dataTable({
//         scrollY: '50vh',
// 			scrollX: true,
// 			scrollCollapse: true,
//         "aProcessing": true,
//         "aServerSide": true,
//         dom: 'Bfrtip',
//         "searching": true,
//         lengthChange: false,
//         colReorder: true,
//         buttons: [
//                 'copyHtml5',
//                 'excelHtml5',
//                 'csvHtml5',
//                 'pdfHtml5'
//                 ],
//         "ajax":{
//             url: '../../Controllers/usuario.php?op=listar',
//             type : "post",
//             dataType : "json",
//             error: function(e){
//                 console.log(e.responseText);
//             }
//         },
//         "bDestroy": true,
//         "responsive": true,
//         "bInfo":true,
//         "iDisplayLength": 10,
//         "autoWidth": false,
//         "language": {
//             "sProcessing":     "Procesando...",
//             "sLengthMenu":     "Mostrar _MENU_ registros",
//             "sZeroRecords":    "No se encontraron resultados",
//             "sEmptyTable":     "Ningún dato disponible en esta tabla",
//             "sInfo":           "Mostrando un total de _TOTAL_ registros",
//             "sInfoEmpty":      "Mostrando un total de 0 registros",
//             "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
//             "sInfoPostFix":    "",
//             "sSearch":         "Buscar:",
//             "sUrl":            "",
//             "sInfoThousands":  ",",
//             "sLoadingRecords": "Cargando...",
//             "oPaginate": {
//                 "sFirst":    "Primero",
//                 "sLast":     "Último",
//                 "sNext":     "Siguiente",
//                 "sPrevious": "Anterior"
//             },
//             "oAria": {
//                 "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
//                 "sSortDescending": ": Activar para ordenar la columna de manera descendente"
//             }
//         }
//     })

// });
