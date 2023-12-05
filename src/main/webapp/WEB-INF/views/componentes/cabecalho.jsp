<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- https://www.w3schools.com/tags/tag_meta.asp -->
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendor/bootstrap-icons/bootstrap-icons.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendor/data-table/css/datatables.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/sistema.css" />">

</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="<c:url value="/" />">ALMOXARIFADO</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarColor01"
					aria-controls="navbarColor01" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarColor01">
					<ul class="navbar-nav me-auto">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
							href="#" role="button" aria-haspopup="true" aria-expanded="false">Cadastro</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="<c:url value="/pessoa/novo" />">Pessoa</a>
								<a class="dropdown-item" href="<c:url value="/produto/novo"/>">Produto</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
							href="#" role="button" aria-haspopup="true" aria-expanded="false">Relatórios</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="<c:url value="/pessoa/lista" />">Listar
									Pessoa</a> <a class="dropdown-item"
									href="<c:url value="/produto/lista" />">Listar produtos</a>
							</div></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
							href="#" role="button" aria-haspopup="true" aria-expanded="false">Solicitação</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="<c:url value="SolicitacaoEntrada/novo" />">Entrada</a>
								<a class="dropdown-item" href="<c:url value="SolicitaçãoSaida/novo"/>">Saida</a>
							</div></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>