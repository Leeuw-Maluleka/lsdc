<?php
const DB_HOST = "localhost"; // set database host
const DB_USER = "lsdccoza_admin"; // set database user
const DB_PASS = "lsdcadmin123"; // set database password
const DB_NAME = "lsdccoza_lsdcdb"; // set database name

//$link = mysql_connect(DB_HOST, DB_USER, DB_PASS) or die("Couldn't make connection.");$connection = new mysqli(DB_HOST,DB_USER,DB_PASS); if ($connection->connect_error) {die ("DB connection failed<br>".$connection->error);}if (!$connection->select_db(DB_NAME)) {die ("lsdcdb selection failed<br>".$connection->error);}
//$db = mysql_select_db(DB_NAME, $link) or die("Couldn't select database");
?>