<?php include("cabecalho.php");?>
<?php include("header.php");?>

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
    // print_r($_SESSION);
    // Exibe a sacola
    if(count($_SESSION['itens']) == 0){
        echo 'Sacola Vazia<br><a href="listagem.php?cat_id=-1&sub_cat_id=-1">Adicionar itens</a>';
    } else {
        // foreach($_SESSION['itens'] as $IdProduto => $quantidade){
        //     $produto = $db->executa("SELECT * FROM PRODUTOS WHERE ID = ".$id);
        //     $itens->mysqli_bind_param(1,$idProduto);
        //     $itens->execute();
        //     $produto = $produto->fetch_array();
        //     print_r($produto);
        //     echo
        //         $produtos[0]["nome"].'<br/>;
        //         Preço: '.number_format($produtos[0]["preco"],2,",",".").'</br>;
        //         Quantidade: '.$quantidade.'<br/><hr/>
                
        //         ';

        // }
    }
?>
    <div class="container">
        <h1>Minha Sacola </h1>
        <table class="table">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nome</th>
                <th scope="col">Tamanho</th>
                <th scope="col">Cor</th>
                <th scope="col">Preço</th>
                <th scope="col">Quantidade</th>
                <th scope="col">Total</th>
                <th scope="col">Ação</th>

            </tr>
        </thead>
        <tbody>

            <?php 
                $tot = 0;
                foreach($_SESSION['itens'] as $IdProduto => $value){
                    $produto = $db->executa("SELECT * FROM PRODUTOS p WHERE ID = ".$value['id']);
                    $produto = $produto->fetch_array();
                    $total = ($produto['preco'] * $value['quantidade']);
                    $tot += $total;
            ?>

            <tr>
                <th scope="row"><?php echo $value['id'];?></th>
                <td><?php echo $produto['nome'];?></td>
                <td><?php echo $value['tamanho'];?></td>
                <td><?php echo $value['cor'];?></td>
                <td><?php echo number_format($produto['preco'],2,",", ".");?></td>
                <td style="text-align: center">
                    <input type="number" class="form-control" name="quantidade" style="width: 70px;
    float: left; text-align: center" value="<?php echo $value['quantidade'];?>">
                </td>
                <td>R$ <?php echo number_format($total, 2,",", ".");?></td>
                <td><a href="#"><span class="glyphicon glyphicon-trash"></span></a></td>
            </tr>
            <?php } ?>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>Total: </td>
                <td><?php echo number_format($tot,2,",", ".");?></td>
            </tr>
        </tbody>
        </table>
        
        <?php 

        ?>
        
        <a href="checkout.php" class="btn btn-primary btn-lg pull-right" style="margin-bottom: 100px">
            <span class="glyphicon glyphicon-thumbs-up"></span>
            Confirmar Compra
        </a>
    </div>

<?php include("rodape.php"); ?>