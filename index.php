<!DOCTYPE html>
<html>

<head>
  <title>All fashion</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/estilos.css">
  <meta name="viewport" content="width=device-width">
  <link rel="stylesheet" href="css/mobile.css" media="(max-width: 939px)">
  <script src="js/jquery.js"></script>
  <script src="js/home.js"></script>
  <?php
    include_once 'config/conexao.php';
    $db = new Conexao();
  ?>
</head>

<body>
  <header class="container">

    <h1>
      <img src="img/logo12.png" alt="all fashion">
    </h1>

    <p class="sacola">
      Nenhum item na sacola de compras
    </p>
    <nav class="menu-opcoes">
      <ul>
        <li>
          <a href="#">Sua Conta</a>
        </li>
        <li>
          <a href="#">Lista de Desejos</a>
        </li>
        <li>
          <a href="#">Cartão Fidelidade</a>
        </li>
        <li>
          <a href="sobre.php">Sobre</a>
        </li>
        <li>
          <a href="#">Ajuda</a>
        </li>
      </ul>
    </nav>
  </header>

  <div class="container destaque">

    <section class="busca">
      <h2>Busca</h2>

      <form>
        <input type="search">
        <input type="image" src="img/busca.png">
      </form>
    </section>
    <!-- fim .busca -->

    <section class="menu-departamentos">
      <h2>Departamentos</h2>
      <?php
        $categorias = $db->executa("SELECT * FROM CATEGORIAS");
      ?>
      <nav>
        <ul>
          <?php while ($row = $categorias->fetch_array(MYSQLI_ASSOC)) { ?>
            <li>
            <?php $id = 10; ?>
              <a href="produto.php"><?php echo utf8_encode($row['descricao']); ?></a>
              <?php
                $subcategorias = $db->executa("SELECT * FROM SUBCATEGORIAS WHERE CATEGORIAS_ID = ".$row['id']);
              ?>
              <ul class="sub-menu">
                <?php while ($r = $subcategorias->fetch_array(MYSQLI_ASSOC)) { ?>
                  <li><a href="/produto.php?id=123"><?php echo utf8_encode($r['descricao']); ?></a></li>
                <?php } ?>
              </ul>
            </li>
          <?php } ?>
          </ul>
      </nav>
    </section>
    <!-- fim .menu-departamentos -->

    <img src="img/destaque-home.png" alt="Promoção: ">
  </div>
  <!-- fim .container .destaque -->

  <div class="container paineis">
    
    <!-- os paineis de novidades e mais vendidos entrarão aqui dentro -->
    <section class="painel novidades painel-compacto">
      <h2>Novidades</h2>
      <ol>
        <li>
          <a href="produto.html">
            <figure>
              <img src="img/produtos/miniatura1.png">
              <figcaption>Fuzz Cardigan por R$ 129,90</figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a href="produto.html">
            <figure>
              <img src="img/produtos/miniatura2.png">
              <figcaption>T-shirt por R$ 59,90</figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a href="produto.html">
            <figure>
              <img src="img/produtos/miniatura3.png">
              <figcaption>Sueter por R$ 99,90</figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a href="produto.html">
            <figure>
              <img src="img/produtos/miniatura4.png">
              <figcaption>Casaco Bindolo R$ 229,90</figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a href="produto.html">
            <figure>
              <img src="img/produtos/miniatura5.png">
              <figcaption>Fuzz Fitness por R$ 29,90</figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a href="produto.html">
            <figure>
              <img src="img/produtos/miniatura6.png">
              <figcaption>Fuzz Gymfit por R$ 29,90</figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a href="produto.html">
            <figure>
              <img src="img/produtos/miniatura9.png">
              <figcaption>Fuzz Fitness por R$ 149,90</figcaption>
            </figure>
          </a>
        </li>
      </ol>
      <button type="button">Mostra mais</button>
    </section>
    <section class="painel mais-vendidos painel-compacto">
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

</body>

</html>