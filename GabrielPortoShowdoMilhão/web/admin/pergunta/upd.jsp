<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Pergunta"%>
<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
 
  
    String id = request.getParameter("idpergunta");
    PerguntaDAO dao = new PerguntaDAO();
    Pergunta per = dao.buscarPorChavePrimaria(Integer.parseInt(id));
 
    
    
    
    

    CategoriaDAO cDAO = new CategoriaDAO();
    List<Categoria> cLista = cDAO.listar();
//listagem de professores
    

%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Categoria - Atualizar</h4>
            <form action="upd-ok.jsp" >
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                -->
                <input type="hidden" name="txtId" value="<%=id%>" />
               
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtEnunciado"  value="<%=per.getEnunciado()%>"/>
                        <label class="mdl-textfield__label" for="txtEnunciado">Enunciado</label>
                    </div>
                  
                <div class="mdl-cell--12-col"> 
                     <div class="mdl-select mdl-js-select mdl-select--floating-label"> 
                         <select class="mdl-select__input" id="professsion" name="selCategoria"  > 
                <%           
                    String selected="";
                    for (Categoria c : cLista) {
                        if (c.getId() == per.getCategoria().getId()){
                            selected="selected";
                        }
                %>
                              
                             <option value="<%=c.getId()%>"<%=selected%>><%=c%></option> 
                             <%
                    selected="";
                    } 
                             %>
                         </select> 
                         <label class="mdl-select__label" for="selCategoria">Categoria</label> 
                     </div> 
                 </div> 

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtRc" value="<%=per.getCerta()%>"/>
                        <label class="mdl-textfield__label" for="txtRc">Resposta Certa</label>
                    </div>
                </div><div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtNivel" value="<%=per.getNivel()%>"/>
                        <label class="mdl-textfield__label" for="txtNivel">Nivel</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtA" value="<%=per.getA()%>"/>
                        <label class="mdl-textfield__label" for="txtA">Resposta A</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtB" value="<%=per.getB()%>"/>
                        <label class="mdl-textfield__label" for="txtB">Resposta B</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtC" value="<%=per.getC()%>"/>
                        <label class="mdl-textfield__label" for="txtC">Resposta C</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtD" value="<%=per.getD()%>"/>
                        <label class="mdl-textfield__label" for="txtD">Resposta D</label>
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


