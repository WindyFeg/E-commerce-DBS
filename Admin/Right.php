
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
    
    </ul>
   
</div>
 