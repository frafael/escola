<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" />
	<div id="formulario">
	  	<form id="formNewAluno" method="post" action="<c:url value='/alunos'/>">
	  		<c:if test="${aluno.id != null}">
	  			<input type="hidden" name="aluno.id" value="${aluno.id}" />
	  			<input type='hidden' name='_method' value='PUT'/>
	  		</c:if>
	  		<fieldset>
	  		<legend>
	  			<c:if test="${aluno.id == null}">Novo Aluno</c:if>
	  			<c:if test="${aluno.id != null}">Editar Aluno</c:if>
	  		</legend>
	  			<div>
	  				<label>Nome:</label><input type="text" class="required" maxlength="128" name="aluno.nome" value="${aluno.nome}">
	  			</div>
	  			<div style="float: left; margin-right:30px; ">
		  			<label>Série:</label><input type="text" class="serie" maxlength="64" name="aluno.serie" value="${aluno.serie}">
		  		</div>
	  		</fieldset>
			<button class="btn primary">Gravar</button>
			<a class='btn small' href="<c:url value='/alunos'/>">Voltar</a>
	   </form>
	</div>
<jsp:include page="footer.jsp" />