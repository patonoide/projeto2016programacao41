<%-- 
    Document   : fim
    Created on : 21/03/2016, 15:37:29
    Author     : marcelosiedler
--%>

<%@page import="java.util.Date"%>
<%@page import="modelo.Jogador"%>
<%@page import="modelo.Jogo"%>
<%@page import="modelo.Ranking"%>
<%@page import="java.util.List"%>
<%@page import="dao.RankingDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><%
    
    Jogo jogo = (Jogo) session.getAttribute("jogo");
    Ranking r = new Ranking();
    Jogador jogador = (Jogador) session.getAttribute("jogador");
    r.setData(new Date());
    r.setJogador(jogador);
    r.setPontos(jogo.getPontuacao());
    
    
    session.setAttribute("jogo", null);
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <h1>ACABOU!!!!!</h1>
        <a href="jogo.jsp">Jogar novamente</a>
        <hr />
        <h4>TOP 10</h4>
         <%
            RankingDAO dao = new RankingDAO();
             
            List<Ranking> lista = dao.listarTop();
            
            for (Ranking rk: lista) {
            %>
            <tr>
                <th> 
                <th><%=rk.getJogador()%></th>
                <th><%=rk.getPontos()%></th>
            </tr>
            
            <%
        
            }
            
            %>
        
        
    </body>
</html>
