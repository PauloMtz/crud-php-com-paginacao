<?php

function paginacao($url, $pg, $paginas)
{
	$mais = $pg + 1;
	$url_mais = "$url&pg=$mais";

	$menos = $pg - 1;
	$url_menos = "$url&pg=$menos";

	$imprimePaginacao = "";

	if ($pg == 0) {

		for ($i = 1; $i <= $paginas; $i++) {
			if ($pg == $i) {
				$imprimePaginacao .= "
					<li class='ativo'>$i</li>";
			} else {
				$imprimePaginacao .= "
					<li><a href='$url&pg=$i'>$i</a></li>";
			}	
		}

		$imprimePaginacao .= "
			<li><a href='$url_mais' class='prox'>Próximo</a></li>
			<li><a href='$url&pg=$paginas' class='ultimo'>Último</a></li>";			
	}

	if ($pg > 0) {

		$imprimePaginacao .= "
			<li><a href='$url&pg=0' class='primeiro'>Primeiro</a></li>
			<li><a href='$url_menos' class='ant'>Anterior</a></li>";

		for ($i = 1; $i <= $paginas; $i++) {
			if ($pg == $i) {
				$imprimePaginacao .= "
					<li class='ativo'>$i</li>";
			} else {
				$imprimePaginacao .= "
					<li><a href='$url&pg=$i'>$i</a></li>";
			}	
		}

		$imprimePaginacao .= "
			<li><a href='$url_mais' class='prox'>Próximo</a></li>
			<li><a href='$url&pg=$paginas' class='ultimo'>Último</a></li>";		
	}

	if ($pg >= $paginas) {

		$imprimePaginacao = "
			<li><a href='$url&pg=0' class='primeiro'>Primeiro</a></li>
			<li><a href='$url_menos' class='ant'>Anterior</a></li>";

		for ($i = 1; $i <= $paginas; $i++) {
			if ($pg == $i) {
				$imprimePaginacao .= "
					<li class='ativo'>$i</li>";
			} else {
				$imprimePaginacao .= "
					<li><a href='$url&pg=$i'>$i</a></li>";
			}	
		}
	}

	if ($paginas <= 0) {
		$imprimePaginacao = "Página 1 de 1";
	}

	return $imprimePaginacao;
}
