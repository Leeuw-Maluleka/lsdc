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

$mysql_table = "studentsassessmentmarks";
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
    $sqltext = "INSERT INTO studentsassessmentmarks (StudentName, StudentIDno, CourseName, CertificateType, ModuleName,SAQAID, PercentageAchieved, Achievement) VALUES "; //Changed
    $inputvalues = "'" . $_POST["StudentName"] . "','" . $_POST["StudentIDno"] . "','" . $_POST["CourseName"] . "','" . $_POST["CertificateType"] . "','" . $_POST["ModuleName"] . "','" . $_POST["SAQAID"] . "','" . $_POST["PercentageAchieved"] . "','" . $_POST["Achievement"] . "'"; //Modify
    $sqltext = "$sqltext ($inputvalues)"; 
    
    if (!$connection->query($sqltext)) { 
        echo "$sqltext<br>";
        die("Error: Failed to insert data into table '$mysql_table' " . $connection->error . "<br>"); //Modify
    }
}
?>
<head>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="../styles/styles.css">
</head>
<body>
    <a href="../login.php?doLogoff=true">Logoff&nbsp;user&nbsp;<?php echo $_SESSION["user"];?></a><br>
    <form name="studentsassessmentmarksform" method="post" action="<?php echo basename(__FILE__);?>"> <!-- Changed "_FILE_" -->
    
<?php
$sql = "SELECT CODE, DESCRIPTION FROM lookuptable WHERE TYPE='COURSE'";
$result = $connection->query($sql);
if (!$connection->query($sql)) {
    die("Error: Failed to return data from table lookuptable " . $connection->error . "<br>");
}

echo '<select name="CourseName">';
echo '  <option value="none">--Select Course--</option>';
if ($result->num_rows > 0) {
    $rowsremaining = $result->num_rows;

    while ($row = $result->fetch_assoc()) {
        echo '<option value="' . $row["CODE"] . '"> ' . $row["DESCRIPTION"] . '</option>';
    }
}
echo '</select>';
?>

        <br>
        <?php
        $sql = "SELECT CODE, DESCRIPTION FROM lookuptable WHERE TYPE='CERT'";
        $result = $connection->query($sql);
        if (!$connection->query($sql)) {
            die("Error: Failed to return data from table lookuptable " . $connection->error . "<br>");
        }

        echo '<select name="CertificateType">';
        echo '  <option value="none">--Select Certificate--</option>';
        if ($result->num_rows > 0) {
            $rowsremaining = $result->num_rows;

            while ($row = $result->fetch_assoc()) {
                echo '<option value="' . $row["CODE"] . '"> ' . $row["DESCRIPTION"] . '</option>';
            }
        }
        echo '</select>';
        ?>
        <br>
        <?php
        $sql = "SELECT CODE, DESCRIPTION FROM lookuptable WHERE TYPE='MODULES'";
        $result = $connection->query($sql);
        if (!$connection->query($sql)) {
            die("Error: Failed to return data from table lookuptable " . $connection->error . "<br>");
        }

        echo '<select name="ModuleName">';
        echo '  <option value="none">--Select Modules--</option>';
        if ($result->num_rows > 0) {
            $rowsremaining = $result->num_rows;

            while ($row = $result->fetch_assoc()) {
                echo '<option value="' . $row["CODE"] . '"> ' . $row["DESCRIPTION"] . '</option>';
            }
        }
        echo '</select>';
        ?>
        <br>
        <?php
        $sql = "SELECT CODE, DESCRIPTION FROM lookuptable WHERE TYPE='SAQA'";
        $result = $connection->query($sql);
        if (!$connection->query($sql)) {
            die("Error: Failed to return data from table lookuptable " . $connection->error . "<br>");
        }

        echo '<select name="SAQAID">';
        echo '  <option value="none">--Select SAQAID--</option>';
        if ($result->num_rows > 0) {
            $rowsremaining = $result->num_rows;

            while ($row = $result->fetch_assoc()) {
                echo '<option value="' . $row["CODE"] . '"> ' . $row["DESCRIPTION"] . '</option>';
            }
        }
        echo '</select>';
        ?>
        <br>
        <input type="text" name="PercentageAchieved" placeholder="PercentageAchieved">
        <br>

        <?php
        $sql = "SELECT CODE, DESCRIPTION FROM lookuptable WHERE TYPE='ACH'";
        $result = $connection->query($sql);
        if (!$connection->query($sql)) {
            die("Error: Failed to return data from table lookuptable " . $connection->error . "<br>");
        }

        echo '<select name="Achievement">';
        echo '  <option value="none">--Select Achievement--</option>';
        if ($result->num_rows > 0) {
            $rowsremaining = $result->num_rows;

            while ($row = $result->fetch_assoc()) {
                echo '<option value="' . $row["CODE"] . '"> ' . $row["DESCRIPTION"] . '</option>';
            }
        }
        echo '</select>';
        ?>

        <br>
        <input name="submitbtn" type="submit" id="C2" value="OK" onclick="return checkformvalues(this.form)"> <!-- Changed type to "submit"  and removed "onclick=" attribute-->
        <script src="../scripts/scripts.js"></script>

    </form>
</body>