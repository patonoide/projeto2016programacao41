/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.Jogador;

/**
 *
 * @author paton
 */
public class JogadorDAO {
    EntityManager em;
    
    public JogadorDAO() throws Exception {
        
        EntityManagerFactory emf;
        
        emf = Conexao.getConexao();
        
        em = emf.createEntityManager();
        
    }
    
    public void incluir(Jogador obj) throws Exception {
        
        try {
            
            em.getTransaction().begin();
            
            em.persist(obj);
            
            em.getTransaction().commit();
            
        } catch (RuntimeException e) {
            
            em.getTransaction().rollback();
            
            throw e;
            
        } 
        
    }
    
    public List<Jogador> listar() throws Exception {
        
        return em.createNamedQuery("Jogador.findAll").getResultList();
        
    }
    public Jogador realizarLogin(String login, String senha)
    {
        TypedQuery<Jogador> query= em.createNamedQuery("Jogador.realizarLogin",Jogador.class);
        query.setParameter("login",login);
        query.setParameter("senha", senha);
        Jogador jogador;
        try{
            jogador = query.getSingleResult();
        }catch(Exception e){
            jogador=null;
        }
        return jogador;
    }
     public List<Jogador> listar(String nome) throws Exception {
        //PassO o parâmetro pra query
         TypedQuery<Jogador> query = 
                 em.createNamedQuery("Cliente.findByName", Jogador.class);
        
         
         //Seto o parâmetro
         query.setParameter("nome", '%' + nome + '%');
         //Retorno minha lista
         return query.getResultList();
    }
    public void alterar(Jogador obj) throws Exception {
        
        try {
            
            em.getTransaction().begin();
            
            em.merge(obj);
            
            em.getTransaction().commit();
            
        } catch (RuntimeException e) {
            
            em.getTransaction().rollback();
            
            throw e;
            
        } 
        
    }
    
    public void excluir(Jogador obj) throws Exception {
        
        try {
            
            em.getTransaction().begin();
            
            em.remove(obj);
            
            em.getTransaction().commit();
            
        } catch (RuntimeException e) {
            
            em.getTransaction().rollback();
            
        } 
        
    }
     public Jogador buscarPorChavePrimaria(String login){
        return em.find(Jogador.class, login);
    
}
    public void fechaEmf() {
        
        Conexao.closeConexao();
        em.close();;
    }
}
