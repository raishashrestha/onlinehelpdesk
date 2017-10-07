/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.controller;

import com.info.dao.ProblemDao;
import com.info.model.Problem;
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
@WebServlet(name = "Test", urlPatterns = {"/Test"})
public class Test extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
           
            ProblemDao pd= new ProblemDao();
              if(request.getParameter("RequestIdforDelete")!=null){
                int requestid=Integer.parseInt( request.getParameter("RequestIdforDelete"));
                pd.deleteRequest(requestid);
                out.println("request deleted");
              }else if(request.getParameter("RequestIdforEdit")!=null){
//                 out.println("hello");
             
                int requestid=Integer.parseInt( request.getParameter("RequestIdforEdit"));
                out.println(requestid);
                  Problem problem= new Problem();
                  problem=pd.getRequest(requestid);
                request.setAttribute("problem", problem);
                request.getRequestDispatcher("problem.jsp").forward(request, response);
                
              }
//                else if(request.getParameter("RequestIdforApproval")!=null){
////                  out.println("sdhfg");
////                int requestid=Integer.parseInt(request.getParameter("RequestIdforApproval"));
////                out.println(requestid);
////                  Problem problem= new Problem();
////                  problem=pd.getRequest(requestid);
////                 
////                 
////                pd.statusok(problem);
////                response.sendRedirect("admin.jsp");
//                 
//             
//                
//                
//            }
                else if(request.getParameter("update")!=null){
//                    int requestId=Integer.parseInt( request.getParameter("RequestIdforEdit"));
                   
                 int requestId=Integer.parseInt( request.getParameter("requestId"));
                 String Pname=request.getParameter("request");
                 String Pdes=request.getParameter("request_description");
                 String Pdep=request.getParameter("department");
                 out.println(Pname);
                 out.println(Pdes);
                 out.println(Pdep);
                                                
                 Problem problem=new Problem();
                 problem.setId(requestId);
                 problem.setPname(Pname); 
                 problem.setPdescription(Pdes);
                 problem.setDepartment(Pdep);
                 
                pd.updateProblem(problem);
                                         
            }  
                else if(request.getParameter("Submit")!=null){
                    
           
            Problem problem=new Problem();
            
            int id=Integer.parseInt( request.getParameter("id"));
            String res=request.getParameter("presponse");
           
            out.println(id);
            problem.setId(id);
            problem.setPresponse(res);
            
         //   pd.insertresponse(problem);
            
            out.println("response has been posted.");
                    
                }
              
                          
              
              
              
        }
        catch(Exception e){
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
