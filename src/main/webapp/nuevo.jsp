<%-- 
    Document   : nuevo
    Created on : 4 abr. de 2023, 12:38:13
    Author     : Josué
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo</title>
    </head>
    <body>
        <h1>Nueva Tarea</h1>
        <form action="ProcesaServlet" method="post">
            <label>Tarea</label><br>
            <textarea name="tarea" rows="4" cols="20"></textarea><br>
            <br>
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
