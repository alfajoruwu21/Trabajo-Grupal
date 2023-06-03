<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulario de adopción</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <h1>Registro de adopción</h1>
    <div class="container">
        <div class="row">
            <div class="col-6">
                <form action="/adopcion" method="POST" enctype="multipart/form-data">

                    <div class="form-group">
                        <label for="name">Nombre de la mascota</label>
                        <input type="text" name="name" class="form-control" id="name" value="${mascota.name}">
                    </div>

                    <div class="form-group">
                        <label for="age">Edad</label>
                        <select name="age" class="form-control">
                            <c:forEach items="${edades}" var="a">
                                <option value="${a}" <c:if test="${a eq mascota.age}">selected</c:if>>${a}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="city">Ciudad</label>
                        <input type="text" name="city" class="form-control" id="city" value="${mascota.city}">
                    </div>

                    <div class="form-group">
                        <label for="genre">Género</label>
                        <select name="genre" class="form-control">
                            <c:forEach items="${generos}" var="g">
                                <option value="${g}" <c:if test="${g eq mascota.genre}">selected</c:if>>${g}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="species">Especie</label>
                        <select name="species" class="form-control">
                            <c:forEach items="${especies}" var="es">
                                <option value="${es}" <c:if test="${es eq mascota.species}">selected</c:if>>${es}</option>
                            </c:forEach>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="imagen">Imagen</label>
                        <input type="file" name="imagen" class="form-control" id="imagen" placeholder="imagen de 50x50 px">
                    </div>

                    <div class="form-group">
                        <label for="description">Descripción</label>
                        <textarea name="description" class="form-control" id="description">${mascota.description}</textarea>
                    </div>

                    <input type="hidden" name="owner" value="${userInSession.id}">

                    <input type="submit" value="Actualizar" class="btn btn-success">
                </form>

            </div>
        </div>
    </div>
    
</body>
</html>
