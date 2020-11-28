/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculorentavehiculos;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nizar4790k
 */
public class Main {
    
    public static void main(String [] args){
        try {
         DanielPatricio dp=   new DanielPatricio();
         dp.setVisible(true);
         dp.setDefaultCloseOperation(DanielPatricio.EXIT_ON_CLOSE);
         
        } catch (SQLException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
