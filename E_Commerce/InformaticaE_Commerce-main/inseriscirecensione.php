<?php
session_start()
?>

<?php  
    include("connection.php");
    $sql="SELECT IdRecensione FROM ecommerce_recensione WHERE Recensione '" . $_POST['text']."'";
    $result=$conn->query($sql);
    echo $sql;
    $row = $result->fetch_assoc();
  
        //effettua l'aggiungi tramite id del prodotto, sottrai da quantita e aggiungi al carrello
        $sql = "INSERT INTO ecommerce_recensione (IdRecensione,IdUtente,Recensione) 
                VALUES ('" . $_GET["Idprodotto"] . "','" . $_SESSION["idU"] . "','".$_POST["text"].")"; 
        echo $sql;
        $result = $conn->query($sql);
        $conn->close();
        header("location:index.php?");

?>