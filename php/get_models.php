<?php
$servername = "localhost:3307";
$username = "root";
$password = "";
$dbname = "carstats";
// Récupérer la valeur de la première liste déroulante à partir des paramètres de requête GET
$brand = $_POST['brand'];

// Récupération des valeurs

// Connexion à la base de données
$conn = new mysqli($servername, $username, $password, $dbname);

// Vérifier la connexion
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Récupérer les modèles pour la marque sélectionnée
if(isset($_POST['brand'])) {
    $brand = $_POST['brand'];
    $models_query = "SELECT nomM FROM `models` WHERE nomB='$brand'";
    $models_query_result = mysqli_query($conn, $models_query);
    
    $models_array = array();
    while ($model = mysqli_fetch_assoc($models_query_result)) {
        $models_array[] = $model;
    }
    echo json_encode($models_array);
}
?>
