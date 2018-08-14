<%-- 
    Document   : reporte
    Created on : 13-ago-2018, 22:31:37
    Author     : jbalceda
--%>

<%@page import="mantenimiento.Mantenimiento"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte</title>
    </head>
    <body>
        <h1>Reporte de Productos</h1>
        <%

            int codigo = Integer.parseInt(request.getParameter("txtCodigo"));
            String nombre = request.getParameter("txtNombre");
            int cantidad = Integer.parseInt(request.getParameter("txtCantidad"));
            double precio = Double.parseDouble(request.getParameter("txtPrecio"));

            Mantenimiento m = new Mantenimiento();
            if (m.insertar(codigo, nombre, cantidad, precio)) {
        %>
        <h3>Registrado correctamente</h3>
        <% } else {%>
        <h3>Error al registrar el producto.</h3>
        <%}%>
        <a href="registro.jsp">Volver al registro</a>
    </body>
</html>
