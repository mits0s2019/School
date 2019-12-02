package dao;

import java.util.*;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import model.Trainer;
import org.springframework.stereotype.Repository;

@Repository
public class TrainerDao {

    @PersistenceContext
    private EntityManager em;

    
    
    @Transactional
    public void insert(Trainer trainer) {
        em.persist(trainer);

    }

    @Transactional
    public List getAllTrainers() {

        List<Trainer> trainers = em.createNamedQuery("Trainer.findAll").getResultList();
      
        return trainers;
    }

    @Transactional
    public void delete(int id) {
        
        em.remove(em.find(Trainer.class, id));

    }

    @Transactional
    public void update(Trainer trainer) {
        
        em.merge(trainer);
    }

    @Transactional
    public Trainer find(int id) {

        Trainer tr = em.find(Trainer.class, id);

        return tr;
    }

}
