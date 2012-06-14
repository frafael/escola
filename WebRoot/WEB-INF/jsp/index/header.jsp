<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	    <title>Controle Escolar</title>
	    
	    <script src="/Escola/js/jquery/jquery-1.7.0.min.js"></script>
	    <script src="/Escola/js/jquery/jquery-ui-1.8.13.custom.min.js"></script>
	    <script src="/Escola/js/bootstrap.js"></script>
	    <script src="/Escola/js/escola.js"></script>
	    <link rel="stylesheet" type="text/css" href="/Escola/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Escola/css/jquery/jquery.ui.all.css" />
	    <script src="/Escola/js/escola.js"></script>
	    <style>
	      body {
	        padding-top: 60px;
	      }
	    </style>
	</head>
  <body>


<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container">
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>
        <a class="brand" href="#">Controle Escolar</a>
        <div class="nav-collapse">
          <ul class="nav">
            <li class="active"><a href="/Escola/">Início</a></li>
              <li></li>
              <li></li>
              <li></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Exibir <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="/Escola/alunos">Alunos</a></li>
                <li><a href="/Escola/professores">Professores</a></li>
                <li><a href="/Escola/series">Séries</a></li>
                <li><a href="/Escola/materias">Matérias</a></li>
                <li class="divider"></li>
                <li class="nav-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cadastrar novo(a) <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="/Escola/alunos/new">Aluno</a></li>
                <li><a href="/Escola/professores/new">Professor</a></li>
                <li><a href="/Escola/series/new">Série</a></li>
                <li><a href="/Escola/materias/new">Matéria</a></li>
              </ul>
            </li>
          </ul>
          <form class="navbar-search pull-left" action="">
            <input type="text" class="search-query span2" placeholder="Pesquisar...">
          </form>
          <ul class="nav pull-right">
            <li><a href="#">Sair</a></li>
            <li class="divider-vertical"></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Nome do usuário <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Gerar PDF</a></li>
                <li><a href="#">Modificar senha</a></li>
                <li><a href="#">Reclamar nota</a></li>
                <li class="divider"></li>
                <li><a href="#">Sair</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.nav-collapse -->
      </div>
    </div><!-- /navbar-inner -->
  </div>

    <div class="container">
