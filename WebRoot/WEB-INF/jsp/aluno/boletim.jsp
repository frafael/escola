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
							<td>1º Bimestre</td>
							<td>2º Bimestre</td>
							<td>3º Bimestre</td>
							<td>4º Bimestre</td>
						</tr>
						<c:forEach items="${aluno.serie.materias}" var="materia">
							<tr>
								<td>${materia.nome}</td>
								<c:forEach items="${bimestres}" var="bimestre">
									<c:if test="${alunos.nota == null}">
										<td>tem não</td>
									</c:if>
									<c:forEach items="${aluno.notas}" var="nota">
										<c:if test="${nota.materia.id == materia.id && nota.bimestre.id == bimestre.id }">
											<td>${nota.valor}</td>
										</c:if>
										<c:if test="${nota.materia.id != materia.id || nota.bimestre.id != bimestre.id }">
											<td>tem não</td>
										</c:if>
									</c:forEach>
								</c:forEach>
							</tr>
						</c:forEach>
	  				</table>
	  		</fieldset>
		</div>
		<a class="btn" href="<c:url value='/alunos'/>">Voltar</a>
	</div>
<jsp:include page="../index/footer.jsp" />