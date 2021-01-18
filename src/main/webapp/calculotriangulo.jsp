<%-- 
    Document   : calculotriangulo
    Created on : 18-ene-2021, 19:36:00
    Author     : Cristian
--%>

<%@page import="clases.Triangulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Área trianuglo</h1>
        <%
        Triangulo tri = new Triangulo();
        float base = Float.parseFloat(request.getParameter("base"));
        float altura = Float.parseFloat(request.getParameter("altura")) ;
        tri.setBase(base);
        tri.setAltura(altura);
        %>
        
        <h4>Base: <%= tri.getBase()%></h4>
        <h4>Altura: <%= tri.getAltura()%></h4>
        <h4>Área: <%= tri.getArea() %></h4>
        <a href="index.jsp">Volver</a>
    </body>
</html>
