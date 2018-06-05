<?php include("cabecalho.php");?>
<?php include("header.php");?>

<?php
    session_start();
    if(!isset($_SESSION['itens'])){
        $_SESSION['itens'] = array();
    }
    if(isset($_GET['add']) && $_GET['add'] == sacola) {
        //Adiciona à sacola
        $idProduto = $_GET['id'];
        if(!isset($_SESSION['itens'][$idProduto])){
            $_SESSION['itens'][$idProduto] = 1;
        } else {
            $_SESSION['itens'][$idProduto] += 1;
        }
    }

    // Exibe a sacola
    if(count($_SESSION['itens']) == 0){
        echo 'Sacola Vazia<br><a href="listagem.php?cat_id=-1&sub_cat_id=-1">Adicionar itens</a>';
    } else {
        foreach($_SESSION['itens'] as $IdProduto => $quantidade){
            $produto = $db->executa("SELECT * FROM PRODUTOS WHERE ID = ".$id);
            $itens->mysqli_bind_param(1,$idProduto);
            $itens->execute();
            $produto = $produto->fetch_array();
            print_r($produto);
            echo
                $produtos[0]["nome"].'<br/>;
                Preço: '.number_format($produtos[0]["preco"],2,",",".").'</br>;
                Quantidade: '.$quantidade.'<br/><hr/>
                
                ';

        }
    }
?>