<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
//MemberInfo member = new MemberInfo();
//pageContext.setAttribute("member", member);
%>
<jsp:useBean id="member" class="chap08.member.MemberInfo" scope="page"></jsp:useBean>
<%
Object o = pageContext.getAttribute("member");
System.out.println(o);
System.out.println(member);
%>
<jsp:forward page="javaBeanEx4Forward"/>