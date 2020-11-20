<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= pageContext %>
 <br />  <!-- 동일 한객체인거 확인 !<%= pageContext %> =  ${pageContext } --> 
 <!-- get으로 시작하는 것을 주목해야함 jspBean처럼 사용 할수있음 
 명확히 jspBean은 아니지만 get--- method는 프로포티가 결정되는데  프로포티가 있으니까 .---을 쓸수 있다. 
 /아기먼트 없는 생성자 있으나 생관없음  만약 필요하면 페이지 컨테스트 쓰면된다
 -->
${pageContext.request } <br />
${pageContext.session } <br />
${pageContext.servletContext } <br />
${pageContext.response } <br />
${pageContext.servletConfig } <br />
<hr />
<%= request.getContextPath() %> <br />
${pageContext.request.contextPath } <br />
${pageContext.request.cookies[0].name } <br />
${pageContext.request.cookies[0].value } <br />
<hr />
<!-- ${pageContext.request } = <%= pageContext.getRequest() %> 같은 역활을 한다 , 하지만 우리는 자바 코드를 줄이는것을 배우고 있어서 해석할 줄만 알면됨  -->
${pageContext.request } <br />
<%= pageContext.getRequest() %> <br />
</body>
</html>