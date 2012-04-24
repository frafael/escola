<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../index/header.jsp" />
	<div id="conteudos">
		<div id="topoConteudo">Boletim</div>
		<div id="page_container">
	  		<fieldset>
	  			<legend>${aluno.nome} - Nº ${aluno.numero} ${aluno.serie.nome}</legend>
	  				<table class="table table-striped table-bordered table-condensed">
		  				<tr>
							<td>Matérias</td>
							<td>1º Bimestde</td>
							<td>2º Bimestde</td>
							<td>3º Bimestde</td>
							<td>4º Bimestde</td>
						</tr>
						<c:forEach items="${aluno.serie.materias}" var="materia">
							<tr>
								<td>${materia.nome}</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
							</tr>
						</c:forEach>
	  				</table>
	  		</fieldset>
		</div>
		<a class="btn" href="<c:url value='/alunos'/>">Voltar</a>
	</div>
<jsp:include page="../index/footer.jsp" />