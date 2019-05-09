/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package murach.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import murach.business.Product;
import murach.dao.ProductDAO;
import murach.dao.impl.ProductDAOImpl;

/**
 *
 * @author curti
 */
@WebServlet(name = "DefaultController", urlPatterns = {"/"})
public class DefaultController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //request.getRequestDispatcher("default.jsp").forward(request, response);
        try {
            int page = 1;
            int recordsPerPage = 5;
            if(request.getParameter("page") != null)
                page = Integer.parseInt(request.getParameter("page"));
            ProductDAO dao = new ProductDAOImpl("com.mysql.jdbc.Driver", "jdbc:mysql://localhost", "mysql", "root", "adminsesame");
            List<Product> list = dao.showAllProduct((page-1)*recordsPerPage,
                    recordsPerPage);
            int noOfRecords = dao.getNoOfRecords();
            int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
            request.setAttribute("productList", list);
            request.setAttribute("noOfPages", noOfPages);
            request.setAttribute("currentPage", page);
            request.getRequestDispatcher("default.jsp").forward(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DefaultController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DefaultController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
       
    }
}
