<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>
<% //pegara chave primaria
    Integer id =Integer.parseInt(request.getParameter("txtId"));
    //busco o registro pela chave no banco de dados
    CategoriaDAO dao = new CategoriaDAO();
    //Para chamar pela chave usaremos o método criado
    //que retornará todas informacoes do professor 
    Categoria obj =  dao.buscarPorChavePrimaria (id);
    %>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Categoria - Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                -->
                <div class="mdl-cell--12-col"> 
                    <label>Id</label><div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  id="txtId" />
                        <label class="mdl-textfield__label" for="txtId">Id</label>
                    </div>
                </div>
                <label>Nome</label><div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtNome">Nome</label>
                    </div>
                </div>
                        
                <div class="mdl-cell--12-col">
                    
                    <button type="submit" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">save</i></button>
                    <button type="reset" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">clear</i></button>
                    
                    
                </div>
            </form>
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


