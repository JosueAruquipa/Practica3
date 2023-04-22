
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Josué
 */
@WebServlet(name = "ProcesaServlet", urlPatterns = {"/ProcesaServlet"})
public class ProcesaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String tarea = request.getParameter("tarea");
        HttpSession ses=request.getSession();
        ArrayList<String> lista= (ArrayList<String>)ses.getAttribute("lista");
        lista.remove(tarea);
        ses.invalidate();
        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String tarea = request.getParameter("tarea");
        HttpSession ses=request.getSession();
        ArrayList<String> lista= (ArrayList<String>)ses.getAttribute("lista");
        lista.add(tarea);
        response.sendRedirect("index.jsp");
    }

}
