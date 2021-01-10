<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Project Home</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<div align="center">
		<nav class="navbar navbar-dark bg-dark">
		<h2 class="navbar-brand">LISTA DE TIPO DE PROCESSO</h2>

		<h3>
			<a class="badge badge-primary" href="./viewProcess">VER PROCESSOS</a>		
		</h3>
		</nav>
		<table cellppading="5" class="table table-bordered">
			<th>Id</th>
			<th>Tipo de Processo</th>
			<th>Ação</th>
			<c:forEach var="project" items="${listProject}" varStatus="status">
				<tr>
					<td>${project.id}</td>
					<td>${project.nome}</td>
					<td><a href="./editProject?id=${project.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="./deleteProject?id=${project.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<h3>
			<a class="badge badge-info" href="./newProject">NOVO</a>
		</h3>
	</div>
</body>
</html>