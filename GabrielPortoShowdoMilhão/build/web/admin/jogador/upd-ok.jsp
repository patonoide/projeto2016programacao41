<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

    String login = request.getParameter("txtLogin");
    String senha = request.getParameter("txtSenha");
    String email = request.getParameter("txtEmail");
    //buscar o registro pela chav primaria
    //alterar os demais valores enviados pelo usuario
    //mandar alterar
    JogadorDAO dao = new JogadorDAO();

    Jogador obj = dao.buscarPorChavePrimaria(login);

    
    //atualizar demais informações enviadas
    obj.setSenha(senha);
    obj.setEmail(email);
    
    dao.alterar(obj);

%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar</h4>
            <p>Registro atualizado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

