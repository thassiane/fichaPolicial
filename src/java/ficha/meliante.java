/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ficha;

import java.util.Calendar;

/**
 *
 * @author Thassiane
 */
public class meliante {
    private Long id;
    private String nome;
    private String cpf;
    private String endereco;
    private String tipoDeDelito;
    private Calendar data;
    private String hora;
    private String localDoCrime;
    private String estado;
    private String foto;

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public meliante() {
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getTipoDeDelito() {
        return tipoDeDelito;
    }

    public void setTipoDeDelito(String tipoDeDelito) {
        this.tipoDeDelito = tipoDeDelito;
    }

    public Calendar getData() {
        return data;
    }

    public void setData(Calendar data) {
        this.data = data;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getLocalDoCrime() {
        return localDoCrime;
    }

    public void setLocalDoCrime(String localDoCrime) {
        this.localDoCrime = localDoCrime;
    }
    
    
    
    
}
