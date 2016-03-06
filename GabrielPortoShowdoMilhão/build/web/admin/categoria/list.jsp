
<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>
<!-- gambiarra pra alinhar o botão a esquerda-->
 <%
    CategoriaDAO dao = new CategoriaDAO();
    
    
    List <Categoria> categorias;

    if(request.getParameter("txtFiltro")!=null && request.getParameter("txtFiltro")!="")
    {
        String txtFiltro = request.getParameter("txtFiltro");
        categorias = dao.listar(txtFiltro);
    }
    else
    {
        categorias = dao.listar();
    }
    %>
<style>
   
    .direita
            {
                text-align: right;
                padding-right: 10%;
                
            }
</style>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Categoria</h4>
            <!-- Colored mini FAB button -->
            <div class="direita">
                <a href="add.jsp">
                    <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                         <i class="material-icons">add</i>
                    </button>  
                </a>
            </div>

            <table class="mdl-data-table mdl-js-data-table">
                <thead>
                    <tr>
 <%
                    for (Categoria categoria:categorias) {
                %>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th><%=categoria.getId()%></th>
                        <th><%=categoria.getNome()%></th>
                        <td><a href="upd.jsp?idcategoria=<%=categoria.getId()%>">Editar</a>
                        <a href="del-ok.jsp?idcliente=<%=categoria.getId()%>">Excluir</a>
                    </td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="upd.jsp?idcategoria=<%categoria.getId();%>">update</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            <!-- 
                                Excluir 
                            -->
                            <div id="ttdel" class="icon material-icons">
                              <i class="material-icons"><a href="del-ok.jsp?idcategoria=<%categoria.getId();%>">delete</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttdel">
                                Excluir
                            </div>
                     
                       
                    </tr>
                    <% } %>
                </tbody>
            </table>   
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

