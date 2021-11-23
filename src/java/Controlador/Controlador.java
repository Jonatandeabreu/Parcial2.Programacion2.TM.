package Controlador;

import Modelo.Personal;
import Modelo.PersonalDAO;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {

    PersonalDAO dao = new PersonalDAO();
    Usuario usu = new Usuario();
    Personal per = new Personal();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Personal p = new Personal();
        String acceso = "";
        String action = request.getParameter("accion");
        int id;
        id = Integer.parseInt(request.getParameter("id"));
        dao.eliminar(id);
        String nom = "Jonatan de Abreu";
        String pas = "Admin";
        request.setAttribute("nom", nom);
        request.setAttribute("pas", pas);
        List lista = dao.listar();
        request.setAttribute("personal", lista);
        acceso = "recursos/vistas/Vistaadmin.jsp";
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Personal p = new Personal();
        String acceso = "";

        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("agregar")) {
            String nom = request.getParameter("txtnombre");
            String dire = request.getParameter("txtdireccion");
            String tlf = request.getParameter("txttlf");
            String fecha = request.getParameter("txtfecha");
            String cargo = request.getParameter("txtcargo");
            String z_i = request.getParameter("txtz_i");
            p.setNombre(nom);
            p.setDireccion(dire);
            p.setTlf(tlf);
            p.setFecha(fecha);
            p.setCargo(cargo);
            p.setZ_i(z_i);
            dao.add(p);
            String nomb = "Jonatan de Abreu";
            String pas = "Admin";
            request.setAttribute("nom", nomb);
            request.setAttribute("pas", pas);
            List lista = dao.listar();
            request.setAttribute("personal", lista);
            acceso = "recursos/vistas/Vistaadmin.jsp";

        } else if (action.equalsIgnoreCase("eliminar")) {
            int id;
            id = Integer.parseInt(request.getParameter("id"));
            dao.eliminar(id);
            acceso = "recursos/vistas/Vistaadmin.jsp";

        } else if (action.equalsIgnoreCase("add")) {
            acceso = "recursos/vistas/Add.jsp";

        } else if (action.equalsIgnoreCase("animales")) {
            acceso = "recursos/vistas/Animales.jsp";
        } else if (action.equalsIgnoreCase("itinerarios")) {
            acceso = "recursos/vistas/Itinerarios.jsp";
        } else if (action.equalsIgnoreCase("zona")) {
            acceso = "recursos/vistas/Zonas.jsp";
        } else if (action.equalsIgnoreCase("atras")) {
            String nom = "Jonatan de Abreu";
            String pas = "Admin";
            request.setAttribute("nom", nom);
            request.setAttribute("pas", pas);
            List lista = dao.listar();
            request.setAttribute("personal", lista);
            acceso = "recursos/vistas/Vistaadmin.jsp";
        } else if (action.equalsIgnoreCase("vistae")) {
            acceso = "recursos/vistas/Vistaempleado.jsp";
        } else if (action.equalsIgnoreCase("mapa")) {
            acceso = "recursos/vistas/Mapa.jsp";
        } else if (action.equalsIgnoreCase("login")) {
            acceso = "recursos/vistas/Login.jsp";

        } else if (action.equalsIgnoreCase("index")) {
            acceso = "index.jsp";
        } else if (action.equalsIgnoreCase("salir")) {
            acceso = "recursos/vistas/Login.jsp";

        } else if (action.equals("ingresar")) {
            String nom = request.getParameter("txtnombre");
            String pas = request.getParameter("txtpas");
            int r = 0;
            usu.setNom(nom);
            usu.setPass(pas);
            r = dao.validar(usu);
            if (r == 1 && usu.getPass().equals("Admin")) {
                request.setAttribute("nom", nom);
                request.setAttribute("pas", pas);
                List lista = dao.listar();
                request.setAttribute("personal", lista);
                request.getRequestDispatcher("recursos/vistas/Vistaadmin.jsp").forward(request, response);
            } else if (r == 1) {
                request.setAttribute("nom", nom);
                request.setAttribute("pas", pas);
                List lista = dao.listar();
                request.setAttribute("personal", lista);
                request.getRequestDispatcher("recursos/vistas/Vistaempleado.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("recursos/vistas/ErrorLog.jsp").forward(request, response);
            }
        }

        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
