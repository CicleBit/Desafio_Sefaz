<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Usuário</title>
</head>
<body>

	<h1>Cadastro de Usuário</h1>
	<form action="SaveUser" method="post">
	<table>
		<tr>
		<td>Login: </td>
		<td><input type="text" id="login" name="login"></td>
		<tr>
		
		<tr>
		<td>Password: </td>
		<td><input type="password" id="password" name="password"></td>
		<tr>	
	
	</table>
	<input type="submit" value = "Create">
	
	
	</form>
	<table>
		
		<c:forEach items ="${users}" var="user">
		<tr>
			<td><c:out value="${user.login}"></c:out></td>		
			<td><c:out value="${user.password}"></c:out></td>
		</tr> 
		</c:forEach>
	
	</table>

</body>
</html>