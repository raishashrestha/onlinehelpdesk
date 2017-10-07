/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.dao;

import com.info.model.Student;
import com.info.utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Lenovo G40
 */
public class StudentDao {
     public void insertStudent(Student student) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
            
             
            String qry= "insert into studentlist(Name,Roll,year,batch) values(?,?,?,?) ";
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setString(1,student.getName());
            pst.setInt(2,student.getRoll());
            pst.setInt(3,student.getYear());
            pst.setString(4, student.getBatch());
            System.out.println(student.getBatch());
            System.out.println(student.getName());
            
            pst.execute();
        }
               
                            
        catch(Exception e){
            
            e.printStackTrace();
        }
        
        finally{
            con.close();
        }
        
              
    }
    
    
    public List<Student> getStudentList(){
        try{
         List<Student> StudentList= new ArrayList();
            Connection con=DBConnection.getConnection();
            String qry="select * from studentlist";
            PreparedStatement pst=con.prepareStatement(qry);
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                Student student = new Student();
               // student.setId(rs.getInt("SN"));
                student.setName(rs.getString("Name"));
                student.setRoll(rs.getInt("Roll"));
                student.setYear(rs.getInt("year"));
                student.setBatch(rs.getString("batch"));
                StudentList.add(student);
            }
            return StudentList;
            
            
        }
        
        
        catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
}
