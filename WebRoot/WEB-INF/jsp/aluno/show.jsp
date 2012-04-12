<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../index/header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="conteudos">
	<div id="topoConteudo">Agenda</div>
	<div id="page_container" class="showAgenda">
  		<fieldset>
  			<legend>Dados do Contato</legend>
  				<div>Nome: ${contato.nome}</div>
	  			<div>E-mail: ${contato.email}</div>
  		</fieldset>
  		<fieldset>
  			<legend>Contatos</legend>
  				<div>Telefone: ${contato.telefone}</div>
  				<div>Celular: ${contato.celular}</div>
				<div>Fax: ${contato.fax}</div>
  		</fieldset>  		
		
		<fieldset>
			<legend>Endereço</legend>
				<div>Endereço: ${contato.endereco}, ${contato.numero} ${contato.complemento}</div>
				<div>Bairro: ${contato.bairro}</div>
				<div>Cidade: ${contato.cidade}</div>
				<div>UF: ${contato.uf}</div>
				<div>Cep: ${contato.cep}</div>
		</fieldset>
  		
  		<fieldset>
			<legend>Outras informações</legend>
			<div>Contato: ${contato.contato}</div>
			<div>Observações: ${contato.observacoes}</div>
		</fieldset>
	</div>
	<a class="btn" href="<c:url value='/agendas'/>">Voltar</a>
</div>
<jsp:include page="../index/footer.jsp"/>