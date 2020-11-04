<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
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

<a href="requestEx5Form.jsp" class="btn btn-success">뒤로</a> <br />
<%
int dan = 0;
String inputdan = request.getParameter("dan");
if(inputdan == null) {
	dan = 2;
} else {
	dan = Integer.parseInt(inputdan);
}
%>

<%
	for(int i = 1; i <= 9; i++) {
		out.print(dan+ "X" + i + "=" + (dan*i)) ;
%>
<br />
<%
	}
%>

</body>
</html>

 <%-- 
  <%
  String dan = request.getParameter("dan");
  int d = Integer.parseInt(dan);
  
  for (int i = 1; i <= 9; i++) {
  %>
    <%= d %> X <%= i %> = <%= d*i %> <br />
  <%
  }
  %> --%>