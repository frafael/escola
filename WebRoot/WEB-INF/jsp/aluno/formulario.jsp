<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../index/header.jsp" />
<div id="topoConteudo">Novo Contato</div>
<div id="formulario">
  	<form id="formNewAgenda" method="post" action="<c:url value='/agendas'/>">
  		<c:if test="${agenda.id != null}">
  			<input type="hidden" name="agenda.id" value="${agenda.id}" />
  			<input type="hidden" name="agenda.empresa.id" value="${agenda.empresa.id}" />
  			<input type='hidden' name='_method' value='PUT'/>
  		</c:if>
  		<fieldset>
  			<legend>Dados do Contato</legend>
  			<div style="float: left; margin-right:30px; ">
  				<input type="text" class="required" label="Nome" maxlength="128" name="agenda.nome" value="${agenda.nome}">
  			</div>
  			<div style="float: left; margin-right:30px; ">
	  			<input type="text" class="email" label="E-mail" maxlength="64" name="agenda.email" value="${agenda.email}">
	  		</div>
  		</fieldset>
  		
  		<fieldset>
  			<legend>Contatos</legend>
  			<div class="pull-left" style="margin-right:30px;">
  				<input type="text" label="Telefone" class="required span2 telefone" name="agenda.telefone" value="${agenda.telefone}">
  			</div>
  			<div class="pull-left" style="margin-right:30px;">
  				<input type="text" label="Celular" class="span2 telefone" name="agenda.celular" value="${agenda.celular}">
  			</div>
  			<div class="pull-left">
				<input type="text" label="Fax" class="span2 telefone" name="agenda.fax" value="${agenda.fax}">
			</div>
  		</fieldset>  		
		
		<fieldset>
			<legend>Endereço</legend>
			<div class="pull-left" style="margin-right:30px;">
				<input type="text" class="required" label="Endereço" maxlength="64" name="agenda.endereco" value="${agenda.endereco}">
			</div>
			
			<div class="pull-left" style="margin-right:30px;">
				<input type="text" class="required span2" label="Número" maxlength="8" class="span1" name="agenda.numero" value="${agenda.numero}">
			</div>
			
			<input type="text" label="Complemento" class="span2" maxlength="32" name="agenda.complemento" value="${agenda.complemento}">
			
			<div class="pull-left" style="margin-right:30px;">
				<input type="text" class="required" label="Bairro" maxlength="64" name="agenda.bairro" value="${agenda.bairro}">
			</div>
			
			<div class="pull-left" style="margin-right:30px;">
				<input type="text" class="required" label="Cidade" maxlength="64" name="agenda.cidade" value="${agenda.cidade}">
			</div>
			
			<div class="pull-left" style="margin-right:30px;">
				<input type="text" label="UF" class="span1 required" maxlength="2" name="agenda.uf" value="${agenda.uf}">
			</div>
			<div class="pull-left">
				<input type="text" label="CEP" class="span1-75 cep required" name="agenda.cep" maxlength="10" value="${agenda.cep}">
			</div>
		</fieldset>
  		
  		<fieldset>
			<legend>Outras informações</legend>
			<input type="text" label="Contato" name="agenda.contato" maxlength="64" value="${agenda.contato}">
			<textarea label="Observações" maxlength="64" name="agenda.observacoes">${agenda.observacoes}</textarea>
		</fieldset>

		<button class="btn primary">Gravar</button>
		<a class='btn small' href="<c:url value='/agendas'/>">Voltar</a>
   </form>
</div>
<script>
	$(function() {
		$("#formNewAgenda").wrapLabel();
		intranet.validForm("#formNewAgenda");
	});
</script>
<jsp:include page="../index/footer.jsp" />