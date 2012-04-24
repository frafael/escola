<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../index/header.jsp" />
	<div id="topoConteudo">Matérias</div>
	<div id="materias">
		<form id="formDelete" method="post" action="<c:url value='/materias/?'/>">
			<input type="hidden" name="_method" value="DELETE" />
		</form>
		<div id="page_container">
			<table  class="table table-striped">
				<thead>
					<tr>
						<th>Ações</th>
						<th>Matéria</th>
					</tr>
				</thead>
				<tbody class="content">
					<c:forEach items="${materias}" var="materia">
						<tr materiaid="${materia.id}">
							<td id="acoes">
								<a href="<c:url value='/materias/${materia.id}/edit'/>">
									<img src="<c:url value='/img/icones/editar.png'/>" title="Editar" />
								</a>
								<span onclick="escola.formDelete(${materia.id});">
									<img src="<c:url value='/img/icones/excluir.png'/>" title="Excluir" />
								</span>
							</td>
							<td>
								<a href="<c:url value='/materias/${materia.id}/show'/>">${materia.nome}</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<a class='btn primary' href="<c:url value='/materias/new'/>" id="cadastrarMateria">Nova matéria</a>
	</div>
	<script type="text/javascript">
		
	</script>
<jsp:include page="../index/footer.jsp" />