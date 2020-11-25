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
<my:ex7fragment>
	<jsp:attribute name="title">
		<h1>my title</h1>
	</jsp:attribute>
	<jsp:body>
	<h1>jsp body</h1>
	</jsp:body>
</my:ex7fragment>

<%--
 ${title} 로 쓰는게 아니라 <jsp:invoke fragment="title>로 써야함.  
 구분 하기위해서  <jsp:body/> 을쓴다
 
 attribute가 너무 큰 값을 가지면 <jsp:attribute>로 작성할 수 있도록 해주는게 fragment="true"입니다.
 --%>
</body>
</html>