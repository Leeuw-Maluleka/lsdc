<?php include "../dbConfig.php";

$msg = "";
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = $_POST["name"];
    $password = md5($_POST["password"]);
	 if ($name == '' || $password == '') {
        $msg = "You must enter all fields";
    } else {
        $sql = "SELECT * FROM members WHERE name = '$name' AND password = '$password'";

        if (!$connection->query($sql)) {
            echo "Could not successfully run query ($sql) from DB: " . mysql_error();
            exit;
        }
		$result = $connection->query($sql);
        if ($result->num_rows > 0) {
         
            header('Location: ../pages/studentsassessmentmarks.php');
            exit;
        }

        $msg = "Username and password do not match";
    }
}
?>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LSDC Login</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form name="frmregister"action="<?= $_SERVER['PHP_SELF'] ?>" method="post" >
		<table class="form" border="0">
			<tr>
			<td></td>
				<td style="color:red;">
				<?php echo $msg; ?></td>
			</tr> 			
			<tr>
				<th><label for="name"><strong>Name:</strong></label></th>
				<td><input class="inp-text" name="name" id="name" type="text" size="30" /></td>
			</tr>
			<tr>
				<th><label for="name"><strong>Password:</strong></label></th>
				<td><input class="inp-text" name="password" id="password" type="password" size="30" /></td>
			</tr>
			<tr>
			<td></td>
				<td class="submit-button-right">
				<input class="send_btn" type="submit" value="Submit" alt="Submit" title="Submit" />				
				<input class="send_btn" type="reset" value="Reset" alt="Reset" title="Reset" /></td>				
			</tr>
		</table>
	</form>
</body>
</html>
