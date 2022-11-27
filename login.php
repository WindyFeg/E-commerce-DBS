<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
session_start();
$UserName=$_POST['txtUserName'];
$Password=$_POST['txtPassword'];
$UserType=$_POST['rdType'];
if($UserType=="Admin")
{
$con = mysqli_connect("localhost","root", "", "shopping");
$sql = "select * from Admin_Master where UserName='".$UserName."' and Password='".$Password."'";
$result = mysqli_query($con, $sql);
$records = mysqli_num_rows($result);
$row = mysqli_fetch_array($result);
if ($records==0)
{
echo '<script type="text/javascript">alert("Wrong UserName or Password");window.location=\'index.php\';</script>';
}
else
{
header("location:Admin/index.php");
} 
mysql_close($con);
}
else if($UserType=="Customer")
{
$con = mysqli_connect("localhost","root", "", "shopping");
$sql = "select * from Customer_Registration where UserName='".$UserName."' and Password='".$Password."' ";
$result = mysqli_query($con, $sql);
$records = mysqli_num_rows($result);
$row = mysqli_fetch_array($result);
if ($records==0)
{
echo '<script type="text/javascript">alert("Wrong Username or Password");window.location=\'index.php\';</script>';
}
else
{
$_SESSION['ID']=$row['CustomerId'];
$_SESSION['Name']=$row['CustomerName'];
header("location:Customer/index.php");
} 
mysql_close($con);
}

?>

</body>
</html>
