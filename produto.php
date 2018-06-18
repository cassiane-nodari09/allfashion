<?php include("cabecalho.php");?>
<?php include("header.php");?>


<?php $cabecalho_css = '<link rel="stylesheet" href="css/produto.css">'; ?>

	<link rel="stylesheet" href="css/mobile.css" media="(max-width: 939px)">
	<link rel="stylesheet" href="css/produto.css">
	

		<div class="container">
			<div class="imagens-produtos">
				<?php
					$id = $_GET['id'];
					$img_principal = $db->executa("SELECT * FROM IMAGENS WHERE principal = 'S' AND Produtos_id = ".$id);
					$img_principal = $img_principal->fetch_array();
				?>
				<div style="padding: 20px;">
					<img src="<?php echo $img_principal['caminho'].$img_principal['nome']; ?>" alt="rosa" style="width: 100%">
				</div>
				<div class="imagem-menor">
					<?php
						$imgs = $db->executa("SELECT * FROM IMAGENS WHERE Produtos_id = ".$id);
						while ($row = $imgs->fetch_array(MYSQLI_ASSOC)) {
					?>
							<img src="<?php echo $row['caminho'].$row['nome']; ?>" alt="rosa">
						<?php } ?>
				</div>
			</div>
			<div class="produto">
				<div style="padding: 0 25px;">
			  		<?php
						$produto = $db->executa("SELECT * FROM PRODUTOS WHERE ID = ".$id);
						$produto = $produto->fetch_array();
						// print_r($produto);
					?>

					<!-- <a href="produto.php"><?php //echo utf8_encode($produtos['id']); ?></a> -->
					<h1><?php echo utf8_encode($produto["descricao"])?></h1>
					<p>Por apenas R$<?php echo number_format($produto["preco"], 2, ",", ".")?></p>

					<!-- CRIAR UM NOVO SELECT PARA CADA COR, COLOCAR NUM LAÇO WHILE -->
					<?php
						$id = $_GET['id'];
						// $descricao = $_GET['descricao'];
						$cor = $db->executa("SELECT * FROM CORES");
						// $cor = $cor->fetch_array();
						// print_r($cor);
					?>

					<!-- CRIAR UM NOVO SELECT PARA CADA TAMANHO, COLOCAR NUM LAÇO WHILE -->


					<form action="addSacola.php?acao=add&id=<?php echo $_GET['id'];?>" method="POST">
						<fieldset class="cores">

							<legend>Cor:</legend>
							<?php while ($row = $cor->fetch_array(MYSQLI_ASSOC)) { ?>
								<input type="radio" name="cor" value="verde">
								<label for="<?php echo $row['cor'];?>">
								</label>
							<?php } ?>
							

						</fieldset>
						<div class="tamanho">
							<legend>Escolha o tamanho:</legend>
								<label class="radio-inline">
									<input type="radio" name="tamanho" value="32" required>32
								</label>
								<label class="radio-inline">
									<input type="radio" name="tamanho" value="36" required>36
								</label>
								<label class="radio-inline">
									<input type="radio" name="tamanho" value="38" required>38
								</label>
								<label class="radio-inline" required>
									<input type="radio" name="tamanho" value="40" required>40
								</label>
								<br>
								<label class="radio-inline">
									<input type="radio" name="tamanho" value="42" required>42
								</label>
								<label class="radio-inline">
									<input type="radio" name="tamanho" value="44" required>44
								</label>
								<label class="radio-inline">
									<input type="radio" name="tamanho" value="46" required>46
								</label>
						</div>

							<!-- <fieldset class="tamanhos">
								<legend>Escolha o tamanho:</legend>
								<input type="range" min="36" max="46" value="42" step="2" name="tamanho" id="tamanho">
							</fieldset> -->
						<input type="submit" class="btn btn-success btn-lg pull-right" class="comprar" value="Adicionar à sacola">

						
					</form>
					<div class="detalhes">
						<h2>Detalhes do produto</h2>
						<p>Esse é o melhor casaco de Cardigã que você já viu. Excelente
						material italiano com estampa desenhada pelos artesãos da
						comunidade de Krotor nas ilhas gregas. Compre já e receba hoje
						mesmo pela nossa entrega a jato.</p>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
<?php include("rodape.php"); ?>
