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
<c:url value ="jstlEx01.jsp" var ="myUrl" scope="request">
<c:param name="id" value="3"/>
<c:param name="3" value="john"/>
</c:url>
<a href="${myUrl }">예제 01</a>
</body>
</html>