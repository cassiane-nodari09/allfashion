

    <?php include("cabecalho.php");?>
    <?php include("header.php");?>


    <?php include("menu.php");?>

    <?php include("banners.php");?>
    <?php include("novidades.php");?>


      <?php /*
      <div class="container paineis">
        <section class="painel novidades painel-compacto">
          <h2>Novidades</h2>
          <ol>
            <?php
            // echo "SELECT p.* FROM produtos p LIMIT 12";exit;
              $prod = $db->executa("SELECT p.* FROM produtos p LIMIT 12");
              while ($row = $prod->fetch_array(MYSQLI_ASSOC)) {
                // print_r($row);exit;
            ?>
            <li>
              <a href="produto.php?id=<?php echo $row['id']; ?>">
                <figure>
                  <?php
                  $img_principal = $db->executa("SELECT * FROM imagens WHERE principal = 'S' AND Produtos_id = ".$row['id']);
                  $img_principal = $img_principal->fetch_array();
                  ?>
                  <img src="<?php echo $img_principal['caminho'].$img_principal['nome'];?>">
                  <figcaption> <?php echo $row['nome'];?> R$ <?php echo number_format($row["preco"], 2, ",", ".")?></figcaption>
                </figure>
              </a>
            </li>
            <?php } ?>
          </ol>
        </section>
      </div>
      */ ?>



<?php include("rodape.php")?>
