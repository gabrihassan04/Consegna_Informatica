<?php
session_start();
unset($_SESSION["Username"]);
unset($_SESSION["IdUtente"]);
session_destroy();
header('location:index.php?');
?>