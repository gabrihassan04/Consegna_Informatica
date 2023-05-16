<?php
session_start();
include ("connection.php");

$sql="SELECT * FROM ecommerce_utenti WHERE Username='" . $_POST['user']."' AND Password='".md5($_POST['psw'])."'";
$result=$conn->query($sql);
if($result->num_rows>0){
    $row =$result->fetch_assoc();
	$_SESSION["Username"]=$_POST['user'];
	$_SESSION["idU"]=$row["IdUtente"];
	if($_POST['user']=="admin"){
		$_SESSION["amministratore"]=1;
	}
		
	$conn->close();
	header('location:index.php?id=' . $_SESSION["idU"] . '');
	
	//echo $sql;
}else{
	header('location:login.php?err=Credenziali errate!&oldEmail='.$_POST['Username']);
}

?>