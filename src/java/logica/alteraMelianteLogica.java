/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import ficha.melianteDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thassiane
 */
public class alteraMelianteLogica implements Logica {

    @Override
    public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        long id = Long.parseLong(request.getParameter("id"));
        request.setAttribute("id", id);
//        melianteDao dao = new melianteDao();
//        dao.removeMeliante(id);
//        System.out.println("Excluindo m-eliante ... ");
        return "alterarFichaPolicial.jsp";
    }
}
