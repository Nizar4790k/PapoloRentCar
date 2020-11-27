/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculorentavehiculos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nizar4790k
 */
public class TestConnection {
    
    public static void main(String[] args){
        
        try {
            List<Alquiler> alquileres = ManipulaDB.consultarObjeto(Alquiler.class);
            for(Alquiler alquiler : alquileres){
                System.out.println(alquiler.getIdAlquiler() +"   "+alquiler.getFecha());
            }
            
           
        } catch (SQLException ex) {
            Logger.getLogger(TestConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
      
    }




}
