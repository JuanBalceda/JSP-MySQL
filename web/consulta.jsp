<%-- 
    Document   : consulta
    Created on : 13-ago-2018, 23:13:10
    Author     : jbalceda
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mantenimiento.Mantenimiento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultas</title>
    </head>
    <body>
        <h1>Consulta de Productos</h1>
        <table>
            <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Nombre</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Mantenimiento m = new Mantenimiento();
                    ResultSet datos = m.consulta("SELECT * FROM articulos");
                    while (datos.next()) {

                %>
                <tr>
                    <td><%=datos.getInt(1)%></td>
                    <td><%=datos.getString(2)%></td>
                    <td><%=datos.getDouble(4)%></td>
                    <td><%=datos.getInt(3)%></td>
                </tr>
                <%}%>
            </tbody>
        </table>

    </body>
</html>
