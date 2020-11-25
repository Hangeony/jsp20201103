<%@ tag body-content="tagdependent" language="java" pageEncoding="EUC-KR"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:doBody var = "bodyText" />
<c:out value="${bodyText }" escapeXml="true"/>