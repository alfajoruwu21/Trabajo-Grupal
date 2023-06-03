<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adoptar</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
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
	    			
	    			<form action="/borrar/${pet.id}" method="post">
						<input type="hidden" name="_method" value="DELETE">
						<input type="submit" value="Borrar" class="btn btn-danger" >
					</form>	
					
					<a href="/editar/${pet.id}" class="btn btn-danger">Editar</a>
	    		</div>
	    	</div>
			
			
        </c:forEach>
    </div>
    
</body>
</html>