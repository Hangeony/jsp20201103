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
<form action="elEx18ParamValuesView.jsp">
<label for="">딸기<input type="checkbox" name="food" value ="berry" /></label>
<label for="">바나나<input type="checkbox" name="food" value ="banana" /></label>
<label for="">물<input type="checkbox" name="food" value ="water" /></label>
<label for="">커피<input type="checkbox" name="food" value ="coffe" /></label>
<label for="">케이크<input type="checkbox" name="food" value ="cake" /></label>
<br />
<input type="submit" value="등록" />
</form>
</body>
</html>