<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="car" class="chap08.Car">
<jsp:setProperty name="car" property="name" value="kia" />
<jsp:setProperty name="car" property="speed" value="0" />

</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
${car.name } <br />
${car.speed } <br />
${car.stop } <br />

<hr />
${car["name"] }  <br />
${car["speed"] } <br />
${car["stop"] } <br />
</body>
</html>