/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.dao;

import com.info.model.Notice;
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
public class NoticeDao {
    public void insertnotice(Notice notice) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
            
            String qry= "insert into notice(Notice,Department,year) values(?,?,?) ";
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setString(1,notice.getNotice());
            pst.setString(2,notice.getDepartment());
            pst.setString(3,notice.getYear());
            
            
            pst.execute();
        }
               
                            
        catch(Exception e){
            
            e.printStackTrace();
        }
        
        finally{
            con.close();
        }
    
    }
    public List<Notice> getNoticeList(){
        try{
            List<Notice> NoticeList= new ArrayList();
            Connection con=DBConnection.getConnection();
            String qry;
            
            qry="SELECT * FROM notice "; 
           
            qry +=" ORDER BY `Date Published` DESC";
            PreparedStatement pst=con.prepareStatement(qry);
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                Notice notice = new Notice();
                notice.setNid(rs.getInt("nid"));
                notice.setNotice(rs.getString("Notice"));
                notice.setYear(rs.getString("year"));
                notice.setDepartment(rs.getString("Department"));
                notice.setDate_published(rs.getDate("Date Published"));
                NoticeList.add(notice);
            }
            return NoticeList;
            
            
        }
            catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
//    
//    public List<Notice> getNoticeListBCT(){
//        try{
//            List<Notice> NoticeList = new ArrayList();
//            Connection con=DBConnection.getConnection();
//            String qry;
//            qry="SELECT * From notice WHERE department='BCT' OR department='bct' ";
//            PreparedStatement pst=con.prepareStatement(qry);
//            ResultSet rs=pst.executeQuery();
//            while(rs.next()){
//                Notice notice = new Notice();
//                notice.setNid(rs.getInt("nid"));
//                notice.setNotice(rs.getString("Notice"));
//                notice.setYear(rs.getString("year"));
//                notice.setDepartment(rs.getString("Department"));
//                notice.setDate_published(rs.getDate("Date Published"));
//                NoticeList.add(notice);
//            }
//            return NoticeList;
//            
//            
//        }
//            catch(Exception e){
//            e.printStackTrace();
//        }
//        return null;
//    }
//           public List<Notice> getNoticeListBEX(){
//        try{
//            List<Notice> NoticeList = new ArrayList();
//            Connection con=DBConnection.getConnection();
//            String qry;
//            qry="SELECT * From notice WHERE department='BCT' OR department='bct' ";
//            PreparedStatement pst=con.prepareStatement(qry);
//            ResultSet rs=pst.executeQuery();
//            while(rs.next()){
//                Notice notice = new Notice();
//                notice.setNid(rs.getInt("nid"));
//                notice.setNotice(rs.getString("Notice"));
//                notice.setYear(rs.getString("year"));
//                notice.setDepartment(rs.getString("Department"));
//                notice.setDate_published(rs.getDate("Date Published"));
//                NoticeList.add(notice);
//            }
//            return NoticeList;
//            
//            
//        }
//       
//    
//        
//        
//        catch(Exception e){
//            e.printStackTrace();
//        }
//        return null;
//    }
//           public List<Notice> getNoticeListBCE(){
//        try{
//            List<Notice> NoticeList = new ArrayList();
//            Connection con=DBConnection.getConnection();
//            String qry;
//            qry="SELECT * From notice WHERE department='BCE' OR department='bce' ";
//            PreparedStatement pst=con.prepareStatement(qry);
//            ResultSet rs=pst.executeQuery();
//            while(rs.next()){
//                Notice notice = new Notice();
//                notice.setNid(rs.getInt("nid"));
//                notice.setNotice(rs.getString("Notice"));
//                notice.setYear(rs.getString("year"));
//                notice.setDepartment(rs.getString("Department"));
//                notice.setDate_published(rs.getDate("Date Published"));
//                NoticeList.add(notice);
//            }
//            return NoticeList;
//            
//            
//        }
//            catch(Exception e){
//            e.printStackTrace();
//        }
//        return null;
//    }
//    
//
//    public List<Notice> getNoticeListBCT(){
//        try{
//            List<Notice> NoticeList = new ArrayList();
//            Connection con=DBConnection.getConnection();
//            String qry;
//            qry="SELECT * From notice WHERE department='BCT' OR department='bct' ";
//            PreparedStatement pst=con.prepareStatement(qry);
//            ResultSet rs=pst.executeQuery();
//            while(rs.next()){
//                Notice notice = new Notice();
//                notice.setNid(rs.getInt("nid"));
//                notice.setNotice(rs.getString("Notice"));
//                notice.setYear(rs.getString("year"));
//                notice.setDepartment(rs.getString("Department"));
//                notice.setDate_published(rs.getDate("Date Published"));
//                NoticeList.add(notice);
//            }
//            return NoticeList;
//            
//            
//        }
//            catch(Exception e){
//            e.printStackTrace();
//        }
//        return null;
//    }
}