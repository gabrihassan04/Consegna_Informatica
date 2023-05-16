<?php
session_start();
include ("connection.php");
$msg="";

$query= "SELECT * FROM ecommerce_utenti WHERE Username = \"" . $_POST["user"] . "\"";
$results=$conn-> query($query);

if($msg != "")
    header("location: registrati.php?msg=" . $msg);
else{
    $query = "INSERT INTO ecommerce_utenti (Username, Password) VALUES ('" . $_POST["user"] . "','" . md5($_POST["password"]) ."')";
        if($conn -> query($query) === TRUE){
            $msg = "Registrazione avvenuta con successo";
            header("location:index.php");
        }
        else{
            $msg = "Errore, riprova";
            header("location: registrati.php?msg=" . $msg);
        }
}
?>