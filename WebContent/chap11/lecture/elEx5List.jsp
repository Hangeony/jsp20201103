<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("jsp");
list.add("servlet");
list.add("html");
list.add("css");

request.setAttribute("mylist", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
${mylist }
<hr />
${mylist[0] } <br />
${mylist[1] } <br />
${mylist[2] } <br />
${mylist[3] } <br />
<hr />
<%--
${mylist.0 } <!-- 숫자로 표시할수 없음  -->
 --%>
${mylist["0"] } <br />
${mylist["1"] } <br />
${mylist["2"] } <br />
${mylist["3"] } <br />
</body>
</html>