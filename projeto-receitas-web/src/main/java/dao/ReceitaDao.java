package dao;

import java.util.List;
import java.util.function.Consumer;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import model.Receita;

public class ReceitaDao implements Dao<Receita> {
	
private EntityManager em;
	
	public ReceitaDao() {
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
	public Receita get(int id) {
		return em.find(Receita.class, id);
	}

	@Override
	public List<Receita> getAll() {
		return em.createQuery("From Receita", Receita.class).getResultList();
	}

	@Override
	public void save(Receita objeto) {
		executeInsideTransaction(em->em.persist(objeto));
	}

	@Override
	public void update(Receita objeto) {
		executeInsideTransaction(em->em.merge(objeto));
	}

	@Override
	public void delete(Receita objeto) {
		executeInsideTransaction(em->em.remove(objeto));
	}
}
