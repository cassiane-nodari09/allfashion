<?php
    include_once 'config/conexao.php';
    include_once 'config/funcoes.php';
    $db = new Conexao();
    $fn = new Funcoes();

    session_start();

    $email = $_POST['email'];
    $senha = $_POST['senha'];

    $email = $fn->removerCodigoMalicioso($email);
    $senha = MD5($fn->removerCodigoMalicioso($senha));

    $query_select = "SELECT * FROM USUARIOS WHERE email = '$email' AND senha = '$senha'";
    // echo $query_select;
    $login = $db->executa($query_select);
    $login = $login->fetch_array();
    // print_r($login);exit;
    if (count($login) > 0) {
        $_SESSION['usuario']['id'] = $login['id'];
        $_SESSION['usuario']['nome'] = $login['nome'];
        $_SESSION['usuario']['email'] = $login['email'];
        $_SESSION['usuario']['cpf'] = $login['cpf'];
        echo '<script>window.location.href = "index.php"; </script>';
    } else {
        echo '<script>alert("Nenhum usuário encontrado em nossa base de dados!"); window.location.href = "formLogin.php"; </script>';
        exit;
    }
?>
