<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../index/header.jsp" />
	<div id="topoConteudo">Professores</div>
	<div id="professores">
		<form id="formDelete" method="post" action="<c:url value='/professores/?'/>">
			<input type="hidden" name="_method" value="DELETE" />
		</form>
		<div id="page_container">
			<table  class="table table-striped">
				<thead>
					<tr>
						<th>Ações</th>
						<th>Nome</th>
					</tr>
				</thead>
				<tbody class="content">
					<c:forEach items="${professores}" var="professor">
						<tr professorid="${professor.id}">
							<td id="acoes">
								<a href="<c:url value='/professores/${professor.id}/edit'/>">
									<img src="<c:url value='/img/icones/editar.png'/>" title="Editar" />
								</a>
								<span onclick="escola.formDelete(${professor.id});">
									<img src="<c:url value='/img/icones/excluir.png'/>" title="Excluir" />
								</span>
								<a href="<c:url value='/professores/${professor.id}/boletim'/>">
									<img src="<c:url value='/img/icones/boletim.png'/>" title="Boletim" />
								</a>
							</td>
							<td>
								<a href="<c:url value='/professores/${professor.id}/show'/>">${professor.nome}</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<a class='btn primary' href="<c:url value='/professores/new'/>" id="cadastrarProfessor">Novo professor</a>
	</div>
	<script type="text/javascript">
		
	</script>
<jsp:include page="../index/footer.jsp" />