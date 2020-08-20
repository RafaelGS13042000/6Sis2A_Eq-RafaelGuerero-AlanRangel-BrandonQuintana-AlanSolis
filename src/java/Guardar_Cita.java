/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rafag
 */
@WebServlet(urlPatterns = {"/Guardar_Cita"})
public class Guardar_Cita extends HttpServlet {

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
            
            String  fech_cit,hor_ini,pag_ser,nom_ser,nom_sor;
            
            fech_cit=request.getParameter("fech_cit");
            hor_ini=request.getParameter("hor_ini");
            pag_ser=request.getParameter("pag_ser");
            nom_ser=request.getParameter("nom_ser");
            nom_sor=request.getParameter("nom_sor");
            
            Cliente c=new Cliente();
           
            
            c.setFech_cit("fech_cit");
            c.setHor_ini("hor_ini");
            c.setPag_ser("pag_ser");
            c.setNom_ser("nom_ser");
            c.setNom_sor("nom_sor");
            
            
            int estatus = acciones_Cliente.Registrar_NuevaC(c);
            
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Registro de cita</title>");            
            out.println("</head>");
            out.println("<body>");
           if(estatus > 0){
           
            out.println("<h1>Cita Agendada Coreectamente</h1>");
           
            }else{
          
             out.println("<h1>Intentelo nuevamente</h1>");
               
            }
             out.println("<a href='index.html' >Regresar al menu principal</a>");
            out.println("</body>");
            out.println("</html>");
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
