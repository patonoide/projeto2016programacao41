<%-- 
    Document   : debug
    Created on : Mar 28, 2016, 3:15:45 PM
    Author     : paton
--%>
<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Jogador"%>
<%
    Jogador jogador = new Jogador();
    
    jogador.setEmail("ss@aa.com");
    jogador.setFoto("vai.jpg");
    jogador.setLogin("Cristal");
    jogador.setSenha("1234");
    JogadorDAO dao= new JogadorDAO();
    dao.incluir(jogador);
    String msg= "testando";
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
