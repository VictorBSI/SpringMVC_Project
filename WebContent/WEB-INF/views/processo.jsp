<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Processos</title>
</head>
<body>
	<p>
		<a href="./">Voltar</a>
	</p>
	<div align="center">
		<h2>LISTA DE PROCESSOS</h2>
		<h3>
			<a href="./searchProcess">PROCURAR PROCESSO</a>
		</h3>

		<table border="1" cellppading="5">
			<th>Id</th>
			<th>Tipo Processo</th>
			<th>Numero</th>
			<th>Data Entrada</th>
			<th>Valor Recurso</th>
			<th>Objetivo</th>

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
			<a href="./newProcess">NOVO</a>
		</h3>
	</div>
</body>
</html>