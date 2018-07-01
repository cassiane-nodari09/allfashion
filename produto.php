<?php include("cabecalho.php");?>
<?php include("header.php");?>
<?php include("menu.php");?>
<?php include("banner_menor.php");?>


<?php $cabecalho_css = '<link rel="stylesheet" href="css/produto.css">'; ?>

	<link rel="stylesheet" href="css/mobile.css" media="(max-width: 939px)">
	<link rel="stylesheet" href="css/produto.css">

		<div class="container">
			<div class="imagens-produtos">
				<?php
					$id = $_GET['id'];
					$img_principal = $db->executa("SELECT * FROM imagens WHERE principal = 'S' AND Produtos_id = ".$id);
					$img_principal = $img_principal->fetch_array();
				?>
				<div style="padding: 20px;">
					<img src="<?php echo $img_principal['caminho'].$img_principal['nome']; ?>" alt="rosa" style="width: 100%">
				</div>
				<div class="imagem-menor">
					<?php
						$imgs = $db->executa("SELECT * FROM imagens WHERE Produtos_id = ".$id);
						while ($row = $imgs->fetch_array(MYSQLI_ASSOC)) {
					?>
							<img src="<?php echo $row['caminho'].$row['nome']; ?>" alt="rosa">
						<?php } ?>
				</div>
			</div>
			<div class="produto">
				<div style="padding: 0 25px;">
			  		<?php
						$produto = $db->executa("SELECT * FROM produtos WHERE ID = ".$id);
						$produto = $produto->fetch_array();
						// print_r($produto);
					?>

					<!-- <a href="produto.php"><?php //echo utf8_encode($produtos['id']); ?></a> -->
					<h1><?php echo utf8_encode($produto["nome"])?></h1>
					<p>Por apenas R$<?php echo number_format($produto["preco"], 2, ",", ".")?></p>

					<!-- CRIAR UM NOVO SELECT PARA CADA COR, COLOCAR NUM LAÇO WHILE -->
					<?php
						$id = $_GET['id'];
						// $descricao = $_GET['descricao'];
						$cor = $db->executa("SELECT * FROM cores");
						// $cor = $cor->fetch_array();
						// print_r($cor);
					?>

					<!-- CRIAR UM NOVO SELECT PARA CADA TAMANHO, COLOCAR NUM LAÇO WHILE -->


					<form action="addSacola.php?acao=add&id=<?php echo $_GET['id'];?>" method="POST" id="form-produto">
						<fieldset class="col-lg-12">

							<legend>Cor:</legend>
							<?php while ($row = $cor->fetch_array(MYSQLI_ASSOC)) { ?>
								<label class="radio-inline-cor seleciona-cor <?php echo $row['cor']; ?>" data-cor="<?php echo $row['cor']; ?>">
									<input type="radio" hidden name="cor" value="<?php echo $row['cor']; ?>">
								</label>
							<?php } ?>
						</fieldset>

						<fieldset class="col-lg-12">
							<legend>Escolha o tamanho:</legend>
							<?php if ($produto['tipo_tamanho'] == 2) { ?>
								<label class="radio-inline">
									<input type="radio" hidden name="tamanho" value="32">32
								</label>
								<label class="radio-inline">
									<input type="radio" hidden name="tamanho" value="36">36
								</label>
								<label class="radio-inline">
									<input type="radio" hidden name="tamanho" value="38">38
								</label>
								<label class="radio-inline">
									<input type="radio" hidden name="tamanho" value="40">40
								</label>
								<label class="radio-inline">
									<input type="radio" hidden name="tamanho" value="42">42
								</label>
								<label class="radio-inline">
									<input type="radio" hidden name="tamanho" value="44">44
								</label>
								<label class="radio-inline">
									<input type="radio" hidden name="tamanho" value="46">46
								</label>
								<br/>
							<?php } else {?>
								<label class="radio-inline">
									<input type="radio" hidden name="tamanho" value="P">P
								</label>
								<label class="radio-inline">
									<input type="radio" hidden name="tamanho" value="M">M
								</label>
								<label class="radio-inline">
									<input type="radio" hidden name="tamanho" value="G">G
								</label>
							<?php } ?>
						</fieldset>

						<input type="button" onclick="validaForm()" class="btn btn-success btn-lg" class="comprar" value="Adicionar à sacola" style="margin-bottom: 10px; float: right;">
						<h2>Detalhes do produto</h2>
						<h3 class="descri"><?php echo utf8_encode($produto["descricao"])?></h3>
					</form>
				</div>
			</div>
			<div class="clear"></div>
		</div>
<?php include("rodape.php"); ?>
