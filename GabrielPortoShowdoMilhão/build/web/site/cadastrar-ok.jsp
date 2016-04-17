<%-- 
    Document   : cadastrat-ok
    Created on : Apr 11, 2016, 4:19:44 PM
    Author     : paton
--%>
<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Jogador"%>
<%
    //buscar as informacoes do formulario
    
    String login=request.getParameter("txtCadastrarLogin");
    String senha=request.getParameter("txtCadastrarSenha");
    String email=request.getParameter("txtCadastrarEmail");
   
    
    
    //criar meu objeto modelo
    Jogador jogador=new Jogador();
    
    //Adiciono os valores enviados 
//    jogador.setNome(nome);
    jogador.setLogin(login);
    jogador.setSenha(senha);
    jogador.setEmail(email);
    // instanciar minha classe de acesso  a dados
    JogadorDAO dao= new JogadorDAO();
    
    //manda inserir
    dao.incluir (jogador);
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastro feito com sucesso</h1>
        <a href="index.jsp">Voltar</a>
    </body>
</html>
