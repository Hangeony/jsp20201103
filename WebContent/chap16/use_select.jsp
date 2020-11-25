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
<tf:select name="code" rgb="RGB 모드" wb="흑백모드"/>

<tf:select name="genre" rock="락" balad="발라드" metal="메탈"/>
</body>
</html>

<%-- 
<%@ tag dynamic-attributes="optionMap" %> 키와 벨류로 옵션 엘레멘트를 만든것이다.

아무거나 선택해서 써도 상관없다. 오늘 489P까지 한것음 변수의 생성부터는 안봐두 됨


--%>