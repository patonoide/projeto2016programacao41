/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import dao.PerguntaDAO;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author paton
 */
public class Jogo {
    private List<Pergunta> perguntas;
    private Integer pontuacao;
    private Integer pulos;
    
    public Jogo()
    {
        this.pulos=3;
        this.pontuacao = 0;
    }

    public List<Pergunta> getPerguntas() {
        return perguntas;
    }

    public void setPerguntas(List<Pergunta> perguntas) {
        this.perguntas = perguntas;
    }

    public Integer getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(Integer pontuacao) {
        this.pontuacao = pontuacao;
    }

    public Integer getPulos() {
        return pulos;
    }
    public Integer Acerto(){
        this.pontuacao=pontuacao*2;
        return pontuacao;
    }
    public Integer Erro(){
        this.pontuacao=pontuacao/3;
        return pontuacao;
    }
    public Integer Parou(){
        return this.pontuacao;
    }
    public void setPulos(Integer pulos) {
        this.pulos = pulos;
    }
    public void iniciar(){
        try{
            PerguntaDAO dao = new PerguntaDAO();
            this.setPerguntas(dao.listar());
            
        }catch (Exception ex){
            Logger.getLogger(Jogo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public boolean Pular(){
        if(this.pulos>0)
        {
            this.pulos=this.pulos-1;
            this.getPerguntas().remove(0);
            return true;
        }else return false;
        
    }
    public boolean Confirmar(String opcaomarcada)
    {
        if(opcaomarcada.equals(this.getPerguntas().get(0).getCerta()))
        {
            this.getPerguntas().remove(0);
            this.setPontuacao(this.Acerto());
            return true;
        }
        else{
            this.setPontuacao(this.Erro());
            return false;
            
        }
    
    }
   
}
