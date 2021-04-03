<?php
print_r($_GET);
$id = $_GET['approveid'];
$reason = $_GET['reason'];
echo $reason;
include('includes/dbconnection.php');
$query=mysqli_query($con,"SELECT * from empLeave where ID='$id'");
$row=mysqli_fetch_array($query);
$a =  $row['LeaveCount'];
$b =  $row['ID'];
// echo $a,$b

if ($row['LeaveCount'] > 12) {
echo '<script language="javascript">';
echo 'alert("out of minimum limit")';
echo '</script>';

// include('form.php');
// header('location:form.php');

}else{
	$b = 1;
	$a = $row['LeaveCount']+1;
	$sql = "UPDATE `empLeave` SET `LeaveCount`= $a,`approve`= $b  WHERE ID = ".$row['ID']."";
    $query=mysqli_query($con, $sql);
	echo $sql;
	// $query=mysqli_query($con,$sql);
 header('location:leaves.php');


 }

// $sql = "SELECT * from empLeave where ID = '$id'";
// $query=mysqli_query($con,$sql);
// echo "SELECT * from empLeave where ID = $id";
// $row=mysqli_fetch_array($query);
// $a =  $row['LeaveCount'];
echo $a;
?>