<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Page</title>
</head>
<body>
	<%
		String name = (String) session.getAttribute("sess_name");
	%>
	<h2>Welcome: <%= name %> </h2>
</body>
</html>