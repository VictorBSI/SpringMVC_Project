<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Project Home</title>
</head>
<body>
	<div align="center">
		<h2>LISTA DE TIPO DE PROCESSO</h2>

		<h3>
			<a href="./viewProcess">VER PROCESSOS</a>
		</h3>
		<table border="1" cellppading="5">
			<th>Id</th>
			<th>Tipo de Processo</th>
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
			<a href="./newProject">NOVO</a>
		</h3>
	</div>
</body>
</html>