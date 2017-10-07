/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.utils;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Lenovo G40
 */
public class DBConnection {
    public static Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sairam","root","");
            return con;
            
           
            
            
        }catch(Exception e){
            e.printStackTrace();
         }
        return null;
        
    }
    
}
