<?php include("cabecalho.php");?>
<?php include("header.php");?>
  
<link rel="stylesheet" href="css/bootstrap.css">

<div class="container">
    <div class="col-lg-3"></div>
    <div class="col-lg-6" style="margin-bottom: 200px">    
        <form method="POST" action="login.php">
            <label for="login">Login</label>
            <input type="text" class="form-control" id="login" placeholder="Login" required><br>
            <label for="senha">Senha</label>
            <input type="password" class="form-control" id="senha" placeholder="Senha" required><br>
            <button type="submit" class="btn btn-success btn-lg pull-right">Entrar</button>
            <button type="submit" class="btn btn-primary btn-lg pull-left">Cadastre-se</button>
            <!-- <a href="formCadastro.php">Cadastre-se</a> -->
        </form>
    </div>
</div>
    <?php include("rodape.php")?>
    </body>
</html>