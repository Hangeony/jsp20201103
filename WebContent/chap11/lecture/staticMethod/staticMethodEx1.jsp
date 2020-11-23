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
${Math.abs(-5) } <br /> <!-- abs 절대값  -->
${Math.random() } <br /> 
${Math.round(3.14) } <br /> <!-- 소수점 자리를 반올림  -->
<hr />
<%
double num = 5.5;
pageContext.setAttribute("num2", num);
%>
${Math.round(num2) } <!-- num은 4개의 영역안에 없어서 위에서 값을 설정해줘야함.  -->
</body>
</html>