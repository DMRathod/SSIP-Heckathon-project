<?php
// $id = $_GET['approveid'];
print_r($_GET);
$id = $_GET['approveid'];
$reason = $_GET['reason'];
// echo $reason;
// echo $id;
include('includes/dbconnection.php');
$query=mysqli_query($con,"SELECT * from empLeave where ID='$id'");
$row=mysqli_fetch_array($query);
$a =  $row['LeaveCount'];
$b =  $row['ID'];
// $c =  $row['reason'];
 // echo $c;
if ($row['LeaveCount'] > 10) {
echo '<script language="javascript">';
echo 'alert("message successfully sent")';
echo '</script>';

// include('form.php');
// header('location:form.php');

}else{
	$b = 2;
	$a = $row['LeaveCount'];
	$sql = "UPDATE `empLeave` SET `reject`= $b ,approve = 1 WHERE ID = ".$row['ID']."";
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
// echo $a;
?>