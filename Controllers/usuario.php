<?php
//TODO: Se incluyen los archivos necesarios
require_once("../Config/conexion.php");
require_once("../Models/Usuario.php");
//TODO: Se crea una instancia de la clase Usuario
$usuario = new Usuario();
switch ($_GET["op"]) {
    case "guardaryeditar":
        if (empty($_POST["usu_id"])) {
            $usuario->insert_usuario($_POST["ID_roles"], $_POST["Nombre"], $_POST["Apellidos"], $_POST["Correo"], $_POST["Numero"], $_POST["Usuario"], $_POST["Contraseña"]);
        } else {
            $usuario->update_usuario($_POST["ID_roles"], $_POST["Nombre"], $_POST["Apellidos"], $_POST["Correo"], $_POST["Numero"], $_POST["Usuario"], $_POST["Contraseña"], $_POST["ID_usuario"]);
            break;
        }

    case "listar":
        $datos = $usuario->get_usuario();
        $data = Array();
        foreach($datos as $row){
            $sub_array = array();

            $sub_array[] = $row["ID_usuario"];

            if ($row["ID_roles"]=="1"){
                $sub_array[] = '<span class="badge badge-warning">Administrador</span>';
            }else{
                $sub_array[] = '<span class="badge badge-success">Editor</span>';
            }


            $sub_array[] = $row["Nombre"];
            $sub_array[] = $row["Apellidos"];
            $sub_array[] = $row["Correo"];
            $sub_array[] = $row["Numero"];
            $sub_array[] = $row["Usuario"];
            $sub_array[] = $row["Contraseña"];

            $sub_array[] = '<button type="button" onClick="editar('.$row["ID_usuario"].');"  id="'.$row["ID_usuario"].'" class="btn btn-inline btn-warning btn-sm ladda-button"><i class="fa fa-edit"></i></button>';
            $sub_array[] = '<button type="button" onClick="eliminar('.$row["ID_usuario"].');"  id="'.$row["ID_usuario"].'" class="btn btn-inline btn-danger btn-sm ladda-button"><i class="fa fa-trash"></i></button>';

            
            $data[] = $sub_array;        
        }
        $results = array(
            "sEcho"=>1,
            "iTotalRecords"=>count($data),
            "iTotalDisplayRecords"=>count($data),
            "aaData"=>$data);
        echo json_encode($results);
        break;

    case "eliminar":
        $usuario->delete_usuario($_POST["ID_usuario"]);
        break;

    case "mostrar":
        
}

?>