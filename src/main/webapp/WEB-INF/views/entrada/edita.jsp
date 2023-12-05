<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Editar Produto</title>

<c:import url="../componentes/cabecalho.jsp" />

<div class="p-5 mb-4 bg-light rounded-">
	<div class="container py-5">
		<h1 class="display-5 fw-bold">Editar Produto</h1>
		<p class="col-md-12 fs-4">Preencha o formulário abaixo para
			realizar a alteração da produto no sistema.</p>
	</div>
</div>

<main>
	<div class="container">
		<form action="altera" method="POST" class="row g-3">

			<security:csrfInput />

			<!-- ID -->
			<input type="hidden" name="id" value="${produto.id}" required>

			<!-- NOME -->
			<div class="form-group">
				<label for="nome" class="col-form-label">Nome</label> <input
					type="text" class="form-control" name="nome" autofocus
					MAXLENGTH="255" required value="${produto.nome}">
			</div>
			
			<!-- Matricula -->
			<div class="form-group">
				<label for="matricula" class="col-form-label ">Tipo</label> <input
					type="text" class="form-control" name="matricula" autofocus
					MAXLENGTH="255" required value="${produto.tipo}">
			</div>
			
			<!-- Email -->
			<div class="form-group">
				<label for="int" class="col-form-label">Quantidade</label> <input
					type="INT" class="form-control" name="email" autofocus
					MAXLENGTH="255" required value="${produto.quantidade}">
			</div>
			
			<!-- Telefone -->
			<div class="form-group">
				<label for="telefone" class="col-form-label ">Marca</label> <input
					type="text" class="form-control" name="telefone" autofocus
					MAXLENGTH="255"  value="${produto.marca}">
			</div>

			<div class="text-center">
				<button type="submit" class="btn btn-primary btn-lg">
					<i class="bi bi-arrow-clockwise"></i>
					Atualizar
				</button>
				<a href="<c:url value="/produto/lista" />"
					class="btn btn-secondary btn-lg"> <i class="bi bi-x"></i>
					Cancelar
				</a>
			</div>

		</form>
	</div>
</main>

<c:import url="../componentes/rodape.jsp" />