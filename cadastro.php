<?php include("cabecalho.php");?>
<?php include("header.php");?>

<?php
    include_once 'config/conexao.php';
    $db = new Conexao();
  ?>

<?php 
 
    $login = $_POST['login'];
    $senha = MD5($_POST['senha']);
    // $con = mysqli_connect('localhost', 'root', '', 'allfashion');
    // $db = mysqli_select_db('allfashion');
    $query_select = "SELECT login FROM USUARIOS WHERE login = '$login'";
    $select = mysqli_query($query_select,$con);
    $array = mysqli_fetch_array($select);
    $logarray = $array['login'];
    
    if($login == "" || $login == null){
        echo"<script language='javascript' type='text/javascript'>alert('O campo login deve ser preenchido');window.location.href='formCadastro.php';</script>";
    
        }else{
            if($logarray == $login){
        
                echo"<script language='javascript' type='text/javascript'>alert('Esse login já existe');window.location.href='formCadastro.php';</script>";
                die();
        
            }else{
                $query = "INSERT INTO usuarios (login,senha) VALUES ('$login','$senha')";
                $insert = mysqli_query($query,$con);
                
                if($insert){
                echo"<script language='javascript' type='text/javascript'>alert('Usuário cadastrado com sucesso!');window.location.href='login.html'</script>";
                }else{
                echo"<script language='javascript' type='text/javascript'>alert('Não foi possível cadastrar esse usuário');window.location.href='formCadastro.php'</script>";
                }
            }
        }
?>