<%@page import="java.util.ArrayList"%>
<%    
    if(session.getAttribute("lista")==null){
        ArrayList<String> lis=new ArrayList<String>();
        session.setAttribute("lista",lis);
    }
    ArrayList<String> lista = (ArrayList<String>) session.getAttribute("lista");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practica 3 Session</title>
    </head>
    <body>
        <h1 align="center">Gestor de tareas</h1>
        <p align="center">Nombre: Josue Vidal Aruquipa Quispe</p>
        <a href="nuevo.jsp">Nuevo</a>
        <table border="1" cellspacing="0">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Completado</th>
                <th colspan="2"></th>
            </tr>
            <%
            int contador =1;
            if(lista != null){
                for(String items:lista){      
            %>
            <tr>
                <td><%= contador++%></td>
                <td><%= items%></td>
                <td><form>
                        <input type="checkbox">
                </form></td>
                <td><a href="editar.jsp">Editar</a></td>
                <td><a href="ProcesaServlet">Eliminar</a></td>
            </tr
            <%
                }    
            }
            %>
        </table>
    </body>
</html>
