/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.dao;

import com.info.model.User;
import com.info.utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Lenovo G40
 */
public class admindao {
    public User verifyUser(User user){
        try{
            Connection con=DBConnection.getConnection();
            String qry="select * from admin where aname=? and apassword=?";
            PreparedStatement pst=con.prepareStatement(qry);
            pst.setString(1,user.getUserName());
            pst.setString(2, user.getUserPassword());
            
            ResultSet rs=pst.executeQuery();
            
            while(rs.next()){
                User verifiedUser=new User();
                verifiedUser.setUserId(rs.getInt("aid"));
                verifiedUser.setUserName(rs.getString("aname"));
                verifiedUser.setUserPassword(rs.getString("apassword"));
                return verifiedUser;
            }
         
                
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
}
