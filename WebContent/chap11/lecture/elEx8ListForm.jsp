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
<h1> 좋아하는 음식</h1>
<form action="elEx8ListView.jsp">
<label for="">딸기<input type="checkbox" value="berry" name="food" id="" /></label>
<label for="">포도<input type="checkbox" value="grape" name="food" id="" /></label>
<label for="">바나나<input type="checkbox"value="banana" name="food" id="" /></label>
<label for="">우유<input type="checkbox" value="mlik"name="food" id="" /></label>
<label for="">커피<input type="checkbox" value="coffee"name="food" id="" /></label>
<br />
<input type="submit" value="등록" />
</form>
</body>
</html>