<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "chap08.Car" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
Map<String , Object> map = new HashMap<>();

List<String> list = new ArrayList<>();
list.add("java");
list.add("spring");

Car car = new Car();
car.setName("hyundai");

map.put("cars", list);
map.put("my car", car);

pageContext.setAttribute("map", map);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${map.cars[0] } <br />
${map.cars[1] } <br />        <!--  -->
${map["my car"].name } <br /> <!-- ["my car"] 을 변환해서.name 자동으로 형변환까지 됨 -->
</body>
</html>