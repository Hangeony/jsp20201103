<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("html");
list.add("servlet");
list.add("css");
list.add("jquery");
list.add("js");

request.setAttribute("myList", list);
%>
<ul>
<c:forEach items="${myList }" var="item" begin="1" end="3" >
	<li>${item }</li>
</c:forEach>
</ul>
</body>
</html>