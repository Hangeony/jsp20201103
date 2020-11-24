<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
FileReader reader = null;
try{
	String path= "/chap12/use_out_tag.jsp";
	reader = new FileReader(application.getRealPath(path));
%>
<pre>
소스 코드 = <%=path %>
<c:out value="<%=reader %>" escapeXml="true"/>
</pre>
<%
}catch(IOException ex){
%>
에러 : <%=e.getMessage() %>
<% 
}finally{
	if(reader != null)
		try{
			reader.close();
		}catch(IOException ex){}
}
%>


</body>
</html>