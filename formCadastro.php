<?php include("cabecalho.php");?>
<?php include("header.php");?>
  
<link rel="stylesheet" href="css/bootstrap.css">

<html>
        <head>
            <title> Cadastro de Usuário </title>
        </head>
        <body>
            
            <div class="container">
                <div class="col-lg-3"></div>
                    <div class="col-lg-6" style="margin-bottom: 100px">    
                        <form method="POST" action="cadastro.php">
                            <fieldset>
                                <div class="text-center"></div>

                                    <legend>Dados pessoais</legend>
                                
                                    <div class="form-group">
                                        <label for="nome">Nome Completo</label>
                                        <input type="text" class="form-control" id="nome" placeholder="Nome" autofocus required><br>
                                    
                                        <label for="email">Email</label>
                                        <input type="email" class="form-control" id="email" placeholder="email@exemplo.com"><br>

                                        <label for="cpf">CPF</label>
                                        <input type="text" class="form-control" id="cpf" placeholder="000.000.000-00" required><br>

                                        <label for="login">Login</label>
                                        <input type="text" class="form-control" id="login" placeholder="Login" required><br>

                                        <label for="senha">Senha</label>
                                        <input type="password" class="form-control" id="senha" placeholder="Senha" required><br>

                                        <button type="submit" class="btn btn-primary btn-lg pull-right">Cadastrar</button>
                                    </div>
                                </div>        
                            </fieldset>
                        </form>
                    </div>    
                </div>    
            </div>
        <?php include("rodape.php")?>
    </body>
</html>