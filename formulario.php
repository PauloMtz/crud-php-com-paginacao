<?php
	require 'database/crud-mysqli.php';

	$id = isset($_GET['id']) ? $_GET['id'] : null;

	$dados = consultar("contatos", "where id = '$id'");

	if ($dados) {
		foreach ($dados as $item) {}
	} else {
		$dados = "";
	}
	
?>	

	<h1 class="titulo"><span class="cor">Dados</span> do contato</h1>

	<div class="base-formulario">	
		<form name="form" action="cadastro/contato.php" method="POST">

			<div class="col">
				<label>Nome</label>
				<input name="nome" type="text" placeholder="Nome..." 
					value="<?php echo $item['nome'] ?>" required>
			</div>

			<div class="col">
				<label>Email</label>
				<input name="email" type="email" placeholder="E-mail..." 
					value="<?php echo $item['email'] ?>" required>
			</div>

			<div class="col">
				<label>Telefone</label>
				<input name="fone" type="text" maxlength="14" 
					onKeyPress="mascaraTelefone(form.fone)"
					value="<?php echo $item['telefone'] ?>">
			</div>

			<div class="col">
				<label>CEP <small style="color:red"> Pesquisa automática</small></label>
				<input name="cep" id="cep" type="text" onKeyPress="mascaraCep(form.cep)"
					onblur="pesquisacep(this.value)" required maxlength="10"
					value="<?php echo $item['cep'] ?>">
			</div>

			<div class="col">
				<label>Endereço</label>
				<input name="endereco" id="endereco" type="text"
					value="<?php echo $item['endereco'] ?>">
			</div>

			<div class="col">
				<label>Bairro</label>
				<input name="bairro" id="bairro" type="text"
					value="<?php echo $item['bairro'] ?>">
			</div>

			<div class="col">
				<label>Cidade</label>
				<input name="cidade" id="cidade" type="text"
					value="<?php echo $item['cidade'] ?>">
			</div>

			<div class="col">
				<label>UF</label>
				<input name="uf" id="uf" type="text"
					value="<?php echo $item['uf'] ?>">
			</div>

			<input type="hidden" name="id" value="<?php echo $item['id'] ?>">
			<input type="submit" value="Salvar" class="btn">
			<a href="lista.php" class="btn limpar">Cancelar</a>
		</form>
	</div>
