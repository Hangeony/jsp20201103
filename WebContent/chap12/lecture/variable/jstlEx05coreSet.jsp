<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="myvar1" value="my value1" scope="page"></c:set>
<c:set var="myvar2" value="my value2" scope="page"></c:set>
<c:set var="myvar2" value="my value2, request" scope="request"></c:set>
<%-- scope로 4개의 범위안에서 설정해주면 된다, 원하는 영역에 값을 넣어줄수 있다.--%>
${myvar1 } <br />
${myvar2 } <br />
${ requestScope.myvar2}
</body>
</html>