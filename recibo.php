<?php

$dados = $_POST;
print_r($dados);exit;

// Inserir pedido no banco de dados


// Gerar recibo
require_once 'vendor/autoload.php';

// referenciando o namespace do dompdf
use Dompdf\Dompdf;

// instanciando o dompdf
$dompdf = new Dompdf();

//lendo o arquivo HTML correspondente
$html = file_get_contents('comprovante.php');

//inserindo o HTML que queremos converter
$dompdf->loadHtml($html);

// Definindo o papel e a orientação
$dompdf->setPaper('A4', 'portrait');

// Renderizando o HTML como PDF
$dompdf->render();

// Enviando o PDF para o browser
$dompdf->stream();
