<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>Perfil</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<nav>
		<jsp:include page="../includes/navbar.jsp"></jsp:include>
	</nav>
	<h1>¡Bienvenido a tu perfil ${userInSession.name}!</h1>

	<div class="row">
	<h2>Mis mascotas creadas:</h2>
	<c:forEach items="${pets}" var="pet">
            <div class="card" style="width: 18rem;">
             	<c:if test="${not empty pet.image}">
                   	<img src="/img/${pet.image}" class="img-fluid"/>
               	</c:if>
              <div class="card-body">
              	<h3 class="card-title">${pet.name}</h3>
                <p class="card-text">Género: ${pet.genre}</p>
                <p class="card-text">Edad: ${pet.age}</p>
                <p class="card-text">Ciudad: ${pet.city}</p>
                <a href="/mostrar/${pet.id}" class="btn btn-primary">Más info</a>
              </div>
            </div>
     </c:forEach>
</body>
</html>