
package controllers;

import com.db.DBAccess;
import com.models.Register;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author aviwe08
 */
@WebServlet(name = "teacher", urlPatterns = {"/teacher"})
public class Teacher extends HttpServlet {

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
      
        HttpSession session = request.getSession();
        
        String staff_num = request.getParameter("staff_number");
        String name = request.getParameter("first_name");
        String surname =request.getParameter("last_name");
        String email =request.getParameter("email");
        String password =request.getParameter("password");
        String cell_number = request.getParameter("cell_number");
        String admin_number = (String)session.getAttribute("id");
            //converting parameter
            
            
            //validating entries
        ArrayList<String> errors = new ArrayList();
        if (name == null && name.trim().length()== 0){
            errors.add("name required");  
        }
        if (surname == null && surname.trim().length()== 0){
            errors.add("surname required");
        }
        if (email == null && email.length()== 0){
            errors.add("provide email");
        }
        if (password == null && password.length()== 0){
            errors.add("provide password");
        }
        if (cell_number == null && cell_number.trim().length()== 0){
            errors.add("provide cell number");
        }
        if(staff_num == null && staff_num.trim().length()==0)
            errors.add("provide correct Staff_num");
                    
        try  {
           
                Register regist = new Register(staff_num,surname,
                        name,email, password, cell_number,admin_number);
                DBAccess dao = new DBAccess();
                boolean isAdded = dao.addTeacher(regist);
                //checked if addition was successful
                if(isAdded){

                    request.setAttribute("successMessage","teacher successfully Added");
                    //request.setAttribute("successMessage",stud);
                    
                    response.setStatus(response.SC_MOVED_TEMPORARILY);
                    response.setHeader("Location", "pages/admin.jsp");
                }else{
                    errors.add("teacher not added");
                    request.setAttribute("errorsList",errors);
                    response.setStatus(response.SC_MOVED_TEMPORARILY);
                    response.setHeader("Location", "pages/admin.jsp");
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
