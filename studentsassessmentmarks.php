<?php
$servername = "localhost";
$username = "admin";
$password = "admin123";
$dbname = "lsdcdb";
$mysql_table = "studentsassessmentmarks";

$connection =new mysqli("localhost","lsdcdb_admin","lsdcdb_admin123");
if ($connection->connect_error) {die ("DB connection failed");}
if (!$connection->select_db("lsdcdb")) {die ("lsdcdb selection failed");}
//Delete --> $sqltext ="INSERT INTO studentsassessmentmarks (studentassessmentmarksID, StudentName, StudentIDno) VALUES (20,'Joe Nina','9901234567890')";
//Delete --> echo $sqltext;
//Delete --> if (!$connection->query($sqltext)) {echo "Error inserting data";
//Delete --> }

if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
	//Delete --> echo "TESTING<br>";
    $sqltext = "INSERT INTO studentsassessmentmarks (StudentName, StudentIDno, CourseName, CertificateType, ModuleName,SAQAID, PercentageAchieved, Achievement) VALUES "; //Changed
    $inputvalues = "'".$_POST["StudentName"]."','".$_POST["StudentIDno"]."','".$_POST["CourseName"]."','".$_POST["CertificateType"]."','".$_POST["ModuleName"]."','".$_POST["SAQAID"]."','".$_POST["PercentageAchieved"]."','".$_POST["Achievement"]."'"; //Modify
    $sqltext = "$sqltext ($inputvalues)"; //Modify


    if (!$connection->query($sqltext)) { //Modify
		echo "$sqltext<br>";
        die( "Error: Failed to insert data into table '$mysql_table' ".$connection->error."<br>"); //Modify
    }

}

?>
<form name="studentsassessmentmarksform" method="post" action="<?php echo basename(__FILE__);?>"> <!-- Changed "_FILE_" -->
<input type="text" name="StudentName" placeholder="StudentName">
<br>
<input type="text" name="StudentIDno" placeholder="StudentIDno">
<br>

<?php
$sql = "SELECT CODE, DESCRIPTION FROM LOOKUPTABLE WHERE TYPE='COURSE'";
$result = $connection->query($sql);
if (!$connection->query($sql)) {
    die( "Error: Failed to return data from table LOOKUPTABLE ".$conn->error."<br>");
}

    echo '<select name="CourseName">';
    echo '  <option value="none">--Select Course--</option>';
    if ($result->num_rows > 0) {
	$rowsremaining = $result->num_rows;
        
        while($row = $result->fetch_assoc()) {
            echo '<option value="'.$row["CODE"].'"> '.$row["DESCRIPTION"].'</option>';
        }
    }
    echo '</select>';
    echo '&nbsp;';

?>

<br>
<?php
$sql = "SELECT CODE, DESCRIPTION FROM LOOKUPTABLE WHERE TYPE='CERT'";
$result = $connection->query($sql);
if (!$connection->query($sql)) {
    die( "Error: Failed to return data from table LOOKUPTABLE ".$conn->error."<br>");
}

    echo '<select name="CertificateType">';
    echo '  <option value="none">--Select Certificate--</option>';
    if ($result->num_rows > 0) {
	$rowsremaining = $result->num_rows;
        
        while($row = $result->fetch_assoc()) {
            echo '<option value="'.$row["CODE"].'"> '.$row["DESCRIPTION"].'</option>';
        }
    }
    echo '</select>';
    echo '&nbsp;';

?>
<br>
<?php
$sql = "SELECT CODE, DESCRIPTION FROM LOOKUPTABLE WHERE TYPE='MODULES'";
$result = $connection->query($sql);
if (!$connection->query($sql)) {
    die( "Error: Failed to return data from table LOOKUPTABLE ".$conn->error."<br>");
}

    echo '<select name="ModuleName">';
    echo '  <option value="none">--Select Modules--</option>';
    if ($result->num_rows > 0) {
	$rowsremaining = $result->num_rows;
        
        while($row = $result->fetch_assoc()) {
            echo '<option value="'.$row["CODE"].'"> '.$row["DESCRIPTION"].'</option>';
        }
    }
    echo '</select>';
    echo '&nbsp;';

?>
<br>
<?php
$sql = "SELECT CODE, DESCRIPTION FROM LOOKUPTABLE WHERE TYPE='SAQA'";
$result = $connection->query($sql);
if (!$connection->query($sql)) {
    die( "Error: Failed to return data from table LOOKUPTABLE ".$conn->error."<br>");
}

    echo '<select name="SAQAID">';
    echo '  <option value="none">--Select SAQAID--</option>';
    if ($result->num_rows > 0) {
	$rowsremaining = $result->num_rows;
        
        while($row = $result->fetch_assoc()) {
            echo '<option value="'.$row["CODE"].'"> '.$row["DESCRIPTION"].'</option>';
        }
    }
    echo '</select>';
    echo '&nbsp;';

?>
<br>
<input type="text" name="PercentageAchieved" placeholder="PercentageAchieved">
<br>

<?php
$sql = "SELECT CODE, DESCRIPTION FROM LOOKUPTABLE WHERE TYPE='ACH'";
$result = $connection->query($sql);
if (!$connection->query($sql)) {
    die( "Error: Failed to return data from table LOOKUPTABLE ".$conn->error."<br>");
}

    echo '<select name="Achievement">';
    echo '  <option value="none">--Select Achievement--</option>';
    if ($result->num_rows > 0) {
	$rowsremaining = $result->num_rows;
        
        while($row = $result->fetch_assoc()) {
            echo '<option value="'.$row["CODE"].'"> '.$row["DESCRIPTION"].'</option>';
        }
    }
    echo '</select>';
    echo '&nbsp;';

?>

<!-------- Delete --------
?php
$capnum=0;
?>
<input type="button" id="C2" value="OK" onclick="<?php $capnum=$capnum;?>"
?php echo $capnum;?>
-------------------------->
<br>
<input type="submit" id="C2" value="OK" onclick="return checkformvalues(this.form)"> <!-- Changed type to "submit"  and removed "onclick=" attribute-->
<script src="scripts/scripts.js"></script>

</form>