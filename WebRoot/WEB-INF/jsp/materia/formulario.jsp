<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../index/header.jsp" />
	<div id="formulario">
	  	<form id="formNewmateria" method="post" action="<c:url value='/materias'/>">
	  		<c:if test="${materia.id != null}">
	  			<input type="hidden" name="materia.id" value="${materia.id}" />
	  			<input type='hidden' name='_method' value='PUT'/>
	  		</c:if>
	  		<fieldset>
	  		<legend>
	  			<c:if test="${materia.id == null}">Nova matéria</c:if>
	  			<c:if test="${materia.id != null}">Editar matéria</c:if>
	  		</legend>
	  			<div>
	  				<label>Nome:</label><input type="text" class="required" maxlength="128" name="materia.nome" value="${materia.nome}">
	  			</div>
	  		</fieldset>
			<button class="btn primary">Gravar</button>
			<a class='btn small' href="<c:url value='/materias'/>">Voltar</a>
	   </form>
	</div>
<jsp:include page="../index/footer.jsp" />