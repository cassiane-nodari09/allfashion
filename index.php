

  <?php include("cabecalho.php");?>
  <?php include("header.php");?>

  
  <div class="container destaque">
    <?php include("menu.php");?>
    <img src="img/destaque-home.png" alt="Promoção: ">
    <!-- <ul id="slider">
      <li class="sliderActive"><a href="#"><img src="img/destaque-home.png" alt=""></a></li>
      <li><img src="img/destaque-home.png" alt=""></li>
      <li><img src="img/destaque-home-4.png" alt=""></li>
      <li><img src="img/destaque-home-1.png" alt=""></li>
    </ul>
  </div> -->



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
    </section>
  </div>
  <?php include("rodape.php")?>
  <!-- <script src="https:ajaxgoogleapis.com/aja/libs/jquery/2.1.4/jquery.min.js"></script> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<!-- <script type="text/javascript" src="slider.js"></script>  -->
  <script src="js/slider.js"></script>
</body>

</html>
