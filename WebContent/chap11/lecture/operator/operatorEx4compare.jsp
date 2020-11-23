<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${"a" == "a" }
<hr />
${"a" < "b" } <!-- 사전순으로  --> 
<hr />
${"11"<"2" } <br />  <!-- 사전순이여서 2가 크게나옴.  -->
${"11" < 2} <br /> <!--다른타입일 경우 숫자로 변경하려고 노력한다음에 계산함   -->
${"11" > 2} 
</body>
</html>