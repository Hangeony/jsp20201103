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
${param.name } 님의 추천영화
<c:if test="${param.age < 15 }">
어벤져스
</c:if>

<c:if test="${param.age >= 15 }">
제임스 본드 
</c:if>

</body>
</html>