

<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    //receber a chave primária
    //buscar o registro correspondente a C.P.
    //excluir o registro
    if(request.getParameter("login") == null)
    {
        response.sendRedirect("list.jsp");
        return;
    }
    
    String login = request.getParameter("login");
    JogadorDAO dao = new JogadorDAO();
    Jogador obj = dao.buscarPorChavePrimaria(login);
    String msg = "";
    if(obj!=null)
    {
        dao.excluir(obj);
        msg = "Registro excluído com sucesso";
    }
    else
    {
       msg = "Erro ao excluir o registro"; 
    }
    
    
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Jogador - Excluir</h4>
            <p> <%=msg %>.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

