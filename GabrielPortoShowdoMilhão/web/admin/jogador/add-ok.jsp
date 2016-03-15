<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Jogador"%>
<%@include file="../cabecalho.jsp"%>
<%
    //buscar as informacoes do formulario
    String nome= request.getParameter("txtNome");
    String login=request.getParameter("txtLogin");
    String senha=request.getParameter("txtSenha");
    String email=request.getParameter("txtEmail");
   
    
    
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

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Jogador - Cadastrar</h4>
            <p>Jogador cadastrado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

