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
<h1>더한값 : ${param.num1 + param.num2 }</h1>
<h1>뺀값 : ${param.num1 - param.num2 }</h1>
<h1>곱한값 : ${param.num1 * param.num2 }</h1>
<h1>나눈값 : ${param.num1 / param.num2 }</h1>
<h1>나눈값 : ${param.num1 div param.num2 }</h1>
<h1>나머지 : ${param.num1 % param.num2 }</h1>
<h1>나머지 : ${param.num1 mod param.num2 }</h1>
</body>
</html>