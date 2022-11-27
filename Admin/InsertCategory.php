
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php

	$Name=$_POST['txtName'];
	$Desc=$_POST['txtDesc'];
	$path1 = $_FILES["txtFile"]["name"];
	move_uploaded_file($_FILES["txtFile"]["tmp_name"],"../Products/"  .$_FILES["txtFile"]["name"]);
	
	$con = mysqli_connect ("localhost","root", "", "shopping");
	
	$sql = "insert into Category_Master	(CategoryName,Description,Image) values('".$Name."','".$Desc."','".$path1."')";

	mysqli_query ($con, $sql);

	mysqli_close ($con);
	echo '<script type="text/javascript">alert("Category Inserted Succesfully");window.location=\'Category.php\';</script>';

?>
</body>
</html>
