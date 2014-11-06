<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../index/header.jsp" />
	<div class="col-md-6">
		<div class="box box-primary">
             <div class="box-header">
                <h3 class="box-title">
                	<c:if test="${aluno.id == null}">Novo Aluno</c:if>
	  				<c:if test="${aluno.id != null}">Editar Aluno</c:if>
	  			</h3>
             </div><!-- /.box-header -->
             <!-- form start -->
             <form role="form" id="formNewAluno" method="post" action="<c:url value='/alunos'/>">
             	 <c:if test="${aluno.id != null}">
		  			<input type="hidden" name="aluno.id" value="${aluno.id}" />
		  			<input type='hidden' name='_method' value='PUT'/>
		  		</c:if>
                 <div class="box-body">
                     <div class="form-group">
                         <label for="nome">Nome</label>
                         <input type="text" class="form-control required" maxlength="128" id="nome" name="aluno.nome" value="${aluno.nome}" placeholder="Aluno">
                     </div>
                     <div class="form-group">
                         <label for="numero">Número</label>
                         <input type="text" class="form-control required" id="numero" placeholder="Número">
                     </div>
                     <div class="form-group">
                         <label for="exampleInputFile">Série</label>
                      	 <select class="form-control" name="aluno.serie.id" >
			  			  	  <option value="">Escolha uma série...</option>
				  			  <c:forEach items="${series}" var="serie">
							  	<option <c:if test="${serie.id == aluno.serie.id}">selected="selected"</c:if> value="${serie.id}">${serie.nome}</option>
						  	  </c:forEach>
						 </select>
                     </div>
                     <div class="checkbox">
                         <label>
                             <div class="icheckbox_minimal" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div> Check me out
                         </label>
                     </div>
                 </div><!-- /.box-body -->

                 <div class="box-footer">
                     <button type="submit" class="btn btn-primary">Submit</button>
                 </div>
             </form>
         </div>
    </div>



	<div id="formulario">
	  	<form id="formNewAluno" method="post" action="<c:url value='/alunos'/>">
	  		<c:if test="${aluno.id != null}">
	  			<input type="hidden" name="aluno.id" value="${aluno.id}" />
	  			<input type='hidden' name='_method' value='PUT'/>
	  		</c:if>
	  		<fieldset>
	  		<legend>
	  			<c:if test="${aluno.id == null}">Novo Aluno</c:if>
	  			<c:if test="${aluno.id != null}">Editar Aluno</c:if>
	  		</legend>
	  			<div>
	  				<label>Nome:</label><input type="text" class="required" maxlength="128" name="aluno.nome" value="${aluno.nome}">
	  			</div>
	  			
	  			<div>
	  				<label>Número:</label><input type="text" class="required" maxlength="128" name="aluno.numero" value="${aluno.numero}">
	  			</div>
	  			
	  			<div style="float: left; margin-right:30px; ">
		  			<label>Série:</label>
		  			<select name="aluno.serie.id">
		  			  <option value="">Escolha uma série...</option>
		  			  <c:forEach items="${series}" var="serie">
					  	<option <c:if test="${serie.id == aluno.serie.id}">selected="selected"</c:if> value="${serie.id}">${serie.nome}</option>
					  </c:forEach>
					</select>
		  		</div>
	  		</fieldset>
			<button class="btn primary">Gravar</button>
			<a class='btn small' href="<c:url value='/alunos'/>">Voltar</a>
	   </form>
	</div>
<jsp:include page="../index/footer.jsp" />