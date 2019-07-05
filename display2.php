<!DOCTYPE html>
<html>

<head>
	<title></title>

</head>
<body>
	<center>
<?php
if($_POST['Description']){
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
	echo "<table id='table1' border=1 bgcolor='silver'>";
	echo "<tr>";
	echo "<th>"; echo "DATE OF INSERTION"; echo "</th>";
	echo "<th>"; echo "DATE OF ENTRY"; echo "</th>";
	echo "<th>"; echo "Obtained Value"; echo "</th>";
	echo "<th>"; echo "Target Value"; echo "</th>";
	echo "<th>"; echo "Values For Department"; echo "</th>";
	echo "<th>"; echo "Grade Name"; echo "</th>";
	echo "<th>"; echo "Remarks"; echo "</th>";
	echo "</tr>";


while($row=$result->fetch_assoc()) {
	$tmp=$row["Insertion_Date"];
	echo "<tr>";
	echo "<td>".$row["Insertion_Date"]."</td>";
	echo "<td>".$row["Entry_date"]."</td>";
	echo "<td>".$row["Obtained_value"]."</td>";
	echo "<td>".$row["Target_Value"]."</td>";
	echo "<td>".$row["Department_Name"]."</td>";
	echo "<td>".$row["GradeName"]."</td>";
	echo "<td>".$row["Remarks"]."</td>";
	echo "<td>";
    echo "<form method='POST' action='display2.php'>";
    echo "<input type='hidden' name='row' value='$tmp'>";
    echo " <input type='submit' value='Edit'>";
    echo "</form>";
	echo "</td>";
	echo "<td>";
    echo "<form method='POST' action='delete.php'>";
    echo "<input type='hidden' name='row' value='$tmp'>";
    echo " <input type='submit' value='Delete'>";
    echo "</form>";
	echo "</td>";
	echo "</tr>";
}
	echo "</table>";
}
else {
	echo "<p>";
	echo "No results found!";
}
$conn->close();

}
?>
</center>
</body>


</html>