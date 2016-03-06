<%@page import="modelo.Jogador"%>
<%@page import="java.util.List"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="../cabecalho.jsp"%>
<!-- gambiarra pra alinhar o botão a esquerda-->
<style>
    .direita
            {
                text-align: right;
                padding-right: 10%;
                
            }
    <%
    JogadorDAO dao = new JogadorDAO();
    
    
    List <Jogador> jogadores;

    if(request.getParameter("txtFiltro")!=null && request.getParameter("txtFiltro")!="")
    {
        String txtFiltro = request.getParameter("txtFiltro");
        jogadores = dao.listar(txtFiltro);
    }
    else
    {
        jogadores = dao.listar();
    }
    %>
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

                        <th>Login:</th>
                        <th>E-mail</th>
                        <th>Senha</th>
                        <th>Ações</th>
                    </tr>
                    <%
                    for (Jogador jogador:jogadores) {
                %>
                </thead>
                <tbody>
                    <tr>
                        <th><%=jogador.getLogin()%></th>
                        <th><%=jogador.getEmail()%></th>
                        <th><%=jogador.getSenha()%></th>
                            <!-- 
                                Atualizar 
                            -->
                    
                <td>
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="upd.jsp?login=<%jogador.getLogin();%>">update</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                </td>
                            <!-- 
                                Excluir 
                            -->
                            <td>
                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="del-ok.jsp?login=<%jogador.getLogin();%>">delete</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttdel">
                                Excluir
                            </div>
                            
                        </td>
                
                    </tr>
                   <% }%>
                </tbody>
            </table>   
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

