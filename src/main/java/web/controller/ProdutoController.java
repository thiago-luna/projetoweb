package web.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.dao.ProdutoDao;
import web.modelo.Produto;

@Transactional
@Controller
@RequestMapping("/produto")
public class ProdutoController {

	private List<Produto> lista_produtos;

	@Autowired
	ProdutoDao dao;

	@RequestMapping("/novo")
	public String produto() {
		return "produto/novo";
	}

	@RequestMapping(value = "/adiciona", method = RequestMethod.POST)
	public String adiciona(@Valid Produto produto, BindingResult result) {
		if (result.hasErrors() || dao.buscaPorNome(produto.getNome()).size() > 0) {
			return "redirect:novo";
		}

		// Adiciona no banco de dados
		dao.adiciona(produto);
		return "redirect:lista";
	}

	@RequestMapping("/lista")
	public String lista(Model model) {
		this.lista_produtos = dao.lista();
		model.addAttribute("produtos", this.lista_produtos);
		return "produto/lista";
	}

	@RequestMapping("/remove")
	public String remove(Produto produto) {
		dao.remove(produto.getId());
		return "redirect:lista";
	}

	@RequestMapping("/exibe")
	public String exibe(Long id, Model model) {
		model.addAttribute("produto", dao.buscaPorId(id));
		return "produto/exibe";
	}

	@RequestMapping("/edita")
	public String edita(Long id, Model model) {
		model.addAttribute("produto", dao.buscaPorId(id));
		return "produto/edita";
	}

	@RequestMapping(value = "/altera", method = RequestMethod.POST)
	public String altera(@Valid Produto produto, BindingResult result) {
		this.lista_produtos = dao.buscaPorNome(produto.getNome());
		if (result.hasErrors() || this.lista_produtos.size() > 0) {
			return "redirect:edita?id=" + produto.getId();
		}

		dao.altera(produto);
		return "redirect:lista";
	}

}
