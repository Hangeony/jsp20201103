<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
같다 ${param.param1 == param.param2 } <br /> <!--같은 문자열이여도 A a면 높은 코드값이 높게 나온다.  -->
	${param.param1 eq param.param2 } 

<hr />
같지않다${param.param1 != param.param2 } <br />
${param.param1 ne param.param2 }

<hr />
오른쪽이 크다${param.param1 < param.param2 } <br />
		${param.param1 lt param.param2 } 

<hr />
왼쪽이 크다${param.param1 > param.param2 } <br />
		${param.param1 gt param.param2 } 

<hr />
오른쪽이 크거나 같다${param.param1 <= param.param2 } <br />
${param.param1 le param.param2 }

<hr />
왼쪽이 크거나 같다${param.param1 >= param.param2 } <br />
${param.param1 ge param.param2 }  
</body>
</html>