<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import = "chap08.Car" %>
<%
List<Car> list = new ArrayList<>();
for(int i = 0; i < 5 ; i ++){
	Car car = new Car();
	list.add(car);
	car.setName("kia" + i);
}

pageContext.setAttribute("cars", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${cars[0].name } <br /> <!-- list, map 이던꺼네온놈이 어떻던 간에 잘사용가능 -->
${cars[1]["name"] } <br /> <!--1번째의 Car에 네임 프로포티를 찾기  -->

</body>
</html>