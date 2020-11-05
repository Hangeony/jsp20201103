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
<%
Set<Integer> lotto = new HashSet<>();
while (lotto.size() < 6) {
 lotto.add((int) (Math.random()*45 + 1)); 
}
String[] selected = request.getParameterValues("num");
List<Integer> selectedList = new ArrayList<>();
for (String s : selected) {
 selectedList.add(Integer.valueOf(s.substring(1))); 
}
int cnt = 0;
for (Integer s : selectedList) {
 if (lotto.contains(s)) {
  cnt++;
 }
}
out.print("당첨번호:");
out.print(lotto);
out.print("<br>");
%>
선택한 번호 : <%= selectedList %><br />
맞춘 갯수 : <%= cnt  %> 개 ,
<% 
if (cnt == 0) {
    out.print("꽝 !!!");
} else if (cnt == 1) {
	out.print("6등 !!!");
} else if (cnt == 2) {
	out.print("5등 !!!");
} else if (cnt == 3) {
	out.print("4등 !!!");
} else if (cnt == 4) {
	out.print("3등 !!!");
} else if (cnt == 5) {
	out.print("2등 !!!");
} else if (cnt == 6) {
	out.print("1등 !!!");
} else {
	out.print("오류 !!!");
}
%>
</body>
</html>