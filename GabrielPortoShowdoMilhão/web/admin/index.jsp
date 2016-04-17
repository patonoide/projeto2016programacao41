
<%@include file="cabecalho-index.jsp"%>
<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%
    
    
    if(request.getParameter("sair")!=null)
    {
        session.setAttribute("usuarioAdmin",null);
    }
    
    if(request.getParameter("txtLogin")!=null && request.getParameter("txtSenha")!=null)
    {
     
    
    String login = request.getParameter("txtLogin").toString();
    String senha = request.getParameter("txtSenha").toString();
    if(login.equals("Admin")&& senha.equals("Admin"))
    {
        session.setAttribute("usuarioAdmin", login);
    }
    else 
    {
        response.sendRedirect("index.jsp");
    }
     String mensagem = "";
 
        
        
     
        

}

%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <center>
            <h4>Gerenciamento do Sistema</h4>
            </br>
            
            
            
            <center>
<form action="index.jsp" method="post">
  <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    <input class="mdl-textfield__input" type="text" name="txtLogin" id="txtLogin">
    <label class="mdl-textfield__label" for="txtLogin">Login</label>
  </div>
    </br>
  <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    <input class="mdl-textfield__input" type="password" name="txtSenha" id="txtSenha">
    <label class="mdl-textfield__label" for="txtSenha">Senha</label>
  </div>


            
            </br>
            <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored">
 Entrar

</button>   

    
            </center>
             </form>
        </div>

    </div>
   
</section>


<script>
    $('.bxslider').bxSlider({
  mode: 'fade',
  captions: true
});
</script>

<%@include file="rodape-index.jsp"%>
