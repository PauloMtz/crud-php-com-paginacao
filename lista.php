<?php include 'cadastro/paginacao2.php' ?>

<?php 
	require 'database/crud-mysqli.php';

	$pg = isset($_GET['pg']) ? $_GET['pg'] : 0;
	$pesquisar = isset($_GET['busca']) ? htmlspecialchars($_GET['busca']) : "";

	$lpp = 5;
	$inicio = $pg * $lpp;

	if ($pesquisar != "") {
		$dados = consultar("contatos", " where nome like '%$pesquisar%' limit $inicio, $lpp");
		$sql1 = "select * from contatos where nome like '%$pesquisar%' limit $inicio, $lpp";
		$sql2 = "select * from contatos where nome like '%$pesquisar%'";
		$complemento = "&busca=$pesquisar";
	} else {
		$dados = consultar("contatos", " limit $inicio, $lpp");
		$sql1 = "select * from contatos limit $inicio, $lpp";
		$sql2 = "select * from contatos";
		$complemento = "";
	}

	$total1 = total($sql1);
	$total2 = total($sql2);
	$paginas = ceil($total2 / $lpp - 1);
	$contador = ($pg + 1) * $lpp;
?>
	<h1 class="titulo"><span class="cor">Lista de</span> contatos</h1>

	<?php if (!$dados) {
		echo "<h3>Nenhum registro encontrado</h3>";
	} else { ?>
	<div class="base-lista">
		<span class="qtde">Mostrando 
			<?php if($contador <= $total2) {echo $contador;} else {echo $total2;} ?> de 
			<?php echo $total2 ?>
			<?php echo ($total2 == 1) ? "registro" : "registros" ?></span>
		<div class="tabela">	
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th width="10%" align="left">#</th>
						<th width="25%" align="left">Nome</th>
						<th width="25%" align="left">Email</th>
						<th width="20%" align="left">Telefone</th>
						<th width="20%" colspan="2" align="center">Alterar</th>
					</tr>
				</thead>
				<tbody>
					<?php
						foreach ($dados as $item) :
					?>
					<tr class="cor1">
						<td><?php echo $item['id'] ?></td>
						<td><?php echo $item['nome'] ?></td>
						<td><?php echo $item['email'] ?></td>
						<td><?php echo $item['telefone'] ?></td>
						<td align="center">
							<a href="index.php?url=3&id=<?php echo $item['id'] ?>" class="btn">
							Editar</a>
						</td>
						<td align="center">
							<a href="index.php?url=4&id=<?php echo $item['id'] ?>" 
								class="btn excluir"
								onClick="return confirm('Deseja realmente excluir esse registro?')">
								excluir</a>
						</td>
					</tr>
					<?php endforeach ?>									  
				</tbody>
			</table>
		</div>	

		<ul class="paginacao">
			<?php echo paginacao("index.php?url=2$complemento", $pg, $paginas) ?>
		</ul>

		<div align="right">
			<form action="cadastro/exporta.php" method="post">					
				<button type="submit" name="exporta_dados" value="exporta_dados" 
					class="btn">Exportar para o excel</button>
			</form>
		</div>
	</div>
	<?php } ?>
