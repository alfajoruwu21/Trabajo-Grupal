<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mascota</title>
</head>
<body>
	<div class="container">
		<div class="">
			<h1>${mostrarPet. name}</h1>
			<c:if test="${not empty mostrarPet.image}">
            	<img src="/img/${mostrarPet.image}" class="img-fluid"/>
            </c:if>
		</div>
		<div>
			<p>Edad : ${mostrarPet.age}</p>
			<p>Ciudad : ${mostrarPet.city}</p>
			<p>Propietario : ${mostrarPet.owner}</p>
			<p>Vacunas : ${mostrarPet.vaccine}</p>
			<p>Género : ${mostrarPet.genre}</p>
			<p>Especie : ${mostrarPet.species}</p>
		</div>
	</div>
</body>
</html>