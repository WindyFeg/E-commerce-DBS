
<div id="right-col">
    

    <div class="scroll">
       <ul class="side">
           <?php

$con = mysqli_connect("localhost","root", "", "shopping");

$sql = "select * from Category_Master";

$result = mysqli_query($con, $sql);

while($row = mysqli_fetch_array($result))
{
$Id=$row['CategoryId'];
$CategoryName=$row['CategoryName'];


?>
     <li><a href="Products.php?CategoryId=<?php echo $Id;?>"><?php echo $CategoryName;?></a></li>
    
    <?php
	}

mysqli_close($con);
?>
    </ul>
    
  </div>
   
    <ul class="side">
      <table width="100%" height="122" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><div align="center"><a href="checkout.php">Procced To Checkout</a></div></td>
        </tr>
        <tr>
          <td><div align="center"><img src="img/checkout.png" width="32" height="32" /></div></td>
        </tr>
        <tr>
          <td><div align="center"><a href="History.php">Order History</a></div></td>
        </tr>
        <tr>
          <td><div align="center"><img src="img/order.png" width="32" height="32" /></div></td>
        </tr>
      </table>
  </ul>
   
</div>
 