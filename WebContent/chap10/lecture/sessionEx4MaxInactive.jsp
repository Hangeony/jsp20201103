<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
session.setMaxInactiveInterval(5); 
/* 5초동안 쿠키를 주고 받는다. 로그아웃 버튼누르면 기존에 것이 없어지고 새로운것이 추가된다. */
long max = session.getMaxInactiveInterval();
%>
session id : <%= session.getId() %> <br />
max inactive interval : <%= max %> <br />
last accessed : <%= new Date(session.getLastAccessedTime()) %>
</body>
</html>