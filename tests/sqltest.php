<?php
    include '../dbConfig.php';
//    const DB_HOST = "localhost"; // set database host
//    const DB_USER = "lsdccoza_admin"; // set database user
//    const DB_PASS = "lsdcadmin123"; // set database password
//    const DB_NAME = "lsdccoza_lsdcdb"; // set database name
//    $connection = new mysqli(DB_HOST,DB_USER,DB_PASS); 
//    if (!$connection->select_db(DB_NAME)) {die ("lsdcdb selection failed<br>".$connection->error);}
    $sql = "SELECT * FROM members WHERE name = 'lsdc'";
    echo "Executing $sql<br>";
    if (!$connection->query($sql)) {
        echo "Could not successfully run query ($sql) from DB: " . mysql_error();
        exit;
    }
    echo 'Completed Successfully';
?>