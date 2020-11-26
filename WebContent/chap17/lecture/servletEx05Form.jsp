<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/lecture" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>doPost, request parameter 연습</h3>
<form action="<%= request.getContextPath() %>/ex05" method="post">
이름 : <input type="text" name = "name" />
나이 : <input type="number" name="age" /> <br />
이메일 : <input type="text" name="email"/> <br />
 <input type="submit" value="전송" />
</form>
</body>
</html>