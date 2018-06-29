<?php include("cabecalho.php");?>
<?php include("header.php");?>
<?php
if (!isset($_SESSION['usuario'])) {
	// exit;
	echo '<script>window.location.href="formLogin.php?checkout=S"</script>';
}
print_r($_SESSION);
?>


<div class="jumbotron">
	<div class="container">
		<h1>Ótima escolha!</h1>
		<p>Obrigado por comprar na All Fashion!
			Preencha seus dados para efetivar a compra.</p>
			<!-- <h2>Sua compra</h2> -->
		</div>
	</div>
	<div class="container">
		<!-- <div class=""> -->
		<!-- <div class="row"> -->
			<form class="col-lg-19" action="add_pedido.php" method="POST">
				<!-- <fieldset class="col-md-5 bd-example">
					<h2>Dados pessoais</h2>

					<div class="form-group">
						<label for="nome">Nome completo</label>
						<input type="text" class="form-control" id="nome" name="nome"  value="<?php // echo $_SESSION['usuario']['nome']; ?>" autofocus required>
					</div>

					<div class="form-group">
						<label for="email">Email</label>
						<input type="email" class="form-control" id="email" name="email"  value="<?php // echo $_SESSION['usuario']['email']; ?>" placeholder="email@exemplo.com" required>

					</div>

					<div class="form-group">
						<label for="cpf">CPF</label>
						<input type="text" class="form-control" id="cpf" name="cpf" value="<?php // echo $_SESSION['usuario']['cpf']; ?>"  placeholder="000.000.000-00" required>
					</div>
				</fieldset> -->

				<fieldset class="col-md-6 bd-example"  style="float: right">
					<h2>Dados de Pagamento</h2>
					<div class="form-group col-lg-12">
						<label for="nome">Número do Cartão</label>
						<input type="text" class="form-control" name="cartao" required>
					</div>
					<div class="form-group col-lg-12">
						<label for="nome">Nome do titular (como está gravado no Cartão)</label>
						<input type="text" class="form-control" name="nome_cartao" required>
					</div>
					<div class="form-group col-lg-12">
						<label style="width: 100%">Mês de Validade</label>
						<select class="form-control" name="mes_validade" style="width: 45%; float: left;" required>
							<option value="">MÊS</option>
							<option value="01">01</option>
							<option value="02">02</option>
							<option value="03">03</option>
							<option value="04">04</option>
							<option value="05">05</option>
							<option value="06">06</option>
							<option value="07">07</option>
							<option value="08">08</option>
							<option value="09">09</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>
						<select class="form-control" name="ano_validade" style="width: 45%; float: left; margin-left: 10%;" required>
							<option value="">ANO</option>
							<option value="2018">2018</option>
							<option value="2019">2019</option>
						</select>
					</div>
					<div class="form-group col-lg-4" style="margin-top: 15px;" required>
						<label for="nome">Código de Segurança</label>
						<input type="text" class="form-control" name="codigo_seguranca">
					</div>
					<div class="clear"></div>
					<div class="form-group col-lg-3">
						<label for="nome">Opções de Parcelamento</label>
						<select class="form-control" name="parcelas" required>
							<option value="1">1x</option>
							<option value="2">2x</option>
							<option value="3">3x</option>
							<option value="4">4x</option>
							<option value="5">5x</option>
							<option value="6">6x</option>
						</select>
					</div>
				</fieldset>

				<fieldset class="col-md-5 bd-example">
					<h2>Endereço de Entrega</h2>
					<div class="form-group col-lg-4">
						<label for="nome">CEP</label>
						<input type="text" class="form-control" name="cep" required>
					</div>
					<div class="clear"></div>
					<div class="form-group col-lg-4">
						<label for="nome">Estado</label>
						<select class="form-control" name="estado" required>
							<option value="RS">RS</option>
						</select>
					</div>
					<div class="form-group col-lg-8">
						<label for="nome">Cidade</label>
						<select class="form-control" name="cidade" required>
							<option value="1">Erechim</option>
						</select>
					</div>
					<div class="form-group col-lg-8">
						<label for="nome">Endereço</label>
						<input type="text" class="form-control" name="endereco" required>
					</div>
					<div class="form-group col-lg-4">
						<label for="nome">Número</label>
						<input type="text" class="form-control" name="numero" required>
					</div>
					<div class="form-group col-lg-6">
						<label for="nome">Bairro</label>
						<input type="text" class="form-control" name="bairro" required>
					</div>
					<div class="form-group col-lg-6">
						<label for="nome">Complemento</label>
						<input type="text" class="form-control" name="complemento" required>
					</div>
				</fieldset>
				<div class="clear"></div>
				<button type="submit" class="btn btn-primary btn-lg pull-right" style="margin-bottom: 50px;">
					<span class="glyphicon glyphicon-thumbs-up"></span>
					Confirmar Pedido
				</button>
				<div class="clear"></div>
			</form>
		<!-- </div> -->
	</div>
</div>

<script type="text/javascript" src="js/jquery.js"></script>
<!-- <script src="js/bootstrap.js"></script> -->

<?php include("rodape.php"); ?>
