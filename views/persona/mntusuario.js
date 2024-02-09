
var tabla = (function () {
  var initTable1 = function () {
    var table = $("#lista_data");

    // begin first table
    table.DataTable({
      responsive: true,
      scrollY: "50vh",
      scrollX: true,
      scrollCollapse: true,
      // Pagination settings
      dom: `<'row'<'col-sm-6 text-left'f><'col-sm-6 text-right'B>>
        <'row'<'col-sm-12'tr>>
        <'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7 dataTables_pager'lp>>`,
      buttons: ["print", "copyHtml5", "excelHtml5", "csvHtml5", "pdfHtml5"],
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


function guardaryeditar(e){
  e.preventDefault();
var formData = new FormData($("#usuario_form")[0]);
  $.ajax({
      url: "../../Controllers/usuario.php?op=guardaryeditar",
      type: "POST",
      data: formData,
      contentType: false,
      processData: false,
      success: function(datos){    
          console.log(datos);
          $('#usuario_form')[0].reset();
          $("#modalmantenimiento").modal('hide');
          $('#usuario_data').DataTable().ajax.reload();

          swal({
              title: "HelpDesk!",
              text: "Completado.",
              type: "success",
              confirmButtonClass: "btn-success"
          });
      }
  }); 
}

function editar(ID_usuario){
  $('#mdltitulo').html('Editar Registro');

  $.post("../../Controllers/usuario.php?op=mostrar", {ID_usuario : ID_usuario}, function (data) {
      data = JSON.parse(data);
      $('#usu_id').val(data.usu_id);
      $('#usu_nom').val(data.usu_nom);
      $('#usu_ape').val(data.usu_ape);
      $('#usu_correo').val(data.usu_correo);
      $('#usu_pass').val(data.usu_pass);
      $('#rol_id').val(data.rol_id).trigger('change');
  }); 

  $('#modalmantenimiento').modal('show');
}


function eliminar(ID_usuario) {
  swal(
    {
      title: "Inventario!",
      text: "Esta seguro de Eliminar el registro?",
      type: "error",
      showCancelButton: true,
      confirmButtonClass: "btn-danger",
      confirmButtonText: "Si",
      cancelButtonText: "No",     
    },
    function (isConfirm) {
      if (isConfirm) {
        $.post(
          "../../Controllers/usuario.php?op=eliminar",
          { ID_usuario: ID_usuario },
          function (data) {}
        );

        $("#lista_data").DataTable().ajax.reload();

        swal({
          title: "Inventario!",
          text: "Registro Eliminado.",
          type: "success",
          confirmButtonClass: "btn-success",
        });
      }
    }
  );
}


