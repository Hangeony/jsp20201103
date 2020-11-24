<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
//반복하고싶은 숫자만큼 begin="1" end= "3" 해주면뎀
//var = "1" 은 
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="i" begin="1" end= "3">
<h1>반복 ${i}</h1>
</c:forEach>
</body>
</html>