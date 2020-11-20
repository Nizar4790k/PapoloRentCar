/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculorentavehiculos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Nizar4790k
 */
public class TestConnection {
    
    public static void main(String[] args){
        getConnection("root","root12","alquilerdecarro");
    }

public static Connection getConnection(String user,String password,String db) {   // Probando la conexion a la DB
	
		System.out.println("Testing Connection");
		
		try {
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db+"?useSSL=false&zeroDateTimeBehavior=CONVERT_TO_NULL&serverTimezone=UTC", user, password);
			System.out.println("Connection Successfull");
			return connection;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return null;
	}


}
