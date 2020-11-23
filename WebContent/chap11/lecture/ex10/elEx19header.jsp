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
<h1>header</h1>
<%= request.getHeader("cookie") %> <br />
${header.cookie } <!-- <%= request.getHeader("cookie") %> = 하는일이랑 유사함. header정보를 Map으로 가져옴 -->
</body>
</html>