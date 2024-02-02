<?php
require_once("../../Config/conexion.php");
if(isset($_SESSION["ID_usuario"])){

?>

<?php require_once("../layout/page_header.php")?>

<!-- ////inicio de cuerpo /////-->

    <!-- begin:: Content -->
    <div class="kt-content kt-grid__item kt-grid__item--fluid" id="kt_content">
    
    
    </div>
    <!-- end:: Content -->
</div>
<!-- ////fin de cuerpo /////-->

<?php require_once("../layout/page_footer.php")?>

<?php
	}else{
		header("Location:".Conectar::ruta()."index.php");
	}
?>