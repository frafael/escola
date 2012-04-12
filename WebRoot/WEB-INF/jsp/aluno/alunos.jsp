<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="topoConteudo">Contatos</div>
<div id="agendas">
	<form id="formDelete" method="post" action="<c:url value='/agendas/?'/>">
		<input type="hidden" name="_method" value="DELETE" />
	</form>
	<div id="page_container">
		<table class="defaultArgsTable">
			<thead>
				<tr>
					<th width=10%>Ações</th>
					<th width=30%>Contato</th>
					<th width=30%>Telefone</th>
					<th width=30%>E-mail</th>
				</tr>
			</thead>
			<tbody class="content">
				<c:forEach items="${agendas}" var="contato">
					<tr contatoid="${contato.id}">
						<td id="acoes">
							<a href="<c:url value='/agendas/${contato.id}/edit'/>">
								<img src="<c:url value='/imagens/icones/editar.png'/>" title="Editar" />
							</a>
							<button type="button" onclick="intranet.formDelete(${contato.id});">
								<img src="<c:url value='/imagens/icones/excluir.png'/>" title="Excluir" />
							</button>
						</td>
						<td>
							<a href="<c:url value='/agendas/${contato.id}/show'/>">${contato.nome}</a>
						</td>
						<td>${contato.telefone}</td>
						<td>${contato.email}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="page_navigation pagination"></div>
	</div>
	<a class='btn primary' href="<c:url value='/agendas/new'/>" id="cadastrarAgenda">Novo contato</a>
</div>
</body>
</html>