	<?php
	include('index__trial.php');
			if($_POST['row'])
			{
				$conn=mysqli_connect('localhost','root','','performance_indicator');
				if(!$conn) {
					die("Connection Failed : ".mysqli_connect_error());
				}
				$Insertion_Date=$_POST['row'];
				$tmp="UPDATE transition_table SET Status='Deactivated' WHERE Insertion_Date='$Insertion_Date'";
				if($conn->query($tmp))
				{
					echo "<script> alert 'Values are successfully deleted!'</script>";
					return "index__trial.php";
				}
			}
	?>