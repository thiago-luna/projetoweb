<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Editar Pessoa</title>

<c:import url="../componentes/cabecalho.jsp" />

<div class="p-5 mb-4 bg-light rounded-">
	<div class="container py-5">
		<h1 class="display-5 fw-bold">Editar Pessoa</h1>
		<p class="col-md-12 fs-4">Preencha o formulário abaixo para
			realizar a alteração da pessoa no sistema.</p>
	</div>
</div>

<main>
	<div class="container">
		<form action="altera" method="POST" class="row g-3">

			<security:csrfInput />

			<!-- ID -->
			<input type="hidden" name="id" value="${pessoa.id}" required>

			<!-- NOME -->
			<div class="form-group">
				<label for="nome" class="col-form-label">Nome</label> <input
					type="text" class="form-control" name="nome" autofocus
					MAXLENGTH="255" required value="${pessoa.nome}">
			</div>
			
			<!-- Matricula -->
			<div class="form-group">
				<label for="matricula" class="col-form-label ">Matricula</label> <input
					type="text" class="form-control" name="matricula" autofocus
					MAXLENGTH="255" required value="${pessoa.matricula}">
			</div>
			
			<!-- Email -->
			<div class="form-group">
				<label for="email" class="col-form-label">Email</label> <input
					type="email" class="form-control" name="email" autofocus
					MAXLENGTH="255" required value="${pessoa.email}">
			</div>
			
			<!-- Telefone -->
			<div class="form-group">
				<label for="telefone" class="col-form-label ">Telefone</label> <input
					type="text" class="form-control" name="telefone" autofocus
					MAXLENGTH="255"  value="${pessoa.telefone}">
			</div>
			
			<!-- NOME -->
			<div class="form-group">
				<label for="tipo" class="col-form-label ">Tipo</label> <select
					class="form-select" name="tipo" autofocus required value="${pessoa.tipo}">
					<option>Administrador</option>
					<option>Docente</option>
					<option>Técnico Administrativo</option>
					<option>Tercerizado</option>
				</select>
			</div>


			<div class="text-center">
				<button type="submit" class="btn btn-primary btn-lg">
					<i class="bi bi-arrow-clockwise"></i>
					Atualizar
				</button>
				<a href="<c:url value="/pessoa/lista" />"
					class="btn btn-secondary btn-lg"> <i class="bi bi-x"></i>
					Cancelar
				</a>
			</div>

		</form>
	</div>
</main>

<c:import url="../componentes/rodape.jsp" />