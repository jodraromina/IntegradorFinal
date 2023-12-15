/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import DAO.EspectadoresDAO;
import Modelo.Espectador;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/vistas/GestionEspectadorServlet")
public class GestionEspectadorServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion = req.getParameter("accion");
        EspectadoresDAO eDAO= new EspectadoresDAO();
              
        switch(accion){
            case "actualizar":
                Espectador p = eDAO.obtenerEspectador();
                req.setAttribute("espectador", p); 
                req.getRequestDispatcher("actualizarEspectador.jsp").forward(req, resp);
                break;
            case "confirmarActualizacion":
                Espectador q = new Espectador();
                q.setNombre(req.getParameter("nombre"));
                q.setApellido(req.getParameter("apellido"));
                q.setCorreo(req.getParameter("correo"));
                eDAO.actualizarEspectador(q);
                getServletContext().setAttribute("espectador", q);
                resp.sendRedirect("gestionEspectador.jsp");
                break;
            case "eliminar":
                 eDAO.eliminarEspectador();
                 Espectador x = new Espectador();
                 getServletContext().setAttribute("espectador", x);
                 resp.sendRedirect(req.getContextPath() + "/vistas/gestionEspectador.jsp");
                break;
            default:
                resp.sendRedirect("gestionEspectadores.jsp");
                break;
            
        }
    }
}
