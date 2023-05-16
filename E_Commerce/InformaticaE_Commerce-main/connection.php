<?php
$username="root"; //default senza password
$password="";
$dbname="db_ecommerce"; //nome del tuo db
$conn=new mysqli("localhost",$username,$password,$dbname);

if($conn->connect_error){
    die("connection failed: " . $conn->connect_error);
}
?>