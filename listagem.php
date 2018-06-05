
  <?php include("cabecalho.php");?>
  <?php include("header.php");?>
  <div class="container destaque">
    <?php include("menu.php");?>
  <!-- </div>

  <div class="container paineis"> -->
    
    <!-- os paineis de novidades e mais vendidos entrarão aqui dentro -->
    <section class="painel novidades painel-compacto" style="width: 78%; float: right;">

    <?php 
      $categoria = $_GET["cat_id"];
      $subcategoria = $_GET["sub_cat_id"];
      // echo ($categoria);
      // echo ($subcategoria);
      $filtro="";
      if($categoria != -1){
        $filtro .= " AND CATEGORIAS_ID =".$categoria;
      }
      if($subcategoria != -1){
        $filtro .= " AND SUBCATEGORIAS_ID =".$subcategoria;
      }
      // $sql = "SELECT * FROM produtos where CATEGORIAS_ID =".$categoria.$filtro;
      $sql = "SELECT p.*
              FROM produtos p
              WHERE 1=1 ".$filtro;
      
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
                <?php
                $img_principal = $db->executa("SELECT * FROM imagens WHERE principal = 'S' AND Produtos_id = ".$row['id']);
                $img_principal = $img_principal->fetch_array();
                ?>
                <img src="<?php echo $img_principal["caminho"].$img_principal["nome"]?>">
                <figcaption><?php echo $row["nome"]?> por R$ <?php echo number_format($row["preco"], 2, ",", ".")?></figcaption>
              </figure>
            </a>
          </li>
        <?php } ?>
      </ol>
      <button type="button">Mostra mais</button>
    </section>
  </div>
  <?php include("rodape.php")?>	
</body>

</html>