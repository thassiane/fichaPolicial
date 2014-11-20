/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Logica;

/**
 *
 * @author Thassiane
*/

@WebServlet("/mvc")
public class ControllerServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String parametro = request.getParameter("logica");
        String nomeDaClasse = "logica." + parametro;
        try {
            Class classe = Class.forName(nomeDaClasse);
            Logica logica = (Logica) classe.newInstance();
            String pagina = logica.executa(request,response);//recebe o nome da pagina qeu vai redirecionar e executa.
            request.getRequestDispatcher(pagina).forward(request, response);//aqui redireciona
        } catch (Exception e) {
            throw new ServletException(
                    "A lógica de negócios causou uma exceção ", e);
        }
    }
}