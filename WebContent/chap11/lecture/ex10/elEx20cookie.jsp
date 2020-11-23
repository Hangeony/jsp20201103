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
${cookie["JSESSIONID"].name }  <br /> <!-- 안전하게 쓰기위해서 대문자로 씀, cookie정보를 Map으로 가져옴.  -->
${cookie["JSESSIONID"].value } 
</body>
</html>