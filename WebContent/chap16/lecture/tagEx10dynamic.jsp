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
<my:ex10dynamic attr0="value0" attr1="value1" attr2="value2"></my:ex10dynamic>
</body>
</html>
<%-- 
${attr } =  dynamic-attributes="attr" 는 map 이랑 똑같은 역활을 한다. key, value값을 가지고 있다.
<%@ attribute name="attr0" %> 여기서 지정해주지 않은 것만 따로 묶어서 보여준다.
--%>
