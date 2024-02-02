<?php

if(!empty($_POST["btnregistrar"])) {
    if (!empty($_POST["ID_roles"]) and !empty($_POST["Nombre"]) and !empty($_POST["Correo"]) and !empty($_POST["Numero"]) and !empty($_POST["Usuario"]) and !empty($_POST["Contraseña"])) {
        $ID_usuario=$_POST["id"];
        $ID_roles=$_POST["ID_roles"];
        $Nombre=$_POST["Nombre"];
        $Correo=$_POST["Correo"];
        $Numero=$_POST["Numero"];
        $Usuario=$_POST["Usuario"];
        $Contraseña=$_POST["Contraseña"];
        
        $sql=$conexion->query(" update usuario set ID_roles=$ID_roles, Nombre='$Nombre', Correo='$Correo', Numero=$Numero, Usuario='$Usuario', Contraseña='$Contraseña' where ID_usuario=$id ");

        if($sql==1) {
            header("location: ../view/visualizar_usuario.php");
        } else {
            echo"<div class='alert alert-danger'>ERROR AL MODIFICAR EL PRODUCTO</div>";
        }
    }else {
        echo "<div class='alert alert-warning'>Campos vacies</div>";
    }
}

?>