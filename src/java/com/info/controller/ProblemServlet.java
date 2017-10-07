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
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lenovo G40
 */
@WebServlet(name = "ProblemServlet", urlPatterns = {"/ProblemServlet"})
public class ProblemServlet extends HttpServlet {

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
            
            
            Problem problem=new Problem();
            ProblemDao pd= new ProblemDao();
            
            if(request.getParameter("Add")!=null){
            String pname,pdescription,dep;
            pname=request.getParameter("request");
            pdescription=request.getParameter("request_description");
            dep=request.getParameter("department");
                                    
            problem.setPname(pname);
            problem.setPdescription(pdescription);
            problem.setDepartment(dep);
             
//     

//            out.println("Your request is posted.Visit the site for the updates of your request.Thank You!");
           
            pd.insertProblems(problem);
            System.out.println("sayfs");
              response.sendRedirect("student.jsp");
             
//                       
//            out.println("Your request is posted.Visit the site for the updates of your request.Thank You!");
//            List<Problem> ProblemList=pd.getProblemList();
//            request.setAttribute("ProblemList",ProblemList);
//            request.getRequestDispatcher("problemlist.jsp").forward(request, response);
          } 
            
            else if(request.getParameter("RequestIdforDelete")!=null){
                int requestid=Integer.parseInt( request.getParameter("RequestIdforDelete"));
                pd.deleteRequest(requestid);
                
                response.sendRedirect("admin.jsp");
              }else if(request.getParameter("RequestIdforEdit")!=null){
                 out.println("hello");
             
                int requestid=Integer.parseInt( request.getParameter("RequestIdforEdit"));
                out.println(requestid);
                  
                  problem=pd.getRequest(requestid);
                request.setAttribute("problem", problem);
                request.getRequestDispatcher("problem.jsp").forward(request, response);
            }             
                
                else if(request.getParameter("update")!=null){
//                      int requestId=Integer.parseInt( request.getParameter("RequestIdforEdit"));
                   
                 int requestId=Integer.parseInt( request.getParameter("requestId"));
                 String Pname=request.getParameter("request");
                 String Pdes=request.getParameter("request_description");
                 String Pdep=request.getParameter("department");
//                 out.println(Pname);
//                 out.println(Pdes);
//                 out.println(Pdep);
//                                                
               
                 problem.setId(requestId);
                 problem.setPname(Pname); 
                 problem.setPdescription(Pdes);
                 problem.setDepartment(Pdep);
                 
                pd.updateProblem(problem);
                response.sendRedirect("admin.jsp");
               
            }  
                
            else if(request.getParameter("Submit")!=null){
                                        
            int id=Integer.parseInt( request.getParameter("id"));
            
            String req=request.getParameter("req");
            String res=request.getParameter("presponse");
            out.println(id);
            out.println(req);
            out.println(res);
            
            problem.setId(id);
            problem.setPname(req);
            problem.setPresponse(res);
//            out.println("hello");
            pd.updatestatus(problem);
//            out.println("hello again");        
            pd.insertresponse(problem);
            response.sendRedirect("dephead.jsp");
//            out.println("response has been posted.");
                    
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
