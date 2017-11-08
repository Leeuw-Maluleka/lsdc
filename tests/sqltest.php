<?php
    include '../dbConfig.php';
    $sql = "SELECT * FROM members WHERE name = 'lsdc'";
    echo "Executing $sql<br>";
    if (!$connection->query($sql)) {
        echo "Could not successfully run query ($sql) from DB: " . mysql_error();
        exit;
    }
    echo 'Completed Successfully';
?>