<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "chap08.Car" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="car" class="chap08.Car" scope="page">
	<jsp:setProperty name="car" property="name" value="kia" />
</jsp:useBean>
	
<jsp:useBean id="car2" class="chap08.Car">
	<jsp:setProperty property="name" name="car2" value="volvo"/>
</jsp:useBean>
<%
//pageContext.setAttribute("car", car);
//pageContext.setAttribute("car2", car2);
%>
<%
 Car car3 = new Car();
car3.setName("benz");
request.setAttribute("car", car3);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${car } <!-- 각영역의 "car" attribute를 찾음   -->
		<!-- 찾는순서 : page, request, session, application -->
<br />
${car.name }
<br />
${car2 }
<br />
${car3 }  <!-- 어떻게 표현할지 알려주는거라서 보여지지가 않음  -->
</body>
</html>