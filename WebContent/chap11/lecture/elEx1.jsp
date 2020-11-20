<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="car" class="chap08.Car" scope="page">
  <jsp:setProperty name="car" property="name" value="kia" />
  <jsp:setProperty name="car" property="speed" value="100" />
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> scriptlet</h3>
<%
chap08.Car carData = (chap08.Car) pageContext.getAttribute("car");
%>
<h3> scriptlet</h3>
<%= carData.getName() %> <br>
<%= carData.getSpeed() %>

<h3> scriptlet</h3>
<jsp:getProperty property="name" name="car"/> <br />
<jsp:getProperty property="speed" name="car"/> <br />

<h3>expression language(EL)  표현언어</h3>
${car.name } <br>
${car.speed } <br>
</body>
</html>
