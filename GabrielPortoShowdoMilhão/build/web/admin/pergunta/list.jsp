<%@page import="modelo.Pergunta"%>
<%@page import="java.util.List"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="../cabecalho.jsp"%>
<!-- gambiarra pra alinhar o bot�o a esquerda-->
<style>
    <%
    PerguntaDAO dao = new PerguntaDAO();
    
    
    List <Pergunta> perguntas;

    if(request.getParameter("txtFiltro")!=null && request.getParameter("txtFiltro")!="")
    {
        String txtFiltro = request.getParameter("txtFiltro");
        perguntas = dao.listar(txtFiltro);
    }
    else
    {
        perguntas = dao.listar();
    }
    %>
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

                        <th>ID</th>
                        <th>Enunciado</th>
                        <th>Categoria</th>
                        <th>Resposta Certa</th>
                        <th>Nivel</th>
                        <th>Resposta A</th>
                        <th>Resposta B</th>
                        <th>Resposta C</th>
                        <th>Resposta D</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                         <%
                    for (Pergunta pergunta:perguntas) {
                %>
                        <th><% pergunta.getId(); %></th>
                        <th><%pergunta.getEnunciado()</th>
                        <td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="upd.jsp">update</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            <!-- 
                                Excluir 
                            -->
                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="del-ok.jsp">delete</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttdel">
                                Excluir
                            </div>
                            
                        </td>
                    <%}%>
                    </tr>
                   
                </tbody>
            </table>   
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

