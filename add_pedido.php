<?php
session_start();
include_once 'config/conexao.php';
$db = new Conexao();


$dados = $_POST;
// print_r($dados);exit;

$valor_total = 0;
foreach($_SESSION['itens'] as $IdProduto => $value){
    $produto = $db->executa("SELECT * FROM produtos p WHERE ID = ".$value['id']);
    $produto = $produto->fetch_array();
    $valor_total += ($produto['preco'] * $value['quantidade']);
}

// GRAVA DADOS DO CARTÃO DO USUÁRIO
$cartao = $db->executa("SELECT id FROM cartoes_pagamento ORDER BY id DESC LIMIT 1");
$cartao = $cartao->fetch_array();
$cartao_id = (isset($cartao) && count($cartao) > 0) ? ($cartao['id']+1):1;
$db->executa("INSERT INTO cartoes_pagamento (id, numero, nome_titular, mes_validade, ano_validade, codigo_seguranca, Usuarios_id)
                     VALUE (".$cartao_id.", '".$dados['cartao']."', '".$dados['nome_cartao']."', '".$dados['mes_validade']."', '".$dados['ano_validade']."', '".MD5($dados['codigo_seguranca'])."', ".$_SESSION['usuario']['id'].")");

// GRAVA ENDERECO DE ENTREGA
$endereco = $db->executa("SELECT id FROM enderecos ORDER BY id DESC LIMIT 1");
$endereco = $endereco->fetch_array();
$endereco_id = (isset($endereco) && count($endereco) > 0) ? ($endereco['id']+1):1;
$db->executa("INSERT INTO enderecos (id, rua, numero, complemento, cep, bairro, Cidades_id, Usuarios_id)
                     VALUE (".$endereco_id.", '".$dados['endereco']."', '".$dados['numero']."', '".$dados['complemento']."', '".$dados['cep']."', '".$dados['bairro']."', ".$dados['cidade'].", ".$_SESSION['usuario']['id'].")");

// GRAVA PEDIDO
$pedido = $db->executa("SELECT id FROM pedidos ORDER BY id DESC LIMIT 1");
$pedido = $pedido->fetch_array();
$pedido_id = (isset($pedido) && count($pedido) > 0) ? ($pedido['id']+1):1;
$db->executa("INSERT INTO pedidos (id, data_ini, valorTotal, Status_id, Usuarios_id, cartoes_pagamento_id, enderecos_id)
                     VALUE (".$pedido_id.", '".date('Y-m-d')."', '".$valor_total."', 1, ".$_SESSION['usuario']['id'].", ".$cartao_id.", ".$endereco_id.")");

// GRAVA ITENS PEDIDO
foreach($_SESSION['itens'] as $IdProduto => $value){
    $db->executa("INSERT INTO itempedido (Pedidos_id, Produtos_id, quantidade)
                         VALUE (".$pedido_id.", ".$IdProduto.", ".$value['quantidade'].")");
}

// GRAVA QUANTIDADE DE FATURAS
for ($i=1; $i <= $dados['parcelas']; $i++) {
    $db->executa("INSERT INTO faturas (valor, parcela, Status_id, Pedidos_id)
                         VALUE ('".number_format($valor_total/$dados['parcelas'], 2, '.', '')."', ".$i.", 1, ".$pedido_id.")");
}

// IMPRIME RECIBO
// REDIRECIONA PARA TELA DE MEUS PEDIDOS
echo "<script>alert('Pedido Computado com sucesso!'); window.location.href = 'meus_pedidos.php';</script>";

/*
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
*/
