<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String[] foods = request.getParameterValues("food");
request.setAttribute("fav",foods);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
for(int i = 0; i <foods.length; i++ ){
	pageContext.setAttribute("cnt", i);
%>
${fav[cnt] } <br />
<%} %>

<hr />
<%
int i =0;
for(String food : foods){
	pageContext.setAttribute("i", i);
%>
${fav[i] } <br />
<%
i++;
} %>

<hr />
${fav[0] } <br />
${fav[1] } <br />
${fav[2] } <br />
${fav[3] } <br />
${fav[4] } <br />
</body>
</html>