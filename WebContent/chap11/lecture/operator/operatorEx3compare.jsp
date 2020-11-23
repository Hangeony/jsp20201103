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
${3 == 3 } <br /> <!-- 같다 -->
${3 eq 3 } <!-- 표현언어야서 키워드로 사용가능하다, boolean타입으로 출력결과가 나옴 -->
<hr /> 
${3 != 4 } <br />  <!-- 같지않다.  -->
${3 ne 4 } <br />
<hr />
${3 <4 } <br />
${3 lt 4 } <br />
<hr />
${4>3 } <br />
${4 gt 3 } <br />
<hr />
${3 <= 4 } <br />
${3 le 4 } <br />
<hr />
${4 >= 3 } <br />
${4 ge 3 } <br />
</body>
</html>