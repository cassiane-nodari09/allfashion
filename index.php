  <?php include("cabecalho.php");?>
  <?php include("header.php");?>

  <div class="container destaque">
    <?php include("menu.php");?>
    <img src="img/destaque-home.png" alt="Promoção: ">
  </div>

  <div class="container paineis">
    <section class="painel novidades painel-compacto">
      <h2>Novidades</h2>
      <ol>
        <?php
          $prod = $db->executa("SELECT p.* FROM produtos p LIMIT 6");
          while ($row = $prod->fetch_array(MYSQLI_ASSOC)) {
            // print_r($row);
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
      <button type="button">Mostra mais</button>
    </section>
    <!-- <section class="painel mais-vendidos painel-compacto">
      <h2>Mais Vendidos</h2>
      <ol>
        <li>
          <a href="produto.html">
            <figure>
              <img src="img/produtos/miniatura7.png">
              <figcaption>Fuzz Fitness por R$ 29,90</figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a href="produto.html">
            <figure>
              <img src="img/produtos/miniatura8.png">
              <figcaption>Fuzz Gymfit por R$ 29,90</figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a href="produto.html">
            <figure>
              <img src="img/produtos/miniatura10.png">
              <figcaption>Fuzz Gymfit por R$ 29,90</figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a href="produto.html">
            <figure>
              <img src="img/produtos/miniatura11.png">
              <figcaption>Fuzz Fitness por R$ 29,90</figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a href="produto.html">
            <figure>
              <img src="img/produtos/miniatura12.png">
              <figcaption>Fuzz Gymfit por R$ 29,90</figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a href="produto.html">
            <figure>
              <img src="img/produtos/miniatura13.png">
              <figcaption>Fuzz Fitness por R$ 29,90</figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a href="produto.html">
            <figure>
              <img src="img/produtos/miniatura14.png">
              <figcaption>Fuzz Gymfit por R$ 29,90</figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a href="produto.html">
            <figure>
              <img src="img/produtos/miniatura15.png">
              <figcaption>Fuzz Fitness por R$ 29,90</figcaption>
            </figure>
          </a>
        </li>

      </ol>
      <button type="button">Mostra mais</button>
    </section> -->
  </div>
  <?php include("rodape.php")?>
</body>

</html>
