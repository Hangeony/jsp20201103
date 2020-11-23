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
<c:set var="myVar1" value ="my Value1"/>
<c:set var="myVar1" value ="my value1, request" scope="request"/>
<c:set var="myVar2" value="my Value2, request" scope="request"/>

${myVar1 } <br />
${requestScop.myVar1 } <br />
${myVar2 } <br />
<hr />
<!-- scope를 명시하지 않았을경우 같은 이름에 있는것을 모두 지워버림 지정해주면 지정해준  영역만 지워버림  -->
<c:remove var="myVar1" scope="page"/>
<c:remove var="myVar2"/>
${myVar1 } <br />
${requestScope.myVar1 } <br />
${myVar2 } <br />
</body>
</html>