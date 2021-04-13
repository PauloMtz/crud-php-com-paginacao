<?php

require 'database/crud-mysqli.php';

$id = isset($_GET['id']) ? $_GET['id'] : null;

$exclusao = excluir("contatos", "id = '$id'");

?>
<script type="text/javascript">
	window.location.href="index.php?url=2"
</script>
