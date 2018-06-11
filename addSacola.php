<?php
    session_start();
    if(!isset($_SESSION['itens'])){
        $_SESSION['itens'] = array();
    }
    if(isset($_GET['acao']) && $_GET['acao'] == 'add') {
        //Adiciona à sacola
        $idProduto = $_GET['id'];
        if(!isset($_SESSION['itens'][$idProduto])){
            $_SESSION['itens'][$idProduto]['quantidade'] = 1;
        } else {
            $_SESSION['itens'][$idProduto]['quantidade'] += 1;
        }
        $_SESSION['itens'][$idProduto]['id'] = $idProduto;
        $_SESSION['itens'][$idProduto]['cor'] = (isset($_POST['cor'])) ? $_POST['cor']: NULL;
        $_SESSION['itens'][$idProduto]['tamanho'] = (isset($_POST['tamanho'])) ? $_POST['tamanho']: NULL;

    }
    if(isset($_GET['acao']) && $_GET['acao'] == 'remove') {
        //Adiciona à sacola
        $idProduto = $_GET['id'];
        if(isset($_SESSION['itens'])){
            unset($_SESSION['itens'][$idProduto]);
        }
    }

    echo "<script>window.location.href = 'sacola.php'; </script>";
?>
