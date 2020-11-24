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
<c:choose>
  <c:when test="false">
    <h1>hello 1</h1>
  </c:when>
  <c:when test="false">
    <h1>hello 2</h1>
  </c:when>
  <c:otherwise>
    <h1>hello 3</h1>
  </c:otherwise>
</c:choose>
</body>
</html>