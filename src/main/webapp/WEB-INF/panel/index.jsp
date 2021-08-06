<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Panel de Administracion</title>
</head>
<body>

<h1>Login</h1>

<form action="/" method="post" modelAttribute="usuario">

    <p>
        <label path="email">Email :</label>        
        <input type="text">
    </p>  
 	<p>
        <label path="password">Password :</label>        
        <input type="password">
    </p>  
    
    <input type="submit" value="Login"/> 
    
</form> <br><hr>

<h1>Registrarse</h1>

<form:form action="/registro" method="post" modelAttribute="usuarios">
    <p>
        <form:label path="nombre">Nombre :</form:label>
        <form:errors path="nombre"/>
        <form:input path="nombre"/>
    </p>
    <p>
        <form:label path="apellido">Apellido :</form:label>
        <form:errors path="apellido"/>
        <form:input path="apellido"/>
    </p>
    <p>
        <form:label path="email">Email :</form:label>
        <form:errors path="email"/>
        <form:input path="email"/>
    </p>
    <p>
        <form:label path="password">Password :</form:label>
        <form:errors path="password"/>     
        <form:input type="password" path="password"/>
    </p>  
    <p>
        <form:label path="passConfirmacion">Confirma Password :</form:label>
        <form:errors path="passConfirmacion"/>     
        <form:input type="password" path="passConfirmacion"/>
    </p>
      
    <input type="submit" value="Submit"/>
</form:form> 



<!-- 
<form action="/registro" method="post" modelAttribute="usuarios">
    <p>
        <label path="nombre">Nombre :</label>        
        <input path="nombre"/>
    </p>
    <p>
        <label path="apellido">Apellido :</label>        
        <input path="apellido"/>
    </p>    
     <p>
        <label path="email">Email :</label>        
        <input type="text">
    </p>  
    
     <p>
        <label path="password">Password :</label>        
        <input type="password">
    </p>
     <p>
        <label path="passConfirmacion">Confirma Password :</label>        
        <input type="password">
    </p>
   
    <input type="submit" value="Registrar"/>
</form>
 -->

</body>
</html>