<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../index/header.jsp" />
	<form id="formDelete" method="post" action="<c:url value='/alunos/?'/>">
		<input type="hidden" name="_method" value="DELETE" />
	</form>
	<div class="col-xs-12">
		<div class="box box-primary">
	        <div class="box-header">
	            <h3 class="box-title">Série X</h3>
	            <div class="box-tools">
                    <div class="input-group">
                        <input type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search">
                        <div class="input-group-btn">
                            <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                </div>
	        </div><!-- /.box-header -->
	        <div class="box-body">
	            <table class="table table-bordered table-hover">
	                <tbody><tr>
	                    <th style="width: 70px">Ações</th>
	                    <th style="width: 10px">Nº</th>
	                    <th>Nome</th>
	                    <th style="width: 120px">Série</th>
	                    <th>Progress</th>
	                    <th style="width: 90px">Status</th>
	                    <th style="width: 40px">Presença</th>
	                </tr>
	                <c:forEach items="${alunos}" var="aluno">
		                <tr>
		                	<td id="acoes">
								<a href="<c:url value='/alunos/${aluno.id}/edit'/>">
									<img src="<c:url value='/img/icones/editar.png'/>" title="Editar" />
								</a>
								<span onclick="escola.formDelete(${aluno.id});">
									<img src="<c:url value='/img/icones/excluir.png'/>" title="Excluir" />
								</span>
								<a href="<c:url value='/alunos/${aluno.id}/boletim'/>">
									<img src="<c:url value='/img/icones/boletim.png'/>" title="Boletim" />
								</a>
							</td>
		                    <td>${aluno.numero}</td>
		                    <td><a href="<c:url value='/alunos/${aluno.id}/show'/>">${aluno.nome}</a></td>
		                    <td>${aluno.serie.nome}</td>
		                    <td>
		                        <div class="progress xs progress-striped active">
		                            <div class="progress-bar progress-bar-success" style="width: 90%"></div>
		                        </div>
		                    </td>
		                    <td><span class="label label-success">Aprovado</span></td>
		                    <td><span class="badge bg-green">90%</span></td>
		                </tr>
		            </c:forEach>
	            </tbody></table>
	        </div><!-- /.box-body -->
	        <div class="box-footer clearfix">
	        	<div class="col-xs-6">
	        			<a class='btn btn-primary' href="<c:url value='/alunos/new'/>" id="cadastrarAluno">Novo aluno</a>
	        	</div>
	        	<div class="col-xs-6">
		            <ul class="pagination pagination-sm no-margin pull-right">
		                <li><a href="#">«</a></li>
		                <li><a href="#">1</a></li>
		                <li><a href="#">2</a></li>
		                <li><a href="#">3</a></li>
		                <li><a href="#">»</a></li>
		            </ul>
	            </div>
	        </div>
	    </div>
    </div>
<jsp:include page="../index/footer.jsp" />