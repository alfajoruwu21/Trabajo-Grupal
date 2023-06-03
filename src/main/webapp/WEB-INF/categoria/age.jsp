<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
    <title>Lista de Mascotas por Categoría</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <h1>Lista de Mascotas por Categoría - ${edad}</h1>
    <div class="container">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Edad</th>
                    <th>Ciudad</th>
                    <th>Género</th>
                    <th>Especie</th>
                    <th>Descripción</th>
                    <th>Imagen</th>
                    <th>Perfil de la mascota</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${mascotas}" var="mascota">
                    <tr>
                        <td>${mascota.name}</td>
                        <td>${mascota.age}</td>
                        <td>${mascota.city}</td>
                        <td>${mascota.genre }
                        <td>${mascota.species}</td>
                        <td>${mascota.description}</td>
                        <td>
                        	<c:if test="${not empty mascota.image}">
                                <img src="/img/${mascota.image}" class="img-fluid"/>
                            </c:if>
                        </td> 
                        <td>
                        	<a href="/mostrar/${mascota.id}" class="btn btn-primary">Más info</a>
                        </td>
                    </tr>
                   
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>