<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%-- <%@ page session ="false" %>  --%>
<%
request.setAttribute("attr", "value1");
session.setAttribute("attr2", "value2");

HttpSession sess = request.getSession();

System.out.println(session == sess);

response.sendRedirect("sessionEx3RedirectTarget.jsp");

%>