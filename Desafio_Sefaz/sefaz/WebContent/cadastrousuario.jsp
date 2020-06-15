<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<td>Id:</td>
				<td><input type="text" readonly="readonly" id="id" name="id"
					value="${user.id}"></td>
			<tr>
			<tr>
				<td>Login:</td>
				<td><input type="text" id="login" name="login"
					value="${user.login}"></td>
			<tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" id="password" name="password"
					value="${user.password}"></td>
			<tr>
			<tr>
				<td>E-mail:</td>
				<td><input type="email" id="email" name="email"
					value="${user.email}"></td>
			<tr>
		</table>
		<input type="submit" value="Create">


	</form>
	<table>

		<c:forEach items="${users}" var="user">
			<tr>
				<td style="width: 150px"><c:out value="${user.id}">
					</c:out></td>

				<td style="width: 150px"><c:out value="${user.login}">
					</c:out></td>

				<td style="width: 150px"><c:out value="${user.email}">
					</c:out></td>


				<td><a href="SaveUser?action=delete&user=${user.id}">Delete</a>
				<td><a href="SaveUser?action=edit&user=${user.id}">Edit</a>
			</tr>
		</c:forEach>

	</table>

</body>
</html>