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
import modelo.Categoria;

/**
 *
 * @author paton
 */
public class CategoriaDAO {
    EntityManager em;
    
    public CategoriaDAO() throws Exception {
        
        EntityManagerFactory emf;
        
        emf = Conexao.getConexao();
        
        em = emf.createEntityManager();
        
    }
    
    public void incluir(Categoria obj) throws Exception {
        
        try {
            
            em.getTransaction().begin();
            
            em.persist(obj);
            
            em.getTransaction().commit();
            
        } catch (RuntimeException e) {
            
            em.getTransaction().rollback();
            
            throw e;
            
        } 
        
    }
    
     public List<Categoria> listar(String nome) throws Exception {
        //PassO o parâmetro pra query
         TypedQuery<Categoria> query = 
                 em.createNamedQuery("Cliente.findByName", Categoria.class);
        
         
         //Seto o parâmetro
         query.setParameter("nome", '%' + nome + '%');
         //Retorno minha lista
         return query.getResultList();
    }
    
    public List<Categoria> listar() throws Exception {
        
        return em.createNamedQuery("Categoria.findAll").getResultList();
        
    }
    
    public void alterar(Categoria obj) throws Exception {
        
        try {
            
            em.getTransaction().begin();
            
            em.merge(obj);
            
            em.getTransaction().commit();
            
        } catch (RuntimeException e) {
            
            em.getTransaction().rollback();
            
            throw e;
            
        } 
        
    }
    
    public void excluir(Categoria obj) throws Exception {
        
        try {
            
            em.getTransaction().begin();
            
            em.remove(obj);
            
            em.getTransaction().commit();
            
        } catch (RuntimeException e) {
            
            em.getTransaction().rollback();
            
        }
        
    }
     public Categoria buscarPorChavePrimaria(Integer id){
        return em.find(Categoria.class, id);
    
}
    
    public void fechaEmf() {
        
        Conexao.closeConexao();
        em.close();
    }
}
