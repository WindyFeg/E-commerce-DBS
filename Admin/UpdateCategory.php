
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
$Id = $_POST['txtId'];
$Name=$_POST['txtName'];
$Desc=$_POST['txtDesc'];

$con = mysqli_connect("localhost","root", "", "shopping");

$sql = "Update Category_Master set CategoryName='".$Name."',Description='".$Desc."' where CategoryId=".$Id."";

mysqli_query($con, $sql);

mysqli_close($con);
echo '<script type="text/javascript">alert("Category Updated Succesfully");window.location=\'Category.php\';</script>';
?>
</body>
</html>
