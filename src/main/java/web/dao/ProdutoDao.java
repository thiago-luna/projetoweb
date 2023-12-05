package web.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import web.modelo.Produto;

@Repository
public class ProdutoDao {

	@PersistenceContext
	private EntityManager manager;

	public void adiciona(Produto produto) {
		manager.persist(produto);
	}

	public void altera(Produto produto) {
		manager.merge(produto);
	}

	public List<Produto> lista() {
		return manager.createQuery("select c from Produto c order by c.id desc", Produto.class).getResultList();
	}

	public List<Produto> buscaPorNome(String nome) {
		return manager.createQuery("select c from Produto c where c.nome = :nome", Produto.class).setParameter("nome", nome)
				.getResultList();
	}

	public Produto buscaPorId(Long id) {
		return manager.find(Produto.class, id);
	}

	public void remove(Long id) {
		manager.createQuery("delete from Produto c where c.id = :id").setParameter("id", id).executeUpdate();
	}
}
