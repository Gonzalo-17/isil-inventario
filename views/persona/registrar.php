<?php
require_once("../../Config/conexion.php");
if(isset($_SESSION["ID_usuario"])){

?>

<?php require_once("../layout/page_header.php")?>



<!-- ////inicio de cuerpo /////-->

<!-- begin:: Content -->
<div class="kt-content kt-grid__item kt-grid__item--fluid" id="kt_content">

    <!--begin::Portlet-->
    <div class="kt-portlet">
        <div class="kt-portlet__head">
            <div class="kt-portlet__head-label">
                <h3 class="kt-portlet__head-title">
                    Registro de Usuario
                </h3>
            </div>
        </div>
        <!--begin::Form-->
        <form method="post" id="usuario_form" class="kt-form">
            <div class="kt-portlet__body">

                <div class="form-group">
                    <label for="exampleSelect1">Seleccionar Rol</label>
                    <select class="form-control" id="exampleSelect1">
                        <option>Seleccionar</option>
                        <option value="1">administrador</option>
                        <option value="1">supervisor</option>
                        <option value="1">editor</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Nombre Completo:</label>
                    <input type="text" class="form-control" placeholder="Ingrese nombre completo">
                </div>

                <div class="form-group">
                    <label>Apellidos Completos:</label>
                    <input type="text" class="form-control" placeholder="Ingrese nombre completo">
                </div>

                <div class="form-group">
                    <label>Dirección de correo electrónico:</label>
                    <input type="email" class="form-control" placeholder="Ingrese email">
                </div>

                <div class="form-group">
                    <label>Celular</label>
                    <input class="form-control" placeholder="Ingrese N° de celular" type="tel" value="" id="">
                </div>

                <div class="form-group">
                    <label>Usuario:</label>
                    <input type="text" class="form-control" placeholder="Ingrese Usuario">
                </div>

                <div class="form-group">
                    <label>Contraseña:</label>
                    <input type="password" class="form-control" placeholder="Password">
                </div>

                <div class="kt-portlet__foot">
                    <div class="kt-form__actions">
                        <button type="reset" class="btn btn-accent">Registrar</button>
                        <button type="reset" class="btn btn-secondary">Cancelar</button>
                    </div>
                </div>
        </form>
        <!--end::Form-->
    </div>
    <!--end::Portlet-->


</div>

<!-- end:: Content -->

<!-- ////fin de cuerpo /////-->

<?php require_once("../layout/page_footer.php")?>

<?php
	}else{
		header("Location:".Conectar::ruta()."index.php");
	}
?>

