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
import modelo.Ranking;

/**
 *
 * @author paton
 */
public class RankingDAO {
    EntityManager em;
    
    public RankingDAO() throws Exception {
        
        EntityManagerFactory emf;
        
        emf = Conexao.getConexao();
        
        em = emf.createEntityManager();
        
    }
    
    public void incluir(Ranking obj) throws Exception {
        
        try {
            
            em.getTransaction().begin();
            
            em.persist(obj);
            
            em.getTransaction().commit();
            
        } catch (RuntimeException e) {
            
            em.getTransaction().rollback();
            
            throw e;
            
        } finally {
            
            em.close();
            
        }
        
    }
    
    public List<Ranking> listar() throws Exception {
        
        return em.createNamedQuery("Ranking.findAll").getResultList();
        
    }
     public List<Ranking> listar(String nome) throws Exception {
        //PassO o parâmetro pra query
         TypedQuery<Ranking> query = 
                 em.createNamedQuery("Cliente.findByName", Ranking.class);
        
         
         //Seto o parâmetro
         query.setParameter("nome", '%' + nome + '%');
         //Retorno minha lista
         return query.getResultList();
    }
    public void alterar(Ranking obj) throws Exception {
        
        try {
            
            em.getTransaction().begin();
            
            em.merge(obj);
            
            em.getTransaction().commit();
            
        } catch (RuntimeException e) {
            
            em.getTransaction().rollback();
            
            throw e;
            
        } finally {
            
            em.close();
            
        }
        
    }
    
    public void excluir(Ranking obj) throws Exception {
        
        try {
            
            em.getTransaction().begin();
            
            em.remove(obj);
            
            em.getTransaction().commit();
            
        } catch (RuntimeException e) {
            
            em.getTransaction().rollback();
            
        } finally {
            
            em.close();
            
        }
        
    }
     public Ranking buscarPorChavePrimaria(Integer id){
        return em.find(Ranking.class, id);
    
}
    
    public void fechaEmf() {
        
        Conexao.closeConexao();
        
    }
}
