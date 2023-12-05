package web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.dao.EntradaDao;
import web.dao.EntradaProdutoDao;
import web.dao.PessoaDao;
import web.dao.ProdutoDao;
import web.modelo.Produto;
import web.modelo.SolicitacaoItens;

@Transactional
@Controller
@RequestMapping("/entrada")
public class EntradaController {
	
	private SolicitacaoItens itens_qnt;
	private List<Produto> lista_produtos;
	private List<SolicitacaoItens> lista_itens_qnt;

	@Autowired
	EntradaDao dao;

	@Autowired
	PessoaDao dao_pessoa;

	@Autowired
	ProdutoDao dao_produto;

	@Autowired
	EntradaProdutoDao dao_entrada_produto;

	@RequestMapping("/novo")
	public String solicitacao(Model model) {
		model.addAttribute("produtos", dao_produto.lista());
		return "produto/novo";
	}

	@RequestMapping(value = "/adiciona_itens", method = RequestMethod.POST)
	public String adicionaItens(HttpServletRequest request, HttpServletResponse response, Model model)
			throws Exception {

		this.lista_produtos = dao_produto.lista();
		this.lista_itens_qnt = new ArrayList<SolicitacaoItens>();

		for (Produto produto : this.lista_produtos) {
			if (!request.getParameter(produto.getId() + "_qnt").equals("")) {
				this.itens_qnt = new SolicitacaoItens();
				this.itens_qnt.setId_item(produto.getId());
				this.itens_qnt.setNome(produto.getNome());
				this.itens_qnt.setMarca(produto.getMarca());
				this.itens_qnt.setQnt(Integer.parseInt(request.getParameter(produto.getId() + "_qnt")));
				this.lista_itens_qnt.add(this.itens_qnt);
			}
		}

		model.addAttribute("produtos", this.lista_itens_qnt);
		return "entrada/confirmacao";
	}

}
