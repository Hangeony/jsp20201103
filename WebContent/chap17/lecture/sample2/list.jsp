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
  <h1>글 목록</h1>
  <ul>
    <c:forEach items="${posts }" var="post" varStatus="status">
      <li><a href="<%=request.getContextPath() %>/sample2/detail?idx=${status.index }">${post.title }</a></li>
    </c:forEach>
  </ul>
</div>
</body>
</html>

