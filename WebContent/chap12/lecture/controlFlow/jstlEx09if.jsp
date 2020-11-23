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
<c:if test="true">
<h1>실행</h1>
</c:if>

<c:if test="false">
<h1>no 실행</h1>
</c:if>
<!-- if의 참인 결과 값만 나온다  -->
</body>
</html>