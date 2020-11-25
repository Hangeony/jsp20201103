<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="attr0" %>
<%@ tag dynamic-attributes="attr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

${attr.attr1 }
<br	/>

${attr["attr2"] }
<br />
${attr.attr0 }
<hr />

<c:forEach items="${attr }" var = "entry">
<li> ${entry.key } : ${entry.value } </li>
</c:forEach>

<%-- 
${attr } =  dynamic-attributes="attr" 는 map 이랑 똑같은 역활을 한다. key, value값을 가지고 있다.
--%>