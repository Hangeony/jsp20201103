<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
int i = 3;
static int j = 10;
%>
<%!
int k = 20;
%>
<%!
void myMethod(){
	System.out.print("안녕 ");
}
static void myMethod2(){
	System.out.println("하세요");
}
%>
<!-- 위치가 중요하지 않음,
 *필드,매소드, 생성자 *에서 작성됨  -->
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
<h1>Lorem ipsum dolor.</h1>

<% this.myMethod(); %>
<% myMethod2(); %>
</body>
</html>
