<?php
    //include "../dbConfig.php";

    //This code is in the dbConfig.php but it doesn't execute on the server "https://gaea.thishost.co.za:2083"
    const DB_HOST = "localhost"; // set database host
    const DB_USER = "lsdccoza_admin"; // set database user
    const DB_PASS = "lsdcadmin123"; // set database password
    const DB_NAME = "lsdccoza_lsdcdb"; // set database name
    $connection = new mysqli(DB_HOST,DB_USER,DB_PASS); 
    if ($connection->connect_error) {die ("DB connection failed<br>".$connection->error);}
    if (!$connection->select_db(DB_NAME)) {die ("lsdcdb selection failed<br>".$connection->error);}
    /////////////////////////////////////////////////////////////////////////////////////////////////////

    $mysql_table = "coursefees";
    session_start();
    if (!isset($_SESSION["user"])) {
        echo '<head>';
        echo '<meta name="viewport" content="width=device-width">';
        echo '<link rel="stylesheet" href="../styles/styles.css">';
        echo '<link rel="icon" type="image/png" href="../images/favicon.png">';
        echo '</head>';
        echo '<body>';
        echo 'You have been logged out. <a href="../login.php">Click here</a> to log in.';
        echo '</body>';
        exit;
    }
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $_SESSION["CertificateType"] = $_POST["CertificateType"];

        $sql = "SELECT CODE, DESCRIPTION FROM lookuptable WHERE TYPE='CERT'";
        $result = $connection->query($sql);
        if (!$connection->query($sql)) {
            die("Error: Failed to return data from table lookuptable " . $connection->error . "<br>");
        }
        if ($result->num_rows > 0) {
            $rowsremaining = $result->num_rows;
            while ($row = $result->fetch_assoc()) {
                $indexName = $row["CODE"]."CourseName";
                $_SESSION[$indexName] = $_POST[$indexName];                
            }
        }
    }
?>
<head>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="../styles/styles.css">
    <link rel="icon" type="image/png" href="../images/favicon.png">
	<title>LSDC Webinars</title>
</head>
<body>
    <a href="../pages/menu.php">Menu</a><br>
    <table>
        <tr>
            <td>
				<iframe allowFullScreen frameborder="0" mozallowfullscreen src="https://player.vimeo.com/video/256988494" webkitAllowFullScreen></iframe>            
			</td>
        </tr>
    </table>
</body>