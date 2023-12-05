<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Entrada de novos produtos</title>

<c:import url="../componentes/cabecalho.jsp" />

<div class="p-5 mb-4 bg-light rounded-3">
	<div class="container py-5">
		<h1 class="display-5 fw-bold">Entrada de novos produtos do
			Almoxarifado.</h1>
	</div>
</div>

<main>
	<div class="container">
		<form action="adiciona" method="POST" class="row g-3">

			<security:csrfInput />

			<div class="card border-light mb-3">
				<div class="card-header">Listagem de Produtos</div>

				<!-- Table -->
				<div class="card-body">
					<table id="tabela_id"
						class="table table-striped table-bordered dt-responsive nowrap"
						style="width: 100%">
						<thead>
							<tr>
								<th>ID</th>
								<th>Nome</th>
								<th>Tipo</th>
								<th>Marca</th>
								<th>Valor</th>
								<th>Quantidade</th>
							</tr>
						</thead>
						<tbody>

							<!-- percorre itens montando as linhas da tabela -->
							<c:forEach var="produto" items="${produtos}">
								<tr>
									<td>${produto.id}</td>
									<td>${produto.nome}</td>
									<td>${produto.tipo}</td>
									<td>${produto.marca}</td>
									<td>${produto.valor}</td>
									<td>${produto.quantidade}</td>
									<td><input type="number" class="form-control"
										name="${produto.id}_qnt"></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>

			<div class="text-center">
				<button type="submit" class="btn btn-primary btn-lg">
					<i class="bi bi-plus-circle"></i> Cadastrar
				</button>
				<button type="reset" class="btn btn-secondary btn-lg">
					<i class="bi bi-trash"></i> Limpar
				</button>
			</div>

		</form>
	</div>
</main>

<c:import url="../componentes/rodape.jsp" />