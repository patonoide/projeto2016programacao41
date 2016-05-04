

<%@page import="modelo.Jogador"%>
<%--
    Document   : pergunta
    Created on : 21/03/2016, 15:37:13
    Author     : marcelosiedler
--%>
<%@page import="java.util.List"%>
<%@page import="dao.PerguntaDAO"%>
<%@page import="modelo.Pergunta"%>
<%@page import="modelo.Jogo"  %>
<%
    Jogador jogador = (Jogador)session.getAttribute("jogador");
   
    PerguntaDAO perg = new PerguntaDAO();
    List<Pergunta> lista= perg.listar();
   Jogo jogo;
   if(session.getAttribute("jogo")!=null){
       jogo = (Jogo)session.getAttribute("jogo");
       
   }else{
       jogo = new Jogo();
   }
    
     
      jogo.setPerguntas(lista);
    if(request.getParameter("btnConfirmar")!=null){
        String opcaomarcada = request.getParameter("rdoConfirmar");
        jogo.Confirmar(opcaomarcada);
    }
    else{
        if(request.getParameter("btnPular")!=null){
            jogo.Pular();
        }else{
            if(request.getParameter("btnParar")!=null){
                response.sendRedirect("fim.jsp");
            }else{
                jogo.iniciar();
            }
        }
    }
    
    Pergunta pergunta = jogo.getPerguntas().get(0);
    session.setAttribute("jogo",jogo);
    
    
         
    
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <div class="pergunta">
              
            <h4 class="enunciado"><%=pergunta.getEnunciado()%></h4>
            <div class="opcoes">
                <form action="fim.jsp" method="post">
                    <input type="radio" value="A" name="rdoPergunta" />
                    <%=pergunta.getA()%><br/>
                    <input type="radio" value="B" name="rdoPergunta" />
                   <%=pergunta.getB()%><br/>
                    <input type="radio" value="C" name="rdoPergunta" />
                    <%=pergunta.getC()%><br/>
                    <input type="radio" value="D" name="rdoPergunta" />
                   <%=pergunta.getD()%><br/>
                    <hr/>
                    <input type="submit" value="confirmar" name="btnConfirmar"/>
                     <input type="submit" value="pulou" name="btnPular"/><%=jogo.getPulos()%> Pulos 
                      <input type="submit" value="parar" name="btnParar"/>
                </form>
                
            </div>
        </div>
        <div class="painelUsuario">
           <%=jogador.getLogin()%><br />
           
            sua pontuação agora: <%=jogo.getPontuacao()%><br /> 
            <%=jogo.Erro()%> errar<br/>
            <%=jogo.Parou()%> parar<br/>
            <%=jogo.Acerto()%>acertar<br/>
            
            
        </div>
        
    </body>
</html>
