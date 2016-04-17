<%-- 
    Document   : perguntas
    Created on : Mar 21, 2016, 3:29:38 PM
    Author     : paton
--%>

<%@include file="cabecalho-index.jsp"%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <center>
            <h4>Responda as perguntas</h4>
            </br>
            
            
            
        </div>
        <ul class="demo-list-item mdl-list">
  <li class="mdl-list__item">
    <span class="mdl-list__item-primary-content">
      pergunta 1
    </span>
  </li>
</ul>
        <div class="mdl-cell--12-col"> 
                     <div class="mdl-select mdl-js-select mdl-select--floating-label"> 
                        <select class="mdl-select__input" id="professsion" name="selCategoria"  > 
                              
                             <option value="1">resposta1</option> 
                            <option value="2">resposta2</option>
                            <option value="3">resposta3</option>
                            <option value="4">resposta4</option>
                         </select> 
                         <label class="mdl-select__label" for="selCategoria"> resposta</label> 
                     </div> 
                 </div> 
 <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored">
 Enviar Resposta

</button>
</div>
        </div>
    </div>

<script>
    $('.bxslider').bxSlider({
  mode: 'fade',
  captions: true
});
</script>

<%@include file="rodape-index.jsp"%>
