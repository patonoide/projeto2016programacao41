<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
CategoriaDAO cDAO = new CategoriaDAO();
    List<Categoria> cLista = cDAO.listar();
    %>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Pergunta - Cadastrar</h4>
            <form action="add-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                -->
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtEnunciado" />
                        <label class="mdl-textfield__label" for="txtNome">Enunciado</label>
                    </div>
                  
                <div class="mdl-cell--12-col"> 
                     <div class="mdl-select mdl-js-select mdl-select--floating-label"> 
        
                          
                         <select class="mdl-select__input" id="professsion" name="selCategoria">
                            <%                            
                    for (Categoria c : cLista) {
                %>
                             <option value="<%=c.getId()%>"><%=c%></option> 
               <%} %>          
                         </select> 
    
                         <label class="mdl-select__label" for="professsion">Categoria</label> 
                     </div> 
                 </div> 

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtRc" />
                        <label class="mdl-textfield__label" for="txtNome">Resposta Certa</label>
                    </div>
                </div><div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtNivel" />
                        <label class="mdl-textfield__label" for="txtNome">Nivel</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtA" />
                        <label class="mdl-textfield__label" for="txtNome">Resposta A</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtB" />
                        <label class="mdl-textfield__label" for="txtNome">Resposta B</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtC" />
                        <label class="mdl-textfield__label" for="txtNome">Resposta C</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtD" />
                        <label class="mdl-textfield__label" for="txtNome">Resposta D</label>
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


