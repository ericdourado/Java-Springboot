<%-- 
    Document   : cadastro
    Created on : 19 de mai de 2022, 20:04:19
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar produto</title>
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
                <div>
                    <h1>Cadastro de Produto</h1>
                        <form action="/cadastro" method="post" class="estilo-form">
                            <ul>
                                <li>
                                    <label for="name" >Nome do Produto: </label>
                                    <input class="field_campo" id="name" type="text" name="nomeProduto" required>
                                </li>


                                <li>
                                    <label for="preco" >Preço: </label>
                                    <input class="field_campo" id="preco" type="text" name="preco" min="0" max="999999" required>
                                </li>
                                <li>
                                    <label for="qtd">Quantidade: </label>
                                    <input class="field_campo" id="qtd" type="number" min="1" name="quantidade" value="1" required>
                                </li>
                                <li>
                                    <label for="categ">Categoria: </label>
                                    <input class="field_campo" id="categ" type="text" name="categoria" required>
                                </li>
                                <li>
                                    <label for="desc">Descrição: </label>
                                    <textarea id="desc" class="field_campo" resize="none" name="descricao" required style="resize: none"></textarea>
                                </li>

                            </ul>
                            <input class="btn-submit" type="submit" value="Cadastrar" />
                        </form>

                </div>
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

