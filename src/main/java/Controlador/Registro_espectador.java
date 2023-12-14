
import DAO.EspectadoresDAO;
import Modelo.Espectador;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet("/vistas/registroEspectador")
public class Registro_espectador extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener datos del formulario
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");

        // Crear un objeto Orador con los datos
        Espectador p = new Espectador();
        p.setNombre(nombre);
        p.setApellido(apellido);
        p.setCorreo(correo);

       
        // Agregar el orador a la base de datos
        EspectadoresDAO eDAO = new EspectadoresDAO();
        eDAO.agregarEspectador(p);
        

        // Redireccionar a la página de visualización de tickets
      response.sendRedirect(request.getContextPath() + "/vistas/Tickets.jsp");
        
    }
}
