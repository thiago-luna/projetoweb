package web.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import web.modelo.EntradaProduto;

@Repository
public class EntradaProdutoDao {

	@PersistenceContext
	private EntityManager manager;

	public void adiciona(Long entrada_id, Long produto_id, int qnt) {
		manager.createNativeQuery(
				"insert into EntradaProduto (entrada_id, produto_id, qnt) values (:entrada_id, :produto_id, :qnt)")
				.setParameter("entrada_id", entrada_id).setParameter("produto_id", produto_id).setParameter("qnt", qnt)
				.executeUpdate();
	}

	public List<EntradaProduto> buscaProdutosEntradaPorEntradaId(Long entrada_id) {
		return manager
				.createQuery("select s from EntradaProdutos s where s.entrada.id = :entrada_id", EntradaProduto.class)
				.setParameter("entrada_id", entrada_id).getResultList();
	}

}