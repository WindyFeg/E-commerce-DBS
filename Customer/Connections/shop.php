<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_shop = "localhost";
$database_shop = "shopping";
$username_shop = "root";
$password_shop = "";
$shop = mysqli_connect($hostname_shop, $username_shop, $password_shop, $database_shop) or trigger_error(mysqli_error(),E_USER_ERROR); 
?>