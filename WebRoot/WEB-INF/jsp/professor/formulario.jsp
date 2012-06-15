<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../index/header.jsp" />
<script type="text/javascript">
	$(function() {
		$(".materias").hide();
	});
</script>
	<div id="formulario">
	  	<form id="formNewProfessor" method="post" action="<c:url value='/professores'/>">
	  		<c:if test="${professor.id != null}">
	  			<input type="hidden" name="professor.id" value="${professor.id}" />
	  			<input type='hidden' name='_method' value='PUT'/>
	  		</c:if>
	  		<fieldset class="newProfessor">
	  		<legend>
	  			<c:if test="${professor.id == null}">Novo Professor</c:if>
	  			<c:if test="${professor.id != null}">Editar Professor</c:if>
	  		</legend>
	  			<div>
	  				<label>Nome:</label><input type="text" class="required" maxlength="128" name="professor.nome" value="${professor.nome}">
	  			</div>
	  			Séries a serem lecionadas:
	  			<div style=" margin-right:30px; " class="newSerie">
				  <c:forEach items="${series}" var="serie">
				  			<div id="${serie.id}">
				  					<input class="${serie.id}" type="checkbox" onclick="escola.optionProfessor(${serie.id})" name="professor.series" value="${serie.id}"> ${serie.nome}		  				
			  						<div class="materias" style="">
										Disciplinas a serem ministradas nesta série:
							  			<c:forEach items="${serie.materias}" var="materia">
								  				<div>
									  					<input type="checkbox" name="professor.materias" value="${materia.id}"> ${materia.nome}		  				
								  				</div>
							  			</c:forEach>
									</div>
			  				</div>
			  	  </c:forEach>
		  		</div>
	  		</fieldset>
			<button class="btn primary">Gravar</button>
			<a class='btn small' href="<c:url value='/professores'/>">Voltar</a>
	   </form>
	</div>
<jsp:include page="../index/footer.jsp" />