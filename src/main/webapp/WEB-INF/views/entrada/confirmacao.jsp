<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<title>Confirma entrada</title>
<c:import url="../componentes/cabecalho.jsp" />

<div class="container">

	<div class="card border-light mb-3">
		<div class="card-header">Listagem de Produtos</div>

		<!-- Table -->
		<div class="card-body">
			<table
				class="table table-striped table-bordered dt-responsive nowrap"
				style="width: 100%">
				<thead>
					<tr>
						<th>ID</th>
						<th>Produto</th>
						<th>Marca</th>
						<th>Quantidade</th>
					</tr>
				</thead>
				<tbody>
					<!-- percorre itens montando as linhas da tabela -->
					<c:forEach var="produto" items="${produtos}">
						<tr>
							<td>${produto.id_item}</td>
							<td>${produto.nome}</td>
							<td>${produto.marca}</td>
							<td>${produto.qnt}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<div align="center">
		<a href="<c:url value="/entrada/novo" />"
			class="btn btn-secondary btn-lg"><span
			class="glyphicon glyphicon-trash"></span> Cancelar</a> <a
			href="<c:url value="/entrada/adiciona" />"
			class="btn btn-primary btn-lg"><span
			class="glyphicon glyphicon-floppy-disk"></span> Confirmar</a>

	</div>
</div>

<c:import url="../componentes/rodape.jsp" />