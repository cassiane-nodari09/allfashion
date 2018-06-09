<?php include("cabecalho.php");?>
<?php include("header.php");?>
<div class="container">
    <div class="col-lg-3"></div>
    <div class="col-lg-6" style="margin-bottom: 100px">
        <form method="POST" action="cadastro.php">
            <fieldset>
                <div class="text-center"></div>

                <legend>Dados pessoais</legend>

                <div class="form-group">
                    <label for="nome">Nome Completo</label>
                    <input type="text" class="form-control" name="nome" placeholder="Nome" autofocus required><br>

                    <label for="cpf">CPF</label>
                    <input type="text" class="form-control" name="cpf" placeholder="000.000.000-00" required><br>

                    <label for="email">Email</label>
                    <input type="email" class="form-control" name="email" placeholder="email@exemplo.com" value="<?php echo (isset($_POST['email']) ? $_POST['email']:''); ?>" required><br>

                    <label for="senha">Senha</label>
                    <input type="password" class="form-control" name="senha" placeholder="Senha" required><br>

                    <button type="submit" class="btn btn-primary btn-lg pull-right">Cadastrar</button>
                </div>
            </div>
        </fieldset>
    </form>
</div>
</div>
</div>

<?php include("rodape.php")?>
