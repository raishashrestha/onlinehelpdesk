/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.controller;

import com.info.dao.UserDao;
import com.info.dao.registerdao;
import com.info.model.Register;
import com.info.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lenovo G40
 */
@WebServlet(name = "registerservlet", urlPatterns = {"/registerservlet"})
public class registerservlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           String name=request.getParameter("username");
           String userpassword=request.getParameter("password");
           int roll=Integer.parseInt( request.getParameter("Roll"));
           int year=Integer.parseInt(request.getParameter("Year"));
           String batch= request.getParameter("Batch");
        
           
           Register register = new Register();
           
           register.setRoll(roll);
           register.setYear(year);
           register.setBatch(batch);
           register.setUserName(name);
           register.setUserPassword(userpassword);
           
           
            registerdao rd= new registerdao();
            Register verifiedUser=rd.verifyUser(register);
        
            if(verifiedUser!=null){
               
               register.setUserName(name);
               register.setUserPassword(userpassword);
               
               Register confirmuser=rd.cofirmUser(register);
               if(confirmuser!=null){
                   out.println("You are already registerd.Thsnk You.");
                           
                           
                        
               }else{
                   register.setUserName(name);
                   register.setUserPassword(userpassword);
                   
                   rd.insertintologin(register);
                   response.sendRedirect("login.jsp");
//                           out.println("You are registered.");
               }
               
                
            }
            else{
                String url = "login.jsp?msg=You cant register.You are not from this college.";
                response.sendRedirect("login.jsp");
                out.println("You cant register.You are not from this college.");
               // response.sendRedirect("login.jsp");
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
