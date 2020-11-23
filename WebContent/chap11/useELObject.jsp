<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
request.setAttribute("name","최범균" );
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
요청 URI : ${pageContext.request.requestURI } <br />
request의  name 속성 : ${requestScope.name } <br /> <!-- name = request.setAttribute("name","최범균" )을 가르킴  -->
code 파라미터 : ${param.code }  <br /> <!-- param을 통해서 request을 얻어오는데  el을 썼을시  /el을 안썻을때 <%= request.getParameter("code") %>  --> 
id 파라미터  : ${param.id } 
<!-- code = 키  뒤에는 벨류  -->

</body>

</html>