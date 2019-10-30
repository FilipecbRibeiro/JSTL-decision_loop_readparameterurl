<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loop</title>
</head>
<body>


	<c:forEach var="i" begin="0" end="10" step="2">

${i}<br>
	</c:forEach>

	<%
		String[] names = new String[3];
		names[0] = "Filipe";
		names[1] = "Babo";
		names[2] = "Ribeiro";
	%>

	<c:forEach items="<%=names%>" var="run"> 
	
	${run}<br>

	</c:forEach>
	<c:choose>
		<c:when test="${param.name== 'Java' }">
	Learning Java
	</c:when>
		<c:when test="${param.name== 'C' }">
	Learning C

	</c:when>
		<c:when test="${param.name== 'Python' }">
	Learning Python
	</c:when>
		<c:otherwise>Go learn something useful</c:otherwise>


	</c:choose>

</body>
</html>