<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${param } <br />
<hr />
이름 : ${param.name } <br />
암호 : ${param.password } <br />
이메일 : ${param.email } <br />
</body>
</html>