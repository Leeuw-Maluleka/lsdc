<?php
define ("DB_HOST", "localhost"); // set database host
define ("DB_USER", "lsdccoza_admin"); // set database user
define ("DB_PASS","lsdcadmin123"); // set database password
define ("DB_NAME","lsdccoza_lsdcdb"); // set database name

$link = mysql_connect(DB_HOST, DB_USER, DB_PASS) or die("Couldn't make connection.");
$db = mysql_select_db(DB_NAME, $link) or die("Couldn't select database");
?>