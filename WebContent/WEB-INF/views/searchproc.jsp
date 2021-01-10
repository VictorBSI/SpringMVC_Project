<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Processo</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
    <div align="center">
    	<nav class="navbar navbar-dark bg-dark">	
		<h5><a class="badge badge-dark" href="./viewProcess">Voltar</a></h5>
        <h1 class="navbar-brand">PESQUISAR</h1>
        <h5><a class="badge badge-dark" href="./">Home</a></h5>	
        </nav>
        <br>
        <form:form class="form-inline my-2 my-lg-0" action="resultProcess" method="get" modelAttribute="process" >
        <table cellpadding="5">
            <!--<form:hidden path="numero"/>-->
            		<!--  <input type="submit"/>-->
            <tr>
                <td>Número do processo:</td>
                <td><form:input class="form-control mr-sm-2" path="numero" /></td>
                <td colspan="2" align="center"><input class="btn btn-outline-primary my-2 my-sm-0" type="submit" value="Search"></td>
        </table>
        </form:form>
    </div>
</body>
</html>