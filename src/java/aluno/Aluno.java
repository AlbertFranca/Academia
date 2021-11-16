/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aluno;

import java.sql.Date;

/**
 *
 * @author islad
 */
public class Aluno {
    
    private int matricula_aluno;
    private String nome;
    private String cpf;
    private String sexo;
    private String estado;
    private String cidade;
    private String bairro;
    private String cep;
    private String rua;
    private String numero;
    private String email;
    private String celular;
    private String senha;
    private Date nascimento;
    
    /**
     * @return the matricula_aluno
     */
    public int getMatricula_aluno() {
        return matricula_aluno;
    }

    /**
     * @param matricula_aluno
     */
    public void setMatricula_aluno(int matricula_aluno) {
        this.matricula_aluno = matricula_aluno;
    }

    /**
     * @return the nomeAluno
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the cpfAluno
     */
    public String getCpf() {
        return cpf;
    }

    /**
     * @param cpf
     */
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    /**
     * @return the Sexo
     */
    public String getSexo() {
        return sexo;
    }

    /**
     * @param sexo
     */
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    /**
     * @return the estado
     */
    public String getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(String estado) {
        this.estado = estado;
    }

    /**
     * @return the cidade
     */
    public String getCidade() {
        return cidade;
    }

    /**
     * @param cidade the cidade to set
     */
    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    /**
     * @return the bairro
     */
    public String getBairro() {
        return bairro;
    }

    /**
     * @param bairro the bairro to set
     */
    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    /**
     * @return the cep
     */
    public String getCep() {
        return cep;
    }

    /**
     * @param cep the cep to set
     */
    public void setCep(String cep) {
        this.cep = cep;
    }

    /**
     * @return the rua
     */
    public String getRua() {
        return rua;
    }

    /**
     * @param rua the rua to set
     */
    public void setRua(String rua) {
        this.rua = rua;
    }

    /**
     * @return the numero
     */
    public String getNumero() {
        return numero;
    }

    /**
     * @param numero the numero to set
     */
    public void setNumero(String numero) {
        this.numero = numero;
    }

    /**
     * @return the emailAluno
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the telefoneAluno
     */
    public String getCelular() {
        return celular;
    }

    /**
     * @param celular
     */
    public void setCelular(String celular) {
        this.celular = celular;
    }

    /**
     * @return the senha
     */
    public String getSenha() {
        return senha;
    }

    /**
     * @param senha the senha to set
     */
    public void setSenha(String senha) {
        this.senha = senha;
    }
    
     /**
     * @return the nascimento
     */
    public Date getNascimento() {
        return nascimento;
    }

    /**
     * @param nascimento
     */
    public void setNascimento(Date nascimento) {
        this.nascimento = nascimento;
    }
   
}
