<?php
require_once("../../Config/conexion.php");
if (isset($_SESSION["ID_usuario"])) {

?>

    <?php require_once("../layout/page_header.php") ?>


    <!-- ////inicio de cuerpo /////-->

    <!-- begin:: Content -->


    <!-- begin:: Content -->
    <div class="kt-content kt-grid__item kt-grid__item--fluid" id="kt_content">

        <div class="kt-portlet kt-portlet--mobile">
            <div class="kt-portlet__head">
                <div class="kt-portlet__head-label">
                    <h3 class="kt-portlet__head-title">
                        Consulta de Usuarios
                    </h3>
                </div>
            </div>
            <div class="kt-portlet__body">
                <table class="table table-striped- table-bordered table-hover table-checkable" id="lista_data">
                    <thead>
                        <tr>
                            <th style="width: 50px;">ID Usuario</th>
                            <th style="width: 5%;">Rol </th>
                            <th style="width: 10%;">Nombre</th>
                            <th style="width: 10%;">Apellidos</th>
                            <th style="width: 10%;">Correo</th>
                            <th style="width: 10%;">Numero</th>
                            <th style="width: 10%;">Usuario</th>
                            <th style="width: 10%;">Contraseña</th>
                            <th style="width: 10%;">Editar</th>
                            <th style="width: 10%;">Eliminar</th>

                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>

            </div>
        </div>
    </div>
    <!-- end:: Content -->

    <!-- ////fin de cuerpo /////-->


    <?php require_once("../layout/page_footer.php") ?>

    <!--begin::Page Scripts(used by this page) -->
    <!-- <script src="../../assets/app/custom/general/components/extended/sweetalert2.js" type="text/javascript"></script> -->
        <!--end::Page Scripts -->

    <script type="text/javascript" src="mntusuario.js"></script>

<?php
} else {
    header("Location:" . Conectar::ruta() . "index.php");
}
?>