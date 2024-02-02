<?php
require_once("../../Config/conexion.php");
if (isset($_SESSION["ID_usuario"])) {

?>

    <?php require_once("../layout/page_header.php") ?>


    <!-- ////inicio de cuerpo /////-->

    <!-- begin:: Content -->
    <div class="kt-content kt-grid__item kt-grid__item--fluid" id="kt_content">

        <div class="kt-portlet kt-portlet--mobile">
            <div class="kt-portlet__head">
                <div class="kt-portlet__head-label">
                    <h3 class="kt-portlet__head-title">
                        Lista de Usuarios
                    </h3>
                </div>
            </div>
            <div class="kt-portlet__body">
                <!--begin: Datatable -->
                <table class="table table-striped- table-bordered table-hover table-checkable" id="lista_data">
                    <thead>
                        <tr>
                            <th style="width: 10%;">ID Usuario</th>
                            <th style="width: 10%;">Rol </th>
                            <th style="width: 10%;">Nombre</th>
                            <th style="width: 10%;">Apellidos</th>
                            <th style="width: 10%;">Correo</th>
                            <th style="width: 10%;">Numero</th>
                            <th style="width: 10%;">Usuario</th>
                            <th style="width: 10%;">Contraseña</th>
                            <th style="width: 10%;"></th>
                            <th style="width: 10%;"></th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>

                        </tr>

                    </tbody>
                </table>
                <!--end: Datatable -->
            </div>
        </div>

    </div>
    <!-- end:: Content -->

    <!-- ////fin de cuerpo /////-->


    <?php require_once("../layout/page_footer.php") ?>

    
    <script type="text/javascript" src="mntusuario.js"></script>
    <!--begin::Page Scripts(used by this page) -->
    <script src="../../assets/app/custom/general/components/datatables/basic/scrollable.js" type="text/javascript"></script>
    <!--end::Page Scripts -->

<?php
} else {
    header("Location:" . Conectar::ruta() . "index.php");
}
?>