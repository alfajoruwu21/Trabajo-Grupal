<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adoptar</title>
</head>
<body>
	<nav>
    	<jsp:include page="../includes/navbar.jsp"></jsp:include>
    </nav>
    <div>
    	<c:forEach items="${pets}" var="pet">
	    	<div class="card" style="width: 18rem;">
	    		<c:if test="${not empty pet.image}">
        			<img src="/img/${pet.image}" class="img-fluid"/>
        		</c:if>
	   			<div class="card-body">
	    			<h3 class="card-title">${pet.name}</h3>
	    			<h5 class="card-text">${pet.genre}</h5>
	    			<h5 class="card-text">${pet.age}</h5>
	    			<h5 class="card-text">${pet.city}</h5>
	    			<a href="/mostrar/${pet.id}" class="btn btn-primary">Más info</a>
	    		</div>
	    	</div>
        </c:forEach>
    </div>
</body>
</html>