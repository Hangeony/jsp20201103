<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="myCar" class="chap08.Car">
<jsp:setProperty name="myCar" property="name" value="kia"/>
<%
Map<String, String> map = new HashMap<>();
map.put("myKey1", "my value1");
pageContext.setAttribute("myMap", map);
%>
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${myCar.name } <br />
${myMap.myKey1 } <br />
<c:set target="${myCar }" property="name" value="Benz"/>
<c:set target="${myMap }" property="myKey1" value="변경해 버렷"/>
<c:set target="${myMap }" property="myKey2" value="추가되 버렷"/>
<%-- target 은 ${}의 값을 넣어야되고 Map일 경우에는 put으로 key 값을 넣여야한다. --%>
<hr />

${myCar.name } <br />
${myMap.myKey1 } <br />
${myMap.myKey2 } <br />
</body>
</html>
