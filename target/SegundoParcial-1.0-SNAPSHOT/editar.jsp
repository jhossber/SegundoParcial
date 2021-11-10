<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.emergentes.modelo.Seminario" %>
<%
    Seminario sem = (Seminario) request.getAttribute("sem");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Segundo Parcial</title>
    </head>
    <body>
        <h1>
            <c:if test="${sem.id == 0}">
            Nuevo Seminario
            </c:if>
            <c:if test="${sem.id != 0}">
            Editar Seminario
            </c:if>
        </h1>
        <form action="MainController" method="post">
            <input name="id" type="hidden" value="${sem.id}">
            <table>
                <tr>
                    <td>Titulo</td>
                    <td><input type="text" name="titulo" value="${sem.titulo}"></td>
                </tr>
                <tr>
                    <td>Expositor</td>
                    <td><input type="text" name="expositor" value="${sem.expositor}"></td>
                </tr>
                <tr>
                    <td>Fecha</td>
                    <td><input type="date" name="fecha" value="${sem.fecha}"></td>
                </tr>
                <tr>
                    <td>Hora</td>
                    <td><input type="time" name="hora" value="${sem.hora}"></td>
                </tr>
                <tr>
                    <td>Cupo</td>
                    <td><input type="number" name="cupo" value="${sem.cupo}"></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
