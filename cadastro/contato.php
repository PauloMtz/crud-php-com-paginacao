<?php

require '../database/crud-mysqli.php';

$id = isset($_POST['id']) ? $_POST['id'] : 0;

$nome = isset($_POST['nome']) ? htmlspecialchars($_POST['nome']) : null;
$email = isset($_POST['email']) ? htmlspecialchars($_POST['email']) : null;
$fone = isset($_POST['fone']) ? addslashes($_POST['fone']) : null;
$cep = isset($_POST['cep']) ? addslashes($_POST['cep']) : null;
$endereco = isset($_POST['endereco']) ? htmlspecialchars($_POST['endereco']) : null;
$bairro = isset($_POST['bairro']) ? htmlspecialchars($_POST['bairro']) : null;
$cidade = isset($_POST['cidade']) ? htmlspecialchars($_POST['cidade']) : null;
$uf = isset($_POST['uf']) ? htmlspecialchars($_POST['uf']) : null;
$data = date('Y-m-d H:i:s');

if ($id == 0) {
	$dados = array(
		"nome" => $nome,
		"email" => $email,
		"telefone" => $fone,
		"cep" => $cep,
		"endereco" => $endereco,
		"bairro" => $bairro,
		"cidade" => $cidade,
		"uf" => $uf,
		"data_cadastro" => $data
	);

	$inserir_dados = inserir("contatos", $dados);

	if ($inserir_dados) {
		header("location: ../lista.php");
	} else {
		echo "Erro ao inserir dados no banco.";
	}
} else {
	$dados = array(
		"nome" => $nome,
		"email" => $email,
		"telefone" => $fone,
		"cep" => $cep,
		"endereco" => $endereco,
		"bairro" => $bairro,
		"cidade" => $cidade,
		"uf" => $uf,
		"data_cadastro" => $data,
		"id" => $id
	);

	$atualizar_dados = atualizar("contatos", $dados, "id = '$id'");

	if ($atualizar_dados) {
		header("location: ../index.php?url=2");
	} else {
		echo "Erro ao atualizar dados no banco.";
	}
}
