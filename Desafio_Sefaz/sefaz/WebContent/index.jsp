<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="myprefix" uri="WEB-INF/testetag.tld"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sefaz</title>
</head>
<body>
	<form action="LoginServlet" method="get">
	Login: 
	<input type="text" id="login" name="login">
	<br/>
	Password: 
	<input type="text" id="password" name="password">
	<br/>
	<input type="submit" value="Access">
	</form>
</body>
</html>