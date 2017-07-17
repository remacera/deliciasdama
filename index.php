<!DOCTYPE html>
<?php $abrir = isset($_GET['pagina']) ? $_GET['pagina'] : "php/dashboard.php"; ?>
<html lang="pt-br">
<head>
  <!-- Meta  -->
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
  <title>Delícias da Má</title>
  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
</head>
<body>
	
  <!-- Navbar -->
  <nav>
    <div class="nav-wrapper pink">
      <a href="#" class="brand-logo" style="font-family: 'Pacifico', cursive;">Delícia da Má</a>
      <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="index.php?pagina=php/pessoas.php">Pessoas</a></li>
        <li><a href="index.php?pagina=php/produtos.php">Produtos</a></li>
		    <li><a href="index.php?pagina=php/materiasprimas.php">Matérias Primas</a></li>
        <li><a href="index.php?pagina=php/movimentacoes.php">Movimentações</a></li>
		    <li><a href="index.php?pagina=php/producao.php">Produção</a></li>
		    <li><a href="index.php?pagina=php/dashboard.php">Dashboard</a></li>
      </ul>
      <ul class="side-nav" id="mobile-demo">
        <li><a href="index.php?pagina=php/pessoas.php">Pessoas</a></li>
        <li><a href="index.php?pagina=php/produtos.php">Produtos</a></li>
        <li><a href="index.php?pagina=php/materiasprimas.php">Matérias Primas</a></li>
        <li><a href="index.php?pagina=php/movimentacoes.php">Movimentações</a></li>
        <li><a href="index.php?pagina=php/producao.php">Produção</a></li>
        <li><a href="index.php?pagina=php/dashboard.php">Dashboard</a></li>
      </ul>
    </div>
  </nav>
  <!-- Container -->
  <div class="row">
		<?php include $abrir;?>
  </div>
  <!-- Scripts -->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  <script>$(".button-collapse").sideNav();</script>
  </body>
</html>
