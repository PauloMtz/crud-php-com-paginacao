<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Cadastro PHP</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body>
	<!-- página layout -->
	<div class="conteudo">	
		<div class="base-central">
			<div class="base-topo">
				<a href="index.php?url=1" class="logo"></a>
				<div class="base-busca">
					<form action="index.php?url=2" method="get">
						<input type="text" name="busca" placeholder="Buscar nome">
						<input type="submit" class="but" value="">
					</form>
				</div>
			</div>
			<nav class="menu">
				<ul>
					<li><a href="index.php?url=1">Home</a></li>
					<li><a href="index.php?url=3">Cadastrar novo</a></li>
					<li><a href="index.php?url=2">Lista de contatos</a></li>
					<li><a href="index.php?url=2">Editar</a></li>
					<li><a href="index.php?url=2">Exluir</a></li>
				</ul>
			</nav>

			<div class="base-home">
				<?php
					$url = $_GET['url'];

					$page[1] = "home.php";
					$page[2] = "lista.php";
					$page[3] = "formulario.php";
					$page[4] = "cadastro/excluir.php";

					if (!empty($url)) {
						if (file_exists($page[$url])) {
							include $page[$url];
						} else {
							include "lista.php";
						}
					} else {
						include "lista.php";
					}
				?>	
			</div>

			<div class="base-rodape">
				<p>&copy; Direitos Reservados mjailton.com.br - <?php echo date('Y'); ?></p>
			</div>	
		</div>		
	</div>

	<script type="text/javascript" src="assets/js/cep.js"></script>
	<script type="text/javascript" src="assets/js/mascaraValidacao.js"></script>
	
</body>
</html>
