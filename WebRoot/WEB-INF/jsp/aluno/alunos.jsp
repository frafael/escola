<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../index/header.jsp" />
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
								<span class="btn btn-danger" onclick="escola.formDelete(${aluno.id});">
									<i class="icon-trash icon-white"></i> Delete
								</span>
								<a href="<c:url value='/alunos/${aluno.id}/boletim'/>">
									<img src="<c:url value='/img/icones/boletim.png'/>" title="Boletim" />
								</a>
							</td>
							<td>
								<a href="<c:url value='/alunos/${aluno.id}/show'/>">${aluno.nome}</a>
								<div class="btn-group">
						          <a class="btn btn-primary" href="<c:url value='/alunos/${aluno.id}/show'/>"><i class="icon-user icon-white"></i> ${aluno.nome}</a>
						          <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
						          <ul class="dropdown-menu">
						            <li><a href="<c:url value='/alunos/${aluno.id}/edit'/>"><i class="icon-pencil"></i> Editar</a></li>
						            <li><span onclick="escola.formDelete(${aluno.id});"></span><i class="icon-trash"></i> Deletar</a></li>
						            <li><a href="#"><img src="<c:url value='/img/icones/boletim.png'/>" title="Boletim" /> Boletim</a></li>
						            <li class="divider"></li>
						            <li><a href="#"><i class="i"></i> Make admin</a></li>
						          </ul>
						        </div>
							</td>
							<td>${aluno.serie.nome}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<a class='btn primary' href="<c:url value='/alunos/new'/>" id="cadastrarAluno">Novo aluno</a>
	</div>
	<script type="text/javascript">
		
	</script>
<jsp:include page="../index/footer.jsp" />