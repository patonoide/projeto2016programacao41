<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
if(request.getParameter("idpergunta") == null)
    {
        response.sendRedirect("list.jsp");
        return;
    }
    
    Integer id = Integer.parseInt(request.getParameter("idpergunta"));
    PerguntaDAO dao = new PerguntaDAO();
    Pergunta obj = dao.buscarPorChavePrimaria(id);
    String msg = "";
    if(obj!=null)
    {
        dao.excluir(obj);
        msg = "Registro exclu�do com sucesso";
    }
    else
    {
       msg = "Erro ao excluir o registro"; 
    }
    
    
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Categoria - Excluir</h4>
            <p>Registro exclu�do com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

