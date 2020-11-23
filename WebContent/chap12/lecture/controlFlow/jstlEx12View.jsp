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
<c:if test="${not empty param.dark or not empty dark}" var ="dark" scope="session">
<div style="background-color: black; color: white">
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod nobis in eaque maiores iure ipsam rem architecto consequatur cumque rerum unde dolorum provident deleniti excepturi quos numquam ducimus consequuntur voluptatibus.
</div>
</c:if>


<c:if test="${empty param.dark and empty dark  }">
   <div style="background-color: black; color:white;">
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod nobis in eaque maiores iure ipsam rem architecto consequatur cumque rerum unde dolorum provident deleniti excepturi quos numquam ducimus consequuntur voluptatibus.
</div>
</c:if>

</body>
</html>