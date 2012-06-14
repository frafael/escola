<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../index/header.jsp" />
<script type="text/javascript">
	$(function() {
		$("#formNewConteudo").wrapLabel();
	});
</script>
	<div id="formulario">
	  	<form id="formNewProfessor" method="post" action="<c:url value='/professores'/>">
	  		<c:if test="${professor.id != null}">
	  			<input type="hidden" name="professor.id" value="${professor.id}" />
	  			<input type='hidden' name='_method' value='PUT'/>
	  		</c:if>
	  		<fieldset>
	  		<legend>
	  			<c:if test="${professor.id == null}">Novo Professor</c:if>
	  			<c:if test="${professor.id != null}">Editar Professor</c:if>
	  		</legend>
	  			<div>
	  				<label>Nome:</label><input type="text" class="required" maxlength="128" name="professor.nome" value="${professor.nome}">
	  			</div>
	  			<div style="float: left; margin-right:30px; ">
		  			<label>Séries:</label>
		  			<select name="professor.serie.id">
		  			  <option value="">Escolha uma série...</option>
		  			  <c:forEach items="${series}" var="serie">
					  	<option onclick="escola.optionProfessor()" <c:if test="${serie.id == professor.serie.id}">selected="selected"</c:if> value="${serie.id}">${serie.nome}</option>
					  </c:forEach>
					</select>
					<div class="materias" style="">
						Disciplinas a serem ministradas nesta série:
			  			<c:forEach items="${serie.materias}" var="materia">
				  				<div>
					  					<input type="checkbox" name="idMaterias" value="${materia.id}"> ${materia.nome}		  				
				  				</div>
			  			</c:forEach>
					</div>
		  		</div>
		  		
	  		</fieldset>
			<button class="btn primary">Gravar</button>
			<a class='btn small' href="<c:url value='/professores'/>">Voltar</a>
	   </form>
	</div>
<jsp:include page="../index/footer.jsp" />