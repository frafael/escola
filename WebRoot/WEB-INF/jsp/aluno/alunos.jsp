<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" />
	<div id="topoConteudo">Alunos</div>
	<div id="alunos">
		<form id="formDelete" method="post" action="<c:url value='/alunos/?'/>">
			<input type="hidden" name="_method" value="DELETE" />
		</form>
		<div id="page_container">
			<table  class="table table-striped">
				<thead>
					<tr>
						<th>Ações</th>
						<th>Nome</th>
						<th>Série</th>
					</tr>
				</thead>
				<tbody class="content">
					<c:forEach items="${alunos}" var="aluno">
						<tr alunoid="${aluno.id}">
							<td id="acoes">
								<a href="<c:url value='/alunos/${aluno.id}/edit'/>">
									<img src="<c:url value='/img/icones/editar.png'/>" title="Editar" />
								</a>
								<span onclick="escola.formDelete(${aluno.id});">
									<img src="<c:url value='/img/icones/excluir.png'/>" title="Excluir" />
								</span>
							</td>
							<td>
								<a href="<c:url value='/alunos/${aluno.id}/show'/>">${aluno.nome}</a>
							</td>
							<td>${aluno.serie}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<a class='btn primary' href="<c:url value='/alunos/new'/>" id="cadastrarAluno">Novo aluno</a>
	</div>
	<script type="text/javascript">
		
	</script>
<jsp:include page="footer.jsp" />