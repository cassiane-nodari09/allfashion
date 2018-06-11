<?php
    session_start();
    unset($_SESSION['usuario']);

    echo '<script>alert("Volte sempre!"); window.location.href = "index.php"; </script>';
?>
