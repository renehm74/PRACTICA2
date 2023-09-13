<%@page import="com.emergentes.listadetareas.Tareas"%>
<%
    Tareas reg = (Tareas) request.getAttribute("miobjtar");
   
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <h1>Registro de tarea</h1>
    <form action="MainServlet" method="post">
        <table>
            <tr>
                <td>ID</td>
                <td><input type="text" name="id" value="<%= reg.getId()%>" size="2" readonly></td>
            </tr>
            <tr>
                <td>Tarea</td>
                <td><input type="text" name="tarea" value="<%= reg.getTarea() %>"></td>
            </tr> 
            <tr>
                <td>Completado</td>
                <td><input type="checkbox" name="completado" <%= reg.isCompletado() ? "checked" : "" %>></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Enviar"></td>
            </tr>
        </table>
    </form>
</body>
</html>
