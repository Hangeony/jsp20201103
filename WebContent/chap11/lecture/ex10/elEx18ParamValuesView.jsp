<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String[] foods = request.getParameterValues("food");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
<%
for(String food : foods){
%>
<li><%= food %></li>
<%} %>
</ul>

${paramValues.food[0] } <br /> <!-- String[] foods 랑 같은 역활이여서 뒤에 배열의 숫자를 써줘도 된다. -->
${paramValues.food[1] } <br />
${paramValues.food[2] } <br />
${paramValues.food[3] } <br />
${paramValues.food[4] } <br />
</body>
</html>