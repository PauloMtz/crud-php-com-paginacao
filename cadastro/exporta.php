<?php

require '../database/crud-mysqli.php';

$dados = consultar("contatos");

if(isset($_POST["exporta_dados"])) {  
  $nome_arquivo = "arquivo_excel_".date('d-m-Y') . ".xls";

  header("Content-Type: application/vnd.ms-excel");
  header("Content-Disposition: attachment; filename=\"$nome_arquivo\"");

  $coluna = false;

  if(!empty($dados)) {
    foreach($dados as $item) {
      if(!$coluna) {
          // mostra o nome da coluna na primeira linha
        echo implode("\t", array_keys($item)) . "\n";
        $coluna = true;
      }
      echo implode("\t", array_values($item)) . "\n";
    }
  }
  exit;  
}
