<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
pageContext.setAttribute("myvar1", "my value1");
String myVal3 = "hello";
%>
<c:set var = "myvar2" value="my value2"></c:set>
<%-- pageContext.setAttribute("myvar1", "myvalue1"); = <c:set var = "myvar2"value="my value2" />  같은 결과값이 나온다 
 														위에var에는 변수명   value 에는 벨류값을 넣음  --%>
<c:set var = "myvar3" value="<%=myVal3 %>"></c:set>
<c:set var = "myvar4" value="${myvar2 }"></c:set>
<c:set var="myvar5">
<h1> Hello World!! </h1>
</c:set>
<!--  몸통이 되기도 한다 -->

${myvar1 } <br />
${myvar2 } <br />
${myvar3 } <br />
${myvar4 } <br />
${myvar5 } <br />
</body>
</html>