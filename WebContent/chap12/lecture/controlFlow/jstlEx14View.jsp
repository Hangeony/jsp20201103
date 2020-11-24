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
  <c:when test="${param.age > 20 }">
    <jsp:include page="jstlEx14Sub1.jsp"></jsp:include>
  </c:when>
  <c:otherwise>
    <jsp:include page="jstlEx14Sub2.jsp"></jsp:include>
  </c:otherwise>
</c:choose>
</body>
</html>


