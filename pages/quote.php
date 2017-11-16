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
        echo 'You have been logged out. <a href="../login.php">Click here</a> to log in.';
        exit;
    }
?>
<head>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="../styles/styles.css">
</head>
<body>
    <a href="../pages/menu.php">Menu</a><br>
    <form name="feesquote" method="post" action="<?php echo basename(__FILE__);?>"> <!-- Changed "_FILE_" -->
    
    <?php
        $sql = "SELECT CODE, DESCRIPTION FROM lookuptable WHERE TYPE='CERT'";
        $result = $connection->query($sql);
        if (!$connection->query($sql)) {
            die("Error: Failed to return data from table lookuptable " . $connection->error . "<br>");
        }
        echo $_SESSION["CertificateType"].'<br>';
        echo '<select name="CertificateType" onchange="return OnLevelChange(this.form)">';
        echo '  <option value="none">--Select Level--</option>';
        if ($result->num_rows > 0) {
            $rowsremaining = $result->num_rows;

            while ($row = $result->fetch_assoc()) {
                $_option = '<option value="' . $row["CODE"] . '"> ' . $row["DESCRIPTION"] . '</option>';
                if (isset($_SESSION["CertificateType"]) and $row["CODE"] == $_SESSION["CertificateType"]){
                    $_option = '<option value="' . $row["CODE"] . '" selected="selected"> ' . $row["DESCRIPTION"] . '</option>';
                }
                echo '<option value="' . $row["CODE"] . '"> ' . $row["DESCRIPTION"] . '</option>';
            }
        }
        echo '</select>';
    ?>

<?php
    $sql = "SELECT CODE, DESCRIPTION FROM lookuptable WHERE TYPE='COURSE' AND PARENTCODE='NT'";
    $result = $connection->query($sql);
    if (!$connection->query($sql)) {
        die("Error: Failed to return data from table lookuptable " . $connection->error . "<br>");
    }

    echo '<select class="course" name="NTCourseName">';
    echo '  <option value="none">--National--</option>';
    if ($result->num_rows > 0) {
        $rowsremaining = $result->num_rows;

        while ($row = $result->fetch_assoc()) {
            echo '<option value="' . $row["CODE"] . '"> ' . $row["DESCRIPTION"] . '</option>';
        }
    }
    echo '</select>';
?>

        <br>
        <br>
    <?php
        $sql = "SELECT CODE, DESCRIPTION FROM lookuptable WHERE TYPE='COURSE' AND PARENTCODE IS NULL";
        $result = $connection->query($sql);
        if (!$connection->query($sql)) {
            die("Error: Failed to return data from table lookuptable " . $connection->error . "<br>");
        }

        echo '<select class="course" name="CTCourseName" >';
        echo '  <option value="none">--Certificate--</option>';
        if ($result->num_rows > 0) {
            $rowsremaining = $result->num_rows;

            while ($row = $result->fetch_assoc()) {
                echo '<option value="' . $row["CODE"] . '"> ' . $row["DESCRIPTION"] . '</option>';
            }
        }
        echo '</select>';
        ?>
        <input name="submitbtn" type="submit" id="C2" value="OK" onclick="return checkformvalues(this.form)"> <!-- Changed type to "submit"  and removed "onclick=" attribute-->
        <script src="../scripts/scripts.js"></script>

    </form>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $coursecode = $_POST["NTCourseName"];
    $_SESSION["CertificateType"] = $_POST["CertificateType"];
    $_SESSION["CTCourseName"] = $_POST["CTCourseName"];
    if ($_POST["CertificateType"] == "CT") {
        $coursecode = $_POST["CTCourseName"];
    }
    $sqltext = "SELECT CourseCode, l.Description,Payment,Registration,Certification,CarryCard,Duration, 
                (Payment*Duration+Certification+Registration+COALESCE(CarryCard,0)) TotalFees 
                FROM coursefees c JOIN LookupTable l ON c.CourseCode = l.Code AND l.Type = 'Course' 
                WHERE CourseCode = '$coursecode'";     
    
    if (!$connection->query($sqltext)) { 
        echo "$sqltext<br>";
        die("Error: Failed to return data from '$mysql_table' " . $connection->error . "<br>"); 
    }

    $result = $connection->query($sqltext);
    if ($result->num_rows > 0) {
        echo '<div name="quote" class="fees">';
        echo "<h4>*** Quotation ***</h4>";
        $rowsremaining = $result->num_rows;
        while ($row = $result->fetch_assoc()) {
            echo '<span>Course Code: ' . $row["CourseCode"] . '</span><br>';
            echo '<span>Course Name: ' . $row["Description"] . '</span><br>';
            echo '<span>Registration Fee: ' . $row["Registration"] . '</span><br>';
            echo '<span>Certification: ' . $row["Certification"] . '</span><br>';
            echo '<span>Monthly Payment: ' . $row["Payment"] . '</span><br>';
            echo '<span>Duration: ' . $row["Duration"] . ' months</span><br>';
            echo '<span><strong>TOTAL FEES: ' . $row["TotalFees"] . '<strong></span><br>';
        }
    }
    echo '</div>';
}
?>

</body>