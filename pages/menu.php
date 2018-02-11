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
?>
<head>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="../styles/styles.css">
    <link rel="icon" type="image/png" href="../images/favicon.png">
</head>
<body>
    <a href="../login.php?doLogoff=true">Logoff</a>
    <table>
    <?php
        $user = $_SESSION["user"];
        $sql = "SELECT m.id, name, nick_name, email, password, Privileges, Timestamp, p.Description Privilege 
                FROM members m JOIN privileges p ON m.Privileges = p.ID WHERE name = '$user'";
        $result = $connection->query($sql);
        if (!$connection->query($sql)) {
            die("Error: Failed to return data from table [members] " . $connection->error . "<br>");
        }

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $userPrivilege = $row["Privilege"];
                break;
            }
        }        
        if ($userPrivilege == "Admin") {
            echo '<tr>
                    <td><a href="coursemaintform.php" class="button">Admistration</a></td>
                </tr>';
        }
    ?>
        <tr>
            <td><a href="quote.php" class="button">Quote</a></td>
        </tr>
        <tr>
            <td><a href="register.php" class="button">Register</a></td>
        </tr>
        <tr>
            <td><a href="#" class="button">Assignments</a></td>
        </tr>
        <tr>
            <td><a href="#" class="button">Billing</a></td>
        </tr>
    </table>    
</body>