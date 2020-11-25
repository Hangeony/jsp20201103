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
<my:ex2bodyEmpty/>
<hr />
<my:ex2bodyEmpty></my:ex2bodyEmpty>
<hr />
<%--
<my:ex2bodyEmpty> </my:ex2bodyEmpty>
 --%>
 <hr />
<my:ex2bodyScriptless/>
<hr />
<my:ex2bodyScriptless>
body content
</my:ex2bodyScriptless>
<hr />
<%--
scriptlet, expression, declaration 자바코드를  실행시키면 안됨.
<my:ex2bodyScriptless>
<%
out.print("hello");
%>
</my:ex2bodyScriptless>
 --%>
 <hr />
 <my:ex2bodyScriptless>
 ${param.age + 100 }
 </my:ex2bodyScriptless>
</body>
</html>