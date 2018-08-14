<%-- 
    Document   : busqueda
    Created on : 13-ago-2018, 23:36:41
    Author     : jbalceda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Busqueda</title>
    </head>
    <body>
        <h1>Ingrese nombre del Producto</h1>
        <form name="productos" action="resultado.jsp" method="GET">
            <table>
                <tbody>
                    <tr>
                        <td>Nombre: </td>
                        <td><input type="text" name="txtNombre"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Buscar"></td>
                        <td><input type="reset" value="Limpiar"></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
