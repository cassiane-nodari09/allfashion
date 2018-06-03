<?php
        include_once 'config/conexao.php';
    $db = new Conexao();
?>

<?php 
  $login = $_POST['login'];
  $entrar = $_POST['entrar'];
  $senha = md5($_POST['senha']);
   $con = mysqli_connect('localhost','root','');
//  $db = mysqli_select_db('allfashion');
    if (isset($entrar)) {
      echo "SELECT * FROM USUARIOS WHERE login ='".$login."' AND senha = '".$senha."'";       
      $verifica = mysqli_query("SELECT * FROM USUARIOS WHERE login ='".$login."' AND senha = '".$senha."'") or die("erro ao selecionar");
      
        if (mysql_num_rows($verifica)<=0){
          echo"<script language='javascript' type='text/javascript'>alert('Login e/ou senha incorretos');window.location.href='login.html';</script>";
          die();
        }else{
          setcookie("login",$login);
          header("Location:index.php");
        }
    }
?>