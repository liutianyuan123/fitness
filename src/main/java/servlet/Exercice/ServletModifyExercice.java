/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.Exercice;

import java.io.PrintWriter;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * On modifie l'exercice selectionn�
 *
 * @author aude, jin
 */
@WebServlet(
        name = "ServletModifyExercice",
        urlPatterns = {"/ServletModifyExercice"}
)
public class ServletModifyExercice extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
           
        PrintWriter out = resp.getWriter();
        Integer codee= new Integer(req.getParameter("codee"));
        String nameExercice = req.getParameter("nameExercice");
        String videoExercice = req.getParameter("videoExercice");
        String objectiveExercice = req.getParameter("objectiveExercice");
        String descExercice = req.getParameter("desce");
        try {
            new db.dbExercice().modifyExercice(codee,nameExercice, objectiveExercice, videoExercice,descExercice);
        } catch (SQLException ex) {
            Logger.getLogger(ServletModifyExercice.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        
    }
}
