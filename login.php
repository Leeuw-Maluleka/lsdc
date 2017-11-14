<?php 
//include "dbConfig.php";

//This code is in the dbConfig.php but it doesn't execute on the server "https://gaea.thishost.co.za:2083"
const DB_HOST = "localhost"; // set database host
const DB_USER = "lsdccoza_admin"; // set database user
const DB_PASS = "lsdcadmin123"; // set database password
const DB_NAME = "lsdccoza_lsdcdb"; // set database name
$connection = new mysqli(DB_HOST,DB_USER,DB_PASS); 
/////////////////////////////////////////////////////////////////////////////////////////////////////

if (!$connection->select_db(DB_NAME)) {die ("lsdcdb selection failed<br>".$connection->error);}


if ((isset($_GET['doLogoff'])) &&($_GET['doLogoff']=="true")) {
    // to fully log out a visitor we need to clear the session variables
    session_start();
    session_unset();
    session_destroy();
} 

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
            session_start();
            $_SESSION["user"] = $name;
            header('Location: pages/menu.php');
            exit;
        }

        $msg = "Username and password do not match";
    }
}
?>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width">
<title>LSDC Login</title>
<link href="styles/loginstyles.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form name="frmregister"action="<?= $_SERVER['PHP_SELF'] ?>" method="post" >
		<table class="form">
			<tr>
				<td style="color:red;">
				<?php echo $msg; ?></td>
			</tr> 			
			<tr>
                            <td><input class="inp-text" name="name" id="name" type="text" placeholder="User Name" /></td>
			</tr>
			<tr>
                            <td><input class="inp-text" name="password" id="password" type="password" placeholder="Password" /></td>
			</tr>
			<tr>
				<td class="submit-button-right">
				<input class="send_btn" type="submit" value="Submit" alt="Submit" title="Submit" />				
				<input class="send_btn" type="reset" value="Reset" alt="Reset" title="Reset" /></td>				
			</tr>
                        <tr><td class="submit-button-right"><a href="pages/createuser.php">Register New User</a></td></tr>
		</table>
	</form>
</body>
</html>
