package br.com.grupouninter.activitylifecycle.activityresult;

import java.io.Serializable;

/**
 * Created by jaqueline on 20/08/17.
 */

public class Cliente implements Serializable {
    private String nome;
    private String endereco;
    private Integer idade;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public Integer getIdade() {
        return idade;
    }

    public void setIdade(Integer idade) {
        this.idade = idade;
    }
}
