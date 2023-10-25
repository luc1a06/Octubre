<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Captura-Muestra</title>

    <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

    <link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
    <script>
        $(document).ready(function (){

            function actualizarDatos() {
                $.get("mostrar.php", function(data) {
                    $("#resultados").html(data);
                });
            }
            actualizarDatos();

            $("#formulario").submit(function(event) {
                event.preventDefault();
                $.post("insertarnuevo.php", $(this).serialize(), function (data){
                    $("#mensaje").html(data);
                    actualizarDatos();
                    $("#formulario")[0].reset();
                });
            });
        });
    </script>
    <h1>INSERTAR VALORES</h1>
    
    <form id="formulario">
        <label for="nombre">Nombre: </label>
        <input type="text" id="nombre" name="nombre" required><br>
        <label for="apellido">Apellido: </label>
        <input type="text" id="apellido" name="apellido" required><br>
        <label for="nacimiento">Nacimiento: </label>
        <input type="text" id="nacimiento" name="nacimiento" required><br>

        <input type="submit" value="Agregar registro">
    </form>

<div id="mensaje"></div>

<div id="resultados"></div>

</body>
</html>