<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<tf:out>
<jsp:body> <u>현재시간</u>은 <b>${dateEL }</b> 입니다 </jsp:body>
</tf:out>

<br>

<tf:out>
<%=new Date() %> <u>현재시간</u>은  <b>${dataEL }</b> 입니다.
</tf:out>

<!-- out.tag의 escapeXml="true" 때문에 해석 하지 못한다. -->
</body>
</html>