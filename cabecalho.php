<!DOCTYPE html>
<html>
<head>
    <title>All Fashion</title>
    <meta charset="utf-8">
    <!-- <link rel="stylesheet" href="css/reset.css"> -->
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/mobile.css" media="(max-width: 939px)">
    <link rel="stylesheet" href="css/bootstrap.css">
    <?php print @$cabecalho_css; ?>
    <link href='https://fonts.googleapis.com/css?family=PT+Sans|Bad+Script' rel='stylesheet' type='text/css'>
    <meta name="viewport" content="width=device-width">
</head>
<body>
    <?php
        include_once 'config/conexao.php';
        $db = new Conexao();
    ?>
