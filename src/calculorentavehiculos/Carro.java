/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculorentavehiculos;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Nizar4790k
 */

@Entity
@Table(name="carro")
public class Carro implements Serializable {

    @Id
    @Column(name="idCarro")
    private int idCarro;
    
    @Column(name="modelo")
    private String modelo;
   
    @Column(name="color")
    private String color;
    
    @Column(name="marca")
    private String marca;
    
    @Column(name="preciopordia")
    private int precioPorDia;
    
    public Carro(String marca, String modelo){
        this.color="";
        this.idCarro=-1;
        
    }
    
    public Carro(){
        
    }
    
    
    /*
    
   @ManyToMany(mappedBy = "carros")
    private Set<Alquiler> alquiler = new HashSet<>();
    */
    
    /**
    
    /**
     * @return the idCarro
     */
    public int getIdCarro() {
        return idCarro;
    }

    /**
     * @param idCarro the idCarro to set
     */
    public void setIdCarro(int idCarro) {
        this.idCarro = idCarro;
    }

    /**
     * @return the modelo
     */
    public String getModelo() {
        return modelo;
    }

    /**
     * @param modelo the modelo to set
     */
    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

   
    /**
     * @return the color
     */
    public String getColor() {
        return color;
    }

    /**
     * @param color the color to set
     */
    public void setColor(String color) {
        this.color = color;
    }

    /**
     * @return the marca
     */
    public String getMarca() {
        return marca;
    }

    /**
     * @param marca the marca to set
     */
    public void setMarca(String marca) {
        this.marca = marca;
    }
    
    @Override
    public String toString(){
        return this.marca+" "+this.modelo;
    }

    /**
     * @return the precioPorDia
     */
    public int getPrecioPorDia() {
        return precioPorDia;
    }

    /**
     * @param precioPorDia the precioPorDia to set
     */
    public void setPrecioPorDia(int precioPorDia) {
        this.precioPorDia = precioPorDia;
    }
    
}
