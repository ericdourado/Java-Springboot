<%-- 
    Document   : home
    Created on : 19 de mai de 2022, 20:05:55
    Author     : Aluno
--%>

<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
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
                <h1>Produtos Cadastrado</h1>

                <table class="tbl-format">
                    <thead>
                        <tr>
                            <th>Código do Produto</th>
                            <th>Nome do produto</th>
                            <th>Preço</th>
                        </tr>
                    </thead>
                    <tbody>
                            <tr>
                                <td>${produto.id}</td>
                                <td>${produto.nomeProduto}</td>
                                <td>${produto.preco}</td>
                                <td>
                                    <a href="/ver?id=${produto.id}" title='Ver informações do produto' class="btn-table btn-ver">Ver</a>
                                    <a href="/editar?id=${produto.id}" title='Editar informações do produto' class="btn-table btn-edita">Editar</a>
                                    <a href="/exclui?id=${produto.id}" title='Excluir informações do produto' class="btn-table btn-exclui">Excluir</a>
                                </td>
                            </tr>
                    </tbody>
                </table>
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
