<?php
session_start()
?>

<?php  
    include("connection.php");
    $sql="SELECT IdCarrello FROM ecommerce_carrello WHERE IdUtente='".$_SESSION["idU"]."'";
    $result=$conn->query($sql);
    echo $sql;
    $row = $result->fetch_assoc();
    echo $row["IdCarrello"];
    
    
        //effettua l'aggiungi tramite id del prodotto, sottrai da quantita e aggiungi al carrello
        $sql = "INSERT INTO ecommerce_contiene (IdProdotto,IdCarrello) 
                VALUES ('" . $_GET["id"] . "','" . $row["IdCarrello"] . "')"; 
        echo $sql;
        $result = $conn->query($sql);
        $conn->close();
        header("location:index.php?");

?>