<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="member" class="chap08.member.MemberInfo">
<jsp:setProperty name="member" property="*"/>
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
name : ${member.name } <br />
id : ${member.id} <br />
pw : ${member.password } <br />
email ${member.email } <br />
<hr />
name : ${member["name"]} <br />
id : ${member["id"]} <br />
pw : ${member["password"] } <br />
email ${member["email"] } <br />
</body>
</html>