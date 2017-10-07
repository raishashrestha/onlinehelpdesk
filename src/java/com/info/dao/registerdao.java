/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.dao;

import com.info.model.Register;
import com.info.model.User;
import com.info.utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Lenovo G40
 */
public class registerdao {
     public Register verifyUser(Register register){
        try{
            Connection con=DBConnection.getConnection();
            String qry="select * from studentlist where Roll=? and year=? and batch=? and Name=? ";
            PreparedStatement pst=con.prepareStatement(qry);
            pst.setInt(1,register.getRoll());
            pst.setInt(2, register.getYear());
            pst.setString(3,register.getBatch());
            pst.setString(4, register.getUserName());
            
            ResultSet rs=pst.executeQuery();
            
            while(rs.next()){
                Register verifiedUser=new Register();
                verifiedUser.setRoll(rs.getInt("Roll"));
                verifiedUser.setYear(rs.getInt("year"));
                verifiedUser.setBatch(rs.getString("batch"));
                verifiedUser.setUserName(rs.getString("Name"));
           
                return verifiedUser;
            }
         
                
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
     
     public Register cofirmUser(Register register){
        try{
            Connection con=DBConnection.getConnection();
            String qry="select * from student where sname=? and spassword=?";
            PreparedStatement pst=con.prepareStatement(qry);
            pst.setString(1,register.getUserName());
            pst.setString(2, register.getUserPassword());
          
            
            ResultSet rs=pst.executeQuery();
            
            while(rs.next()){
                Register verifiedUser=new Register();
                verifiedUser.setUserName(rs.getString("sname"));
                verifiedUser.setUserPassword(rs.getString("spassword"));
           
                return verifiedUser;
            }
         
                
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return null;
    } 
     
     public void insertintologin(Register register) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
            
            String qry= "insert into student(sname,spassword) values(?,?) ";
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setString(1,register.getUserName());
            pst.setString(2,register.getUserPassword());
                        
            pst.execute();
        }
               
                            
        catch(Exception e){
            
            e.printStackTrace();
        }
        
        finally{
            con.close();
        }
        
              
    }
    
}
    

