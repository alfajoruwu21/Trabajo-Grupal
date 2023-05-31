<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario de adopcion</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>

    <h1>Registro de adopcion</h1>
    <div class="container">
        <div class="row">
            <div class="col-6">
                <form:form action="/adopcion" method="POST" modelAttribute="pet">

                    <div>
                        <form:label path="name">Nombre de la mascota</form:label>
                        <form:input path="name" class="form-control"/>
                        <form:errors path="name" class="text-danger"/>	
                    </div>

                    <div>
                        <form:label path="age">edad</form:label>
                        <form:input path="age" class="form-control"/>
                        <form:errors path="age" class="text-danger"/>
                    </div>

                    <div>
                        <form:label path="city">Cuidad</form:label>
                        <form:input path="city" class="form-control"/>
                        <form:errors path="city" class="text-danger"/>
                    </div>

                    <div>
                        <form:label path="genre">Genero</form:label>
                        <form:input path="genre" class="form-control"/>
                        <form:errors path="genre" class="text-danger"/>
                    </div>

                    <div>
                        <form:label path="species">Especie</form:label>
                        <form:input path="species" class="form-control"/>
                        <form:errors path="species" class="text-danger"/>
                    </div>
					<div class="form-group">
                        <label>Imagen</label>
                        <input type="file" name="imagen" class="form-control" placeholder="imagen de 50x50 px"/>
                    </div>
                    <div>
                        <form:label path="description">Descripcion</form:label>
                        <form:textarea path="description" class="form-control"/>
                        <form:errors path="description" class="text-danger"/>
                    </div>
                    <input type="submit" value="Adopcion" class="btn btn-success">
                    </form:form>

            </div>
        </div>
    </div>
    
</body>
</html>