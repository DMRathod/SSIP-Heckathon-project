<?php
 print_r($_POST);
include('includes/dbconnection.php');
//error_reporting(0);
session_start();
$empid=$_SESSION['uid'];
// echo $empid;
$ret=mysqli_query($con,"select EmpFname,EmpLname from employeedetail where ID='$empid'");
$row=mysqli_fetch_array($ret);
$fname=$row['EmpFname'];
// echo $fname;
$query=mysqli_query($con,"SELECT * from empLeave where ID='$empid' ");
$row=mysqli_fetch_array($query);
if (isset($row['LeaveCount'])) {
$a =  $row['LeaveCount'];
}else{
 $a = 0;
	
}
	
 if(isset($_POST['submit']))
//   {
    $FName=$_POST['FirstName'];
    $reason=$_POST['empcode'];
	// echo $FName,$reason;
    // $empcode=$_POST['empcode'];
//     $Email=$_POST['Email'];
//     $Password=$_POST['Password'];
//     //$RPassword=$_POST['RepeatPassword'];
//     $ret=mysqli_query($con, "select EmpEmail from employeedetail where EmpEmail='$Email'");
//     $result=mysqli_fetch_array($ret);
//     if($result>0){
// $msg="This email already associated with another account";
//     }
//     else{
//     if ($query) {
//     $msg="You have successfully registered";
//   }
//   else
//     {
//       $msg="Something Went Wrong. Please try again";
//     }

//   }
// }
// echo $row['ID'];
// echo $row['LeaveCount'];
if ($row['LeaveCount'] > 12) {
echo '<script language="javascript">';
echo 'alert("message successfully sent")';
echo '</script>';

// include('form.php');
header('location:form.php');

}else{
	// $a = $row['LeaveCount'];
	$sql = "insert into empLeave(ID,name, reason, LeaveCount,approve,reject) value('$empid','$FName', '$reason', '$a','','')";
    $query=mysqli_query($con,"insert into empLeave(ID,name, reason, LeaveCount,approve,reject) value('$empid','$FName', '$reason', '$a',0,0)");
	echo $sql;
	// $query=mysqli_query($con,$sql);
// header('location:form.php');


 }
?>