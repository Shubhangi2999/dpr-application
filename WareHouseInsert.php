<?php
session_start();
if($_SERVER["REQUEST_METHOD"] == "POST") {
$obtained=array();
$target=array();
$desc_id=array();
for($i=0;$i<9;$i++){
	$j=$i+1;
	$x='obtained1030'.$j;
	$obtained[$i]=$_POST[$x];
	$y='target1030'.$j;
	$target[$i]=$_POST[$y];

	$desc_id[$i]="1030".$j;
}
for($i=9;$i<10;$i++){
	$j=$i+1;
	$x='obtained103'.$j;
	$obtained[$i]=$_POST[$x];
	$y='target103'.$j;
	$target[$i]=$_POST[$y];

	$desc_id[$i]="103".$j;
}
$GradeName=$Remarks=$Shift_id="";

for($i=0;$i<=9;$i++){
	$j=$i+1;
	echo "$i"."_"."$obtained[$i]  "."_"."$desc_id[$i]";

	}
	for($i=10;$i<10;$i++){
		$j=$i+1;
		echo "$i"."_"."$obtained[$i]  "."_"."$desc_id[$i]";

	}


$db_conn = mysqli_connect('localhost', 'root','', 'performance_indicator');
if($db_conn)
{
	echo "COnnection Success";
}
for($i=0;$i<10;$i++){
	$j=$i+1;

	$sql="INSERT into transition_table (Obtained_Value,Target_Value,Desc_id,Remarks) VALUES (?,?,?,?)";


	if($query = $db_conn->prepare($sql)){
				$query->bind_param("iiss", $obtained[$i], $target[$i], $desc_id[$i], $Remarks);
				if($query->execute())
			{

				echo "VALUE INSERTED";
			}else{
			   echo $db_conn->error;
			}
}
}



}


session_unset();
	?>



