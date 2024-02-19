<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<form action="logform" method="post">
			<br><br>
			<h1>LogIn/SignIn</h1>
			<br>
			<input type="email" name="email" placeholder="Enter username or email"><br><br>
			<input type="password" name="pass" placeholder="Enter password"><br><br>
			<input type="submit" value="LogIn">	<br><br>
			Don't have a account? <a href="register.jsp">Register/SignUp</a>		
		</form>
</body>
</html>