<?php include("cabecalho.php");?>
<?php include("header.php");?>
<?php include("banner_menor.php");?>
<?php // session_start();?>

<div class="container">
    <h1>Meus Pedidos</h1>
    <table class="table" style="margin-bottom: 50px;">
        <thead>
            <tr>
                <th>#</th>
                <th style="width: 40%;">Produtos</th>
                <th scope="col">Data da Compra</th>
                <th scope="col">Status</th>
                <th scope="col">Valor Total</th>
                <th scope="col">Ação</th>
            </tr>
        </thead>
        <tbody>

            <?php
            $tot = 0;
            $pedidos = $db->executa("SELECT * FROM pedidos p WHERE Usuarios_id = ".$_SESSION['usuario']['id']);
            while ($row = $pedidos->fetch_array(MYSQLI_ASSOC)) { ?>
                <tr style="border-bottom: 1px solid #ccc;">
                    <td style="vertical-align: middle;"><?php echo $row['id'];?></td>
                    <td>
                        <table class="table" style="margin-bottom: 0;">
                            <?php
                                $itens = $db->executa("SELECT p.id, p.nome, c.descricao, p.tamanho, p.preco, ip.quantidade
                                                         FROM itempedido ip
                                                    LEFT JOIN produtos p ON p.id = ip.Produtos_id
                                                    LEFT JOIN cores c ON c.id = p.Cores_id
                                                        WHERE ip.Pedidos_id = ".$row['id']);
                                while ($r = $itens->fetch_array(MYSQLI_ASSOC)) { ?>
                                    <a href="">
                                            <tr>
                                                <td style="border-top: 0;"><?php echo $r['id']; ?></td>
                                                <td style="border-top: 0;"><?php echo utf8_encode($r['nome']); ?></td>
                                                <td style="border-top: 0;"><?php echo $r['descricao']; ?></td>
                                                <td style="border-top: 0;"><?php echo $r['tamanho']; ?></td>
                                                <td style="border-top: 0;"><?php echo $r['quantidade']; ?></td>
                                                <td style="border-top: 0;"><?php echo $r['preco']; ?></td>
                                            </tr>
                                    </a>
                             <?php } ?>
                         </table>
                    </td>
                    <td style="vertical-align: middle;"><?php echo $row['data_ini'];?></td>

                    <td style="vertical-align: middle;"><?php echo ($row['Status_id'] == 1) ? "Aguardando Pagamento":"Sem estatos definido";?></td>
                    <td style="vertical-align: middle;">R$ <?php echo number_format($row['valorTotal'],2,",", ".");?></td>
                    <td  style="align: 40px"><a href="addSacola.php?acao=remove&id=<?php echo $value['id'];?>"><span class="glyphicon glyphicon-trash" ></span></a></td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>

<?php include("rodape.php"); ?>
