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
<h1>core set tag 연습</h1>
<form action="jstlEx06View.jsp">
id : <input type="text" name = "id" />
pw : <input type="password" name="pw" id="" />
<input type="submit" value="등록" />
</form>
</body>
</html>