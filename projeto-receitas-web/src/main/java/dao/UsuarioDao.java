package dao;

import java.util.List;
import java.util.function.Consumer;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import model.Usuario;

public class UsuarioDao implements Dao<Usuario> {

	private EntityManager em;
	
	public UsuarioDao() {
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
	public Usuario get(int id) {
		return em.find(Usuario.class, id);
	}

	@Override
	public List<Usuario> getAll() {
		return em.createQuery("From Usuario", Usuario.class).getResultList();
	}

	@Override
	public void save(Usuario objeto) {
		executeInsideTransaction(em->em.persist(objeto));
	}

	@Override
	public void update(Usuario objeto) {
		executeInsideTransaction(em->em.merge(objeto));
	}

	@Override
	public void delete(Usuario objeto) {
		executeInsideTransaction(em->em.remove(objeto));
	}
	
	public Usuario getEmailSenha(String email, String senha) {
		TypedQuery<Usuario> query = em.createQuery("SELECT u FROM Usuario u WHERE u.email = '" + email + "' AND u.senha = '" + senha + "'" , Usuario.class);
		if(query.getSingleResult() != null)
			return query.getSingleResult();
		else
			return null;
	}
	
}
