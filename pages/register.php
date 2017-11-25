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

    $mysql_table = "registrations";
    session_start();
    if (!isset($_SESSION["user"])) {
        echo '<head>';
        echo '<meta name="viewport" content="width=device-width">';
        echo '</head>';
        echo '<body>';
        echo 'You have been logged out. <a href="../login.php">Click here</a> to log in.';
        echo '</body>';
        exit;
    }
?>
<head>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="../styles/registerstyles.css">
    <link rel="icon" type="image/png" href="../images/favicon.png">
</head>
<body>
    <a href="../pages/menu.php">Menu</a><br>
    <span>Registration Details</span><br>
    <?php
        $user = $_SESSION["user"];
        $sql = "SELECT m.name, c.CourseCode, l.Description,Payment,Registration,Certification,CarryCard,Duration, 
                (Payment*Duration+Certification+Registration+COALESCE(CarryCard,0)) TotalFees, r.TimeStamp 
                FROM coursefees c JOIN lookuptable l ON c.CourseCode = l.Code AND l.Type = 'Course'
                JOIN registrations r ON r.CourseCode = c.CourseCode
                JOIN members m ON m.name = r.MemberName WHERE m.name = '$user'";
        $result = $connection->query($sql);
        if (!$connection->query($sql)) {
            die("Error: Failed to return data from table $mysql_table " . $connection->error . "<br>");
        }
        if ($result->num_rows > 0) {
            $rowsremaining = $result->num_rows;
            echo '<table><br>';
            echo '<thead><br>';
            echo '<th>Date</th><br>';
            echo '<th>Course Code</th>';
            echo '<th>Description</th>';
            echo '<th>Payment</th>';
            echo '<th>Registration</th>';
            echo '<th>Certification</th>';
            echo '<th>Carry Card</th>';
            echo '<th>Duration</th>';
            echo '<th>Total Fees</th>';
            echo '</thead><br>';
            echo '<tbody><br>';
            while ($row = $result->fetch_assoc()) {
                $rowhtml = "<tr><br>";
                $rowhtml = $rowhtml."<td>".$row["TimeStamp"]."</td>";
                $rowhtml = $rowhtml."<td>".$row["CourseCode"]."</td>";
                $rowhtml = $rowhtml.'<td>'.$row["Description"].'</td>';
                $rowhtml = $rowhtml."<td>".$row["Payment"]."</td>";
                $rowhtml = $rowhtml."<td>".$row["Registration"]."</td>";
                $rowhtml = $rowhtml."<td>".$row["Certification"]."</td>";
                $rowhtml = $rowhtml."<td>".$row["CarryCard"]."</td>";
                $rowhtml = $rowhtml."<td>".$row["Duration"]."</td>";
                $rowhtml = $rowhtml."<td>".$row["TotalFees"]."</td>";
                $rowhtml = $rowhtml."</tr></br>";
                echo $rowhtml;
            }
            echo '</table>';
        }
    ?>
</body>