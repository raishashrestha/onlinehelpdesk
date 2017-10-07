/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.dao;

import com.info.model.Problem;
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
public class ProblemDao {
     public void insertProblems(Problem problem) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
            
          String qry= "INSERT into problem(Pname,Pdescription,Department,status) values(?,?,?,?)";
                    PreparedStatement pst= con.prepareStatement(qry);
            
            pst.setString(1,problem.getPname());
            pst.setString(2,problem.getPdescription());
            pst.setString(3,problem.getDepartment());
            pst.setInt(4,1);
            
            
            
           pst.execute();
                                                
           
        }
        
        catch(Exception e){
            e.printStackTrace();
        }
        
        finally{
            con.close();
        }

     }
      public List<Problem> getProblemList(){
        try{
            List<Problem> ProblemList=new ArrayList();
            Connection con=DBConnection.getConnection();
            String qry="select * from problem where status=?";
            PreparedStatement pst=con.prepareStatement(qry);
            pst.setInt(1,3);
            ResultSet rs= pst.executeQuery();
            while(rs.next()){
                Problem problem=new Problem();
                problem.setId(rs.getInt("Pid"));
                problem.setPname(rs.getString("Pname"));
                problem.setDepartment(rs.getString("Department"));
                ProblemList.add(problem);
            }
            return ProblemList;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
      
      
       public void deleteRequest(int requestId){
        try{
            Connection con=DBConnection.getConnection();
            String qry="delete from problem where Pid=?";
            PreparedStatement pst=con.prepareStatement(qry);
            pst.setInt(1, requestId);
            pst.executeUpdate();
            con.close();
            
            
            
    }
        catch(Exception e){
            e.printStackTrace();
        }
            
        }
       
       
    public Problem getRequest(int requestid){
        try{
            
            Connection con=DBConnection.getConnection();
            String qry="select * from problem where Pid=?";
            PreparedStatement pst=con.prepareStatement(qry);
            pst.setInt(1,requestid);
            ResultSet rs= pst.executeQuery();
            while(rs.next()){
                Problem problem=new Problem();
                problem.setId(rs.getInt("Pid"));
                problem.setPname(rs.getString("Pname"));
                problem.setPdescription(rs.getString("Pdescription"));
                problem.setDepartment(rs.getString("Department"));
                problem.setStatus(rs.getInt("status"));
                return problem;
            }
          
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
       
       
    
    public void updateProblem(Problem problem){
        try{
            Connection con=DBConnection.getConnection();
            String qry="update problem set Pname=?, Pdescription=?, status=? , Department=?  where Pid=?";
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setString(1,problem.getPname());
            pst.setString(2,problem.getPdescription());
            pst.setInt(3,2);
            pst.setString(4,problem.getDepartment());
            pst.setInt(5,problem.getId());
            pst.executeUpdate();
            pst.close();
            
            
            
            
        }
        catch(Exception e){
            e.printStackTrace();
            
        }
        
      
               
    }
    public void updatestatus(Problem problem){
        try{
            
            Connection con=DBConnection.getConnection();
            String qry="update problem set status=?   where Pid=?";
           
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setInt(1,3);
            //pst.setString(2,problem.getPresponse());
            pst.setInt(2,problem.getId());
           
            pst.executeUpdate();
            pst.close();
             
//            String qry1= "insert into problem(presponse) values(?)";
//            PreparedStatement pst1=con.prepareStatement(qry1);
//            pst1.setString(1, problem.getPresponse());
//            pst1.executeUpdate();
//             pst1.close();
//             
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
  public void insertresponse(Problem problem){
        try{
            
            Connection con=DBConnection.getConnection();
       
             String qry1="insert into response set presponse=? , rid=? , request=?";
             PreparedStatement pst1=con.prepareStatement(qry1);
           
             pst1.setString(1, problem.getPresponse());
             pst1.setInt(2, problem.getId());
             pst1.setString(3,problem.getPname());
             pst1.executeUpdate();
              System.out.print(problem.getPresponse());
               System.out.print(problem.getId());
             pst1.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
  
//  public void statusok(Problem problem) throws SQLException{
//      try{
//      Connection con=DBConnection.getConnection();
//            String qry="update problem set status=? where Pid=?";
//            PreparedStatement pst= con.prepareStatement(qry);
//            pst.setInt(1,2);
//            pst.setInt(2,problem.getId());
//           
//            pst.executeUpdate();
//            pst.close();
//             
//        }
//catch(Exception e){
//            e.printStackTrace();
//        }
//    }
}
      
  
    

