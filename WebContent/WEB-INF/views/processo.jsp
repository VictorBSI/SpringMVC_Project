<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Processos</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<div align="center">
	<nav class="navbar navbar-dark bg-dark">
		<h5>
			<a class="badge badge-dark" href="./">Voltar</a>
		</h5>
	
			<h2 class="navbar-brand">LISTA DE PROCESSOS</h2>
			<h3 class="navbar-brand">
				<a class="badge badge-primary" href="./searchProcess">PROCURAR PROCESSO</a>
			</h3>
	</nav>
		<table class="table table-bordered" cellppading="5">
			<th>Id</th>
			<th>Tipo Processo</th>
			<th>Numero</th>
			<th>Data Entrada</th>
			<th>Valor Recurso</th>
			<th>Objetivo</th>
			<th>Ação</th>
			<c:forEach var="process" items="${listProcess}" varStatus="status">
				<tr>
					<td>${process.id_p}</td>
					<td>${process.tipoprocesso}</td>
					<td>${process.numero}</td>
					<td>${process.dataentrada}</td>
					<td>${process.valorrecurso}</td>
					<td>${process.objetivo}</td>
					<td><a href="./editProcess?id=${process.id_p}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="./deleteProcess?id=${process.id_p}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
		<h3>
			<a class="badge badge-info" href="./newProcess">NOVO</a>
		</h3>
	</div>
</body>
</html>