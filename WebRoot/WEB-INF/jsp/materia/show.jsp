<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../index/header.jsp" />
	<div id="conteudos">
		<div id="topoConteudo">Matérias</div>
		<div id="page_container">
	  		<fieldset>
	  			<legend>Dados da matéria</legend>
	  				<div>Nome: ${materia.nome}</div>
	  		</fieldset>
		</div>
		<a class="btn" href="<c:url value='/materias'/>">Voltar</a>
	</div>
<jsp:include page="../index/footer.jsp" />