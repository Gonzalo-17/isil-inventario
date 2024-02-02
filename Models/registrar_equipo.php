<?php

if (!empty($_POST["btnregistrar"])) {
    if (!empty($_POST["ID_ubicacion"]) and !empty($_POST["ID_sede"]) and !empty($_POST["ID_torre"]) and !empty($_POST["Salon"]) and !empty($_POST["Oficina"]) 
    and !empty($_POST["ID_stock"]) and !empty($_POST["ID_almacen"]) and !empty($_POST["ID_equipo"]) and !empty($_POST["Descripcion"]) and !empty($_POST["ID_marca"]) and !empty($_POST["ID_modelo"]) and !empty($_POST["Numero_serie"]) and !empty($_POST["Codigo_isil"]) and !empty($_POST["Cantidad"]) and !empty($_POST["Imagen"])
    and !empty($_POST["ID_estado"]) and !empty($_POST["operatividad"]) and !empty($_POST["Observaciones"])
    and !empty($_POST["ID_ficha"]) and !empty($_POST["ID_ubicacion"]) and !empty($_POST["ID_stock"]) and !empty($_POST["ID_usuario"]) and !empty($_POST["ID_estado"]) and !empty($_POST["Fecha_registro"]) and !empty($_POST["ID_usuario_modificador"]) and !empty($_POST["Fecha_modificacion"])) {
        
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
