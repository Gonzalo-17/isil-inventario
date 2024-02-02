<?php
require_once("../../Config/conexion.php");
if(isset($_SESSION["ID_usuario"])){

?>

<?php require_once("../layout/page_header.php")?>

<?php require_once("../layout/page_footer.php")?>

<?php
	}else{
		header("Location:".Conectar::ruta()."index.php");
	}
?>