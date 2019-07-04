<html>
	<head>
		<title>Display Database Values</title>
	</head>
	<body>
	<center>
	<?php
	if($_SERVER["REQUEST_METHOD"] == "POST")
	{
		$conn = mysqli_connect('localhost', 'root','', 'performance_indicator');
		if(!($conn))
		{
			echo "Connection Unuccessful";
		}

		$dept_id=$_POST['Dept'];
		
		$sql1="SELECT * from department_table where Dept_id=$dept_id";
		$result1=$conn->query($sql1);
		$row=mysqli_fetch_array($result1);
        $department_name=$row['Department_Name'];
	}
?>
<form action="display2.php" method="POST">
<table cellspacing="5" cellpadding="2" bgcolor="silver" border="black">
    <tr>
         <td colspan="4">
            <select name="Department" id="Department">
                <option value="<?php $dept ?>"><?php echo $department_name?></option selected>       
            </select>
        </td>
    </tr>
<?php
	#$dept=$_POST['Dept'];
	$desc_id=array();
	$description=array();
	$grade_name=array();
	$grade_id=array();
	$unit=array();
	
	$sql2 = "SELECT * FROM description_table where Dept_id=$dept_id";
	$result2 = $conn->query($sql2);
	$desc_count=$result2->num_rows;

	while($row=mysqli_fetch_array($result2))
    {
        $desc_id[]=$row['Desc_id'];
        $unit[]=$row['Unit_of_measurement'];
        $description[]=$row['Description'];
    } 

?>
			    <tr>
			         <td colspan="4">
			            <select name="Description" id="Description" required>
			                <option value="NULL">Display values for:</option>  
			                <?php 
			                for($i=0;$i<$desc_count;$i++)
			                {?>
			                <option value="<?php echo $desc_id[$i]?>"><?php echo $description[$i]."  ( in ".$unit[$i]." )"?></option>
			           		   
			                <?php
			                }
			                ?>
			            </select>
			        </td>
			    </tr>
			    <tr>
			    	<td colspan="2">
			    		From date: <input type="date" name="from_date" id="fd" required>
			    		<script type="text/javascript">
							var today= new Date();
							var dd = today.getDate();
							var mm = today.getMonth()+1;
							
							var yyyy=today.getFullYear();
							if(dd<10)
							{
								dd='0'+ dd;
							}
							if(mm<10)
							{
								mm='0'+mm;
							}
							
							today=yyyy+'-'+mm+'-'+dd;
							
							document.getElementById("fd").max=today;
								
						</script>
			    	</td>
			    	<td colspan="2">
			    		To date: <input type="date" name="to_date" id="td" required>
			    		<script type="text/javascript">
							var today= new Date();
							var dd = today.getDate();
							var mm = today.getMonth()+1;
							
							var yyyy=today.getFullYear();
							if(dd<10)
							{
								dd='0'+ dd;
							}
							if(mm<10)
							{
								mm='0'+mm;
							}
							
							today=yyyy+'-'+mm+'-'+dd;
							document.getElementById("td").max=today;
						</script>
						<script type="text/javascript">
							var begin=document.getElementById("fd");							
							document.getElementById("td").min=begin;
								
						</script>
			    	</td>
			    </tr>
			    <tr>
			    	<td colspan="4" align="center"><button type="SUBMIT">SUBMIT</button></td>
			    </tr>
			</table>
		</form>
	</center>
	</body>
	</html>