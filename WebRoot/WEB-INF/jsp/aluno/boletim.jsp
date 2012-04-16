<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../index/header.jsp" />
	<div id="conteudos">
		<div id="topoConteudo">Boletim</div>
		<div id="page_container">
	  		<fieldset>
	  			<legend>${aluno.nome} - Nº ${aluno.numero} ${aluno.serie.}</legend>
	  				<table>
	  					<thead>
	  						<tr>
	  							<th>Matérias</th>
	  							<th>1º Bimestre</th>
	  							<th>2º Bimestre</th>
	  							<th>3º Bimestre</th>
	  							<th>4º Bimestre</th>
	  						</tr>
	  					</thead>
	  						
	  					<tbody>
	  					</tbody>
	  				</table>
	  		</fieldset>
		</div>
		<a class="btn" href="<c:url value='/alunos'/>">Voltar</a>
	</div>
<jsp:include page="../index/footer.jsp" />