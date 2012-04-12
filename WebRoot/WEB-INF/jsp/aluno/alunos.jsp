<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
	</head>
	<body>
	<div id="topoConteudo">Alunos</div>
	<div id="alunos">
		<form id="formDelete" method="post" action="<c:url value='/alunos/?'/>">
			<input type="hidden" name="_method" value="DELETE" />
		</form>
		<div id="page_container">
			<table class="defaultArgsTable">
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
									<img src="<c:url value='/imagens/icones/editar.png'/>" title="Editar" />
								</a>
								<button type="button" onclick="intranet.formDelete(${aluno.id});">
									<img src="<c:url value='/imagens/icones/excluir.png'/>" title="Excluir" />
								</button>
							</td>
							<td>
								<a href="<c:url value='/alunos/${aluno.id}/show'/>">${aluno.nome}</a>
							</td>
							<td>${aluno.serie}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="page_navigation pagination"></div>
		</div>
		<a class='btn primary' href="<c:url value='/alunos/new'/>" id="cadastrarAluno">Novo aluno</a>
	</div>
	</body>
</html>