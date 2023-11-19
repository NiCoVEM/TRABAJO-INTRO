<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Encuesta sobre el medio ambiente</title>
    <style>
        html {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #fff;
        }

        body {
            margin: 0;
        }

        h1 {
            text-align: center;
            color: #333;
            margin: 20px 0;
        }

        form {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        p {
            font-size: 18px;
            margin-bottom: 20px; /* Separación adicional entre preguntas */
            text-align: center; /* Centrar el texto */
        }

        ul {
            list-style-type: none;
            padding: 0;
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        li {
            width: 18%;
            text-align: center;
        }

        input[type="radio"] {
            margin: 0 5px;
        }

        input[type="submit"] {
            padding: 10px 15px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<h1>Encuesta sobre el medio ambiente</h1>

<?php
$servername = "localhost";
$username = "root";
$password = "proyectoing";
$dbname = "preguntas y respuestas";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

$sql = "SELECT * FROM preguntas";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $counter = 0; // Contador para controlar cada 5 preguntas
    $themes = array("Emisiones de gases de efecto invernadero:", "Deforestación:", "Cambios en el uso del suelo", "Agricultura y ganadería intensivas:", "Uso de aerosoles y otros contaminantes:");

    while ($row = $result->fetch_assoc()) {
        $counter++;

        // Agregar un subtítulo cada 5 preguntas
        if ($counter == 1) {
            echo "<h2>{$themes[0]}</h2>";
        } elseif ($counter == 6) {
            echo "<h2>{$themes[1]}</h2>";
        } elseif ($counter == 11) {
            echo "<h2>{$themes[2]}</h2>";
        } elseif ($counter == 16) {
            echo "<h2>{$themes[3]}</h2>";
        } elseif ($counter == 21) {
            echo "<h2>{$themes[4]}</h2>";
        }

        // Mostrar el número y la pregunta sin "Pregunta"
        echo "<p><strong>{$counter}:</strong> {$row['pregunta']}</p>";
        
        echo "<ul>";
        echo "<li>Muy en desacuerdo</li>";
        for ($i = 1; $i <= 5; $i++) {
            echo "<li><input type='radio' name='q{$row['id']}' value='{$i}'> {$i}</li>";
        }
        echo "<li>Muy de acuerdo</li>";
        echo "</ul>";
    }
    
    echo '<input type="submit" value="Enviar respuestas">';
    echo '</form>';
} else {
    echo "<p>No hay preguntas en la base de datos.</p>";
}

$conn->close();
?>

</body>
</html>
