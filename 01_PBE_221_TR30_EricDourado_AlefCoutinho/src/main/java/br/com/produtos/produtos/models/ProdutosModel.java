/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.produtos.produtos.models;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
/**
 *
 * @author Aluno
 */

@Getter
@Setter
@Entity
@NoArgsConstructor @AllArgsConstructor
public class ProdutosModel implements Serializable {  
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nomeProduto;
    private double preco;
    private int quantidade;
    private String categoria;
    private String descricao;

    public void setPreco(String preco){
        this.preco = Double.parseDouble(preco.replace(",","."));
    }
}
