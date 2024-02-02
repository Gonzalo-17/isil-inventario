<?php

if (!empty($_POST["btnregistrar"])) {
    if (!empty($_POST["ID_roles"]) and !empty($_POST["Nombre"]) and !empty($_POST["Correo"]) and !empty($_POST["Numero"]) and !empty($_POST["Usuario"]) and !empty($_POST["Contraseña"])) {
        
        $ID_roles=$_POST["ID_roles"];
        $Nombre=$_POST["Nombre"];
        $Correo=$_POST["Correo"];
        $Numero=$_POST["Numero"];
        $Usuario=$_POST["Usuario"];
        $Contraseña=$_POST["Contraseña"];

        $sql=$conexion->query(" insert into Usuario(ID_roles, Nombre, Correo, Numero, Usuario, Contraseña) 
        values('$ID_roles', '$Nombre', '$Correo', '$Numero', '$Usuario', '$Contraseña')");

        if ($sql==1) {
            echo '<div class="alert alert-success">Usuario registrado correctamente</div>';
        } else {
            echo '<div class="alert alert-danger">Error al registrar Usuario</div>';
        }

    }else{
        echo '<div class="alert alert-warning">Alguno de los campos esta vacio</div>';
    }
}

?>

