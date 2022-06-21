<%-- 
    Document   : editar
    Created on : 19 de mai de 2022, 20:04:33
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar produto</title>
        <link rel="stylesheet" href="assets/style.css"/>
    </head>
    <body>
        <header>
            <div class="container">
                <div><a href="/" class="logo"> <span class="span1">Projeto</span><span class="span2"> Avaliativo </span> <span class="span3"> do</span> <span class="span4">Rômulo</span> </a> </div>
                <div>
                    <ul>
                        <li><a href="/">Inicio</a> </li>
                        <li><a href="/cadastro">Cadastrar</a> </li>
                        <li>
                            <form action="/search" method="post" class="form_search">
                                <input type="text" name="id" placeholder="Pesquisar..."/>
                                <input type="submit" value="Pesquisar"/>    
                            </form>
                        </li>
                    </ul>

                </div>
            </div>
        </header>

        <main>
            <section class="container">
                <h1>Alterar produto</h1>
                <form action="/cadastro" method="post" class="estilo-form">
                    <input class="field_campo" id="id" type="hidden" name="id" value="${produto.id}">
                    <ul>                           
                        <li>
                            <label for="name" >Nome do produto: </label>
                            <input class="field_campo" id="name" type="text" name="nomeProduto" value="${produto.nomeProduto}" required>
                        </li>


                        <li>
                            <label for="preco" >Preço: </label>
                            <input class="field_campo" id="preco" type="text" name="preco" value="${produto.preco}" min="0" max="999999" required>
                        </li>
                        <li>
                            <label for="qtd">Quantidade: </label>
                            <input class="field_campo" id="qtd" type="number" min="1" name="quantidade" value="1" value="${produto.quantidade}" required>
                        </li>
                        <li>
                            <label for="categ">Categoria: </label>
                            <input class="field_campo" id="categ" type="text" name="categoria" value="${produto.categoria}" required >
                        </li>
                        <li>
                            <label for="desc">Descrição: </label>
                            <textarea id="desc" class="field_campo" resize="none" name="descricao" required style="resize: none" required>${produto.descricao}</textarea>
                        </li>

                    </ul>
                    <input class="btn-submit" type="submit" value="Salvar" />
                </form>

            </section>
        </main>

        <footer>
            <div class="container">
                <h4>Desnvolvido por Álef Vieira e Eric </h4>
                <p>Copyright © Todos os direitos reservados.</p>
            </div>
        </footer>
    </body>
</html>
