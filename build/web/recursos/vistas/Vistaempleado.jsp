

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Personal"%>
<%@page import="Modelo.PersonalDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="recursos/css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Empleado</title>
    </head>
    <body>
        <form method="post" action="Controlador">
            <div>
                <h1>Personal</h1>
                <h2>Bienvenido ${nom}</h2>
                <h2>Tu cargo es ${pas}</h2>
                <table border="1">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>NOMBRE</th>
                            <th>DIRECCION</th>
                            <th>TELEFONO</th>
                            <th>FECHA INGRESO</th>
                            <th>CARGO</th>
                            <th>ZONA/ITINERARIO</th>

                        </tr>
                    </thead>      
                    <tbody>
                        <c:forEach var="per" items="${personal}">
                            <tr>
                                <td>${per.getId()}</td>
                                <td>${per.getNombre()}</td>
                                <td>${per.getDireccion()}</td>
                                <td>${per.getTlf()}</td>
                                <td>${per.getFecha()}</td>
                                <td>${per.getCargo()}</td>
                                <td>${per.getZ_i()}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <br>
            <input type="hidden" name="accion" value="login" >
            <input type="submit" value ="Cerrar sesion">
        </form>
    </body>
</html>
