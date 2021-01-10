<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Processo</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<div align="center">
	<nav class="navbar navbar-dark bg-dark">
		<h2 class="navbar-brand">PROCESSOS</h2>
	</nav>
	<br>
		<form:form action="saveProcess" method="post" modelAttribute="process">
			<table cellpadding="5">
				<form:hidden path="id_p" />
				<!--  <input type="submit"/>-->
				<tr>
					<td>Tipo de Processo:</td>
					<td><form:input path="tipoprocesso" /></td>
				</tr>
				<tr>
					<td>Numero:</td>
					<td><form:input path="numero" /></td>
				</tr>
				<tr>
					<td>Data Entrada:</td>
					<td><form:input path="dataentrada" placeholder="yyyy-mm-dd" /></td>
				</tr>
				<tr>
					<td>Valor Recurso:</td>
					<td><form:input path="valorrecurso" /></td>
				</tr>
				<tr>
					<td>Objetivo:</td>
					<td><form:input path="objetivo" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input class="btn btn-primary" type="submit"
						value="Save"></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>