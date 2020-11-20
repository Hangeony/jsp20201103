<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
Map<String, String> map = new HashMap<>();
map.put("a", "java");
map.put("b", "html");
map.put("c", "css");
map.put("3", "servlet");
map.put("class","spring");
map.put("my key", "my value");

request.setAttribute("mymap", map);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${mymap } <!-- ${mymap } ==request.setAttribute("mymap", map);  -->
<hr />
${mymap.a } <br /> <!-- a값을 찾는다. -->
${mymap.b } <br />
${mymap.c } <br /> <!--띄워쓰기 숫자는 .을 못쓴다  -->
${mymap["3"] } <br /> <!-- 네모가로 갑을쓸때 작은 따움표 큰따움표 차이가 없다  -->
${mymap["my key"] } <br />
${mymap["class"] } <br />
<hr />
${mymap['3'] } <br />
${mymap['class'] } <br />
${mymap['my key'] } <br />
<hr /> 
${mymap["a"] } <br /> <!--  -->
${mymap[b] } <br /> 
${mymap[c] } <br />
</body>
</html>