package web.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import web.modelo.Pessoa;

@Repository
public class PessoaDao {

	@PersistenceContext
	private EntityManager manager;

	public void adiciona(Pessoa pessoa) {
		manager.persist(pessoa);
	}

	public void altera(Pessoa pessoa) {
		manager.merge(pessoa);
	}

	public List<Pessoa> lista() {
		return manager.createQuery("select c from Pessoa c order by c.id desc", Pessoa.class).getResultList();
	}

	public List<Pessoa> buscaPorNome(String matricula) {
		return manager.createQuery("select c from Pessoa c where c.matricula = :matricula", Pessoa.class).setParameter("matricula", matricula)
				.getResultList();
	}

	public Pessoa buscaPorId(Long id) {
		return manager.find(Pessoa.class, id);
	}

	public void remove(Long id) {
		manager.createQuery("delete from Pessoa c where c.id = :id").setParameter("id", id).executeUpdate();
	}

}
