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
${pageAttr1 } <br />
<hr />
${requestScope["req Attr1"] } <br />
${reqAttr2 } <br />
<hr />
${sesAttr2 } <br /> 
${sessionScope.reqAttr2 } <br /> <!-- Map에 있는거여서 .으로 써도 되고 [""]으로 사용 해도 된다. -->
<hr />
${appAttr1} <br />
${applicationScope.reqAttr2 } <br />
${applicationScope["app Attr3"] } <br />
</body>
</html>