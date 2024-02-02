<?php
session_start();
if (!empty($_POST["btningresar"])) {
    if(!empty($_POST["Usuario"]) and !empty($_POST["Contraseña"])) {
        $Usuario=$_POST["Usuario"];
        $Contraseña=$_POST["Contraseña"];
        $sql = $conexion->query(" select * from usuario where Usuario='$Usuario' and Contraseña='$Contraseña'");
        if ($datos=$sql-> fetch_object()) {
            $_SESSION["ID_usuario"]=$datos ->ID_usuario;
            $_SESSION["Nombre"]=$datos ->Nombre;
            header("location: ../tablero/index.php");
        } else {
            echo "<div class='alert alert-danger'> NO existe tilin</div>";
        }
    } else {
        echo "Campos vacios";
    }
}
?>