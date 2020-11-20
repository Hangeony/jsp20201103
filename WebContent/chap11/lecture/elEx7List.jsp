<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("servlet");
list.add("jsp");
list.add("html");
list.add("el");
list.add("css");

pageContext.setAttribute("alist", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${alist[0] } <br />
<hr />
<%
for (int i=0; i<list.size(); i++){
	pageContext.setAttribute("cnt", i);
%>
${alist[cnt] } <br />
<% }%> 
<!-- page 부터 찾는데 i라는 놈이 없어서  안나옴  -->
<!-- el에 사용되는 변수는 4가지 영역부터 찾기 시작된다.  -->
<!-- 해소할려고 el 쓰는데 왕창드러간것을 해소하는 법은 다음시간에 배움 ㅎ  -->
</body>
</html>