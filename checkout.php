<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Checkout All Fashion</title>
		<meta name="viewport" content="width=device-width">
		<link rel="stylesheet" href="css/bootstrap.css">
		<script src="js/total.js"></script>
		<!-- <link rel="stylesheet" href="css/bootstrap-flatly.css"> -->
	</head>
	<body>
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
					<li class="active"><a href="sobre.php"><span class="glyphicon glyphicon-home"></span>   Sobre</a></li>
					<li><a href="#">Ajuda</a></li>
					<li><a href="#">Perguntas frequentes</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-envelope"></span>     Entre em contato</a></li>
				</ul>
         	</div>
		</nav>

		<div class="jumbotron">
			<div class="container">
				<h1>Ótima escolha!</h1>
				<p>Obrigado por comprar na All Fashion!
				Preencha seus dados para efetivar a compra.</p>
				<h2>Sua compra</h2>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-lg-3">
					<div class="panel panel-default">                
						<div class="panel panel-success">
							<div class="panel-heading">
								<h2 class="panel-title">Sua compra</h2>
							</div>
							<div class="panel-body">
								<img src="img/produtos/foto1-<?= $_POST['cor'] ?>.png" class="img-thumbnail img-responsive">
								<dl>
									<dt>Produto</dt>
									<dd><?= $_POST["nome"] ?></dd>
									<dt>Preço</dt>
									<dd id="preco">R$ <?= $_POST["preco"] ?></dd>
									<dt>Cor</dt>
									<dd><?= $_POST["cor"] ?></dd>
									<!-- <dt>Tamanho</dt> -->
									<!-- <dd><?= $_POST["tamanho"] ?></dd> -->
								</dl>	
								
								<div class="form-group">
									<label for="qt">Quantidade</label>
									<input id="qt" class="form-control" type="number" min="0" max="99" value="1">
								</div>
								<div class="form-group">
									<label for="total">Total</label>
									<output for="qt preco" id="total" class="form-control">
										<?= $_POST["preco"] ?>
									</output>
								</div>
							</div>
						</div>
					</div>
				</div>

				<form class="col-sm-8 col-lg-9">
					<fieldset class="col-md-6">
						<legend>Dados pessoais</legend>
						
						<div class="form-group">
							<label for="nome">Nome completo</label>
							<input type="text" class="form-control" id="nome" name="nome" autofocus required>
						</div>

						<div class="form-group">
						<!--
							<label for="email">Email</label>
							<div class="input-group">
								<span class="input-group-addon">@</span>
								<input type="email" class="form-control" id="email" name="email" required>
							</div>
								-->
						
							<label for="email">Email</label>
							<input type="email" class="form-control" id="email" name="email" placeholder="email@exemplo.com">
						
						</div>
						
						<div class="form-group">
							<label for="cpf">CPF</label>
							<input type="text" class="form-control" id="cpf" placeholder="000.000.000-00" required>
						</div>

						<div class="checkbox">
							<label>
								<input type="checkbox" value="sim" name="spam" checked>
								Quero receber spam da All    Fashion
							</label>
						</div>
					</fieldset>

					<fieldset class="col-md-6">
						<legend>Cartão de crédito</legend>
						<div class="form-group">
							<label for="numero-cartao">Número - CVV</label>
							<input type="text" class="form-control" id="numero-cartao" name="numero-cartao">
						</div>

						<div class="form-group">
							<label for="bandeira-cartao">Bandeira</label>
							<select name="bandeira-cartao" id="bandeira-cartao" class="form-control">
								<option value="master">MasterCard</option>
								<option value="visa">VISA</option>
								<option value="amex">American Express</option>
							</select>
						</div>

						<div class="form-group">
							<label for="validade-cartao">Validade</label>
							<input type="month" class="form-control" id="validade-cartao" name="validade-cartao">
						</div>
					</fieldset>
					<button type="submit" class="btn btn-primary btn-lg pull-right">
						<span class="glyphicon glyphicon-thumbs-up"></span>
						Confirmar Pedido
					</button>
				</form> 
			</div>
		
			<form action="/efetivar.php" method="POST"></form>
		</div>
		<script src="js/jquery.js"></script>
 		<script src="js/bootstrap.js"></script>
	</body>
</html>