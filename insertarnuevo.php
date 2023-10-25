<?php
    $servername="localhost";
    $username="root";
    $password="admin";
    $dbname="lunes";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if($conn-> connect_error){
        die("La conexion a la base de datos fallo:".$conn->connect_error);
    }

    if($_SERVER["REQUEST_METHOD"] === "POST") {
        //Obtener los datos enviados desde el formulario
        $nombre = $_POST["nombre"];
        $apellido = $_POST["apellido"];
        $nacimiento = $_POST ["nacimiento"];

        //Consulta SQL para insertar una nueva persona en la tabla
        $sql = "INSERT INTO lunes(nombre, apellido, nacimiento) VALUES('$nombre', '$apellido', '$nacimiento')";

        //Ejecutar la consulta
        if($conn->query($sql) === TRUE) {
           echo "Nueva persona agregada con exito !!!!";
    }else{
           echo "Error al agregar la persona".$conn->error;
         }
}
?>