/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package avaliacao;

import aluno.Aluno;
import funcionario.Funcionario;

/**
 *
 * @author islad
 */
public class Avaliacao {
   private int idAvaliacao;
   private int pescoco;
   private int antebraco;
   private int braco;
   private int abdomem;
   private int torax;
   private int cintura;
   private int quadril;
   private int coxa;
   private int panturrilha;
   private int altura;
   private int peso;
   private String tipo;
   private String exercicio;
   private String repeticao;
   private String serie;
   private Aluno aluno;
   private Funcionario funcionario;

   
   public Avaliacao(){
       this.aluno = new Aluno();
       this.funcionario = new Funcionario();
   }
    /**
     * @return the idAvaliacao
     */
    public int getIdAvaliacao() {
        return idAvaliacao;
    }

    /**
     * @param idAvaliacao the idAvaliacao to set
     */
    public void setIdAvaliacao(int idAvaliacao) {
        this.idAvaliacao = idAvaliacao;
    }

    /**
     * @return the pescoco
     */
    public int getPescoco() {
        return pescoco;
    }

    /**
     * @param pescoco the pescoco to set
     */
    public void setPescoco(int pescoco) {
        this.pescoco = pescoco;
    }

    /**
     * @return the antebraco
     */
    public int getAntebraco() {
        return antebraco;
    }

    /**
     * @param antebraco the antebraco to set
     */
    public void setAntebraco(int antebraco) {
        this.antebraco = antebraco;
    }

    /**
     * @return the braco
     */
    public int getBraco() {
        return braco;
    }

    /**
     * @param braco the braco to set
     */
    public void setBraco(int braco) {
        this.braco = braco;
    }

    /**
     * @return the abdomem
     */
    public int getAbdomem() {
        return abdomem;
    }

    /**
     * @param abdomem the abdomem to set
     */
    public void setAbdomem(int abdomem) {
        this.abdomem = abdomem;
    }

    /**
     * @return the torax
     */
    public int getTorax() {
        return torax;
    }

    /**
     * @param torax the torax to set
     */
    public void setTorax(int torax) {
        this.torax = torax;
    }

    /**
     * @return the cintura
     */
    public int getCintura() {
        return cintura;
    }

    /**
     * @param cintura the cintura to set
     */
    public void setCintura(int cintura) {
        this.cintura = cintura;
    }

    /**
     * @return the quadril
     */
    public int getQuadril() {
        return quadril;
    }

    /**
     * @param quadril the quadril to set
     */
    public void setQuadril(int quadril) {
        this.quadril = quadril;
    }

    /**
     * @return the coxa
     */
    public int getCoxa() {
        return coxa;
    }

    /**
     * @param coxa the coxa to set
     */
    public void setCoxa(int coxa) {
        this.coxa = coxa;
    }

    /**
     * @return the panturrilha
     */
    public int getPanturrilha() {
        return panturrilha;
    }

    /**
     * @param panturrilha the panturrilha to set
     */
    public void setPanturrilha(int panturrilha) {
        this.panturrilha = panturrilha;
    }

    /**
     * @return the altura
     */
    public int getAltura() {
        return altura;
    }

    /**
     * @param altura the altura to set
     */
    public void setAltura(int altura) {
        this.altura = altura;
    }

    /**
     * @return the peso
     */
    public int getPeso() {
        return peso;
    }

    /**
     * @param peso the peso to set
     */
    public void setPeso(int peso) {
        this.peso = peso;
    }

    /**
     * @return the tipo
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * @param tipo the tipo to set
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    /**
     * @return the exercicio
     */
    public String getExercicio() {
        return exercicio;
    }

    /**
     * @param exercicio the exercicio to set
     */
    public void setExercicio(String exercicio) {
        this.exercicio = exercicio;
    }

    /**
     * @return the repeticao
     */
    public String getRepeticao() {
        return repeticao;
    }

    /**
     * @param repeticao the repeticao to set
     */
    public void setRepeticao(String repeticao) {
        this.repeticao = repeticao;
    }

    /**
     * @return the serie
     */
    public String getSerie() {
        return serie;
    }

    /**
     * @param serie the serie to set
     */
    public void setSerie(String serie) {
        this.serie = serie;
    }

    /**
     * @return the aluno
     */
    public Aluno getAluno() {
        return aluno;
    }

    /**
     * @param aluno the aluno to set
     */
    public void setAluno(Aluno aluno) {
        this.aluno = aluno;
    }

    /**
     * @return the funcionario
     */
    public Funcionario getFuncionario() {
        return funcionario;
    }

    /**
     * @param funcionario the funcionario to set
     */
    public void setFuncionario(Funcionario funcionario) {
        this.funcionario = funcionario;
    }
    
    public float getImc(){
        float retorno = 0;
        float altlocal = (float)this.altura;
        float pesolocal = (float)this.peso;
        retorno= (pesolocal)/((altlocal/100)*(altlocal/100));
        return retorno;
        
    }

 
}
