<?php
session_start()
?>

<?php  
       ob_start();
       session_start();
      
    
        include("connection.php");
        
            $sql="DELETE FROM ecommerce_contiene WHERE IdProdotto='" . $_GET["id"] . "'";
            $result=$conn->query($sql);
            $conn->close();
            header("location:visualizzacarrello.php?msg= eliminato con successo!");
        
?>



