
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
					<li><a href="sobre.php"><span class="glyphicon glyphicon-home"></span>     Sobre</a></li>
					<li><a href="listagem.php?cat_id=-1&sub_cat_id=-1"><span class="glyphicons glyphicons-t-shirt"></span>     Produtos</a></li>
					<li><a href="formLogin.php"> <span class="glyphicon glyphicon-user"></span>     Login</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-envelope"></span>     Entre em contato</a></li>
					<li><a href="sacola.php"> <span class="glyphicon glyphicon-shopping-bag"></span>     Sacola</a></li>
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
				<form class="col-sm-8 col-lg-9">
					<fieldset class="col-md-6">
						<h2>Dados pessoais</h2>
						
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
					</fieldset>
					<a href="efetivar.php" class="btn btn-primary btn-lg pull-right" style="margin-bottom: 100px float: left">
						<span class="glyphicon glyphicon-thumbs-up"></span>
						Confirmar Pedido
					</a>
				</form> 
			</div>

		
			<!-- <form action="/efetivar.php" method="POST"></form> -->
		</div>
		<script src="js/jquery.js"></script>
 		<script src="js/bootstrap.js"></script>
<?php include("rodape.php"); ?>