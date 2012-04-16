<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../index/header.jsp" />
	<div id="topoConteudo">Séries</div>
	<div id="series">
		<form id="formDelete" method="post" action="<c:url value='/series/?'/>">
			<input type="hidden" name="_method" value="DELETE" />
		</form>
		<div id="page_container">
			<table  class="table table-striped">
				<thead>
					<tr>
						<th>Ações</th>
						<th>Série</th>
					</tr>
				</thead>
				<tbody class="content">
					<c:forEach items="${series}" var="serie">
						<tr serieid="${serie.id}">
							<td id="acoes">
								<a href="<c:url value='/series/${serie.id}/edit'/>">
									<img src="<c:url value='/img/icones/editar.png'/>" title="Editar" />
								</a>
								<span onclick="escola.formDelete(${serie.id});">
									<img src="<c:url value='/img/icones/excluir.png'/>" title="Excluir" />
								</span>
							</td>
							<td>
								<a href="<c:url value='/series/${serie.id}/show'/>">${serie.nome}</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<a class='btn primary' href="<c:url value='/series/new'/>" id="cadastrarSerie">Nova série</a>
	</div>
	<script type="text/javascript">
		
	</script>
<jsp:include page="../index/footer.jsp" />