<?php include("cabecalho.php");?>
<?php include("header.php");?>
<?php // session_start();?>

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
                    <td><?php echo utf8_encode($produto['nome']);?></td>
                    <td><?php echo $value['tamanho'];?></td>
                    <td><?php echo $value['cor'];?></td>
                    <td><?php echo number_format($produto['preco'],2,",", ".");?></td>
                    <td style="text-align: center">
                        <input type="number" class="form-control" name="quantidade" style="width: 70px; float: left; text-align: center" value="<?php echo $value['quantidade'];?>">
                    </td>
                    <td>R$ <?php echo number_format($total, 2,",", ".");?></td>
                    <td><a href="addSacola.php?acao=remove&id=<?php echo $value['id'];?>"><span class="glyphicon glyphicon-trash"></span></a></td>
                </tr>
            <?php } ?>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td style="text-align: right;">Total: </td>
                <td><strong>R$ <?php echo number_format($tot,2,",", ".");?></strong></td>
                <td></td>
            </tr>
        </tbody>
    </table>

    <?php if (count($_SESSION['itens'])) { ?>
        <a href="checkout.php" class="btn btn-primary btn-lg pull-right" style="margin-bottom: 100px">
            <span class="glyphicon glyphicon-thumbs-up"></span>
            Confirmar Compra
        </a>
    <?php } else { ?>
        <h2 style="text-align: center;margin-bottom: 50px;">Nenhum produto na Sacola</h2>
    <?php } ?>
</div>

<?php include("rodape.php"); ?>
