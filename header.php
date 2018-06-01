<header class="container">

    <section class="busca">
			<?php
				// error_reporting(E_ERROR | E_PARSE);
				// $lnk = mysqli_connect('localhost','root','') or die(mysqli_error()) or die ('Nao foi possível conectar ao MySql: ' . mysqli_error($lnk));
				// mysqli_select_db($lnk,'sky_sirius') or die ('Nao foi possível conectar ao banco de dados selecionado no MySql: ' . mysqli_error($lnk));

				// $sql = 'SELECT * FROM PRODUTOS ORDER BY nome ASC';
				// $nome = @$_POST['NOME'];

				// if(!is_null($nome) && !empty($nome))
				// 		$sql = "SELECT * FROM PRODUTOS WHERE nome LIKE '".$nome."' ORDER BY nome ASC";

				// $qry = mysqli_query($lnk, $sql) or die(mysqli_error($lnk));
				// $count = mysqli_num_rows($qry);
				// $num_campo = @mysqli_num_fields($qry);//Obtém o número de campos do resultado
				// $campo[] = array();
				// if($num_campo > 0) {
				// 		for($i = 0;$i<$num_campo; $i++){//Pega o nome dos campos
				// 				$fields[] = mysqli_fetch_field_direct($qry,$i)->name;
				// 		}
				// }
			?>

			<!-- <h1 style="
				text-align: center;
				height: 7;
				margin-top: 150;
				margin-bottom:70;
			"> Consulta de produtos </h1>

		<body>
		<form method="post" >
			<div class="col-lg-3">
					<div class="form-group">
							<label for="NOME">Nome: </label>
							<input class="form-control" id="NOME" placeholder="Nome do colaborador" name="NOME">
					</div>
			</div>
			<button type="submit" class="btn btn-primary" style="margin-top: 24;">Buscar</button> -->
		<!-- </form> -->
		<!--Filtro de busca-->

		<?php
			// if(!is_null($nome) && !empty($nome)) {
			// 		if($count > 0) {
			// 				echo 'Encontrado registros com o nome ' . $nome;
			// 		} else {
			// 				echo 'Nenhum registro foi encontrado com o nome ' . $nome;
			// 		}
			// }
		?>

		<h2>Busca</h2>

      <form>
        <input type="search">
        <input type="image" src="img/busca.png">
      </form>
    </section>

    <h1>
      <a href="index.php"><img src="img/logo12.png" alt="all fashion"></a>
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
