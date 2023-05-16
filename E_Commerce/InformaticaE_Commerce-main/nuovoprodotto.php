<?php
session_start()
?>

<?php  
    include("connection.php");
    $sql="SELECT * FROM ecommerce_prodotto";
    $result=$conn->query($sql);
    echo $sql;
    $row = $result->fetch_assoc();
   
    
    
        //effettua l'aggiungi tramite id del prodotto, sottrai da quantita e aggiungi al carrello
        $sql = "INSERT INTO ecommerce_prodotto (IdCategoria,Nome,Descrizione,Immagine,Prezzo) 
                VALUES ('" . $_GET["textCategoria"] . "','" . $_GET["textNome"] . "','". $_GET["textDescrizione"] . "','".$_GET["img"]."','".$row["textPrezzo"]."')"; 
        echo $sql;
        $result = $conn->query($sql);
        $conn->close();
        header("location:index.php?");

?>