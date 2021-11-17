package dao;

import java.util.List;
import java.util.function.Consumer;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import model.Ingrediente;

public class IngredienteDao implements Dao<Ingrediente> {
	
	private EntityManager em;
	
	public IngredienteDao() {
		em = JPAUtil.getEntityManagerFactory().createEntityManager();
	}
	
	private void executeInsideTransaction(Consumer<EntityManager> action) {
		EntityTransaction tx = em.getTransaction();
		try {
			tx.begin();
			action.accept(em);
			tx.commit();
		} catch (RuntimeException e) {
			tx.rollback();
			throw e;
		}
	}
	
	@Override
	public Ingrediente get(int id) {
		return em.find(Ingrediente.class, id);
	}

	@Override
	public List<Ingrediente> getAll() {
		return em.createQuery("From Ingrediente", Ingrediente.class).getResultList();
	}

	@Override
	public void save(Ingrediente objeto) {
		executeInsideTransaction(em->em.persist(objeto));
	}

	@Override
	public void update(Ingrediente objeto) {
		executeInsideTransaction(em->em.merge(objeto));
	}

	@Override
	public void delete(Ingrediente objeto) {
		executeInsideTransaction(em->em.remove(objeto));
	}
}
