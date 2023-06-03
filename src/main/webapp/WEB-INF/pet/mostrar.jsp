<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mascota</title>
<link rel="shortcut icon" href="img/icons/LogoPng.png" type="img_logo">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<nav>
    	<jsp:include page="../includes/navbar.jsp"></jsp:include>
    </nav>
	<div class="container">
		<div class="">
			<h1>${mostrarPet. name}</h1>
			<c:if test="${not empty mostrarPet.image}">
            	<img src="/img/${mostrarPet.image}" class="img-fluid"/>
            </c:if>
		</div>
		<div>
			<p>${mostrarPet.description}</p>
			<p>Edad : ${mostrarPet.age}</p>
			<p>Ciudad : ${mostrarPet.city}</p>
			<p>Propietario : ${mostrarPet.owner.name}</p>
			<p>Vacunas : ${mostrarPet.vaccine}</p>
			<p>Género : ${mostrarPet.genre}</p>
			<p>Especie : ${mostrarPet.species}</p>
		</div>
	</div>
</body>
</html>