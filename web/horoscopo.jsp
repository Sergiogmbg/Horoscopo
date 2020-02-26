<%-- 
    Document   : Horoscopo
    Created on : 26-feb-2020, 9:18:03
    Author     : sergio
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Horóscopo</h1>
        <form action="Horoscopo" method="post">
            <label for="nombre">Nombre:</label><input name="nombre" id="nombre" type="text">
            
            <% ArrayList<String> meses = (ArrayList<String>) request.getAttribute("meses"); %>
            <% ArrayList<String> dias = (ArrayList<String>) request.getAttribute("dias"); %>
            
            <label for="mes">Mes:</label>
            <select name="mes" id="mes">
                <% for (int i = 0; i < meses.size(); i++) { %>
                <option value="<%= meses.get(i) %>"><%= meses.get(i) %></option>
                <% } %>
            </select>
            <label for="dia">Día:</label><select name="dia" id="dia">
                <% for (int i = 0; i < dias.size(); i++) { %>
                <option value="<%= dias.get(i) %>"><%= dias.get(i) %></option>
                <% } %>
            </select>
            
            <input type="submit" value="Enviar">
        </form>
        <% String signo = (String) request.getAttribute("signo"); 
            if (signo != null) { %>
            
            <h1>Eres del signo: <%= signo %></h1>
            
        <% } %>
    </body>
</html>
