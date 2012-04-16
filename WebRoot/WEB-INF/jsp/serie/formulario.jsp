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
	  			<c:if test="${serie.id == null}">Nova série</c:if>
	  			<c:if test="${serie.id != null}">Editar série</c:if>
	  		</legend>
	  			<div>
	  				<label>Nome:</label><input type="text" class="required" maxlength="128" name="serie.nome" value="${serie.nome}">
	  			</div>
	  			<div>
	  			Disciplinas existentes:
	  			<c:forEach items="${series.materias}" var="materia">
	  				<label>${materia.nome} </label>
		  				<input type="radio" <c:if test="${materia.status == true}">checked="checked"</c:if> name="${materia.nome}" value="true"> Sim
		  				<input type="radio" <c:if test="${materia.status == false}">checked="checked"</c:if> name="${materia.nome}" value="false"> Não
	  			</c:forEach>
	  				<!-- label>Português: </label>
		  				<input type="radio" <c:if test="${serie.portugues == true}">checked="checked"</c:if> name="serie.portugues" value="true"> Sim
		  				<input type="radio" <c:if test="${serie.portugues == false}">checked="checked"</c:if> name="serie.portugues" value="false"> Não
		  			
		  			<label>Matemática: </label>
		  				<input type="radio" <c:if test="${serie.matematica == true}">checked="checked"</c:if> name="serie.matematica" value="true"> Sim
		  				<input type="radio" <c:if test="${serie.matematica == false}">checked="checked"</c:if>name="serie.matematica" value="false"> Não
		  			
		  			<label>História: </label>
		  				<input type="radio" <c:if test="${serie.historia == true}">checked="checked"</c:if> name="serie.historia" value="true"> Sim
		  				<input type="radio"<c:if test="${serie.historia == false}">checked="checked"</c:if> name="serie.historia" value="false"> Não
		  			
		  			<label>Geografia: </label>
		  				<input type="radio" <c:if test="${serie.geografia == true}">checked="checked"</c:if> name="serie.geografia" value="true"> Sim
		  				<input type="radio" <c:if test="${serie.geografia == false}">checked="checked"</c:if> name="serie.geografia" value="false"> Não
		  			
		  			<label>Biologia: </label>
		  				<input type="radio" <c:if test="${serie.biologia == true}">checked="checked"</c:if> name="serie.biologia" value="true"> Sim
		  				<input type="radio" <c:if test="${serie.biologia == false}">checked="checked"</c:if> name="serie.biologia" value="false"> Não
		  			
		  			<label>Física: </label>
		  				<input type="radio" <c:if test="${serie.fisica == true}">checked="checked"</c:if> name="serie.fisica" value="true"> Sim
		  				<input type="radio" <c:if test="${serie.fisica == false}">checked="checked"</c:if> name="serie.fisica" value="false"> Não
		  				
		  			<label>Química: </label>
		  				<input type="radio" <c:if test="${serie.quimica == true}">checked="checked"</c:if> name="serie.quimica" value="true"> Sim
		  				<input type="radio" <c:if test="${serie.quimica == false}">checked="checked"</c:if> name="serie.quimica" value="false"> Não
		  			
		  			<label>Artes: </label>
		  				<input type="radio" <c:if test="${serie.artes == true}">checked="checked"</c:if> name="serie.artes" value="true"> Sim
		  				<input type="radio" <c:if test="${serie.artes == false}">checked="checked"</c:if> name="serie.artes" value="false"> Não
		  			
		  			<label>Educação Física: </label>
		  				<input type="radio" <c:if test="${serie.educacaoFisica == true}">checked="checked"</c:if> name="serie.educacaoFisica" value="true"> Sim
		  				<input type="radio" <c:if test="${serie.educacaoFisica == false}">checked="checked"</c:if> name="serie.educacaoFisica" value="false"> Não
		  			
		  			<label>Inglês: </label>
		  				<input type="radio" <c:if test="${serie.ingles == true}">checked="checked"</c:if> name="serie.ingles" value="true"> Sim
		  				<input type="radio" <c:if test="${serie.ingles == false}">checked="checked"</c:if> name="serie.ingles" value="false"> Não
		  			
		  			<label>Espanhol: </label>
		  				<input type="radio" <c:if test="${serie.espanhol == true}">checked="checked"</c:if> name="serie.espanhol" value="true"> Sim
		  				<input type="radio" <c:if test="${serie.espanhol == false}">checked="checked"</c:if> name="serie.espanhol" value="false"> Não
		  			
		  			<label>Ensino Religioso: </label>
		  				<input type="radio" <c:if test="${serie.ensinoReligioso == true}">checked="checked"</c:if> name="serie.ensinoReligioso" value="true"> Sim
		  				<input type="radio" <c:if test="${serie.ensinoReligioso == false}">checked="checked"</c:if> name="serie.ensinoReligioso" value="false"> Não-->
	  			</div>
	  		</fieldset>
			<button class="btn primary">Gravar</button>
			<a class='btn small' href="<c:url value='/series'/>">Voltar</a>
	   </form>
	</div>
<jsp:include page="../index/footer.jsp" />