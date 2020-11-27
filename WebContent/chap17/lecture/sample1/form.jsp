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
<div class="container">
<c:if test="${not empty message  }">
${message }
<c:remove var ="message" scope="session"/>
</c:if>

<h1>회원가입</h1>
<form action="<%=request.getContextPath() %>/sample1/process" method="post">
id : <input type="text" name = "id" value ="${formId}"/>
pw : <input type="password" name="pw" value ="${formPw }" />
<input type="submit" value="가입" />
</form>
<c:remove var ="formId" scope="session"/>
<c:remove var ="formPw" scope="session"/>
</div>
</body>
</html>