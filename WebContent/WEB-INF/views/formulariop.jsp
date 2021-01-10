<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Processo</title>
</head>
<body>
	<div align="center">
		<h2>PROCESSOS</h2>

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
					<td colspan="2" align="center"><input type="submit"
						value="Save"></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>