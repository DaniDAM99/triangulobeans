<%-- 
    Document   : calculotriangulo
    Created on : 18-ene-2021, 19:36:00
    Author     : Cristian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Área trianuglo</h1>
        <jsp:useBean id="triangulo" class="clases.Triangulo"/>
        <%
        float base = Float.parseFloat(request.getParameter("base"));
        float altura = Float.parseFloat(request.getParameter("altura")) ;
        %>
        
        <jsp:setProperty name="triangulo" property="base" value="<%=base%>"/>
        <jsp:setProperty name="triangulo" property="altura" value="<%=altura%>"/>
        
        <%--<h4>Base: <%= tri.getBase()%></h4>
        <h4>Altura: <%= tri.getAltura()%></h4>--%>
        <h4>Base: <jsp:getProperty name="triangulo" property="base"/></h4>
        <h4>Altura: <jsp:getProperty name="triangulo" property="altura"/></h4>
        <h4>Área: <jsp:getProperty name="triangulo" property="area"/></h4>
        <a href="index.jsp">Volver</a>
    </body>
</html>
