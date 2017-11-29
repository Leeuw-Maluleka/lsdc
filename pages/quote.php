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
</head>
<body>
    <a href="../pages/menu.php">Menu</a><br>
    <table>
        <tr>
            <td>
                <form name="feesquote" method="post" action="<?php echo basename(__FILE__);?>"> <!-- Changed "_FILE_" -->
                <?php
                    $sql = "SELECT CODE, DESCRIPTION FROM lookuptable WHERE TYPE='CERT'";
                    $result = $connection->query($sql);
                    if (!$connection->query($sql)) {
                        die("Error: Failed to return data from table lookuptable " . $connection->error . "<br>");
                    }
                    echo '<select name="CertificateType" onchange="return OnLevelChange(this.form)">';
                    echo '  <option value="none">--Select Level--</option>';
                    if ($result->num_rows > 0) {
                        $rowsremaining = $result->num_rows;

                        while ($row = $result->fetch_assoc()) {
                            $option = '<option value="' . $row["CODE"] . '"> ' . $row["DESCRIPTION"] . '</option>';
                            if (isset($_SESSION["CertificateType"]) and $row["CODE"] == $_SESSION["CertificateType"]){
                                $option = '<option value="' . $row["CODE"] . '" selected="selected"> ' . $row["DESCRIPTION"] . '</option>';
                            }
                            echo $option;
                        }
                    }
                    echo '</select>';
                ?>

            <?php
                    $sql = "SELECT CODE, DESCRIPTION FROM lookuptable WHERE TYPE='CERT'";
                    $result = $connection->query($sql);
                    if (!$connection->query($sql)) {
                        die("Error: Failed to return data from table lookuptable " . $connection->error . "<br>");
                    }
                    if ($result->num_rows > 0) {
                        $rowsremaining = $result->num_rows;

                        while ($row = $result->fetch_assoc()) {
                            $certCd = $row["CODE"];
                            $certDesc = $row["DESCRIPTION"];
                            $select = '<select class="course" name="'.$certCd.'CourseName" style="display:none">';
                            if (isset($_SESSION["CertificateType"]) and $certCd == $_SESSION["CertificateType"]){
                                $select = '<select class="course" name="'.$certCd.'CourseName" style="display:block">';
                            }
                            echo $select;
                            //Get course data from DB
                            $sql = "SELECT CODE, DESCRIPTION FROM lookuptable WHERE TYPE='COURSE' AND PARENTCODE='$certCd'";
                            $resCert = $connection->query($sql);
                            if (!$connection->query($sql)) {
                                die("Error: Failed to return data from table lookuptable " . $connection->error . "<br>");
                            }
                            //Populate course options in select
                            echo '  <option value="none">--'.$certDesc.'--</option>';
                            if ($resCert->num_rows > 0) {
                                $rowsremaining = $resCert->num_rows;

                                while ($rowOpt = $resCert->fetch_assoc()) {
                                    $option = '<option value="' . $rowOpt["CODE"] . '"> ' . $rowOpt["DESCRIPTION"] . '</option>';            
                                    if (isset($_SESSION[$certCd."CourseName"]) and $rowOpt["CODE"] == $_SESSION[$certCd."CourseName"]){
                                        $option = '<option value="' . $rowOpt["CODE"] . '" selected="selected"> ' . $rowOpt["DESCRIPTION"] . '</option>';
                                    }
                                    echo $option;
                                }
                            }
                            echo '</select>';

                        }
                    }
                    echo '</select>';
                echo '</select>';
            ?>

                    <br>
                    <br>
                    <input name="submitbtn" type="submit" id="C2" value="OK" onclick="return checkformvalues(this.form)"> <!-- Changed type to "submit"  and removed "onclick=" attribute-->
                    <script src="../scripts/scripts.js"></script>

                </form>
                
            </td>
        </tr>
        <tr>
            <td>
                <?php
                const session_Index = "CourseName";
                if ($_SERVER['REQUEST_METHOD'] == 'POST') {

                        $sql = "SELECT CODE, DESCRIPTION FROM lookuptable WHERE TYPE='CERT'";
                        $result = $connection->query($sql);
                        if (!$connection->query($sql)) {
                            die("Error: Failed to return data from table lookuptable " . $connection->error . "<br>");
                        }
                        $coursecode = "none";
                        if ($result->num_rows > 0) {
                            $rowsremaining = $result->num_rows;
                            while ($row = $result->fetch_assoc()) {
                                $sessionName = $row["CODE"].session_Index;
                                if ($_POST[$sessionName] != "none") {
                                    $coursecode = $_POST[$sessionName];
                                }
                            }
                        }

                    $_SESSION["RegisterCourse"] = $coursecode;
                    $sqltext = "SELECT CourseCode, l.Description,Payment,Registration,Certification,CarryCard,Duration, 
                                (Payment*Duration+Certification+Registration+COALESCE(CarryCard,0)) TotalFees 
                                FROM coursefees c JOIN lookuptable l ON c.CourseCode = l.Code AND l.Type = 'Course' 
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
                    echo '<a href="wzregisterpersonaldetails.php?doRegister=true" class="button">Register</a>';
                    echo '</div>';
                }
                ?>
            </td>
        </tr>
    </table>
</body>