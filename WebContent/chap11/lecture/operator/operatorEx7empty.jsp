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
<h3>empty</h3>
null : ${empty abc } <br /> <!-- 있는지 없는지 검사하고 싶다. 값이 없으면 true 가나옴-->
"" : ${empty "" } <br /> 
<%
List list = new ArrayList<>();
pageContext.setAttribute("list", list);
%>
list : ${empty list } <br /> <!-- 빈 list 도 트루 -->
<%
Map map = new HashMap();
pageContext.setAttribute("map", map);
%>
map : ${empty map } <br /> <!-- 빈 map이 비어있는지 확인-->

<h3>not empty</h3>
${not empty abc } <!-- 값이 있는지 확인할떄 not empty을 사용  -->
</body>
</html>