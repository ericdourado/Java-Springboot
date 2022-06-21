package br.com.produtos.produtos.models;

//import java.util.List;
//
//import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author romulo
 *
 * essa classe usa o mecanismo de ferramentas do Spring para prover uma forma
 * fácil de interagir com dados da nossa aplicação
 *
 * a anotação Repository insere uma classe anônima gerenciada pela aplicação que
 * traz métodos para inserir, excluir etc entidades do tipo Tarefa
 */
@Repository
public interface ProdRepository extends JpaRepository<ProdutosModel, Long> {
    
//    @Query("SELECT p FROM produtos_model P WHERE P.nomeproduto like %?1%")
//    List<ProdutosModel> findByNameProd(@Param("NOMEPRODUTO") String nomeProduto);
}
