
<html>
    <head>
        <style>
        table {
            font-family: Helvetica;
            }
        </style>
        <meta charset="UTF-8">
        <title>Transition_Table</title>
    </head>
    <body>
    <center>

<?php
session_start();


        $conn = mysqli_connect('localhost', 'root','', 'performance_indicator');

        $stm=mysqli_query($conn,"SELECT Description FROM description_table WHERE Dept_id = 102 ");
        $desc=array();
        while($row=mysqli_fetch_array($stm)){
            $desc[]=$row['Description'];
}


?>
<h2 style="font-family: Helvetica;">Utility</h2>

        <table cellpadding="10">
            <tr>
            <th>Description</th>
            <th>Values</th>
            <th>Unit</th>
            </tr>
        <?php

            for ($i=0; $i<count($desc);$i++) {
			$j=$i+1;
		?>
            <tr>
            <td><?php echo($desc[$i]); ?></td>
            <td><input type="number" name="<?php echo "1.$j" ?>"
            </td>
        	<?php
        		$j++;
        	?>
        	</tr>
        	<?php
        	}
        	?>
        </table>
</center>
</body>
</html>