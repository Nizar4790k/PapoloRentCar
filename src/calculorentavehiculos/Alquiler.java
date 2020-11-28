/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculorentavehiculos;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Nizar4790k
 */


@Entity
@Table(name="alquiler")
public class Alquiler implements Serializable {

    @Id
    @Column(name="idAlquiler")
    private int idAlquiler;

    @Column(name="nombre")
    private String nombre;
    
     @Column(name="fecha")
    private Date fecha;
      
    @Column(name="duracion")
    private int duracion;
    
    @Column(name="idCarro")
    private int idCarro;
    
    public Alquiler(){
        
    }
    
    public Alquiler(String nombre, int duracion, int idCarro){
        this.nombre=nombre;
        this.fecha = new Date();
        this.idCarro=idCarro;
        this.duracion=duracion;
        
    }
    
    /**
     * @return the idAlquiler
     */
    public int getIdAlquiler() {
        return idAlquiler;
    }

    /**
     * @param idAlquiler the idAlquiler to set
     */
    public void setIdAlquiler(int idAlquiler) {
        this.idAlquiler = idAlquiler;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the fecha
     */
    public Date getFecha() {
        return fecha;
    }

    /**
     * @param fecha the fecha to set
     */
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    /**
     * @return the duracion
     */
    public int getDuracion() {
        return duracion;
    }

    /**
     * @param duracion the duracion to set
     */
    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public int getIdCarro(){
        return this.idCarro;
    }
 
}
