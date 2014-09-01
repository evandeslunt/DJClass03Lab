
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AreaCalculatorService;

/**
 * 
 * @author Lizzy
 */
@WebServlet(name = "Calculator", urlPatterns = {"/Calculator"})
public class Calculator extends HttpServlet {
    private final String RESULT_PAGE = "result.jsp";
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
        
        //Retrieve parameters from form and convert to double
        String strLength = request.getParameter("length");
        String strWidth = request.getParameter("width");
        Double length = 0.0;
        Double width = 0.0;
        try{
        length = new Double(strLength);
        width = new Double(strWidth);
        } catch(Exception e){
            //just leave the incorrect value as 0.
        }
        
        //Pass parameters to Model
        AreaCalculatorService calc = new AreaCalculatorService();
        double area = calc.calcArea(length, width);

        //return the data to the view
        request.setAttribute("area", area);
        request.setAttribute("length", length);
        request.setAttribute("width", width);

        RequestDispatcher view = request.getRequestDispatcher(RESULT_PAGE);
        view.forward(request, response);
        
        
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
