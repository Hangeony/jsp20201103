<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/lecture" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>사원 추가</h1>
<form action="<%=request.getContextPath() %>/sample/employee/add" method="post">
	사번 : <input type="number" name="eno" id="" />
	<br />
	이름 : <input type="text" name="ename"/>
	<br />
	부서 : <select name="dno" id="">
		<option value="10">ACCOUNTING</option>
		<option value="20">RESEARCH</option>
		<option value="30">SALES</option>
		<option value="40">OPERATIONS</option>
	</select>
	<br />
	<input type="submit" value="두두등장" />
</form>
</body>
</html>