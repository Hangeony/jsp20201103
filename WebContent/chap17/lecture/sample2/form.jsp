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
  <h1>게시글 작성</h1>
  <form action="" method="post">
  제목 : <input type="text" name="title" /> <br />
  <textarea name="body" id="" rows="5"></textarea>
  <br />
  <input type="submit" value="등록"/>
  </form>
</div>
</body>
</html>


