<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mensajes</title>
</head>
<body>
	<div>
		<c:forEach items="${chat}" var="mensaje">
			<div>${mensaje.message}</div>
		</c:forEach>
	
		<form:form action="/conversar" method="POST" modelAttribute="message">
			<form:hidden path="remitter" value="${userInSession.id}" />
			<form:hidden path="receptor" value="${recibe}" />
			
			<input type="text" name="message" placeholder="Escribe tu mensaje"/>
			<input type="submit" value="Enviar" />
			
		</form:form>
	</div>
</body>
</html>