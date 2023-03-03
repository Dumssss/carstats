<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../style/get_models.css">
  <title>CarStats</title>
</head>
<body>
  <div class="container">
    
<?php

// /**Configuration des variables du login */
$email = $_GET['email'];
$user_password = $_GET['password'];

// /**Configuration des variables de la BD */
$servername = "localhost:3307";
$username = "root";
$password = "";
$dbname = "carstats";

// /**Enregistrement des logs dans la bd */

$conn = new mysqli($servername, $username, $password, $dbname);
mysqli_select_db($conn, $dbname);

if ($conn->connect_error) {
  die('Connection Failed :' . $conn->connect_error);
} else {
  $stmt = $conn->prepare("insert ignore into registration(email, password)
            values(?, ?)");
  $stmt->bind_param("ss", $email, $user_password);
  $stmt->execute();
  echo "<h1><span>CarsStats</span></h1>";
  $stmt->close();

}

// Récupérer la liste des marques depuis la base de données
// Connexion à la base de données
$conn = new mysqli($servername, $username, $password, $dbname);

// Récupérer la liste des marques depuis la base de données
$brands_query = "SELECT nomB FROM `brand`";
$brands_query_result = mysqli_query($conn, $brands_query);
echo "<div class=\"select-box\">";
echo "<form id=\"search-form\" method=\"GET\" action=\"search.php\">";
// Vérification des résultats et affichage de la première liste déroulante
if (mysqli_num_rows($brands_query_result) > 0) {
  echo "<select name='brand' id='brand' onchange='getModels(this.value)' required>";
  echo "<option value=''>-- Sélectionner une marque --</option>";
  while ($brand = mysqli_fetch_assoc($brands_query_result)) {
    echo "<option value='" . $brand['nomB'] . "'>" . $brand['nomB'] . "</option>";
  }
  echo "</select>";
} else {
  echo "0 résultat trouvé";
}

?>

<!-- Fonction JavaScript pour récupérer les modèles -->
<script>
  function getModels(brand) {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
        var models = JSON.parse(this.responseText);
        var model_select = document.getElementById("model");
        model_select.innerHTML = "<option value=''>-- Sélectionner un modèle --</option>";
        for (var i = 0; i < models.length; i++) {
          var option = document.createElement("option");
          option.value = models[i].nomM;
          option.text = models[i].nomM;
          model_select.add(option);
        }
      }
    };
    xhr.open("GET", "get_models.php?brand=" + brand, true);
    xhr.send();
  }
</script>

<!-- Liste déroulante des modèles (initialisée vide) -->
<select name='model' id='model' required>
  <option value=''>-- Sélectionner un modèle --</option>
</select>
<button type="submit" name="search" value="1">Rechercher</button>
</form>
</div>
</div>
</body>
</html>