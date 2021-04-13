<?php

function paginacao($url, $pg, $paginas)
{
	$mais = $pg + 1;
	$url_mais = "$url&pg=$mais";

	$menos = $pg - 1;
	$url_menos = "$url&pg=$menos";

	$adjacents = "2"; 

	$imprimePaginacao = "";

	if ($pg == 0) {

		for ($i = 1; $i <= 5; $i++) {
			if ($pg == $i) {
				$imprimePaginacao .= "
					<li class='ativo'>$i</li>";	
			} elseif ($i > $paginas) {
				$imprimePaginacao .= "
					<li><a class='desabilitar'>$i</a></li>";
			} else {
				$imprimePaginacao .= "
					<li><a href='$url&pg=$i'>$i</a></li>";
			}                  
		}

		$imprimePaginacao .= "
			<li><a>...</a></li>
			<li><a href='$url&pg=$paginas'>$paginas</a></li>
			<li><a href='$url_mais' class='prox'></a></li>
			<li><a href='$url&pg=$paginas' class='ultimo'>Último</a></li>";		
	} elseif ($paginas <= 10) {
		$imprimePaginacao .= "
			<li><a href='$url&pg=0' class='primeiro'>Primeiro</a></li>
			<li><a href='$url_menos' class='ant'></a></li>";

		for ($i = 1; $i < $paginas; $i++) {
			if ($pg == $i) {
				$imprimePaginacao .= "
					<li class='ativo'>$i</li>";
			} else {
				$imprimePaginacao .= "
					<li><a href='$url&pg=$i'>$i</a></li>";
			}	
		}
	} elseif ($paginas > 10) {
		$imprimePaginacao .= "
			<li><a href='$url&pg=0' class='primeiro'>Primeiro</a></li>
			<li><a href='$url_menos' class='ant'></a></li>";

		if ($pg <= 4) {
			for ($i = 0; $i < 8; $i++) {		 
				if ($i == $pg) {
					$imprimePaginacao .= "
						<li class='ativo'>$i</li>";	
				} else {
					$imprimePaginacao .= "
						<li><a href='$url&pg=$i'>$i</a></li>";
				}
			}
			$imprimePaginacao .= "
			<li><a>...</a></li>
			<li><a href='$url_mais' class='prox'></a></li>
			<li><a href='$url&pg=$paginas' class='ultimo'>Último</a></li>";
		} elseif ($pg > 4 && $pg < $paginas - 4) {
			$imprimePaginacao .= "
				<li><a href='$url&pg=1'>1</a></li>
				<li><a href='$url&pg=2'>2</a></li>
				<li><a>...</a></li>";

			for ($i = $pg - $adjacents; $i <= $pg + $adjacents; $i++) {			
				if ($i == $pg) {
					$imprimePaginacao .= "
						<li class='ativo'>$i</li>";	
				} else {
					$imprimePaginacao .= "
						<li><a href='$url&pg=$i'>$i</a></li>";
				}                  
			}

			$imprimePaginacao .= "
				<li><a>...</a></li>
				<li><a href='$url&pg=$paginas'>$paginas</a></li>
				<li><a href='$url_mais' class='prox'></a></li>
				<li><a href='$url&pg=$paginas' class='ultimo'>Último</a></li>";
		} elseif ($pg >= $paginas) {
			$imprimePaginacao .= "
				<li><a href='$url&pg=1'>1</a></li>
				<li><a href='$url&pg=2'>2</a></li>
				<li><a>...</a></li>";

			for ($i = $paginas - 6; $i < $paginas; $i++) {
				if ($i == $pg) {
					$imprimePaginacao .= "
						<li class='ativo'>$i</li>";	
				} else {
					$imprimePaginacao .= "
						<li><a href='$url&pg=$i'>$i</a></li>";
				}                   
			}
		} else {
			$imprimePaginacao .= "
				<li><a href='$url&pg=1'>1</a></li>
				<li><a href='$url&pg=2'>2</a></li>
				<li><a>...</a></li>";

			for ($i = $paginas - 6; $i <= $paginas; $i++) {
				if ($i == $pg) {
					$imprimePaginacao .= "
						<li class='ativo'>$i</li>";	
				} else {
					$imprimePaginacao .= "
						<li><a href='$url&pg=$i'>$i</a></li>";
				}                   
			}

			$imprimePaginacao .= "
			<li><a href='$url_mais' class='prox'></a></li>
			<li><a href='$url&pg=$paginas' class='ultimo'>Último</a></li>";
		}
	}

	if ($paginas <= 0) {
		$imprimePaginacao = "Página 1 de 1";
	}

	return $imprimePaginacao;
}
