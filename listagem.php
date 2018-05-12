
  <?php include("cabecalho.php");?>
  <?php include("header.php");?>
  <div class="container destaque">
    <?php include("menu.php");?>
  </div>

  <div class="container paineis">
    
    <!-- os paineis de novidades e mais vendidos entrarão aqui dentro -->
    <section class="painel novidades painel-compacto" style="width: 80%; float: right;">

    <?php 
      $categoria = $_GET["cat_id"];
      $subcategoria = $_GET["sub_cat_id"];
      $filtro="";
      if($subcategoria =! -1){
        $filtro = " AND SUBCATEGORIAS_ID =".$subcategoria;
      }
      // $sql = "SELECT * FROM produtos where CATEGORIAS_ID =".$categoria.$filtro;
      $sql = "SELECT p.*, i.caminho, i.nome AS imagem 
              FROM produtos p
              LEFT JOIN imagens i on i.produtos_id = p.id
              WHERE CATEGORIAS_ID =".$categoria.$filtro."  
              AND i.principal = 'S'";
      
      // echo ($sql);
      $result = $db->executa($sql);
    ?>
      <h2>Novidades</h2>
      <ol>
        <?php while ($row = $result->fetch_array(MYSQLI_ASSOC)) { 
          // print_r($row);
          ?>
          <li>
            <a href="produto.php?id=<?php echo $row['id']?>">
              <figure>
                <img src="<?php echo $row["caminho"].$row["imagem"]?>">
                <figcaption><?php echo $row["nome"]?> por R$ <?php echo number_format($row["preco"], 2, ",", ".")?></figcaption>
              </figure>
            </a>
          </li>
        <?php } ?>
      </ol>
      <button type="button">Mostra mais</button>
    </section>
    <section class="painel mais-vendidos painel-compacto" style="width: 80%; float: right;">
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
    </section>
  </div>
  <?php include("rodape.php")?>	
</body>

</html>