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
<form action="elEx17ParamView.jsp" method="post">
이름 : <input type="text" name="name" id="" /> <br />
암호 : <input type="password" name="password" id="" /> <br />
이메일: <input type="text" name="email" id="" />  <br>
<input type="submit" value="등록" />
</form>
</body>
</html>