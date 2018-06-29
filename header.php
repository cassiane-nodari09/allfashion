<?php
    include_once 'config/conexao.php';
    $db = new Conexao();
?>


<?php session_start();?>

<nav class="navbar navbar-default navbar-static-top">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-id">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.php">All Fashion</a>
    </div>
    <div class="collapse navbar-collapse" id="navbar-collapse-id">
        <ul class="nav navbar-nav">
            <li><a href="listagem.php?cat_id=-1&sub_cat_id=-1"><span class="glyphicon glyphicon-folder-close"></span>     Produtos</a></li>
            <li><a href="sacola.php"> <span class="glyphicon glyphicon-briefcase"></span>     Sacola</a></li>
        </ul>
        
        <?php if (isset($_SESSION['usuario'])) { ?>

            <ul class="nav navbar-nav">
                <li><a href="meus_pedidos.php"> <span class="glyphicon glyphicon-list-alt"></span>     Meus Pedidos</a></li>
            </ul>
            <ul class="nav navbar-nav" style="float: right;">
                <li><a href="sair.php"> <span class="glyphicon glyphicon-remove"></span> Sair</a></li>
            </ul>
            <h4 style="margin-top: 15px; margin-right: 15px; float: right;">Olá, <?php echo $_SESSION['usuario']['nome']; ?></h4>
        <?php } else { ?>
            <ul class="nav navbar-nav" style="float: right;">
                <li><a href="formLogin.php"><span class="glyphicon glyphicon-user"></span> Login</a></li>
            </ul>
        <?php } ?>
         <form>
            <input type="search" id="txt_consulta" class="form-control input-busca" placeholder="Busque pelo site">
            <?php 
                // comando like com variavel 
                // $nome = $_POST['nome'];
                // // retorna todos os produtos que tenham o valor da variável busca em qualquer posição
                // $result = $db->executa("SELECT descricao FROM produtos WHERE descricao like '%".$nome."%' ");
                // print_r($result); exit;
            ?>
        </form>
    </div>
</nav>
<header class="container">
    <div style="text-align: center;">
        <a href="index.php"><img src="img/logo12.png" alt="all fashion"></a>
    </div>
</header>
