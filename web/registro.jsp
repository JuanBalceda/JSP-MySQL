<%-- 
    Document   : registro
    Created on : 13-ago-2018, 21:52:08
    Author     : jbalceda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <h1>Formulario</h1>
        <form name="productos" action="reporte.jsp" method="GET">
            <table>
                <thead>
                    <tr>
                        <th>Campo</th>
                        <th>Valor</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Código: </td>
                        <td><input type="text" name="txtCodigo"></td>
                    </tr>
                    <tr>
                        <td>Nombre: </td>
                        <td><input type="text" name="txtNombre"></td>
                    </tr>
                    <tr>
                        <td>Cantidad: </td>
                        <td><input type="text" name="txtCantidad"></td>
                    </tr>
                    <tr>
                        <td>Precio: </td>
                        <td><input type="text" name="txtPrecio"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="aceptar"></td>
                        <td><input type="reset" value="limpiar"></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
