<?php include("cabecalho.php");?>
<?php include("header.php");?>
<?php include("menu.php");?>
<?php include("banner_menor.php");?>

  <div class="container paineis">

    <!-- os paineis de novidades e mais vendidos entrarão aqui dentro -->
    <!-- <section class="painel novidades painel-compacto" style="width: 78%; float: right;"> -->

    <?php
      $categoria = $_GET["cat_id"];
      $busca = $_GET["busca"];
    //   $subcategoria = $_GET["sub_cat_id"];
      // echo ($categoria);
      // echo ($subcategoria);
      $filtro="";
      if(isset($categoria) && $categoria != -1){
        $filtro .= " AND CATEGORIAS_ID =".$categoria;
      }
      if(isset($busca) && $busca > ""){
        $filtro .= " AND p.nome LIKE '%".utf8_decode($busca)."%' OR p.descricao LIKE '%".utf8_decode($busca)."%'";
      }
      // if(isset($subcategoria) && $subcategoria != -1){
      //   $filtro .= " AND SUBCATEGORIAS_ID =".$subcategoria;
      // }
      // $sql = "SELECT * FROM produtos where CATEGORIAS_ID =".$categoria.$filtro;
      $sql = "SELECT p.*
              FROM produtos p
              WHERE 1=1 ".$filtro;

      // echo ($sql);exit;
      $result = $db->executa($sql);

      /*


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
                <figcaption><?php echo utf8_encode($row["descricao"])?> por R$ <?php echo number_format($row["preco"], 2, ",", ".")?></figcaption>
              </figure>
            </a>
          </li>
        <?php } ?>
      </ol>
      <button type="button">Mostra mais</button>
    </section>
  </div>
  */?>

      <div class="app__home__cards">
          <?php $cont=0; while ($row = $result->fetch_array(MYSQLI_ASSOC)) { $cont++; ?>
              <div class="app__home__cards__item">
                  <a href="produto.php?id=<?php echo $row['id']; ?>" style="text-decoration: none;">
                      <div class="app__transition__wrapper">
                          <?php
                              $img_principal = $db->executa("SELECT * FROM imagens WHERE principal = 'S' AND Produtos_id = ".$row['id']);
                              $img_principal = $img_principal->fetch_array();
                          ?>
                          <img src="<?php echo $img_principal['caminho'].$img_principal['nome'];?>" alt="<?php echo utf8_encode($row['nome']);?>" style="height: 100%;">
                      </div>
                      <div class="app__home__cards__details">
                          <h3><?php echo utf8_encode($row['nome']);?></h3>
                          <button class="btn btn-outline-primary">VEJA MAIS</button>
                      </div>
                  </a>
              </div>
          <?php } ?>
          <?php if ($cont === 0) { ?>
              <div class="app__home__cards__details">
                  <h3>Nenhum produto foi encontrado</h3>
              </div>
          <?php } ?>
      </div>
  </div>

  <?php include("rodape.php")?>
