<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Mascota</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
    <div class="container">
            <div class="col-md-6">
			    <form:form action="/editar/${pet.id}" method="POST" enctype="multipart/form-data" modelAttribute="pet">
			        <h1 class="text-center">Editar Mascota</h1>
			        <input type="hidden" name="_method" value="PUT">
			
			        <div class="form-group">
			            <form:label path="name">Nombre de la mascota</form:label>
			            <form:input path="name" class="form-control" />
			        </div>
			
			        <div class="form-group">
			            <form:label path="age">Edad</form:label>
			            <form:select path="age" class="form-control">
			                <c:forEach items="${edades}" var="a">
			                    <form:option value="${a}">${a}</form:option>
			                </c:forEach>
			            </form:select>
			        </div>
			
			        <div class="form-group">
			            <form:label path="city">Ciudad</form:label>
			            <form:input path="city" class="form-control" />
			        </div>
			
			        <div class="form-group">
			            <form:label path="genre">Género</form:label>
			            <form:select path="genre" class="form-control">
			                <c:forEach items="${generos}" var="g">
			                    <form:option value="${g}">${g}</form:option>
			                </c:forEach>
			            </form:select>
			        </div>
			
			        <div class="form-group">
			            <form:label path="species">Especie</form:label>
			            <form:select path="species" class="form-control">
			                <c:forEach items="${especies}" var="es">
			                    <form:option value="${es}">${es}</form:option>
			                </c:forEach>
			            </form:select>
			        </div>
			
			        <div class="form-group">
			            <form:label path="imagen">Imagen</form:label>
			            <form:input type="file" path="imagen" class="form-control" placeholder="imagen de 50x50 px" />
			        </div>
			
			        <div class="form-group">
			            <form:label path="description">Descripción</form:label>
			            <form:textarea path="description" class="form-control" />
			        </div>
			
			        <input type="hidden" name="owner" value="${userInSession.id}" />
			
			        <input type="submit" value="Editar" class="btn btn-success">
			    </form:form>

            </div>
        </div>
    </div>
</body>
</html>
