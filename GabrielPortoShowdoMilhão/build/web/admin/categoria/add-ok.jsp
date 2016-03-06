<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Categoria"%>
<%@include file="../cabecalho.jsp"%>

<%
    //buscar as informacoes do formulario
    String nome= request.getParameter("txtNome");
    Integer id=Integer.parseInt(request.getParameter("txtId"));
   
    
    
    //criar meu objeto modelo
    Categoria categoria=new Categoria();
    
    //Adiciono os valores enviados 
    categoria.setNome(nome);
    categoria.setId(id);
    
    
    // instanciar minha classe de acesso  a dados
    CategoriaDAO dao= new CategoriaDAO();
    
    //manda inserir
    dao.incluir (categoria);
    %>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Categoria - Cadastrar</h4>
            <p>Categoria cadastrada com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

