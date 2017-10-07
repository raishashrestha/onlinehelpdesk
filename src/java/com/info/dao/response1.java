/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.dao;

import com.info.model.Notice;
import com.info.model.Responsee;
import com.info.utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Lenovo G40
 */
public class response1 {
      public List<Responsee> getResponseList(){
        try{
            List<Responsee> ResponseList= new ArrayList();
            Connection con=DBConnection.getConnection();
            String qry="select* from response";
            PreparedStatement pst=con.prepareStatement(qry);
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                Responsee responsee = new Responsee();
                responsee.setPrequest(rs.getString("request"));
                responsee.setPresponse(rs.getString("presponse"));
                responsee.setRid(rs.getInt("rid"));
                
                ResponseList.add(responsee);
            }
            return ResponseList;
            
            
        }
        
        
        catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
