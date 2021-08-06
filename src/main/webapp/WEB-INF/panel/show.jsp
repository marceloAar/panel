<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mostrar Usuario</title>
</head>
<body>

<a style="display:block; text-align: rigth"href="/">Volver Atras</a>

<h1>Todos los usuarios</h1><hr>

<table border=1>
    <thead>
        <tr>
            <th>Nº</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Email</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${usuarios}" var="usuario">
        <tr>
            <td><c:out value="${usuario.id}"/></td>
            <td><c:out value="${usuario.nombre}"/></td>
            <td><c:out value="${usuario.apellido}"/></td>
            <td><c:out value="${usuario.email}"/></td>
        </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>