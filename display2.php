<!DOCTYPE html>
<html>

<head>
	<title></title>
</head>
<body>
	<center>
<?php
if($_SERVER["REQUEST_METHOD"]=="POST"){
	$desc_id="";
	$obtained_value=array();
	$target_value=array();
	$entry_date=array();
	$grade_name=array();
	$remarks=array();
	$dept_name=array();
	$dept_id="";
	$to_Date="";
	$from_Date="";

$desc_id=$_POST['Description'];
$from_date=$_POST['from_date'];
$to_Date=$_POST['to_date'];

echo "Displaying values from ".$from_date." to ".$to_Date;

$conn=mysqli_connect('localhost','root','','performance_indicator');
if(!$conn) {
	die("Connection Failed : ".mysqli_connect_error());
}


$sql="SELECT * from transition_table WHERE Desc_id=$desc_id AND Status='Activated' AND Entry_date BETWEEN '$from_date' AND '$to_Date' ";
$result=$conn->query($sql);


if(!$result) {
	trigger_error("INVALID QUERY".$conn->error);
}



if($result->num_rows > 0){
	echo "<table id='table1' border=1>";
	echo "<tr>";
	echo "<th>"; echo "DATE OF INSERTION"; echo "</th>";
	echo "<th>"; echo "Obtained Value"; echo "</th>";
	echo "<th>"; echo "Target Value"; echo "</th>";
	echo "<th>"; echo "Values For Department"; echo "</th>";
	echo "<th>"; echo "Grade Name"; echo "</th>";
	echo "<th>"; echo "Remarks"; echo "</th>";
	echo "</tr>";


while($row=$result->fetch_assoc()) {
	echo "<tr>";
	echo "<td>".$row["Entry_date"]."</td>";
	echo "<td>".$row["Obtained_value"]."</td>";
	echo "<td>".$row["Target_Value"]."</td>";
	echo "<td>".$row["Department_Name"]."</td>";
	echo "<td>".$row["GradeName"]."</td>";
	echo "<td>".$row["Remarks"]."</td>";
	echo "<td>"; echo"<button type=submit>Edit</button>"; echo "</td>";
	echo "<td>"; echo"<button type=submit>Delete</button>"; echo "</td>"; 
	echo "</tr>";
}
	echo "</table>";
}
else {
	echo "O RESULTS FETCHED";
}
$conn->close();

}
?>
</center>
</body>


</html>