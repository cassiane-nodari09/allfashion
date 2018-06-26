<?php include("cabecalho.php");?>
<?php include("header.php");?>

<div class="container">
    <div class="col-lg-6" style="margin-bottom: 100px; margin-top: 50px; border-right: 1px solid #c3c3c3;">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <h3>Já sou Cliente</h3>
            <form method="POST" action="login.php<?php echo (isset($_GET['checkout'])) ? '?checkout=S':''; ?>">
                <label for="login">E-mail</label>
                <input type="email" class="form-control" name="email" placeholder="E-mail" required><br>
                <label for="senha">Senha</label>
                <input type="password" class="form-control" name="senha" placeholder="Senha" required><br>
                <button type="submit" class="btn btn-success btn-lg pull-right">Entrar</button>
            </form>
        </div>
    </div>
    <div class="col-lg-6" style="margin-bottom: 100px; margin-top: 50px;">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <h3>Criar conta</h3>
            <form method="POST" action="formCadastro.php<?php echo (isset($_GET['checkout'])) ? '?checkout=S':''; ?>">
                <label for="login">E-mail</label>
                <input type="email" class="form-control" placeholder="Informe seu E-mail" required name="email" /><br>
                <button type="submit" class="btn btn-success btn-lg pull-right">Continuar</button>
            </form>
        </div>
    </div>
</div>
<?php include("rodape.php")?>
