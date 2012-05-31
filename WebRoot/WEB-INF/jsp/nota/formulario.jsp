<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../index/header.jsp" />
	<div id="formulario">
	  	<form id="formNewserie" method="post" action="<c:url value='/series'/>">
	  		<c:if test="${serie.id != null}">
	  			<input type="hidden" name="serie.id" value="${serie.id}" />
	  			<input type='hidden' name='_method' value='PUT'/>
	  		</c:if>
	  		<fieldset>
	  		<legend>
	  			<c:if test="${serie.id == null}">Adicionar nota</c:if>
	  			<c:if test="${serie.id != null}">Editar nota</c:if>
	  		</legend>
	  			<div></div>
	  			<div>
	  				<label>Nota:</label><input type="text" class="required" maxlength="128" name="nota.valor" value="${serie.nome}">
	  			</div>
	  			<div>
	  			Disciplinas existentes:
	  			<c:forEach items="${materias}" var="materia">
		  				<div>
			  					<input <c:forEach items="${serie.materias}" var="materiaExistente"><c:if test="${materiaExistente.id == materia.id}">checked="checked"</c:if></c:forEach> type="checkbox" name="idMaterias" value="${materia.id}"> ${materia.nome}		  				
		  				</div>
	  			</c:forEach>
	  		</fieldset>
			<button class="btn primary">Gravar</button>
			<a class='btn small' href="<c:url value='/series'/>">Voltar</a>
	   </form>
	</div>
<jsp:include page="../index/footer.jsp" />