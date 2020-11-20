<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%--
책으로는 254p 있는표
pageContext
pageScope  : Map
requestScope : Map
sessionScope :Map
applicationScope : Map
param : Map
paramValues : Map
header : Map 
headerValues : Map
cookie : Map
initParam : Map
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${pageContext } <br /> 
${pageScope } <br />
${requestScope } <br />
${sessionScope } <br />
${applicationScope } <br />
${param} <br />
${paramValues } <br />
${header } <br />
${headerValues } <br />
${cookie } <br />
${initParam } <br />
</body>
</html>