<%@page import="modelo.Categoria"%>
<%@page import="dao.PerguntaDAO"%>
<%@page import="modelo.Pergunta"%>
<%@include file="../cabecalho.jsp"%>

<%
    //buscar as informacoes do formulario
   
    
    String enunciado= request.getParameter("txtEnunciado");
    Integer categoria= Integer.parseInt(request.getParameter("selCategoria"));//id da categoria
    String rc=request.getParameter("txtRc");
    Integer nivel= Integer.parseInt(request.getParameter("txtNivel"));
    String a=request.getParameter("txtA");
    String b=request.getParameter("txtB");
    String c=request.getParameter("txtC");
    String d=request.getParameter("txtD");
   
    
    
    //criar meu objeto modelo
    Pergunta pergunta=new Pergunta();
    
    //Adiciono os valores enviados 

 
    pergunta.setA(a);
    pergunta.setB(b);
    pergunta.setC(c);
    pergunta.setD(d);
    pergunta.setEnunciado(enunciado);
    pergunta.setNivel(nivel);
    pergunta.setCerta(rc);
    Categoria Ocategoria = new Categoria();
    Ocategoria.setId(categoria);
    pergunta.setCategoria(Ocategoria);
    // instanciar minha classe de acesso  a dados
    PerguntaDAO dao= new PerguntaDAO();
    
    //manda inserir
    dao.incluir (pergunta);
    %>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Pergunta - Cadastrar</h4>
            <p>Pergunta cadastrada com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

