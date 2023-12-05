package web.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import web.modelo.Entrada;

@Repository
public class EntradaDao {

	@PersistenceContext
	private EntityManager manager;

	public Long adiciona(Entrada solicitacao) {
		manager.persist(solicitacao);
		return solicitacao.getId();
	}

	public void altera(Entrada solicitacao) {
		manager.merge(solicitacao);
	}

	public List<Entrada> lista() {
		return manager.createQuery("select c from Entrada c order by c.id desc", Entrada.class)
				.getResultList();
	}

	public Entrada buscaPorId(Long id) {
		return manager.find(Entrada.class, id);
	}

	public void remove(Long id) {
		manager.createQuery("delete from Entrada c where c.id = :id").setParameter("id", id).executeUpdate();
	}

}
