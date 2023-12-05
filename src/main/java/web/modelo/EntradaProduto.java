package web.modelo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

@Entity
public class EntradaProduto implements Serializable {

	@Id
	@ManyToOne
	private Entrada solicitacao_entrada;

	@Id
	@ManyToOne
	private Produto produto;

	@NotNull
	private int qnt;

	public Entrada getSolicitacao_entrada() {
		return solicitacao_entrada;
	}

	public void setSolicitacao_entrada(Entrada solicitacao_entrada) {
		this.solicitacao_entrada = solicitacao_entrada;
	}

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}

	public int getQnt() {
		return qnt;
	}

	public void setQnt(int qnt) {
		this.qnt = qnt;
	}

}
