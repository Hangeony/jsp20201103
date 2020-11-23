<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>core if tag 연습</h1>
<form action="jstlEx12View.jsp">
이름 : <input type="text" name="name"/>
dark : <input type="checkbox" name="dark" />
<input type="submit" value="등록" />
</form>
</body>
</html>