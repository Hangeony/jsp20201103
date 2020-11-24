<%@page import="com.sun.xml.internal.ws.client.RequestContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="chap14.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String sql = "SELECT eno, ename FROM employee";

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);

List<Employee> list = new ArrayList<>();

while (rs.next()) {
  Employee e = new Employee();
  e.setEno(rs.getInt(1));
  e.setEname(rs.getString(2));
  list.add(e);
}
pageContext.setAttribute("Employee", list);
stmt.close();
con.close();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <h1>사원 목록</h1>
  <table class="table">
    <tr>
    	<td>사번</td>
    	<td>이름</td>
    </tr>
   <c:forEach items="${Employee }" var="list">
   	<tr>
   		<td>
   		<a href="joinEx7Detail.jsp?eno=${list.eno }"> ${list.eno }</a>
   		</td>
   		<td>${list.ename }</td>
   	</tr>
   </c:forEach>
   
   
 <%--    <%
    for (Employee emp : list) {
    %>
      <tr>
     
        <td> 
        <a href="joinEx7Detail.jsp?eno=<%=emp.getEno()%>">
        <%= emp.getEno() %>
        </a>
        </td>
        <td><%= emp.getEname() %></td>
      </tr>
    <%
    }
    %>  --%>
  </table>
</div>
</body>
</html>