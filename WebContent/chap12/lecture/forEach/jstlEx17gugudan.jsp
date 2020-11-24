<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
//<c:forEach var="j" begin="1" end="9" step="2"> step의 작업을 몇개씩 띄어서 작업할건지 알려준다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="i" begin="2" end="9">
<h3>${i }단</h3>
<c:forEach var="j" begin="1" end="9" step="2">
${i } &times; ${j } &equals; ${i * j } <br />
</c:forEach>
<hr />
</c:forEach>
</body>
</html>