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
<h1>empty 연산자</h1>
<form action="operatorEx8View.jsp">
이름 : <input type="text" name="name" id="" /> <br />
동의 : <input type="checkbox" name="accept" id="" /> <br />
<input type="submit" value="등록" />

</form>
</body>
</html>