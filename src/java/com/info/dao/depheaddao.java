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
public class depheaddao {
    public User verifyUser(User user){
        try{
            Connection con=DBConnection.getConnection();
            String qry="select * from dephead where dname=? and dpassword=?";
            PreparedStatement pst=con.prepareStatement(qry);
            pst.setString(1,user.getUserName());
            pst.setString(2, user.getUserPassword());
            
            ResultSet rs=pst.executeQuery();
            
            while(rs.next()){
                User verifiedUser=new User();
                verifiedUser.setUserId(rs.getInt("did"));
                verifiedUser.setUserName(rs.getString("dname"));
                verifiedUser.setUserPassword(rs.getString("dpassword"));
                return verifiedUser;
            }
         
                
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
}
