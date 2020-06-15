<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="myprefix" uri="WEB-INF/testetag.tld"%>
<!DOCTYPE html>
<html>
<head>
<head>
  <link rel="stylesheet" href="/resources/css/estilo.css">
</head>
<body>
	<div class="wrapper">
		<div class="form-signin">
			<h2 class="form-signin-heading">Please login</h2>
			<form action="LoginServlet" method="post" class="login-form">
				<input type="text" class="form-control" name="login"
					placeholder="login" required="" autofocus="" /> <input
					type="password" class="form-control" name="password"
					placeholder="Password" required="" />
				<button class="btn btn-lg btn-primary btn-block" type="submit">Acess</button>
			</form>
		</div>
	</div>
 </body>
</html>