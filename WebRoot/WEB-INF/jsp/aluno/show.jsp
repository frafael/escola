<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" />
	<div id="conteudos">
		<div id="topoConteudo">Alunos</div>
		<div id="page_container">
	  		<fieldset>
	  			<legend>Dados do aluno</legend>
	  				<div>Nome: ${aluno.nome}</div>
		  			<div>Série: ${aluno.serie}</div>
	  		</fieldset>
		</div>
		<a class="btn" href="<c:url value='/alunos'/>">Voltar</a>
	</div>
<jsp:include page="footer.jsp" />