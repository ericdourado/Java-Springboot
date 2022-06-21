package br.com.produtos.produtos.controllers;

import br.com.produtos.produtos.models.ProdRepository;
import br.com.produtos.produtos.models.ProdutosModel;
import java.util.List;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Aluno
 *
 * classe responsável por controlar ações recebendo requisições e enviando
 * respostas para a visão
 */
@Controller
public class ProdutosController {

    //usa injeção de dependência para criar um repositório de tarefas
    @Autowired
    ProdRepository repo;
//    @Autowired
//    ProdRepository2 repo2;

    /*
recebe requisições do tipo GET nas urls "/" e "/index"
adiciona a lista de tarefas (ordenadas por descrição) na resposta
e envia para a página tarefas.jsp
     */
    @GetMapping({"/", "/index"})
    public String lista(Model model) {

        /*busca no banco as tarefas ordenando por descrição*/
        List produto = repo.findAll(Sort.by("nomeProduto"));
        System.out.println(produto);
        
        /*adiciona a lista na resposta*/
        model.addAttribute("produto", produto);
        /*envia para a página tarefas.jsp*/
        return "home";
    }

    /*
trata uma requisição do tipo GET na url "/cadastro"
enviando para a página cadastro.jsp
     */
    @GetMapping({"/cadastro"})
    public String abreCadastro() {
        return "cadastro";
    }

    /*
trata uma requisição do tipo POST na url "/cadastro"
inserindo no banco de dados a tarefa passada pelo cliente (FORM)
depois retorna a listagem (ao chamar o método lista(model))
     */
    @PostMapping({"/cadastro"})
    public String adiciona(Model model, ProdutosModel prod) {
        repo.save(prod);

        return "redirect:/";
//        return lista(model);
    }

    @GetMapping("/exclui")
    public String exclui(Model model, Long id) {
        repo.deleteById(id);
        return "redirect:/";
//        return lista(model);;
    }

    @GetMapping("/editar")
    public String edita(Model model, Long id) {

        ProdutosModel produto = repo.findById(id).get();
        model.addAttribute("produto", produto);
        return "editar";
    }

    @GetMapping("/ver")
    public String verProduto(Model model, Long id) {
        ProdutosModel produto = repo.findById(id).get();
        model.addAttribute("produto", produto);
        return "produto";
    }

    @GetMapping("/search")
    public String consultarProduto() {
        return "redirect:/";
    }

    @PostMapping("/search")
    public String consultarProduto(Model model, @RequestParam("id") String id) {

        if (id.equals("")) {
            return "redirect:/";
        }
        boolean isNumeric = id.matches("[+-]?\\d*(\\.\\d+)?");
        if (isNumeric) {
            Long i = Long.parseLong(id);
            ProdutosModel produto = repo.findById(i).get();

//            ProdutosModel produto = repo.findById(i).get();;
            model.addAttribute("produto", produto);
            return "home_1";
        }
        teste(id);
        return "redirect:/";
    }

    public void teste(String nome){
        List produto = repo.findAll(Sort.by("nomeProduto"));
        for(int i = 0; i < produto.size(); i++) {
            System.out.println(produto);
                
            
        }
    }

}
