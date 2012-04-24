<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../index/header.jsp" />
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
	  			
	  			<div>
	  				<label>Número:</label><input type="text" class="required" maxlength="128" name="aluno.numero" value="${aluno.numero}">
	  			</div>
	  			
	  			<div style="float: left; margin-right:30px; ">
		  			<label>Série:</label>
		  			<select name="aluno.serie.id">
		  			  <option value="">Escolha uma série...</option>
		  			  <c:forEach items="${series}" var="serie">
					  	<option <c:if test="${serie.id == aluno.serie.id}">selected="selected"</c:if> value="${serie.id}">${serie.nome}</option>
					  </c:forEach>
					</select>
		  		</div>
	  		</fieldset>
			<button class="btn primary">Gravar</button>
			<a class='btn small' href="<c:url value='/alunos'/>">Voltar</a>
	   </form>
	</div>
<jsp:include page="../index/footer.jsp" />