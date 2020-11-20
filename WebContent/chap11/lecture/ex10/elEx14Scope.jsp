<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%--
각 영역에 attribute를 <name, object> 을 쌍으로 가지고 있다.
pageScope
requestScope
sessionScope
applicationScope
 --%>
<%
pageContext.setAttribute("my attr1", "my value1");
pageContext.setAttribute("myAttr1", "my Value1 !!!!!!!!!!");

request.setAttribute("myAttr1", "my Value !@)@))");
request.setAttribute("myAttr2", "my Value2 !!!!!!!!!!!!!!!");
%>
<!--"my attr1", "my value1"  마이벨류 1 은 오브젝트여서 스트링 인티저 타입 안가름   -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${myAttr1 } <br /> 
${pageScope["my attr1"] } <br /> <!-- 유효하지 않은 문법 = ${my attr1}  -->
${myAttr2 } <br />
${requestScope.myAttr1 } <br /> <!-- myAttr1이 중복되면  page에있는 값이 꺼내짐/ requestScope.myAttr1으로 감싸줘야 page가 출력안됨.  -->
</body>
</html>