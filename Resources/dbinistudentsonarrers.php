<?php
$servername = "localhost";
$username = "lsdcdb_admin";
$password = "lsdcdb_admin123";
$dbname = "lsdcdb";
$mysql_table = "studentsonarrears";


$conn = new mysqli($servername, $username, $password, '');
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error."<br>");
} 
if (!$conn->select_db($dbname)) {
	die( "Error: Failed to select database '$dbname' ".$conn->error."<br>");
}

$sqltext = "DELETE FROM $mysql_table ";

echo "$sqltext<br>";
				   
if (!$conn->query($sqltext)) {
	die( "Error: Failed to insert data into table '$mysql_table' ".$conn->error."<br>");
}

$sqltext = "INSERT INTO $mysql_table (
				StudentsOnArrearsID,
				StudentName,
				StudentIDno,
				CourseName,
				CertificateType,
				TotalCourseFee,
				CourseDuration,
				MonthsBehind,
				InterestPercentage,
				AmountDue)
		   VALUES (1, 'Don Laka', '9901012223334', 'Office Admin', 'National', '5700', '10', 2 , '1800')";
				   
echo "$sqltext<br>";
				   
if (!$conn->query($sqltext)) {
	die( "Error: Failed to insert data into table '$mysql_table' ".$conn->error."<br>");
}
