<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
</head>
<body>
	<form action="regform" method="post">
			<br><br>
			<h1>Register/SignUp</h1>
			<br>
			<input type="text" name="fname" placeholder="Enter first name"><br><br>
			<input type="text" name="lname" placeholder="Enter lastname"><br><br>
			<input type="email" name="email" placeholder="Enter username or email"><br><br>
			<input type="radio" name="gender" value="Male">Male&nbsp;
			<input type="radio" name="gender" value="Female">Female <br><br>
			<input type="password" name="pass" placeholder="Enter password"><br><br>
			<select name="city">
				<option>Select City</option>
				<option>Pune</option>
				<option>Bengaluru</option>
				<option>Delhi</option>
				<option>Mohali</option>
			</select><br><br>
			<input type="submit" value="Register">	<br><br>
			Already have a account? <a href="login.jsp">Login/SignIn</a>
		</form>
</body>
</html>