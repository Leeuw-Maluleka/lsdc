<?php
define ("DB_HOST", "localhost"); // set database host
define ("DB_USER", "admin"); // set database user
define ("DB_PASS","admin123"); // set database password
define ("DB_NAME","lsdccoza_lsdcdb"); // set database name

$link = mysql_connect(localhost, admin, admin123) or die("Couldn't make connection.");
$db = mysql_select_db(lsdccoza_lsdcdb, $link) or die("Couldn't select database");
?>