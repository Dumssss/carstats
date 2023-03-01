<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style/search.css">
    <title>CarStats</title>
</head>

<body>
    <div class="container">
        <div class="title">
            <h1><span>CarStats</span></h1>
        </div>
        <div class="data">
            <?php
            $servername = "localhost:3307";
            $username = "root";
            $password = "";
            $dbname = "carstats";
            // Vérifier si les valeurs des listes déroulantes ont été soumises
            if (isset($_GET['brand']) && isset($_GET['model'])) {

                // Récupérer les valeurs des listes déroulantes
                $brand = $_GET['brand'];
                $model = $_GET['model'];

                // Se connecter à la base de données
                $conn = new mysqli($servername, $username, $password, $dbname);

                // Vérifier si la connexion a échoué
                if ($conn->connect_error) {
                    die("La connexion a échoué: " . $conn->connect_error);
                }

                // Construire la requête SQL en utilisant des paramètres préparés pour éviter les attaques par injection SQL
                $stmt = $conn->prepare("SELECT * FROM `models` WHERE nomB = ? AND nomM = ?");
                $stmt->bind_param("ss", $brand, $model);
                $stmt->execute();
                $result = $stmt->get_result();

                // Vérifier s'il y a des résultats et les afficher
                if ($result->num_rows > 0) {
                    echo "<table>";
                    echo "<tr><th>Brand</th><th>Model</th><th>Year</th><th>Motorisation</th><th>Horse Power</th><th>Power(kW)</th><th>Cynlinder</th><th>Transmission</th><th>Couple</th><th>Weight</th><th>Vmax</th><th>0-100</th></tr>";
                    while ($row = $result->fetch_assoc()) {
                        echo "<tr><td>" . $row["nomB"] . "</td><td>" . $row["nomM"] . "</td><td>" . $row["anneeM"] . "</td><td>" . $row["motorisation"] . "</td><td>" . $row["horsePower"] . "</td><td>" . $row["kwPower"] . "</td><td>" . $row["cynlinder"] . "</td><td>" . $row["transmission"] . "</td><td>" . $row["couple"] . "</td><td>" . $row["weightM"] . "</td><td>" . $row["vMax"] . "</td><td>" . $row["acceleration"] . "</td></tr>";
                    }
                    echo "</table>";
                } else {
                    echo "Aucun résultat trouvé";
                }

                // Fermer la connexion à la base de données
                $conn->close();
            }
            ?>
        </div>
    </div>
</body>

</html>