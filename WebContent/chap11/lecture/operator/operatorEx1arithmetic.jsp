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
${4 + 5 } <br /> 
${3 - 7 } <br />
${9 * 9 } <br /> 
${15 / 3 } <br />
<!-- 
${15 div 3 } <br /><!-- 표현 나누기여서 키워드로 추가해둔것이 있다, 키워드로 사용가능 -->
-->
${31 %  3 } <br /> <!-- java와 동일하게 나머지 연산 --> 
${31 mod  3 } <br />

<hr />

${"10" + 5  } <br /> <!--  String 문법을 사용해도 숫자로 변경 하여 값을 더한다. -->
<%-- ${"ten" + 5 } <br /> 문자열을 더하면 입셉션이 발생 --%>

${abc + 5  } <!-- 값이 없을 경우 값이 null로 나오거나 0으로 된다. abc가 값이 0으로 되서 5로 나옴. -->
</body>
</html>