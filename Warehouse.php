
<html>
    <head>
        <style>
        table {
            font-family: Helvetica;
            }
        </style>
        <meta charset="UTF-8">
        <title>Warehouse Department</title>
    </head>
    <body>
    <center>

<?php
session_start();


        $conn = mysqli_connect('localhost', 'root','', 'performance_indicator');

        $stm=mysqli_query($conn,"SELECT Description,Unit_of_measurement FROM description_table WHERE Dept_id = 103 ");
        $desc=array();
        $unit=array();
        while($row=mysqli_fetch_array($stm)){
            $desc[]=$row['Description'];
            $unit[]=$row['Unit_of_measurement'];
}


?>
<h2 style="font-family: Helvetica;">Warehouse Department Form</h2>
    <form method="POST" action="WarehouseInsert.php">
        <table cellpadding="20">
            <tr>
                <td colspan="4">Description</td>
         
                <td colspan="4">Unit Of Measurement</td>
                <td colspan="4">Obtained Value</td>
                <td colspan="4">Target Value</td>
            </tr>
        <?php

            for ($i=0; $i<count($desc);$i++) {
            $j=$i+1;
            if($i<=8)
            {
        ?>
            <tr>
            			<td colspan="4"><?php echo($desc[$i]); ?></td>
			            <td colspan="4"><?php echo($unit[$i]); ?></td>
			            <td colspan="4"><input type="number"  required name="obtained<?php echo "1030$j" ?>" id="obtained<?php echo "1030$j" ?>">
			            </td>
			            <td colspan="4"><input type="number" name="target<?php echo "1030$j" ?>" id="obtained<?php echo "1030$j" ?>">
			            </td>
            <?php
            	$j++;
            }
            else{
            ?>
            <tr>
			            <td colspan="4"><?php echo($desc[$i]); ?></td>
			            <td colspan="4"><?php echo($unit[$i]); ?></td>
			            <td colspan="4"><input type="number"  required name="obtained<?php echo "103$j" ?>" id="obtained<?php echo "103$j" ?>">
			            </td>
			            <td colspan="4"><input type="number" name="target<?php echo "103$j" ?>" id="obtained<?php echo "103$j" ?>">
			            </td>
			            
			            <?php
			                $j++;
			}              }
			            ?>
            </tr>



            <tr>
                <td><button type="SUBMIT">SUBMIT</button></td>
            </tr>

        </table>
        </form>
</center>
</body>
</html>