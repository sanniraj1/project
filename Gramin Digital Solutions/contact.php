<?php include "header.php"; 
$con=mysqli_connect("localhost","root","","cms");
if(isset($_POST['send']))
{
	$a=$_POST['t1'];
	$b=$_POST['t2'];
	$c=$_POST['t3'];
	$d=$_POST['t4'];
	$e=$_POST['t5'];

	$in=mysqli_query($con,"insert into contact(name,mobile,email,subject,message) values('$a','$b','$c','$d','$e')");
	if($in)
	{
		echo "<script>alert('Thanks for your message...');</script>";
		echo "<script>window.location='index.php';</script>";
	}
}
?>
<title>Contact us</title>
<div class="container-fluid" style="padding-top: 40px">
	<div class="row">
		<div class="col-md-6">
			<div class="page-header">
    		<h1 align="center">Contact Us</h1>      
  			</div>
  			<div class="jumbotron">
  				<p><i class="fa fa-home"></i> Ranchi, Jharkhand - 834005</p>
  				<p><i class="fa fa-phone"></i> +91 1234567890, 1800-1234-4567</p>
  				<p><i class="fa fa-envelope"></i> info@gramindigitalsolutions.in</p>
  			</div>
		</div>
		<div class="container">
		<div class="col-md-6">
			<div class="page-header">
    		<h1 align="center">Message Us</h1>      
  			</div>
			<form method="post">
				<label><b>Name</b></label>
				<input type="text" name="t1" class="form-control" required="required" pattern="[A-Za-z ]{3,}" placeholder="Enter Name">
				<label><b>Mobile Number</b></label>
				<input type="text" name="t2" class="form-control" required="required" pattern="[0-9]{10}" placeholder="Enter Mobile Number">
				<label><b>Email ID</b></label>
				<input type="email" name="t3" class="form-control" required="required" placeholder="Enter Email ID">
				<label><b>Subject</b></label>
				<input type="text" name="t4" class="form-control" required="required" pattern="[A-Za-z ]{3,}" placeholder="Subjects">
				<label>&nbsp;</label>
				<textarea class="form-control" name="t5" rows="3" placeholder="Message"></textarea>
				<br>
				<input type="submit" name="send" class="btn btn-success" style="float: right">
			</form>
		</div>
		</div>
	</div>	
</div>