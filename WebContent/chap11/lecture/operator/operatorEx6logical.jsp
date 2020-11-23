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
<h3>and</h3>
${true && true } <br />  <!-- 양변이 true일때만 트루 -->
${true && false } <br />
${false && true } <br />
${false && false } <br />
<hr />
${true and true } <br /> 
${true and false } <br />
${false and true } <br />
${false and false } <br />
<h3>OR</h3>
${true || true } <br />  <!-- 한쪽이  true면  true -->
${false || true } <br /> 
${true || false } <br /> 
${false || false } <br /> 
<hr />
${true or true } <br />
${false or true } <br />
${true or false } <br />
${false or false } <br />
<h3>not</h3>
${!true} <br />
${!false } <br />
<hr />
${not true } <br />
${not false } <br />
</body>
</html>