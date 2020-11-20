<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String[] strs = {"ab", "cd", "ef", "gh"};
pageContext.setAttribute("list", strs);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${list[0] } <br />
${list[1] } <br />
${list[2] } <br />
${list[3] } <br />
${list[4] } <br /> <!-- 명확이 자바언어가 아니여서 조용히 실패함.  -->
</body>
</html>