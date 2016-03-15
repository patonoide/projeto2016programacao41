<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

    
    String nome = request.getParameter("txtNome");
    Integer id= Integer.parseInt(request.getParameter("txtId"));
    //buscar o registro pela chav primaria
    //alterar os demais valores enviados pelo usuario
    //mandar alterar
    CategoriaDAO dao = new CategoriaDAO();

    Categoria obj = dao.buscarPorChavePrimaria(id);

    
    //atualizar demais informações enviadas
    obj.setNome(nome);
   
    
    dao.alterar(obj);

%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar</h4>
            <p>Registro atualizado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">Voltar</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

