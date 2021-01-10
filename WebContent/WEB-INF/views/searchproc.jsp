<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Processo</title>
</head>
<body>
<p><a href="./">Home</a></p>
<p><a href="./viewProcess">Voltar</a></p>
    <div align="center">
        <h2>SEARCH</h2>	
        <form:form action="resultProcess" method="get" modelAttribute="process">
        <table cellpadding="5">
            <!--<form:hidden path="numero"/>-->
            		<!--  <input type="submit"/>-->
            <tr>
                <td>Número do processo:</td>
                <td><form:input path="numero" /></td>
            </tr>
				<tr>
                <td colspan="2" align="center"><input type="submit" value="Search"></td>
            </tr>
        </table>
        </form:form>
    </div>
</body>
</html>